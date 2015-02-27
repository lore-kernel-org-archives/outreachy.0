X-GM-THRID: 4349090594816
X-Received: by 10.180.182.44 with SMTP id eb12mr358076wic.4.1425033162492;
        Fri, 27 Feb 2015 02:32:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.225 with SMTP id n1ls148979lah.52.gmail; Fri, 27 Feb
 2015 02:32:41 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr1973160lbb.9.1425033161939;
        Fri, 27 Feb 2015 02:32:41 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id el6si88308wib.2.2015.02.27.02.32.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:32:41 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id w55so19134107wes.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 02:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=u50zl4OlN2znY6WtVKdX1EYdBrOdIRxmNf05iwkQ6zM=;
        b=ElWCRs3O4roF5eVAosdp22mJTfaF7+XTVkKxivxQZNEcaXDRJGJ8cbtUebcQ3mkQTY
         INxirSqiit+Le4FAE5ixLoWssvEV+RLB0NEApWgrkKk5c9GvREvKjs480A5VHzEkQLl8
         BLkzwRC7aMua8MyG8/daKiegsWpn4MtgNrzXgMykuHmbu3yUwcnwSEKZULRhyVrBlUrw
         nCpibIGd2/3GbooA7/Q205bqSLv3I3UV/6aUdLIcr+V64djYmBPxiU19In89eZ71Mpuw
         3hlkz/2lNZvgfdOhIhxQSBny268kUGUmIcbvuSrMz70lQA9k1Y3zbHmKv2X7jLizoOtx
         XObw==
X-Received: by 10.194.80.193 with SMTP id t1mr26969955wjx.8.1425033161840;
        Fri, 27 Feb 2015 02:32:41 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id pp10sm5307728wjc.31.2015.02.27.02.32.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:32:41 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 588F96337C; Fri, 27 Feb 2015 13:32:39 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v8 3/5] Staging: emxx_udc: Replace custom printk macro ERR with dev_err
Date: Fri, 27 Feb 2015 13:32:37 +0300
Message-Id: <1425033157-20822-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425030785.git.hamohammed.sa@gmail.com>
References: <cover.1425030785.git.hamohammed.sa@gmail.com>

This patch removes the other half of ERR macros that uses "printk(KERN_ERR"
and replace them with dev_err, to fix issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 094e018..77189cc 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -808,7 +808,7 @@ static int _nbu2ss_ep0_out_transfer(
 		return 0;		/* Short Packet Transfer End */
 
 	if (req->req.actual > req->req.length) {
-		ERR(" *** Overrun Error\n");
+		dev_err(udc->dev, " *** Overrun Error\n");
 		return -EOVERFLOW;
 	}
 
@@ -1026,8 +1026,8 @@ static int _nbu2ss_epn_out_transfer(
 	}
 
 	if (req->req.actual > req->req.length) {
-		ERR(" *** Overrun Error\n");
-		ERR(" *** actual = %d, length = %d\n",
+		dev_err(udc->dev, " *** Overrun Error\n");
+		dev_err(udc->dev, " *** actual = %d, length = %d\n",
 			req->req.actual, req->req.length);
 		result = -EOVERFLOW;
 	}
@@ -1638,7 +1638,7 @@ static int std_req_get_status(struct nbu2ss_udc *udc)
 		_nbu2ss_ep0_in_transfer(udc, &udc->ep[0], &udc->ep0_req);
 
 	} else {
-		ERR("*** Error GET_STATUS\n");
+		dev_err(udc->dev, "*** Error GET_STATUS\n");
 	}
 
 	return result;
@@ -2350,7 +2350,7 @@ static int _nbu2ss_enable_controller(struct nbu2ss_udc *udc)
 		waitcnt++;
 		udelay(1);	/* 1us wait */
 		if (waitcnt == EPC_PLL_LOCK_COUNT) {
-			ERR("*** Reset Cancel failed\n");
+			dev_err(udc->dev, "*** Reset Cancel failed\n");
 			return -EINVAL;
 		}
 	};
@@ -2626,7 +2626,7 @@ static int nbu2ss_ep_enable(
 	if ((ep_type == USB_ENDPOINT_XFER_CONTROL)
 		|| (ep_type == USB_ENDPOINT_XFER_ISOC)) {
 
-		pr_err("udc:  *** %s, bat bmAttributes\n", __func__);
+		dev_err(ep->udc->dev, "udc:  *** %s, bat bmAttributes\n", __func__);
 		return -EINVAL;
 	}
 
@@ -2637,7 +2637,7 @@ static int nbu2ss_ep_enable(
 	if ((udc->driver == NULL)
 		|| (udc->gadget.speed == USB_SPEED_UNKNOWN)) {
 
-		ERR(" *** %s, udc !!\n", __func__);
+		dev_err(udc->dev, " *** %s, udc !!\n", __func__);
 		return -ESHUTDOWN;
 	}
 
@@ -2773,12 +2773,12 @@ static int nbu2ss_ep_queue(
 /*	INFO("=== %s(ep%d), zero=%d\n", __func__, ep->epnum, _req->zero); */
 
 	if (udc->vbus_active == 0) {
-		pr_info("Can't ep_queue (VBUS OFF)\n");
+		dev_info(udc->dev, "Can't ep_queue (VBUS OFF)\n");
 		return -ESHUTDOWN;
 	}
 
 	if (unlikely(!udc->driver)) {
-		ERR("%s, bogus device state %p\n", __func__, udc->driver);
+		dev_err(udc->dev, "%s, bogus device state %p\n", __func__, udc->driver);
 		return -ESHUTDOWN;
 	}
 
@@ -2817,7 +2817,7 @@ static int nbu2ss_ep_queue(
 
 		result = _nbu2ss_start_transfer(udc, ep, req, FALSE);
 		if (result < 0) {
-			ERR(" *** %s, result = %d\n", __func__, result);
+			dev_err(udc->dev, " *** %s, result = %d\n", __func__, result);
 			list_del(&req->queue);
 		} else if ((ep->epnum > 0) && (ep->direct == USB_DIR_OUT)) {
 #ifdef USE_DMA
@@ -2907,7 +2907,7 @@ static int nbu2ss_ep_set_halt(struct usb_ep *_ep, int value)
 
 	udc = ep->udc;
 	if (!udc) {
-		pr_err("udc: *** %s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "udc: *** %s, bad udc\n", __func__);
 		return -EINVAL;
 	}
 
@@ -2961,7 +2961,7 @@ static int nbu2ss_ep_fifo_status(struct usb_ep *_ep)
 
 	udc = ep->udc;
 	if (!udc) {
-		pr_err("udc: %s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "udc: %s, bad udc\n", __func__);
 		return -EINVAL;
 	}
 
@@ -3009,7 +3009,7 @@ static void  nbu2ss_ep_fifo_flush(struct usb_ep *_ep)
 
 	udc = ep->udc;
 	if (!udc) {
-		pr_err("udc: %s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "udc: %s, bad udc\n", __func__);
 		return;
 	}
 
@@ -3059,7 +3059,7 @@ static int nbu2ss_gad_get_frame(struct usb_gadget *pgadget)
 
 	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
 	if (udc == NULL) {
-		ERR("%s, udc == NULL\n", __func__);
+		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
 		return -EINVAL;
 	}
 
@@ -3089,7 +3089,7 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
 
 	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
 	if (udc == NULL) {
-		ERR("%s, udc == NULL\n", __func__);
+		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
 		return -EINVAL;
 	}
 
@@ -3345,7 +3345,7 @@ static int nbu2ss_drv_probe(struct platform_device *pdev)
 
 	/* USB Function Controller Interrupt */
 	if (status != 0) {
-		ERR("request_irq(USB_UDC_IRQ_1) failed\n");
+		dev_err(udc->dev, "request_irq(USB_UDC_IRQ_1) failed\n");
 		goto cleanup1;
 	}
 
@@ -3365,7 +3365,7 @@ static int nbu2ss_drv_probe(struct platform_device *pdev)
 				udc);
 
 	if (status != 0) {
-		ERR("request_irq(INT_VBUS) failed\n");
+		dev_err(udc->dev, "request_irq(INT_VBUS) failed\n");
 		goto cleanup1;
 	}
 
-- 
1.9.1


