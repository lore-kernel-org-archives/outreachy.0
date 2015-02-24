X-GM-THRID: 2067485687808
X-Received: by 10.152.29.97 with SMTP id j1mr662470lah.3.1424788585332;
        Tue, 24 Feb 2015 06:36:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.132 with SMTP id ey4ls789475wid.48.gmail; Tue, 24 Feb
 2015 06:36:25 -0800 (PST)
X-Received: by 10.180.182.201 with SMTP id eg9mr7269wic.3.1424788585018;
        Tue, 24 Feb 2015 06:36:25 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x244.google.com (mail-wi0-x244.google.com. [2a00:1450:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id o3si916521wib.2.2015.02.24.06.36.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:36:25 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) client-ip=2a00:1450:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f196.google.com with SMTP id em10so10744425wid.3
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 06:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=SYaWpES3izn/pB0VcWF1xwUIWStba3xzJD4RQM7bBdg=;
        b=AyXAeEQF+XaufRQVX/NEwqgn4/JwztzM7l3wd++httZb4KfFBc0YqvKOvdd7C8GcQX
         i3plutjL6+l4Pisg8zpO4kWnYjBU1J0Bv9h3Tm7DQ36ew9muKR1AMDvuaogU4E1AvrBB
         CDCuuap+NWMGuyj/YV8+Yefru/Ab+LYWIc7cyYaJ1jRVK7IBvb4VzbY/9VzB9ofm3ThL
         8WFG5PVoVWS68yguTHTmg2y9VCVq41bfJGqgJtWAnmktXfJjxxjVUjPZihpvxayTXeAs
         Qb0CKEpnIQSBF8C9pp3he/wPILr+tWeU92lkOFvg8l8CwGMRmG4xl2txVXyYjzwSouio
         fOHA==
X-Received: by 10.195.12.35 with SMTP id en3mr31951115wjd.129.1424788584691;
        Tue, 24 Feb 2015 06:36:24 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.205])
        by mx.google.com with ESMTPSA id p1sm20807081wib.23.2015.02.24.06.36.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:36:23 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 2042E63386; Tue, 24 Feb 2015 17:36:20 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v5 4/6] Staging: emxx_udc: Replace custom printk macro ERR with dev_err
Date: Tue, 24 Feb 2015 17:36:18 +0300
Message-Id: <dec707b02efd14b1357872334da1d0134f315aa4.1424786861.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424786861.git.hamohammed.sa@gmail.com>
References: <cover.1424786861.git.hamohammed.sa@gmail.com>

This patch removes the other half of ERR macros that uses "printk(KERN_ERR"
and replace them with dev_err, to fix issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v5: Fix spelling mistakes

 drivers/staging/emxx_udc/emxx_udc.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index f33980c..ed1d044 100644
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


