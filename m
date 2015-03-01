X-GM-THRID: 4349090594816
X-Received: by 10.180.91.76 with SMTP id cc12mr1715374wib.7.1425243636600;
        Sun, 01 Mar 2015 13:00:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.70 with SMTP id p6ls450717wia.42.canary; Sun, 01 Mar
 2015 13:00:36 -0800 (PST)
X-Received: by 10.194.95.67 with SMTP id di3mr1836043wjb.0.1425243636253;
        Sun, 01 Mar 2015 13:00:36 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id i7si546166wif.0.2015.03.01.13.00.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:00:36 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id a1so29872260wgh.5
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 13:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=W423//cT+hvfbVfqxk3a2BUfs4t3IIaaK5KoIFzXiMU=;
        b=FZElrAHDDLLEKWNE3QLsOskCWo7IT1yI1C2I//i2u+L1fCDD3+Z3eqffbho0FKLgfb
         y3zUQPxA+za2EYKqmOj98nXBrrxFKvkPiruwLsmTOVdoOHvoJKDa8S7ZhYoDOWX/mrME
         Mn0N9wfSjodB1VMRD0MF7bdUWaJfGJQ+Sg+67dTmwBGb8LXt/v+f2ksrYTtte4t5T1DR
         1L4POdU4qxIuGZabkQToTh8MQRu+syQGnpDGz9fIQnvplCpLPt+mpKkYl5yibUQlyYrn
         YprO/P8jNsoBI8NXy4ivGT36X19k80oNm5kQPswq1m9zbPFkAwgp3ZND+IliC/Y9mTST
         2uew==
X-Received: by 10.194.192.104 with SMTP id hf8mr52314390wjc.44.1425243636151;
        Sun, 01 Mar 2015 13:00:36 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id g1sm13318379wjy.24.2015.03.01.13.00.34
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:00:35 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id C54FB6339E; Mon,  2 Mar 2015 00:00:31 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v9 2/4] Staging: emxx_udc: Replace custom printk macro ERR with dev_err or pr_err
Date: Mon,  2 Mar 2015 00:00:30 +0300
Message-Id: <1425243630-8423-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425030509-19676-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425030509-19676-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes the use of custom printk macros ERR and replace it with
dev_err, or pr_err in the following cases:
- if no appropriate struct device *dev field where found for dev_err.
- or dev could be null eg. "dev_err(udc->dev" not possible inside "if (udc == null)"
Issue addressed by checkpathc.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v9: merged two patches into one, and justify the use of pr_err.  

 drivers/staging/emxx_udc/emxx_udc.c | 82 ++++++++++++++++++-------------------
 1 file changed, 41 insertions(+), 41 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index f2ddad3..77189cc 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -115,7 +115,7 @@ static void _nbu2ss_dump_register(struct nbu2ss_udc *udc)
 	pr_info("=== %s()\n", __func__);
 
 	if (udc == NULL) {
-		ERR("%s udc == NULL\n", __func__);
+		pr_err("udc: %s udc == NULL\n", __func__);
 		return;
 	}
 
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
@@ -2258,7 +2258,7 @@ static int _nbu2ss_pullup(struct nbu2ss_udc *udc, int is_on)
 	u32	reg_dt;
 
 	if (!udc) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("udc: %s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
@@ -2350,7 +2350,7 @@ static int _nbu2ss_enable_controller(struct nbu2ss_udc *udc)
 		waitcnt++;
 		udelay(1);	/* 1us wait */
 		if (waitcnt == EPC_PLL_LOCK_COUNT) {
-			ERR("*** Reset Cancel failed\n");
+			dev_err(udc->dev, "*** Reset Cancel failed\n");
 			return -EINVAL;
 		}
 	};
@@ -2612,13 +2612,13 @@ static int nbu2ss_ep_enable(
 	struct nbu2ss_udc	*udc;
 
 	if ((_ep == NULL) || (desc == NULL)) {
-		ERR(" *** %s, bad param\n", __func__);
+		pr_err("udc: *** %s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
 	ep = container_of(_ep, struct nbu2ss_ep, ep);
 	if ((ep == NULL) || (ep->udc == NULL)) {
-		ERR(" *** %s, ep == NULL !!\n", __func__);
+		pr_err("udc:  *** %s, ep == NULL !!\n", __func__);
 		return -EINVAL;
 	}
 
@@ -2626,7 +2626,7 @@ static int nbu2ss_ep_enable(
 	if ((ep_type == USB_ENDPOINT_XFER_CONTROL)
 		|| (ep_type == USB_ENDPOINT_XFER_ISOC)) {
 
-		ERR(" *** %s, bat bmAttributes\n", __func__);
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
 
@@ -2672,13 +2672,13 @@ static int nbu2ss_ep_disable(struct usb_ep *_ep)
 	unsigned long		flags;
 
 	if (_ep == NULL) {
-		ERR(" *** %s, bad param\n", __func__);
+		pr_err("udc:  *** %s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
 	ep = container_of(_ep, struct nbu2ss_ep, ep);
 	if ((ep == NULL) || (ep->udc == NULL)) {
-		ERR(" *** %s, ep == NULL !!\n", __func__);
+		pr_err("udc:  *** %s, ep == NULL !!\n", __func__);
 		return -EINVAL;
 	}
 
@@ -2742,10 +2742,10 @@ static int nbu2ss_ep_queue(
 	/* catch various bogus parameters */
 	if ((_ep == NULL) || (_req == NULL)) {
 		if (_ep == NULL)
-			ERR("*** %s --- _ep == NULL\n", __func__);
+			pr_err("udc: *** %s --- _ep == NULL\n", __func__);
 
 		if (_req == NULL)
-			ERR("*** %s --- _req == NULL\n", __func__);
+			pr_err("udc: *** %s --- _req == NULL\n", __func__);
 
 		return -EINVAL;
 	}
@@ -2756,13 +2756,13 @@ static int nbu2ss_ep_queue(
 	     || !list_empty(&req->queue))) {
 
 		if (!_req->complete)
-			ERR("*** %s --- !_req->complete\n", __func__);
+			pr_err("udc: *** %s --- !_req->complete\n", __func__);
 
 		if (!_req->buf)
-			ERR("*** %s --- !_req->buf\n", __func__);
+			pr_err("udc: *** %s --- !_req->buf\n", __func__);
 
 		if (!list_empty(&req->queue))
-			ERR("*** %s --- !list_empty(&req->queue)\n", __func__);
+			pr_err("udc: *** %s --- !list_empty(&req->queue)\n", __func__);
 
 		return -EINVAL;
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
@@ -2849,13 +2849,13 @@ static int nbu2ss_ep_dequeue(
 
 	/* catch various bogus parameters */
 	if ((_ep == NULL) || (_req == NULL)) {
-		/* ERR("%s, bad param(1)\n", __func__); */
+		/* pr_err("udc: %s, bad param(1)\n", __func__); */
 		return -EINVAL;
 	}
 
 	ep = container_of(_ep, struct nbu2ss_ep, ep);
 	if (!ep) {
-		ERR("%s, ep == NULL !!\n", __func__);
+		pr_err("udc: %s, ep == NULL !!\n", __func__);
 		return -EINVAL;
 	}
 
@@ -2895,19 +2895,19 @@ static int nbu2ss_ep_set_halt(struct usb_ep *_ep, int value)
 /*	INFO("=== %s()\n", __func__); */
 
 	if (!_ep) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("udc: %s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
 	ep = container_of(_ep, struct nbu2ss_ep, ep);
 	if (!ep) {
-		ERR("%s, bad ep\n", __func__);
+		pr_err("udc: %s, bad ep\n", __func__);
 		return -EINVAL;
 	}
 
 	udc = ep->udc;
 	if (!udc) {
-		ERR(" *** %s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "udc: *** %s, bad udc\n", __func__);
 		return -EINVAL;
 	}
 
@@ -2949,19 +2949,19 @@ static int nbu2ss_ep_fifo_status(struct usb_ep *_ep)
 /*	INFO("=== %s()\n", __func__); */
 
 	if (!_ep) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("udc: %s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
 	ep = container_of(_ep, struct nbu2ss_ep, ep);
 	if (!ep) {
-		ERR("%s, bad ep\n", __func__);
+		pr_err("udc: %s, bad ep\n", __func__);
 		return -EINVAL;
 	}
 
 	udc = ep->udc;
 	if (!udc) {
-		ERR("%s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "udc: %s, bad udc\n", __func__);
 		return -EINVAL;
 	}
 
@@ -2997,19 +2997,19 @@ static void  nbu2ss_ep_fifo_flush(struct usb_ep *_ep)
 /*	INFO("=== %s()\n", __func__); */
 
 	if (!_ep) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("udc: %s, bad param\n", __func__);
 		return;
 	}
 
 	ep = container_of(_ep, struct nbu2ss_ep, ep);
 	if (!_ep) {
-		ERR("%s, bad ep\n", __func__);
+		pr_err("udc: %s, bad ep\n", __func__);
 		return;
 	}
 
 	udc = ep->udc;
 	if (!udc) {
-		ERR("%s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "udc: %s, bad udc\n", __func__);
 		return;
 	}
 
@@ -3053,13 +3053,13 @@ static int nbu2ss_gad_get_frame(struct usb_gadget *pgadget)
 /*	INFO("=== %s()\n", __func__); */
 
 	if (pgadget == NULL) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("udc: %s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
 	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
 	if (udc == NULL) {
-		ERR("%s, udc == NULL\n", __func__);
+		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
 		return -EINVAL;
 	}
 
@@ -3083,13 +3083,13 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
 /*	INFO("=== %s()\n", __func__); */
 
 	if (pgadget == NULL) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("%s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
 	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
 	if (udc == NULL) {
-		ERR("%s, udc == NULL\n", __func__);
+		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
 		return -EINVAL;
 	}
 
@@ -3123,7 +3123,7 @@ static int nbu2ss_gad_set_selfpowered(struct usb_gadget *pgadget,
 /*	INFO("=== %s()\n", __func__); */
 
 	if (pgadget == NULL) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("udc: %s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
@@ -3152,7 +3152,7 @@ static int nbu2ss_gad_vbus_draw(struct usb_gadget *pgadget, unsigned mA)
 /*	INFO("=== %s()\n", __func__); */
 
 	if (pgadget == NULL) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("udc: %s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
@@ -3174,7 +3174,7 @@ static int nbu2ss_gad_pullup(struct usb_gadget *pgadget, int is_on)
 /*	INFO("=== %s()\n", __func__); */
 
 	if (pgadget == NULL) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("udc: %s, bad param\n", __func__);
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


