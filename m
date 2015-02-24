X-GM-THRID: 2067485687808
X-Received: by 10.152.4.229 with SMTP id n5mr2183438lan.1.1424788435125;
        Tue, 24 Feb 2015 06:33:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.95.133 with SMTP id dk5ls775835wib.47.gmail; Tue, 24 Feb
 2015 06:33:54 -0800 (PST)
X-Received: by 10.180.94.134 with SMTP id dc6mr2147673wib.2.1424788434686;
        Tue, 24 Feb 2015 06:33:54 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x242.google.com (mail-we0-x242.google.com. [2a00:1450:400c:c03::242])
        by gmr-mx.google.com with ESMTPS id l8si1097267wia.0.2015.02.24.06.33.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:33:54 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::242 as permitted sender) client-ip=2a00:1450:400c:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::242 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x242.google.com with SMTP id k11so8653463wes.1
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 06:33:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Q16f9BVQtzQI5xTyjhwH6LVQYrnQJVbcfd5JxmcxPqE=;
        b=MGPOaq0a6KuYhMg4csF4f0QmTd7hMRJX7VGdKvq4uAwgDSY/uzc/wRU13egVcfPkMa
         GTEOLRDizlEt2adG1G2LGhXyvG9Oor4af8aoYSvUfTBOQ90jtBr+dl7go4UaZljuda6+
         INcJNoUfTBXxONNv8BFmxKcltIbQqM5Mm2ENyard7JRRUWQlLFYS4aMbpkihzwWC5e70
         5wzgznZ2BJyyo6/prCQfQlaKEbP6kBO6Xygi7WGPKNCYLNnNj0RyS08xumzb6+I0tfr+
         xVNRvRaiNkuANGwAJJM/NtweVe00/YYfiSRqnJcM0nhyFM8PVUxypadUD8zfKDboR+fL
         XvJA==
X-Received: by 10.181.27.168 with SMTP id jh8mr31026613wid.56.1424788434574;
        Tue, 24 Feb 2015 06:33:54 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.205])
        by mx.google.com with ESMTPSA id ga8sm20818845wib.6.2015.02.24.06.33.53
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:33:53 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 1807B63386; Tue, 24 Feb 2015 17:33:50 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v5 3/6] Staging: emxx_udc: Replace custom printk macro ERR with pr_err
Date: Tue, 24 Feb 2015 17:33:49 +0300
Message-Id: <d2e65fddab2025261f56081beab5b0bac1e53bda.1424786861.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424786861.git.hamohammed.sa@gmail.com>
References: <cover.1424786861.git.hamohammed.sa@gmail.com>

This patch removes half custom printk macros ERR and replace it with
pr_err. Issue addressed by checkpathc.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v5: Fix spelling mistakes

 drivers/staging/emxx_udc/emxx_udc.c | 56 ++++++++++++++++++-------------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index c9f5e5d..f33980c 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -115,7 +115,7 @@ static void _nbu2ss_dump_register(struct nbu2ss_udc *udc)
 	pr_info("=== %s()\n", __func__);
 
 	if (udc == NULL) {
-		ERR("%s udc == NULL\n", __func__);
+		pr_err("udc: %s udc == NULL\n", __func__);
 		return;
 	}
 
@@ -2258,7 +2258,7 @@ static int _nbu2ss_pullup(struct nbu2ss_udc *udc, int is_on)
 	u32	reg_dt;
 
 	if (!udc) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("udc: %s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
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
+		pr_err("udc:  *** %s, bat bmAttributes\n", __func__);
 		return -EINVAL;
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
+		pr_err("udc: *** %s, bad udc\n", __func__);
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
+		pr_err("udc: %s, bad udc\n", __func__);
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
+		pr_err("udc: %s, bad udc\n", __func__);
 		return;
 	}
 
@@ -3053,7 +3053,7 @@ static int nbu2ss_gad_get_frame(struct usb_gadget *pgadget)
 /*	INFO("=== %s()\n", __func__); */
 
 	if (pgadget == NULL) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("udc: %s, bad param\n", __func__);
 		return -EINVAL;
 	}
 
@@ -3083,7 +3083,7 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
 /*	INFO("=== %s()\n", __func__); */
 
 	if (pgadget == NULL) {
-		ERR("%s, bad param\n", __func__);
+		pr_err("%s, bad param\n", __func__);
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
 
-- 
1.9.1


