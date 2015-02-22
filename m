X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.167.98 with SMTP id zn2mr901371lbb.6.1424648434828;
        Sun, 22 Feb 2015 15:40:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.44.232 with SMTP id h8ls481121lam.30.gmail; Sun, 22 Feb
 2015 15:40:33 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr944987lbc.22.1424648433314;
        Sun, 22 Feb 2015 15:40:33 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id ta1si563850wic.1.2015.02.22.15.40.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 15:40:33 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f193.google.com with SMTP id r20so6229093wiv.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 15:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZKZww5iNTtnTAnP/pTQGIEmLPtnfzCTpNPPKvsfKhmw=;
        b=E5r96yS62Z18sol00AGKF5P5HxxR8TOIn+hOoDDeu0FJD7M6Zy+qgSZghOFDU68kPO
         m5LeLDet3vpIGvFEJR5z8Co7WKH06UQzcF4yzfypYisw/rXVuudSPF0Fh3z7sFOSHUBz
         nHqKZgb/UZfhllVCQ6Cn8SQGACSlduUfqjJqQqqzLVD70WeFh9EcBfdg4jxOEVhmKfcc
         ccpHtbKpS3SqLHV1GeMFVK7IrtZHuP9YYowQ5YdtspCbJn350q28Ofb3dhsrGATa4qRY
         YWoTgIWYqDtCDnxGRJb+x3uJ3qL/l00lRd/30MZ8mv5wHQ6HNUqqWNIW/jkdUADKNcbA
         /ehw==
X-Received: by 10.181.8.75 with SMTP id di11mr10621205wid.26.1424648433190;
        Sun, 22 Feb 2015 15:40:33 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([95.187.195.53])
        by mx.google.com with ESMTPSA id fa3sm13394983wib.17.2015.02.22.15.40.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 15:40:32 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id B2AF0632BF; Mon, 23 Feb 2015 02:40:29 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v4 3/6] Staging: emxx_udc: Replace custom printk micro ERR with pr_err
Date: Mon, 23 Feb 2015 02:40:15 +0300
Message-Id: <3f24e6248385205c51c93dfdd43f3b3f9caec152.1424645871.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424645871.git.hamohammed.sa@gmail.com>
References: <cover.1424645871.git.hamohammed.sa@gmail.com>

This patch removes half custom printk micros ERR and replace it with
pr_err. pr_err used because no appropriate dev variable were found.  Issue addressed by checkpathc.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
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


