X-GM-THRID: 6035575144448
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,44622202b52d33bf
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.162.135 with SMTP id ya7mr4003052lbb.14.1425321474919;
        Mon, 02 Mar 2015 10:37:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.77.114 with SMTP id r18ls636271wiw.22.gmail; Mon, 02 Mar
 2015 10:37:54 -0800 (PST)
X-Received: by 10.180.83.168 with SMTP id r8mr2427407wiy.6.1425321474475;
        Mon, 02 Mar 2015 10:37:54 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id l8si732363wia.0.2015.03.02.10.37.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:37:54 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id em10so16271166wid.0
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 10:37:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=q4o32yfjB84SkAk6JzryBC7YKeK6xg02ayTYQpPs/no=;
        b=gRbPE03QPPBygu8YM2ajtxYai7ZDqtz/7rWQzMpOo9ZsAu0XHZp61dhKuxxYvtVUCV
         0caadPXyXj5VhObofKk9OA9gfh+/HyI93im61ySxOTK2iG3ZUrDFoWICVDt4A6JmJbC8
         NEIy3Lr9DU3vwpbkZ6GbBy5gJiRW4uj3sGnIVKd6eNqfNQ7BVE/ad7Mk0RkGxrWNN3E4
         Ehxj3naEhvRQ5run1zhVcwta9HFRUtkvBkxwRyecDULCUYSvoD1Y5w/YOvvSvT18MW8a
         RP0D7q2agI0Bd8fGu/LpsBdBaVWBzftxAC/Zm226ZqO4jXKbCDhtxnwhYY+9FbA81VB9
         tD6w==
X-Received: by 10.194.243.1 with SMTP id wu1mr62710369wjc.69.1425321474342;
        Mon, 02 Mar 2015 10:37:54 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id ha5sm17207530wib.1.2015.03.02.10.37.48
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:37:53 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id AC193621FB; Mon,  2 Mar 2015 21:37:39 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v10 2/4] Staging: emxx_udc: Replace custom printk macro ERR with dev_err or pr_err
Date: Mon,  2 Mar 2015 21:37:38 +0300
Message-Id: <1425321458-29370-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes the use of custom printk macros ERR and replace it
with dev_err, or pr_err in the following cases:
- if no appropriate struct device *dev field where found for dev_err.
- or dev could be null eg. "dev_err(udc->dev" not possible inside "if
  (udc == null)"
Issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v10: nothing
v9:  merged two patches into one, and justify the use of pr_err

 drivers/staging/emxx_udc/emxx_udc.c | 80 +++++++++++++++++++------------------
 1 file changed, 41 insertions(+), 39 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 4cc6296..35dc1c4 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -115,7 +115,7 @@ static void _nbu2ss_dump_register(struct nbu2ss_udc *udc)
 	pr_info("=== %s()\n", __func__);
 
 	if (udc == NULL) {
-		ERR("%s udc == NULL\n", __func__);
+		pr_err("%s udc == NULL\n", __func__);
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
+		dev_err(udc->dev, " Overrun Error\n");
+		dev_err(udc->dev, " actual = %d, length = %d\n",
 			req->req.actual, req->req.length);
 		result = -EOVERFLOW;
 	}
@@ -1638,7 +1638,7 @@ static int std_req_get_status(struct nbu2ss_udc *udc)
 		_nbu2ss_ep0_in_transfer(udc, &udc->ep[0], &udc->ep0_req);
 
 	} else {
-		ERR("*** Error GET_STATUS\n");
+		dev_err(udc->dev, " Error GET_STATUS\n");
 	}
 
 	return result;
@@ -2345,7 +2345,7 @@ static int _nbu2ss_enable_controller(struct nbu2ss_udc *udc)
 		waitcnt++;
 		udelay(1);	/* 1us wait */
 		if (waitcnt == EPC_PLL_LOCK_COUNT) {
-			ERR("*** Reset Cancel failed\n");
+			dev_err(udc->dev, "*** Reset Cancel failed\n");
 			return -EINVAL;
 		}
 	};
@@ -2607,13 +2607,13 @@ static int nbu2ss_ep_enable(
 	struct nbu2ss_udc	*udc;
 
 	if ((_ep == NULL) || (desc == NULL)) {
-		ERR(" *** %s, bad param\n", __func__);
+		pr_err(" *** %s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
 	ep = container_of(_ep, struct nbu2ss_ep, ep);
 	if ((ep == NULL) || (ep->udc == NULL)) {
-		ERR(" *** %s, ep == NULL !!\n", __func__);
+		pr_err(" *** %s, ep == NULL !!\n", __func__);
 		return -EINVAL;
 	}
 
@@ -2621,7 +2621,7 @@ static int nbu2ss_ep_enable(
 	if ((ep_type == USB_ENDPOINT_XFER_CONTROL)
 		|| (ep_type == USB_ENDPOINT_XFER_ISOC)) {
 
-		ERR(" *** %s, bat bmAttributes\n", __func__);
+		pr_err(" *** %s, bat bmAttributes\n", __func__);
 		return -EINVAL;
 	}
 
@@ -2632,7 +2632,7 @@ static int nbu2ss_ep_enable(
 	if ((udc->driver == NULL)
 		|| (udc->gadget.speed == USB_SPEED_UNKNOWN)) {
 
-		ERR(" *** %s, udc !!\n", __func__);
+		dev_err(ep->udc->dev, " *** %s, udc !!\n", __func__);
 		return -ESHUTDOWN;
 	}
 
@@ -2667,13 +2667,13 @@ static int nbu2ss_ep_disable(struct usb_ep *_ep)
 	unsigned long		flags;
 
 	if (_ep == NULL) {
-		ERR(" *** %s, bad param\n", __func__);
+		pr_err(" *** %s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
 	ep = container_of(_ep, struct nbu2ss_ep, ep);
 	if ((ep == NULL) || (ep->udc == NULL)) {
-		ERR(" *** %s, ep == NULL !!\n", __func__);
+		pr_err("udc: *** %s, ep == NULL !!\n", __func__);
 		return -EINVAL;
 	}
 
@@ -2737,10 +2737,10 @@ static int nbu2ss_ep_queue(
 	/* catch various bogus parameters */
 	if ((_ep == NULL) || (_req == NULL)) {
 		if (_ep == NULL)
-			ERR("*** %s --- _ep == NULL\n", __func__);
+			pr_err("udc: %s --- _ep == NULL\n", __func__);
 
 		if (_req == NULL)
-			ERR("*** %s --- _req == NULL\n", __func__);
+			pr_err("udc: %s --- _req == NULL\n", __func__);
 
 		return -EINVAL;
 	}
@@ -2751,13 +2751,13 @@ static int nbu2ss_ep_queue(
 	     || !list_empty(&req->queue))) {
 
 		if (!_req->complete)
-			ERR("*** %s --- !_req->complete\n", __func__);
+			pr_err("udc: %s --- !_req->complete\n", __func__);
 
 		if (!_req->buf)
-			ERR("*** %s --- !_req->buf\n", __func__);
+			pr_err("udc:%s --- !_req->buf\n", __func__);
 
 		if (!list_empty(&req->queue))
-			ERR("*** %s --- !list_empty(&req->queue)\n", __func__);
+			pr_err("%s --- !list_empty(&req->queue)\n", __func__);
 
 		return -EINVAL;
 	}
@@ -2773,7 +2773,8 @@ static int nbu2ss_ep_queue(
 	}
 
 	if (unlikely(!udc->driver)) {
-		ERR("%s, bogus device state %p\n", __func__, udc->driver);
+		dev_err(udc->dev, "%s, bogus device state %p\n", __func__,
+				udc->driver);
 		return -ESHUTDOWN;
 	}
 
@@ -2812,7 +2813,8 @@ static int nbu2ss_ep_queue(
 
 		result = _nbu2ss_start_transfer(udc, ep, req, FALSE);
 		if (result < 0) {
-			ERR(" *** %s, result = %d\n", __func__, result);
+			dev_err(udc->dev, " *** %s, result = %d\n", __func__,
+					result);
 			list_del(&req->queue);
 		} else if ((ep->epnum > 0) && (ep->direct == USB_DIR_OUT)) {
 #ifdef USE_DMA
@@ -2844,13 +2846,13 @@ static int nbu2ss_ep_dequeue(
 
 	/* catch various bogus parameters */
 	if ((_ep == NULL) || (_req == NULL)) {
-		/* ERR("%s, bad param(1)\n", __func__); */
+		/* pr_err("%s, bad param(1)\n", __func__); */
 		return -EINVAL;
 	}
 
 	ep = container_of(_ep, struct nbu2ss_ep, ep);
 	if (!ep) {
-		ERR("%s, ep == NULL !!\n", __func__);
+		pr_err("%s, ep == NULL !!\n", __func__);
 		return -EINVAL;
 	}
 
@@ -2890,19 +2892,19 @@ static int nbu2ss_ep_set_halt(struct usb_ep *_ep, int value)
 /*	INFO("=== %s()\n", __func__); */
 
 	if (!_ep) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("%s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
 	ep = container_of(_ep, struct nbu2ss_ep, ep);
 	if (!ep) {
-		ERR("%s, bad ep\n", __func__);
+		pr_err("%s, bad ep\n", __func__);
 		return -EINVAL;
 	}
 
 	udc = ep->udc;
 	if (!udc) {
-		ERR(" *** %s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, " *** %s, bad udc\n", __func__);
 		return -EINVAL;
 	}
 
@@ -2944,19 +2946,19 @@ static int nbu2ss_ep_fifo_status(struct usb_ep *_ep)
 /*	INFO("=== %s()\n", __func__); */
 
 	if (!_ep) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("%s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
 	ep = container_of(_ep, struct nbu2ss_ep, ep);
 	if (!ep) {
-		ERR("%s, bad ep\n", __func__);
+		pr_err("%s, bad ep\n", __func__);
 		return -EINVAL;
 	}
 
 	udc = ep->udc;
 	if (!udc) {
-		ERR("%s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "%s, bad udc\n", __func__);
 		return -EINVAL;
 	}
 
@@ -2992,19 +2994,19 @@ static void  nbu2ss_ep_fifo_flush(struct usb_ep *_ep)
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
+		dev_err(ep->udc->dev, "%s, bad udc\n", __func__);
 		return;
 	}
 
@@ -3048,13 +3050,13 @@ static int nbu2ss_gad_get_frame(struct usb_gadget *pgadget)
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
 
@@ -3078,13 +3080,13 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
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
 
@@ -3118,7 +3120,7 @@ static int nbu2ss_gad_set_selfpowered(struct usb_gadget *pgadget,
 /*	INFO("=== %s()\n", __func__); */
 
 	if (pgadget == NULL) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("%s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
@@ -3147,7 +3149,7 @@ static int nbu2ss_gad_vbus_draw(struct usb_gadget *pgadget, unsigned mA)
 /*	INFO("=== %s()\n", __func__); */
 
 	if (pgadget == NULL) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("%s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
@@ -3169,7 +3171,7 @@ static int nbu2ss_gad_pullup(struct usb_gadget *pgadget, int is_on)
 /*	INFO("=== %s()\n", __func__); */
 
 	if (pgadget == NULL) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("%s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
@@ -3340,7 +3342,7 @@ static int nbu2ss_drv_probe(struct platform_device *pdev)
 
 	/* USB Function Controller Interrupt */
 	if (status != 0) {
-		ERR("request_irq(USB_UDC_IRQ_1) failed\n");
+		dev_err(udc->dev, "request_irq(USB_UDC_IRQ_1) failed\n");
 		goto cleanup1;
 	}
 
@@ -3360,7 +3362,7 @@ static int nbu2ss_drv_probe(struct platform_device *pdev)
 				udc);
 
 	if (status != 0) {
-		ERR("request_irq(INT_VBUS) failed\n");
+		dev_err(udc->dev, "request_irq(INT_VBUS) failed\n");
 		goto cleanup1;
 	}
 
-- 
1.9.1


