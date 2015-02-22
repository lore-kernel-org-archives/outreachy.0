X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.1.5 with SMTP id 5mr913022lai.4.1424648123731;
        Sun, 22 Feb 2015 15:35:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.14 with SMTP id t14ls478882laz.61.gmail; Sun, 22 Feb
 2015 15:35:22 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr943747lbc.22.1424648122206;
        Sun, 22 Feb 2015 15:35:22 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id by11si785777wib.1.2015.02.22.15.35.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 15:35:22 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x241.google.com with SMTP id r20so6221615wiv.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 15:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Z2trWhqGkwgVkz2/g6wiNRXTcmdAcNRdBwb1llbHO2c=;
        b=rVTpQFgbpQlW7dujG9OztqPQlyTER/wiTo+qHUdpMs4G1C58kdJJSr4oeSw3gLKt3k
         /rquBHWMDQnxCf190OTYOk7oMmHNA0oD8CrkX9Dzzfldwed4PAKpfut18Z7XIxE/XhPO
         Yw7/3QH5wXuAIaxxBaY/ef83/kOusGKueacTBAUW5HU33ihnOPsxjsA1uzgzYjNpMXP1
         Fbq2y1PryO079Pyd/PGGDlchhoCdzCudld9j6ivS8iiHBwJfv3xOPiw/103JdVHD3rX/
         E6G6C8sfQfeh9fGcNeI1Bac/VV612oreZmdThEJyItEvEd/9bPDuV8+g2wuSOhrSNONN
         t3LA==
X-Received: by 10.180.76.133 with SMTP id k5mr15492029wiw.30.1424648122083;
        Sun, 22 Feb 2015 15:35:22 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([95.187.195.53])
        by mx.google.com with ESMTPSA id a1sm53087491wjs.40.2015.02.22.15.35.20
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 15:35:21 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id E1317632BF; Mon, 23 Feb 2015 02:35:18 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v4 2/6] Staging: emxx_udc: Remove volatile from union usb_regs_access
Date: Mon, 23 Feb 2015 02:35:13 +0300
Message-Id: <05cc0b9434eecf49b6b4b4a15c86e2516cb5827c.1424645871.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424645871.git.hamohammed.sa@gmail.com>
References: <cover.1424645871.git.hamohammed.sa@gmail.com>

This patch removes volatile from union usb_regs_access, to fix checkpatch.pl
warning:
WARNING: Use of volatile is usually wrong

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
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


