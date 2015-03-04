X-GM-THRID: 6035575144448
X-Received: by 10.194.63.208 with SMTP id i16mr514856wjs.2.1425462598418;
        Wed, 04 Mar 2015 01:49:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.202 with SMTP id fy10ls89028wib.15.canary; Wed, 04 Mar
 2015 01:49:58 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr508297wjb.1.1425462598083;
        Wed, 04 Mar 2015 01:49:58 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id v5si568877wif.3.2015.03.04.01.49.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 01:49:58 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesu56 with SMTP id u56so1692640wes.6
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 01:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5xj6XbT+aolUThRucm+wVREBa90/5ePk+uKRTPyD2NI=;
        b=XINMOPXbEBur6hzrsDj4bsiw/slD6KXfWmrQO9l80PBJJADVTpHTahSUBKSy8tKmL1
         HKPYZnJExYdXZGsAUuJ54sQcDmCqQ3faTgg9U/+5LruYmt2SRXo1krkBwA9LB/LtSDTy
         WN3c+vk0868wYsxr4SgigXjitLznWFu8eyTnSPTnfTRo2jVlvfs81chUjhDDsQtn1BUo
         gjcp1/Xrhzf1iEk/y3t++cFzJabpW+A/p6k/QQVEWgV/x+6EwoUtVYGAZrLLTWuLldG0
         nTsxr97nm37gFYYAf0PsmOVV45H6R2cDK73i31H1xDlKgulkyIe8/E1NqbunbULIzlSi
         lcYQ==
X-Received: by 10.180.210.228 with SMTP id mx4mr43166341wic.71.1425462597898;
        Wed, 04 Mar 2015 01:49:57 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([212.138.130.2])
        by mx.google.com with ESMTPSA id fo8sm6288251wib.14.2015.03.04.01.49.56
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 01:49:57 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 34BDD62676; Wed,  4 Mar 2015 12:10:28 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: emxx_udc: Clean dev_err() logging
Date: Wed,  4 Mar 2015 12:10:24 +0300
Message-Id: <1425460224-8110-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err. dev_err includes information about:
 (devcice, driver, specific instance of device, etc) in the log printout, so there is no need for  __func__.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
note: this patch separated from "Staging: emxx_udc: Fix checkpatch.pl warnings" patchset.

 drivers/staging/emxx_udc/emxx_udc.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 35dc1c4..cfe55dc 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -2632,7 +2632,7 @@ static int nbu2ss_ep_enable(
 	if ((udc->driver == NULL)
 		|| (udc->gadget.speed == USB_SPEED_UNKNOWN)) {
 
-		dev_err(ep->udc->dev, " *** %s, udc !!\n", __func__);
+		dev_err(ep->udc->dev, "  udc !!\n");
 		return -ESHUTDOWN;
 	}
 
@@ -2773,8 +2773,7 @@ static int nbu2ss_ep_queue(
 	}
 
 	if (unlikely(!udc->driver)) {
-		dev_err(udc->dev, "%s, bogus device state %p\n", __func__,
-				udc->driver);
+		dev_err(udc->dev, "bogus device state %p\n", udc->driver);
 		return -ESHUTDOWN;
 	}
 
@@ -2813,8 +2812,7 @@ static int nbu2ss_ep_queue(
 
 		result = _nbu2ss_start_transfer(udc, ep, req, FALSE);
 		if (result < 0) {
-			dev_err(udc->dev, " *** %s, result = %d\n", __func__,
-					result);
+			dev_err(udc->dev, " ** result = %d\n", result);
 			list_del(&req->queue);
 		} else if ((ep->epnum > 0) && (ep->direct == USB_DIR_OUT)) {
 #ifdef USE_DMA
@@ -2904,7 +2902,7 @@ static int nbu2ss_ep_set_halt(struct usb_ep *_ep, int value)
 
 	udc = ep->udc;
 	if (!udc) {
-		dev_err(ep->udc->dev, " *** %s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, " *** bad udc\n");
 		return -EINVAL;
 	}
 
@@ -2958,7 +2956,7 @@ static int nbu2ss_ep_fifo_status(struct usb_ep *_ep)
 
 	udc = ep->udc;
 	if (!udc) {
-		dev_err(ep->udc->dev, "%s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "bad udc\n");
 		return -EINVAL;
 	}
 
@@ -3006,7 +3004,7 @@ static void  nbu2ss_ep_fifo_flush(struct usb_ep *_ep)
 
 	udc = ep->udc;
 	if (!udc) {
-		dev_err(ep->udc->dev, "%s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "bad udc\n");
 		return;
 	}
 
@@ -3056,7 +3054,7 @@ static int nbu2ss_gad_get_frame(struct usb_gadget *pgadget)
 
 	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
 	if (udc == NULL) {
-		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
+		dev_err(&pgadget->dev, "udc == NULL\n");
 		return -EINVAL;
 	}
 
@@ -3086,7 +3084,7 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
 
 	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
 	if (udc == NULL) {
-		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
+		dev_err(&pgadget->dev, "udc == NULL\n");
 		return -EINVAL;
 	}
 
-- 
1.9.1


