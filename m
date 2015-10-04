X-GM-THRID: 6201888067640360960
X-Received: by 10.112.151.9 with SMTP id um9mr4516289lbb.19.1443989648215;
        Sun, 04 Oct 2015 13:14:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.2 with SMTP id gq2ls710961wib.2.canary; Sun, 04 Oct
 2015 13:14:07 -0700 (PDT)
X-Received: by 10.180.105.98 with SMTP id gl2mr1730382wib.0.1443989647890;
        Sun, 04 Oct 2015 13:14:07 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id c1si237333wiv.3.2015.10.04.13.14.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 13:14:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id fx3so93573332wic.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 13:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Iy0rEJpvyQuK0MuM3DwNf/nVSsXLt/Rn48wtA6LYv+4=;
        b=0QMwIMtwVXPFqxveOFAmDwflvxL5SQiuD0c08jscbS4GFJVIkf3CGCvase925xuxCK
         UJIdKXRYTouJ9I5Y9xVw/HMH4LJ/zCWhtAnubqKZwofx4mdwZwLE3/GgnguRFcwIlLJY
         9QyCn/laje1JHWeDdZUjNg0eJPhqQHb101XxtRdt5MMPapW879F/QpIwNHqnufUeIcOz
         0oojxzRIdd3Wl2V9Y3F3pyesoR+mDiHWo+hREDu3zOJGtyEyGWET5I1mzSsRgDKn2OOS
         jTAv7MGgZFngy+FQOPvGQbPyuZU5gLJGO823JlSj3JkNMnkQewb+vf44skUA1dqHomhc
         tn4Q==
X-Received: by 10.180.103.35 with SMTP id ft3mr8457734wib.60.1443989647781;
        Sun, 04 Oct 2015 13:14:07 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id q1sm23163006wje.39.2015.10.04.13.14.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 13:14:07 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/4] Staging: rtl8192u: Do not DMA on the stack in write_nic_byte_E()
Date: Sun,  4 Oct 2015 22:14:00 +0200
Message-Id: <594338659176808944f42cc535049b9f401c64d7.1443989364.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1443989364.git.ksenija.stanojevic@gmail.com>
References: <cover.1443989364.git.ksenija.stanojevic@gmail.com>

Fix error "doing DMA on the stack" by using kzalloc for buffer
allocation.
Issue found by smatch.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 28b54ba..287e2ce 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -259,10 +259,15 @@ void write_nic_byte_E(struct net_device *dev, int indx, u8 data)
 	int status;
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u8 *pdata = kzalloc(sizeof(data), GFP_KERNEL);
+
+	if (!pdata)
+		return;
 
 	status = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
 				 RTL8187_REQ_SET_REGS, RTL8187_REQT_WRITE,
 				 indx | 0xfe00, 0, &data, 1, HZ / 2);
+	kfree(pdata);
 
 	if (status < 0)
 		netdev_err(dev, "write_nic_byte_E TimeOut! status: %d\n",
-- 
1.9.1


