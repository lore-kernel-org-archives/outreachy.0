X-GM-THRID: 4349090594816
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8f6db519be982188
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.36.132 with SMTP id q4mr1952716laj.6.1425033360357;
        Fri, 27 Feb 2015 02:36:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.194 with SMTP id a2ls136000lak.88.gmail; Fri, 27 Feb
 2015 02:35:59 -0800 (PST)
X-Received: by 10.112.146.65 with SMTP id ta1mr1952129lbb.19.1425033359803;
        Fri, 27 Feb 2015 02:35:59 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id l8si125841wia.0.2015.02.27.02.35.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:35:59 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x230.google.com with SMTP id k14so19228318wgh.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 02:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vhu3T8a3jHV9uX0kQVeOWQb26y0jy9uHBtp+T+b8MMo=;
        b=BcbI4AJf0Tt+rYhlzHB85OYddkO+ZZgNNZYORtbXT/DRqZ4U81DQvTaXHOKZwpqRSa
         X9v+XGmRFK62Y37oEayxxwI5X6eMpXFmMqJcZpZ48NGkQu1Fy/d1Bv684Zbac99kwxaq
         JSgtD8XvqZ/L0mdolG2UNe7DVW6SZy/VFaJXtLSm/XzpvDmL7sg91K818IigC5fMpi1u
         8oNkrXWbkQVjxrG6utMnOzgglHZg00ceDIwJ+Y8Aj+GfhR84G0nNU++cDILr9Fq5XOa3
         opLB0Yagd8Ret62ncZqzeUCeV7uEgB+jPgEZcpXunjTdU21gXBBHZvcRYbTS7rP9QL0a
         dPpw==
X-Received: by 10.180.73.205 with SMTP id n13mr5019829wiv.64.1425033359188;
        Fri, 27 Feb 2015 02:35:59 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id md8sm2184583wic.13.2015.02.27.02.35.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:35:58 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id BA5C36337C; Fri, 27 Feb 2015 13:35:56 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v8 5/5] Staging: emxx_udc: Clean dev_err() logging
Date: Fri, 27 Feb 2015 13:35:56 +0300
Message-Id: <1425033356-20933-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425030785.git.hamohammed.sa@gmail.com>
References: <cover.1425030785.git.hamohammed.sa@gmail.com>

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


