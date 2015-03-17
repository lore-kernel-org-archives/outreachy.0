X-GM-THRID: 8708200333312
X-Received: by 10.180.77.165 with SMTP id t5mr6801685wiw.0.1426570513499;
        Mon, 16 Mar 2015 22:35:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.67 with SMTP id l3ls759415lae.93.gmail; Mon, 16 Mar
 2015 22:35:12 -0700 (PDT)
X-Received: by 10.112.25.7 with SMTP id y7mr9555131lbf.21.1426570512791;
        Mon, 16 Mar 2015 22:35:12 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id i8si55350wif.1.2015.03.16.22.35.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 22:35:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x234.google.com with SMTP id p45so27368473weo.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 22:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=BBGH8zUUYsg7Z4IYuM+h+y5pWEJtD4yniCTmA3a9vBQ=;
        b=SXamrULjYI/Op18Vdzsp64DTw2rtEu9XmosjwtCCgs+lFDROF6Mal+sqz/5y2cuSKX
         22i6BdX9pce7GYe55nQdohs5Yg5k4QnEzGHEaR0NMTpqSOUVU9P3Zz2rsvA6LXCnfULj
         BM1X4rMwe0hZd3DdAAXS4WL70SrNbwIOv+TlWSzieJRAJui28F6hEdNWZ79ZMJ0q8gbz
         smhUrLQavb1z3BFBhiMEK7d5Vea5JmmMrlIGC7vIek1Q2LO82MWk0v6Z/AvaKvt5GxBS
         uL7UnHmm96rzQK6ruC1uQifRQi7ASGsZ6RkQnIdKzAJxQXuUE6nTvupETHNuuTRL0KIb
         G8EA==
X-Received: by 10.194.120.132 with SMTP id lc4mr131705797wjb.92.1426570512708;
        Mon, 16 Mar 2015 22:35:12 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.48])
        by mx.google.com with ESMTPSA id bx3sm18326363wjc.21.2015.03.16.22.35.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 22:35:12 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 75FE1C1F80; Tue, 17 Mar 2015 08:35:08 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 2/4] Staging: gdm724x: replace pr_err with dev_err
Date: Tue, 17 Mar 2015 08:34:20 +0300
Message-Id: <1426570460-22394-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426570219-22279-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426570219-22279-1-git-send-email-hamohammed.sa@gmail.com>

This patch replace pr_err with dev_err, when appropriate device structre
is found.
Issue found using the following Coccinelle script:

@r exists@
identifier f, s, i;
position p;
@@

f(...,struct s *i,...) {
<+...
when != i == NULL
pr_err@p(...);
...+>
}

@rr@
identifier r.s, fld;
@@

struct s {
	...
	struct device *fld;
	...
};

@@
identifier r.i, rr.fld;
position r.p;
@@
-pr_err@p
+dev_err
   (
+ i->fld,
...)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/gdm724x/gdm_mux.c | 4 ++--
 drivers/staging/gdm724x/gdm_usb.c | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index d1ab996..b987ba0 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -608,7 +608,7 @@ static int gdm_mux_suspend(struct usb_interface *intf, pm_message_t pm_msg)
 	rx = &mux_dev->rx;
 
 	if (mux_dev->usb_state != PM_NORMAL) {
-		pr_err("usb suspend - invalid state\n");
+		dev_err(intf->usb_dev, "usb suspend - invalid state\n");
 		return -1;
 	}
 
@@ -637,7 +637,7 @@ static int gdm_mux_resume(struct usb_interface *intf)
 	mux_dev = tty_dev->priv_dev;
 
 	if (mux_dev->usb_state != PM_SUSPEND) {
-		pr_err("usb resume - invalid state\n");
+		dev_err(intf->usb_dev, "usb resume - invalid state\n");
 		return -1;
 	}
 
diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index d2a3b35..d59810f 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -848,7 +848,7 @@ static int gdm_usb_probe(struct usb_interface *intf,
 	udev->usbdev = usbdev;
 	ret = init_usb(udev);
 	if (ret < 0) {
-		pr_err("init_usb func failed\n");
+		dev_err(intf->usb_dev, "init_usb func failed\n");
 		goto err_init_usb;
 	}
 	udev->intf = intf;
@@ -867,7 +867,7 @@ static int gdm_usb_probe(struct usb_interface *intf,
 
 	ret = request_mac_address(udev);
 	if (ret < 0) {
-		pr_err("request Mac address failed\n");
+		dev_err(intf->usb_dev, "request Mac address failed\n");
 		goto err_mac_address;
 	}
 
@@ -928,7 +928,7 @@ static int gdm_usb_suspend(struct usb_interface *intf, pm_message_t pm_msg)
 	udev = phy_dev->priv_dev;
 	rx = &udev->rx;
 	if (udev->usb_state != PM_NORMAL) {
-		pr_err("usb suspend - invalid state\n");
+		dev_err(intf->usb_dev, "usb suspend - invalid state\n");
 		return -1;
 	}
 
@@ -961,7 +961,7 @@ static int gdm_usb_resume(struct usb_interface *intf)
 	rx = &udev->rx;
 
 	if (udev->usb_state != PM_SUSPEND) {
-		pr_err("usb resume - invalid state\n");
+		dev_err(intf->usb_dev, "usb resume - invalid state\n");
 		return -1;
 	}
 	udev->usb_state = PM_NORMAL;
-- 
1.9.1


