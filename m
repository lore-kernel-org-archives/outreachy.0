X-GM-THRID: 2067485687808
X-Received: by 10.152.19.100 with SMTP id d4mr910399lae.7.1424648508451;
        Sun, 22 Feb 2015 15:41:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.5.33 with SMTP id cj1ls527012lad.53.gmail; Sun, 22 Feb
 2015 15:41:47 -0800 (PST)
X-Received: by 10.112.160.3 with SMTP id xg3mr899325lbb.5.1424648507884;
        Sun, 22 Feb 2015 15:41:47 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id by11si786316wib.1.2015.02.22.15.41.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 15:41:47 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x241.google.com with SMTP id r20so6230874wiv.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 15:41:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=33VsD/E/LOQ/taOXrZS6Bv0+AWo6glk/kLUz2B7jNjQ=;
        b=Kytvr0OKOfUix4Y4aHc+p3pOWUV/stFo1IU1jDTwp04gbjhAPFW6zLZAIdCVObJowe
         4tCIWS6lZhpXzSLZW0/V90Lq0Q/oft4xGkEl5t4wrUZ5+2Xc14YOIs3GMlDQQm9Kl6b2
         TXBrJyuY0OLu9J1XDwK4atm3qAkXzr9oS53WTNP+8iuadbKsfNfzuSt6wO6CEq3AdwFw
         essehTjP6KabJdpWXMdojPjpNPknMwVsY/rQ5HzR281bO6PG40B+sjJ422TOz1nTlJRk
         q+7XnwrY8kyCb2dF4e9zBj+PIU07W4ydjmiyzwL59xTUzAthDgSybnNrdDSvlI9tnoOz
         2FSQ==
X-Received: by 10.180.98.131 with SMTP id ei3mr15344556wib.62.1424648507782;
        Sun, 22 Feb 2015 15:41:47 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([95.187.195.53])
        by mx.google.com with ESMTPSA id lx10sm21356009wjb.17.2015.02.22.15.41.46
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 15:41:47 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 254DB632BF; Mon, 23 Feb 2015 02:41:44 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v4 4/6] Staging: emxx_udc: Replace custom printk micro ERR with dev_err
Date: Mon, 23 Feb 2015 02:41:43 +0300
Message-Id: <65ad55db16d7829286383d9e37ad6f5456388918.1424645872.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424645871.git.hamohammed.sa@gmail.com>
References: <cover.1424645871.git.hamohammed.sa@gmail.com>

This patch removes the other half of ERR micros that uses "printk(KERN_ERR" and replace them with dev_err, to fix issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index f33980c..bf4801d 100644
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
@@ -2637,7 +2637,7 @@ static int nbu2ss_ep_enable(
 	if ((udc->driver == NULL)
 		|| (udc->gadget.speed == USB_SPEED_UNKNOWN)) {
 
-		ERR(" *** %s, udc !!\n", __func__);
+		dev_err(udc->dev, " *** %s, udc !!\n", __func__);
 		return -ESHUTDOWN;
 	}
 
@@ -2778,7 +2778,7 @@ static int nbu2ss_ep_queue(
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


