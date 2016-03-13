X-GM-THRID: 6261659863526408192
X-Received: by 10.28.189.130 with SMTP id n124mr1544057wmf.4.1457906296852;
        Sun, 13 Mar 2016 14:58:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.109.91 with SMTP id i88ls438931wmc.42.canary; Sun, 13 Mar
 2016 14:58:16 -0700 (PDT)
X-Received: by 10.28.47.11 with SMTP id v11mr1525009wmv.0.1457906296355;
        Sun, 13 Mar 2016 14:58:16 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id 185si492394wml.0.2016.03.13.14.58.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 14:58:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id p65so80042168wmp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 14:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=KHyxQwRslPia/JgyyI3rAeaDuTSG75bRm3ejWydbjug=;
        b=07NsT4O7wUtMZTIKJgmdgcGBpxQ7R5np2VL183ytRDTbhzybW8NBTG0wWo2t5IgWnC
         xICKe57bRVjoldoiRoNFci4RYoXVXDNFwPBbLqmPsCixNnnAb7WKhwW4hpNJhy6WFC1w
         ZQgitA30Hz2C/8vUllWEh0Pr3C61mBveAkC58KsIkIU5VcXGh5eyprrbmzSzVuDp1rnm
         WJOaMHyMiEzXepDXwkoAJJdnMVy1yuMK2mhN1BY1KsvfH8y+2bc41LWtUty1784gN8D1
         P2S79OTQbAQmuDlSCTnoM8xwyT+6tK02lLsV9132DWy6vkvgfbnqU7ieEONcm1BCyLLl
         L/8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KHyxQwRslPia/JgyyI3rAeaDuTSG75bRm3ejWydbjug=;
        b=iuINrbqDVcMVN3Toz0vt8MWFA8zsLbDcFAQUfhvGkaemI0b5gAhlOHPgkGvL344WXt
         uc3dW5qkIVoPqNrVO1fUmDQfdRMnejxuYbuhZe+mVbxpBUqWYKznBXSz7GOfoKU4/4ip
         6cbq4RadYpBqrGWqTt6YRrB/iy/yxp4z0P38kefcgB4YAAwa26Lc2eC8UO0jiKgfJYvZ
         u+nyDnIi6LZFARgs+1Xrb8bi8saN6lC38iuGxVSftykJRsb2GfbWfTkcc2UV35U/wv/d
         /fxe7E22+5MfriZtb4A7Of/cV2u4Xty7m3jkSAvvSQXU6d85yNlWu/Nc96cCnVPvKe8k
         HYaw==
X-Gm-Message-State: AD7BkJInJenMjOKoHMqBmHFpIAW/wD8y9tRuFSku+6GamwUR9SRtiIpdvQ8GYw1zL/61yw==
X-Received: by 10.28.125.141 with SMTP id y135mr13850887wmc.83.1457906296201;
        Sun, 13 Mar 2016 14:58:16 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([95.12.73.44])
        by smtp.gmail.com with ESMTPSA id v188sm13175356wmv.3.2016.03.13.14.58.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 14:58:15 -0700 (PDT)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: emxx_udc: Add space around '-'
Date: Sun, 13 Mar 2016 23:58:08 +0200
Message-Id: <1457906288-6349-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '-'. Problem found using checkpatch.pl
CHECK: spaces preferred around that '-' (ctx:VxV)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 597b78d..b79439a 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -421,9 +421,9 @@ static void _nbu2ss_ep_dma_abort(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep)
 {
 	struct fc_regs	*preg = udc->p_regs;
 
-	_nbu2ss_bitclr(&preg->EP_DCR[ep->epnum-1].EP_DCR1, DCR1_EPn_REQEN);
+	_nbu2ss_bitclr(&preg->EP_DCR[ep->epnum - 1].EP_DCR1, DCR1_EPn_REQEN);
 	mdelay(DMA_DISABLE_TIME);	/* DCR1_EPn_REQEN Clear */
-	_nbu2ss_bitclr(&preg->EP_REGS[ep->epnum-1].EP_DMA_CTRL, EPn_DMA_EN);
+	_nbu2ss_bitclr(&preg->EP_REGS[ep->epnum - 1].EP_DMA_CTRL, EPn_DMA_EN);
 }
 
 /*-------------------------------------------------------------------------*/
@@ -912,7 +912,7 @@ static int _nbu2ss_epn_out_pio(
 		/* Copy of every four bytes */
 		for (i = 0; i < iWordLength; i++) {
 			pBuf32->dw =
-			_nbu2ss_readl(&preg->EP_REGS[ep->epnum-1].EP_READ);
+			_nbu2ss_readl(&preg->EP_REGS[ep->epnum - 1].EP_READ);
 			pBuf32++;
 		}
 		result = iWordLength * sizeof(u32);
@@ -922,7 +922,7 @@ static int _nbu2ss_epn_out_pio(
 	if (data > 0) {
 		/*---------------------------------------------------------*/
 		/* Copy of fraction byte */
-		Temp32.dw = _nbu2ss_readl(&preg->EP_REGS[ep->epnum-1].EP_READ);
+		Temp32.dw = _nbu2ss_readl(&preg->EP_REGS[ep->epnum - 1].EP_READ);
 		for (i = 0 ; i < data ; i++)
 			pBuf32->byte.DATA[i] = Temp32.byte.DATA[i];
 		result += data;
@@ -1131,7 +1131,7 @@ static int _nbu2ss_epn_in_pio(
 		if (iWordLength > 0) {
 			for (i = 0; i < iWordLength; i++) {
 				_nbu2ss_writel(
-					&preg->EP_REGS[ep->epnum-1].EP_WRITE
+					&preg->EP_REGS[ep->epnum - 1].EP_WRITE
 					, pBuf32->dw
 				);
 
@@ -1297,7 +1297,7 @@ static void _nbu2ss_restert_transfer(struct nbu2ss_ep *ep)
 
 	if (ep->epnum > 0) {
 		length = _nbu2ss_readl(
-			&ep->udc->p_regs->EP_REGS[ep->epnum-1].EP_LEN_DCNT);
+			&ep->udc->p_regs->EP_REGS[ep->epnum - 1].EP_LEN_DCNT);
 
 		length &= EPn_LDATA;
 		if (length < ep->ep.maxpacket)
@@ -1470,7 +1470,7 @@ static int _nbu2ss_get_ep_stall(struct nbu2ss_udc *udc, u8 ep_adrs)
 		bit_data = EP0_STL;
 
 	} else {
-		data = _nbu2ss_readl(&preg->EP_REGS[epnum-1].EP_CONTROL);
+		data = _nbu2ss_readl(&preg->EP_REGS[epnum - 1].EP_CONTROL);
 		if ((data & EPn_EN) == 0)
 			return -1;
 
@@ -1565,7 +1565,7 @@ static void _nbu2ss_epn_set_stall(
 			; limit_cnt++) {
 
 			regdata = _nbu2ss_readl(
-				&preg->EP_REGS[ep->epnum-1].EP_STATUS);
+				&preg->EP_REGS[ep->epnum - 1].EP_STATUS);
 
 			if ((regdata & EPn_IN_DATA) == 0)
 				break;
@@ -2002,7 +2002,7 @@ static inline void _nbu2ss_epn_in_int(
 		if (req->zero && ((req->req.actual % ep->ep.maxpacket) == 0)) {
 
 			status =
-			_nbu2ss_readl(&preg->EP_REGS[ep->epnum-1].EP_STATUS);
+			_nbu2ss_readl(&preg->EP_REGS[ep->epnum - 1].EP_STATUS);
 
 			if ((status & EPn_IN_FULL) == 0) {
 				/*-----------------------------------------*/
@@ -2917,7 +2917,7 @@ static int nbu2ss_ep_fifo_status(struct usb_ep *_ep)
 		data = _nbu2ss_readl(&preg->EP0_LENGTH) & EP0_LDATA;
 
 	} else {
-		data = _nbu2ss_readl(&preg->EP_REGS[ep->epnum-1].EP_LEN_DCNT)
+		data = _nbu2ss_readl(&preg->EP_REGS[ep->epnum - 1].EP_LEN_DCNT)
 			& EPn_LDATA;
 	}
 
-- 
1.9.1


