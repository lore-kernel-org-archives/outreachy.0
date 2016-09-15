X-GM-THRID: 6330655085925761024
X-Received: by 10.157.14.134 with SMTP id 6mr7732742otj.35.1473970498074;
        Thu, 15 Sep 2016 13:14:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.70 with SMTP id d67ls1250650iod.10.gmail; Thu, 15 Sep
 2016 13:14:56 -0700 (PDT)
X-Received: by 10.107.134.134 with SMTP id q6mr8429897ioi.21.1473970496063;
        Thu, 15 Sep 2016 13:14:56 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si1533597pab.2.2016.09.15.13.14.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:14:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id z84so2629946pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 13:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=d+xbraICQl25WMLxDxgtQVM7OV8JBaelcHZncgc/txw=;
        b=RYZAeOhoKYXXzqXCdCraXNI6rOpDtiGXxJPKUDri1MWeiGSWrDOQEz0HYlO21+zCVw
         brdpo5rfYtmsh0OYeg7kHikkAPWMNQQD6OJSWPsdZPmmZdvJawYFNBhbi6w8PMX6Fnj8
         TH/K2t8gyNLPoNNLuS0xD2bOyynefSf2oNd0pm3tyn1cADlBXnEklL4MUnnjHzRebeIh
         OJKE6l7mU7Dp06kOFek2yKjLAXIWTlEdAU2pQZ7TuLKEyiPQs2xvWgHE4OINqvSVAsqm
         3vjppziAI8FGMFWuIjU5y74JG0TBYgEAowtGJPTTmuXHFJIlWRaUgylWnGSOoy5dHywj
         VSAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=d+xbraICQl25WMLxDxgtQVM7OV8JBaelcHZncgc/txw=;
        b=Uqa6aR+Ok53o9ztJCIBjALdz0ArhiL35AiiP/3H3Araibj+9DWMW8FYOmjQhKyHeCW
         5SXqCVhaGhIQHTUWUjmY51kmEfTr1H2o5NeemiW98QLTo7irHYjP3TSLmlewqPk53p31
         6VKubcm9oJjAl/ZO2LJ/xVI65JRlPeATTw6ni9ltHVUVguE38JlBcvjVXyr3mpXd01wS
         7escWY3qi23ZQcorqa+XODlwLAmvVMqqKX8iuah2VYdtVBm9IxX8LuvMT+8oD8Y3A3Zv
         Hm2ERT4fhKT7HMTg7xYVMfKS/OdPQHezP34qF0qA1XnSx8eUburO/rvrfWyYdV55mOe5
         OEcA==
X-Gm-Message-State: AE9vXwO2nx/MW3sE1LjP8t2b8qjxFZR9JiJ8hDcYHgyEXH2Ib07KcQh1gzM7iWzvdRETog==
X-Received: by 10.98.147.22 with SMTP id b22mr17380162pfe.88.1473970495846;
        Thu, 15 Sep 2016 13:14:55 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id xv9sm6952840pab.36.2016.09.15.13.14.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 13:14:55 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: emxx_udc: add braces to if-else block
Date: Fri, 16 Sep 2016 01:44:14 +0530
Message-Id: <20160915201414.10494-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

add braces to if/else clause to fix the checkpatch issue braces {}
should be used on all arms of if/else block. Does not affect flow
because only single statement inside if/else block.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index f4d9000..ffcb09a 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -478,9 +478,9 @@ static void _nbu2ss_dma_map_single(
 )
 {
 	if (req->req.dma == DMA_ADDR_INVALID) {
-		if (req->unaligned)
+		if (req->unaligned) {
 			req->req.dma = ep->phys_buf;
-		else {
+		} else {
 			req->req.dma = dma_map_single(
 				udc->gadget.dev.parent,
 				req->req.buf,
@@ -1236,9 +1236,9 @@ static int _nbu2ss_start_transfer(
 	req->dma_flag = FALSE;
 	req->div_len = 0;
 
-	if (req->req.length == 0)
+	if (req->req.length == 0) {
 		req->zero = false;
-	else {
+	} else {
 		if ((req->req.length % ep->ep.maxpacket) == 0)
 			req->zero = req->req.zero;
 		else
@@ -1941,9 +1941,9 @@ static void _nbu2ss_ep_done(
 	if (likely(req->req.status == -EINPROGRESS))
 		req->req.status = status;
 
-	if (ep->stalled)
+	if (ep->stalled) {
 		_nbu2ss_epn_set_stall(udc, ep);
-	else {
+	} else {
 		if (!list_empty(&ep->queue))
 			_nbu2ss_restert_transfer(ep);
 	}
@@ -2474,8 +2474,9 @@ static irqreturn_t _nbu2ss_udc_irq(int irq, void *_udc)
 			_nbu2ss_writel(&preg->USB_INT_STA, ~USB_INT_STA_RW);
 			_nbu2ss_writel(&preg->USB_INT_ENA, 0);
 			status = 0;
-		} else
+		} else {
 			status = _nbu2ss_readl(&preg->USB_INT_STA);
+		}
 
 		if (status == 0)
 			break;
-- 
2.9.2


