X-GM-THRID: 4349090594816
X-Received: by 10.180.101.101 with SMTP id ff5mr355192wib.5.1425033071897;
        Fri, 27 Feb 2015 02:31:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.167 with SMTP id an7ls123339lac.47.gmail; Fri, 27 Feb
 2015 02:31:11 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr1954103lab.0.1425033071356;
        Fri, 27 Feb 2015 02:31:11 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id l8si124961wia.0.2015.02.27.02.31.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:31:11 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x230.google.com with SMTP id x12so19136855wgg.11
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 02:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=cHcf9WpyqFpd9G+b8iyXB8CWbgEfbTVYA9dGojJd0bk=;
        b=IpVhu6Jc9qKORHaEIrAObZ1bAxWKWDsWNeEEHQL9ii5XCfdtsFOllzVZg5n8ajwS00
         4jc2eeb3c6tjFCYP06wctvbsVuu+nPG9phx07kRcfNB0UH+lm+OLmm13sKnjhIus8dXz
         0yY2o5Dt4vi50TvVMhxWaHwJDTAHR3dUUd+Z30a4bH+Jyw0d6rzeI1K9TrsyiL/KUL0j
         PvYDa1msB9aq8+X7u/Y2PiCaDGgajo9sppAAAMlg2kHvmDWWqlpuzIBRMQ2M2Boh2HW3
         R5fVbqLDnsOf7SOHes3JIo/lLs7zl9dgx5nB8VDkobu9o5k9hGUDacotC3RnONvTZ58+
         NcWw==
X-Received: by 10.194.239.129 with SMTP id vs1mr25794830wjc.158.1425033071234;
        Fri, 27 Feb 2015 02:31:11 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id ul1sm5356798wjc.0.2015.02.27.02.31.09
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:31:10 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 774366337C; Fri, 27 Feb 2015 13:31:07 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v8 2/5] Staging: emxx_udc: Replace custom printk macro ERR with pr_err
Date: Fri, 27 Feb 2015 13:31:06 +0300
Message-Id: <1425033066-20762-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425030785.git.hamohammed.sa@gmail.com>
References: <cover.1425030785.git.hamohammed.sa@gmail.com>

This patch removes half custom printk macros ERR and replace it with
pr_err, for no appropriate struct device *dev field where found for dev_err.
Issue addressed by checkpathc.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v6: Justify the use of pr_err instead of dev_err. 

 drivers/staging/emxx_udc/emxx_udc.c | 56 ++++++++++++++++++-------------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index f2ddad3..094e018 100644
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


