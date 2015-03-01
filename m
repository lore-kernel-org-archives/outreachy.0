X-GM-THRID: 4349090594816
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8f6db519be982188
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.39.164 with SMTP id q4mr1713243wik.5.1425243892765;
        Sun, 01 Mar 2015 13:04:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.85.229 with SMTP id k5ls447930wiz.0.canary; Sun, 01 Mar
 2015 13:04:52 -0800 (PST)
X-Received: by 10.180.87.166 with SMTP id az6mr1778425wib.1.1425243892472;
        Sun, 01 Mar 2015 13:04:52 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id by11si572504wib.1.2015.03.01.13.04.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:04:52 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgha1 with SMTP id a1so29862513wgh.12
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 13:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vhu3T8a3jHV9uX0kQVeOWQb26y0jy9uHBtp+T+b8MMo=;
        b=0OHOvOjPvDG7bnb5DfCZg7t66BzsjGL93TRgYPVzWIzH2Y0HcgyC/Ca4qFAQrL27xa
         ta3aYO5wpZzVBKskOvGfGvA66NNAr4AfPsqDHXlitiA5ejf7SwtP7o9s7XjBPei6csMj
         shLx6jWOcROiY49vLDRY0+7LF/rvc+6XaxXdOTSB4PkHTKrXI3/sXxd5FCVGwpOxbJb0
         phOMvchGn8hvXFzgfhOyN81ZcnJlK6kChpFbLSsE/bSg3OGUVDQ59KB4EUp0n288JcZm
         FUU3wkmVnt3XxukfY4hRYEj5uMwWzV6C3Dpv5EHDDtdMl72jubgDwg+CPqdu7AWJSBWG
         SVpQ==
X-Received: by 10.180.92.136 with SMTP id cm8mr29727757wib.41.1425243892371;
        Sun, 01 Mar 2015 13:04:52 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id lu13sm13129992wic.10.2015.03.01.13.04.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:04:51 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 7819C6339E; Mon,  2 Mar 2015 00:04:50 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v9 4/4] Staging: emxx_udc: Clean dev_err() logging
Date: Mon,  2 Mar 2015 00:04:49 +0300
Message-Id: <1425243889-8541-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425030509-19676-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425030509-19676-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err.
dev_err includes the function name in the log printout, so there is no
need to include it manually.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 77189cc..0bfd268 100644
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


