X-GM-THRID: 8920338792448
X-Received: by 10.112.97.37 with SMTP id dx5mr2199877lbb.15.1426673345336;
        Wed, 18 Mar 2015 03:09:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.129 with SMTP id r1ls1051877wia.43.canary; Wed, 18 Mar
 2015 03:09:04 -0700 (PDT)
X-Received: by 10.180.90.169 with SMTP id bx9mr590356wib.6.1426673344964;
        Wed, 18 Mar 2015 03:09:04 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id el6si113247wib.0.2015.03.18.03.09.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 03:09:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x231.google.com with SMTP id cc7so30573474wgb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 03:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ExRcnMbrYSlriqwhZq/+5r1rzRRAVhodMZhVL7om9Iw=;
        b=cgalfXx7172jeg6ZDDvx6zITyQZJqzEJMnvohWa32L+Y/E5JzzSY5EdfbKBiR9jegH
         +2lcixpAQIo3RKQYW4zGgnYvxxj7S6NgE7JNgBoN3p9Nma2gyXjcekqfrP2UP0YHJwJr
         3u7Ci1lmsr294slFXuqpUsRHvcKk5Hmc9pp80zxbswkIuTSd9Pt5D9F2cnQdymvkgsOU
         HtRl2xHPD4da3abgQiAQNwtYytho/mIf08RQ7b1w0JyITniRqfuVLAy9PxMhNEmOWy5n
         su3tzJtjJgC6t4JQlGE3Zcj/hYmWe8zNFaw1mRPaKXOEdGmdmIYFF8x80fSZWGRWl5Ew
         exMQ==
X-Received: by 10.180.84.3 with SMTP id u3mr5552646wiy.38.1426673344883;
        Wed, 18 Mar 2015 03:09:04 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([5.41.223.113])
        by mx.google.com with ESMTPSA id a13sm23769501wjx.30.2015.03.18.03.09.03
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 03:09:03 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id E4806C1F4B; Wed, 18 Mar 2015 13:09:00 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 1/3] Staging: gdm724x: replace pr_* with dev_*
Date: Wed, 18 Mar 2015 13:08:59 +0300
Message-Id: <1426673339-13944-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426668021-13846-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426668021-13846-1-git-send-email-hamohammed.sa@gmail.com>

This patch replace pr_err/pr_info with dev_err/dev_info, when
appropriate device structure is found.

Issue found  and resolved using the following Coccinelle script. 
pr_err/dev_err was substituted with pr_info/dev_info in the later case.

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
identifier r.s, s2, fld;
@@

struct s {
	...
	struct s2 *fld;
	...
};

@rrr@
identifier rr.s2, fld2;
@@

struct s2 {
	...
	struct device fld2;
	...
};
@@
identifier r.i, r.s, rr.fld, rrr.fld2;
position r.p;
@@

-pr_err@p
+dev_err
   (
+ &i->fld->fld2,
...)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/gdm724x/gdm_mux.c | 4 ++--
 drivers/staging/gdm724x/gdm_usb.c | 7 ++++---
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index b987ba0..8199b0a 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -270,7 +270,7 @@ static void gdm_mux_rcv_complete(struct urb *urb)
 
 	if (urb->status) {
 		if (mux_dev->usb_state == PM_NORMAL)
-			pr_err("%s: urb status error %d\n",
+			dev_err(&urb->dev->dev, "%s: urb status error %d\n",
 			       __func__, urb->status);
 		put_rx_struct(rx, r);
 	} else {
@@ -342,7 +342,7 @@ static void gdm_mux_send_complete(struct urb *urb)
 	struct mux_tx *t = urb->context;
 
 	if (urb->status == -ECONNRESET) {
-		pr_info("CONNRESET\n");
+		dev_info(&urb->dev->dev, "CONNRESET\n");
 		free_mux_tx(t);
 		return;
 	}
diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index d59810f..ed1a12f 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -480,7 +480,7 @@ static void gdm_usb_rcv_complete(struct urb *urb)
 		spin_unlock_irqrestore(&rx->to_host_lock, flags);
 	} else {
 		if (urb->status && udev->usb_state == PM_NORMAL)
-			pr_err("%s: urb status error %d\n",
+			dev_err(&urb->dev->dev, "%s: urb status error %d\n",
 			       __func__, urb->status);
 
 		put_rx_struct(rx, r);
@@ -557,7 +557,7 @@ static void gdm_usb_send_complete(struct urb *urb)
 	unsigned long flags;
 
 	if (urb->status == -ECONNRESET) {
-		pr_info("CONNRESET\n");
+		dev_info(&urb->dev->dev, "CONNRESET\n");
 		return;
 	}
 
@@ -590,7 +590,8 @@ static int send_tx_packet(struct usb_device *usbdev, struct usb_tx *t, u32 len)
 	ret = usb_submit_urb(t->urb, GFP_ATOMIC);
 
 	if (ret)
-		pr_err("usb_submit_urb failed: %d\n", ret);
+		dev_err(&usbdev->dev, "usb_submit_urb failed: %d\n",
+			ret);
 
 	usb_mark_last_busy(usbdev);
 
-- 
1.9.1


