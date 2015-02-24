X-GM-THRID: 2067485687808
X-Received: by 10.180.83.168 with SMTP id r8mr1670969wiy.6.1424788273927;
        Tue, 24 Feb 2015 06:31:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.72 with SMTP id v8ls799242wiz.15.gmail; Tue, 24 Feb
 2015 06:31:12 -0800 (PST)
X-Received: by 10.180.182.201 with SMTP id eg9mr3388wic.3.1424788272139;
        Tue, 24 Feb 2015 06:31:12 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x244.google.com (mail-wi0-x244.google.com. [2a00:1450:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id ev8si912398wib.3.2015.02.24.06.31.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:31:12 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) client-ip=2a00:1450:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x244.google.com with SMTP id em10so10732909wid.3
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 06:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Cehaojd2c4emTrMqsPBMrn5y1aHzqT/7xyillIjm+BQ=;
        b=ZAO6P/2tA6qttPk2ui4+gzortPMPexirM3bWqdWduAONiYDNq41PqnU5v5ZZVabXe3
         7FidNvxKKkaH0kkzMGj828qo7i6uV2V6KT6oe7Imt6esBUPt7gPiT2/dPaJs4Xq+R+ZQ
         z5DHVdsUZGbJvTpejyon8V9R5TgmX0/ffXjVS7QaJhEs0lwTfg3oDGrGmRDvUd0kMTMP
         xHaQdgHLQXpvB6UEj28mnp5ArE3E/qrod6nAWDLRioJN1fksNRJmjffi6Qs4DDEVitu4
         XhcS5yb7NbkZ5FjcLtVadiBfJluEJBezIisPrWap3w0LvmS+ZunWQRYX7jOSvCthYzbP
         ROCA==
X-Received: by 10.194.191.228 with SMTP id hb4mr33769851wjc.116.1424788271933;
        Tue, 24 Feb 2015 06:31:11 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.205])
        by mx.google.com with ESMTPSA id r3sm56193174wjw.7.2015.02.24.06.31.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:31:11 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 985F363386; Tue, 24 Feb 2015 17:31:08 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v5 2/6] Staging: emxx_udc: Remove volatile from union usb_regs_access
Date: Tue, 24 Feb 2015 17:31:07 +0300
Message-Id: <e7ac0d2f1b92c9d1439cb862e75cc3069562d8c6.1424786861.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424786861.git.hamohammed.sa@gmail.com>
References: <cover.1424786861.git.hamohammed.sa@gmail.com>

volatile applies to a concrete variable definition, else it is useless.
This patch removes volatile from union usb_regs_access:
- to address compiler warning: "useless type qualifier"
- and fix checkpatch.pl warning about using volatiles:
"WARNING: Use of volatile is usually wrong"

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v5: Justify the removal of volatile 

 drivers/staging/emxx_udc/emxx_udc.c | 24 ++++++++++++------------
 drivers/staging/emxx_udc/emxx_udc.h |  2 +-
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index e33ccc4..c9f5e5d 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -567,7 +567,7 @@ static int EP0_out_PIO(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
 	u32		i;
 	int		nret   = 0;
 	u32		iWordLength = 0;
-	volatile union usb_reg_access *pBuf32 = (volatile union usb_reg_access *)pBuf;
+	union usb_reg_access *pBuf32 = (union usb_reg_access *)pBuf;
 
 	/*------------------------------------------------------------*/
 	/* Read Length */
@@ -592,8 +592,8 @@ static int EP0_out_OverBytes(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
 {
 	u32		i;
 	u32		iReadSize = 0;
-	volatile union usb_reg_access  Temp32;
-	volatile union usb_reg_access  *pBuf32 = (volatile union usb_reg_access *)pBuf;
+	union usb_reg_access  Temp32;
+	union usb_reg_access  *pBuf32 = (union usb_reg_access *)pBuf;
 
 	if ((0 < length) && (length < sizeof(u32))) {
 		Temp32.dw = _nbu2ss_readl(&udc->p_regs->EP0_READ);
@@ -613,7 +613,7 @@ static int EP0_in_PIO(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
 	u32		iMaxLength   = EP0_PACKETSIZE;
 	u32		iWordLength  = 0;
 	u32		iWriteLength = 0;
-	volatile union usb_reg_access  *pBuf32 = (volatile union usb_reg_access *)pBuf;
+	union usb_reg_access  *pBuf32 = (union usb_reg_access *)pBuf;
 
 	/*------------------------------------------------------------*/
 	/* Transfer Length */
@@ -638,8 +638,8 @@ static int EP0_in_PIO(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
 static int EP0_in_OverBytes(struct nbu2ss_udc *udc, u8 *pBuf, u32 iRemainSize)
 {
 	u32		i;
-	volatile union usb_reg_access  Temp32;
-	volatile union usb_reg_access  *pBuf32 = (volatile union usb_reg_access *)pBuf;
+	union usb_reg_access  Temp32;
+	union usb_reg_access  *pBuf32 = (union usb_reg_access *)pBuf;
 
 	if ((0 < iRemainSize) && (iRemainSize < sizeof(u32))) {
 		for (i = 0 ; i < iRemainSize ; i++)
@@ -900,8 +900,8 @@ static int _nbu2ss_epn_out_pio(
 	u32		i;
 	u32		data;
 	u32		iWordLength;
-	volatile union usb_reg_access	Temp32;
-	volatile union usb_reg_access	*pBuf32;
+	union usb_reg_access	Temp32;
+	union usb_reg_access	*pBuf32;
 	int		result = 0;
 	struct fc_regs	*preg = udc->p_regs;
 
@@ -912,7 +912,7 @@ static int _nbu2ss_epn_out_pio(
 		return 0;
 
 	pBuffer = (u8 *)req->req.buf;
-	pBuf32 = (volatile union usb_reg_access *)(pBuffer + req->req.actual);
+	pBuf32 = (union usb_reg_access *)(pBuffer + req->req.actual);
 
 	iWordLength = length / sizeof(u32);
 	if (iWordLength > 0) {
@@ -1123,8 +1123,8 @@ static int _nbu2ss_epn_in_pio(
 	u32		i;
 	u32		data;
 	u32		iWordLength;
-	volatile union usb_reg_access	Temp32;
-	volatile union usb_reg_access	*pBuf32 = NULL;
+	union usb_reg_access	Temp32;
+	union usb_reg_access	*pBuf32 = NULL;
 	int		result = 0;
 	struct fc_regs	*preg = udc->p_regs;
 
@@ -1133,7 +1133,7 @@ static int _nbu2ss_epn_in_pio(
 
 	if (length > 0) {
 		pBuffer = (u8 *)req->req.buf;
-		pBuf32 = (volatile union usb_reg_access *)(pBuffer + req->req.actual);
+		pBuf32 = (union usb_reg_access *)(pBuffer + req->req.actual);
 
 		iWordLength = length / sizeof(u32);
 		if (iWordLength > 0) {
diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index c1f98b3..7b2fcb6 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -636,7 +636,7 @@ struct nbu2ss_udc {
 };
 
 /* USB register access structure */
-volatile union usb_reg_access {
+union usb_reg_access {
 	struct {
 		unsigned char	DATA[4];
 	} byte;
-- 
1.9.1


