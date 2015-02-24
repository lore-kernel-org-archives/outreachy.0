X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.88.40 with SMTP id bd8mr2192142lab.0.1424788887307;
        Tue, 24 Feb 2015 06:41:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.100 with SMTP id a4ls441652lah.23.gmail; Tue, 24 Feb
 2015 06:41:26 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr2188686lan.1.1424788886853;
        Tue, 24 Feb 2015 06:41:26 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x242.google.com (mail-wg0-x242.google.com. [2a00:1450:400c:c00::242])
        by gmr-mx.google.com with ESMTPS id ev8si913768wib.3.2015.02.24.06.41.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:41:26 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::242 as permitted sender) client-ip=2a00:1450:400c:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::242 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x242.google.com with SMTP id y19so1786703wgg.3
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 06:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qQB5y2l/WQPLdm1FDYUaNFqJI4ObE7xfPloZe2+565w=;
        b=V25vxcJsbcYA4BHHnidOKVRJcMdb+pN0LK+4/hAsDZxfTcBFwdXXbiklxmYI1z7oAB
         e+3I6ns44QZ/lg3dRJTlV5x3w2auXzzBy2ld99ugQRvfK4rM70Yo5JjukOOmJOOV/YJQ
         mBjsvh4XumH8kiZpqjmrDpyHQR+FbIE9cpq7ic9cNM+gV43AMob2dBZagoa3mCuZrhcT
         szwe+sK1O0FFiEjJs3i6YlInNEU/JfnHWGDORjjaBtdPpmIyc9n5qLE+4UsGC5H1YOwR
         aV9KQhyxhhGknOQvl0jS4sapAKosEn5ZEPzPEjgpAa/09GRygg2+s4vBFgCEVn0/QLw9
         OZZQ==
X-Received: by 10.194.240.97 with SMTP id vz1mr4529067wjc.155.1424788886679;
        Tue, 24 Feb 2015 06:41:26 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.205])
        by mx.google.com with ESMTPSA id r3sm56230040wjw.7.2015.02.24.06.41.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:41:25 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id A41DE63386; Tue, 24 Feb 2015 17:41:21 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v5 6/6] Staging: emxx_udc: Clean dev_err() logging
Date: Tue, 24 Feb 2015 17:41:20 +0300
Message-Id: <be7fa525276d5346ce1d87a6b137db96815d8b05.1424786861.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424786861.git.hamohammed.sa@gmail.com>
References: <cover.1424786861.git.hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err.
dev_err includes the function name in the log printout, so there is no
need to include it manually.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v5: remove __func__ from replaced pr_err

 drivers/staging/emxx_udc/emxx_udc.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index ed1d044..61538e8 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -2626,7 +2626,7 @@ static int nbu2ss_ep_enable(
 	if ((ep_type == USB_ENDPOINT_XFER_CONTROL)
 		|| (ep_type == USB_ENDPOINT_XFER_ISOC)) {
 
-		dev_err(ep->udc->dev, "udc:  *** %s, bat bmAttributes\n", __func__);
+		dev_err(ep->udc->dev, "bat bmAttributes\n");
 		return -EINVAL;
 	}
 
@@ -2637,7 +2637,7 @@ static int nbu2ss_ep_enable(
 	if ((udc->driver == NULL)
 		|| (udc->gadget.speed == USB_SPEED_UNKNOWN)) {
 
-		dev_err(udc->dev, " *** %s, udc !!\n", __func__);
+		dev_err(udc->dev, "udc !!\n");
 		return -ESHUTDOWN;
 	}
 
@@ -2778,7 +2778,7 @@ static int nbu2ss_ep_queue(
 	}
 
 	if (unlikely(!udc->driver)) {
-		dev_err(udc->dev, "%s, bogus device state %p\n", __func__, udc->driver);
+		dev_err(udc->dev, "bogus device state %p\n", udc->driver);
 		return -ESHUTDOWN;
 	}
 
@@ -2817,7 +2817,7 @@ static int nbu2ss_ep_queue(
 
 		result = _nbu2ss_start_transfer(udc, ep, req, FALSE);
 		if (result < 0) {
-			dev_err(udc->dev, " *** %s, result = %d\n", __func__, result);
+			dev_err(udc->dev, "result = %d\n", result);
 			list_del(&req->queue);
 		} else if ((ep->epnum > 0) && (ep->direct == USB_DIR_OUT)) {
 #ifdef USE_DMA
@@ -2907,7 +2907,7 @@ static int nbu2ss_ep_set_halt(struct usb_ep *_ep, int value)
 
 	udc = ep->udc;
 	if (!udc) {
-		dev_err(ep->udc->dev, "udc: *** %s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "bad udc\n");
 		return -EINVAL;
 	}
 
@@ -2961,7 +2961,7 @@ static int nbu2ss_ep_fifo_status(struct usb_ep *_ep)
 
 	udc = ep->udc;
 	if (!udc) {
-		dev_err(ep->udc->dev, "udc: %s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "bad udc\n");
 		return -EINVAL;
 	}
 
@@ -3009,7 +3009,7 @@ static void  nbu2ss_ep_fifo_flush(struct usb_ep *_ep)
 
 	udc = ep->udc;
 	if (!udc) {
-		dev_err(ep->udc->dev, "udc: %s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "bad udc\n");
 		return;
 	}
 
@@ -3059,7 +3059,7 @@ static int nbu2ss_gad_get_frame(struct usb_gadget *pgadget)
 
 	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
 	if (udc == NULL) {
-		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
+		dev_err(&pgadget->dev, "udc == NULL\n");
 		return -EINVAL;
 	}
 
@@ -3089,7 +3089,7 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
 
 	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
 	if (udc == NULL) {
-		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
+		dev_err(&pgadget->dev, "udc == NULL\n");
 		return -EINVAL;
 	}
 
-- 
1.9.1


