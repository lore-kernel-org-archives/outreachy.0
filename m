X-GM-THRID: 6808656295974928384
X-Received: by 2002:a37:9a54:: with SMTP id c81mr11281499qke.185.1585263827501;
        Thu, 26 Mar 2020 16:03:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:dc83:: with SMTP id q125ls3490920qkf.9.gmail; Thu, 26
 Mar 2020 16:03:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtaSA9//ZVyK3imyPxKF6r57+ExopWidRWIAqUl75m7I5CvJC9YMgG8CUtqMqqhAqdR4saN
X-Received: by 2002:a37:d285:: with SMTP id f127mr11391378qkj.107.1585263825800;
        Thu, 26 Mar 2020 16:03:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585263825; cv=none;
        d=google.com; s=arc-20160816;
        b=s58xwI5sEAp+KsXlFkrqW2KxT6D3uqAWoMbPrcrSPc8sDhdDjqqU80GmIRV8x0DHuV
         Yats0B2Tb4uXsk2tUcj7RsJdAUjRUG+fJLn0aKVBqx531ExExnJDWlk3/7R3XCbmvPZ0
         THUZfT2sqClnl6Dd9cGtf+9Jj/xIqLfonYa9NbLi2KPxz5tRJsnj37FzhsR0s9Xb5frl
         0ddaNn5+DQrpK4pYV7bochVXMApJ+jAHECQSJdTeise7qF9XN3+E8cAn78Yndo/Emby1
         /fizWkpAmG9kawZdC5X0Motqs4oSQ+cF7H+ky6ZNr6Ite84ZyUVTObLLHli/cm2DrfWD
         6xZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=aYPglIyu6y9X8aS1F7kdq4Q2aUAHd3nx16omgpPMdOY=;
        b=iDGBr1slMNynoZ+uO+KztOL3zmekhvmi52aaXZCrl1ybBwqGqQKHmMEvVH2gCpXzYp
         uw0tV0IzaLSRAPOinFPg1dy8p7bHyi4XkCyzp2daZiU/fx/iGLFp5+cQEQMh8dyV8p3j
         j+fmCCRHWz8jJDJrkEsBtYP8p6GLeHnmGosi+nTREKZE5QPyRC/CPoAwgx3pvLMnMX/0
         fEEaXvpfVeN56jKin10jpLzbtLvnXMC9QpmoKbQspCdOrBfWmK+huDHk2eqxV0oY3plv
         f5wxHxv1y/+X3ACIa7rd5g/QyVVE4r+BBsRw9Rw1jAGfW9xh2aHNrp93v4hP1tBqhb2Y
         9Uyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IEj4s8pf;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id m6si392644qtk.2.2020.03.26.16.03.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 16:03:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IEj4s8pf;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id g9so3028031pjp.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 16:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aYPglIyu6y9X8aS1F7kdq4Q2aUAHd3nx16omgpPMdOY=;
        b=IEj4s8pfbmSHYjum5JKiHo+t+DbBas1IMHbTXm7hV3Czeh0qYCBdPJ+A+X5JiV4n2T
         GR5gq5HC+L9n7sYlwSQAe2UXaFnrKn03/+7ep6VKEMAF8NFvTZiFUNWqGGFUgvCdQO1d
         6aPmHMibJArWJWEIiN4cNFAORPIul01xUF9mLCDKYt0AGIC5ql2/36Lztg+sSdhRO5dx
         4lhCV6AbZBkGCybrGU7FTOWOG1auDpdx62rSqIR9Wz8r2FBZbEXnRuSmfHNoN0E6Hw15
         R6zM2yDrQmihfhXw0IJXtRw7qqtTE9uiU99XRPcxdISuj8qWZxDq+YNfmZh/1jR6j+yB
         LR7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aYPglIyu6y9X8aS1F7kdq4Q2aUAHd3nx16omgpPMdOY=;
        b=K0woYYeqIn1+cn1vctEHmsgBpzfibLs92g9M+PnIpCN/Ig1LhUDydT7dzGzj+5Pqx4
         fGgGnvUph6WNujo06xaK+2ws+XLrpM3jjAGP2bp44HK6yUH8mOL3uu6syQn4xsKANdfR
         yAKOmDA0oMeP/HW/dhWA8qsUvR5QNopAq0YVMKSTqwcjU83OZMarcSTNQ7NKkUudJf30
         CCiJh/+vDOQ8AJBqilXJq3ChHuVzKLJmw4TMlLqr8Z1W79UnYwm2McQqC0fVc9FgDFAb
         0OiFthyj8I7OhyM+tuk0lRnND9DAioih1OKnpV9HcqkTw3bWK2teJ0LtktAihQXcY3aQ
         1wRA==
X-Gm-Message-State: ANhLgQ07/Lho9mu3bjlldVCq+c5b4LyoXDzYR9W4aK0LKgitSgYxr/EG
	LkLaZ0CEFUGPY0Ry4bhLhbk=
X-Received: by 2002:a17:90a:218e:: with SMTP id q14mr2473718pjc.37.1585263824724;
        Thu, 26 Mar 2020 16:03:44 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id h198sm2553338pfe.76.2020.03.26.16.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 16:03:44 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Outreachy][PATCH] staging: vt6655: Remove multiple assignments.
Date: Thu, 26 Mar 2020 16:03:35 -0700
Message-Id: <20200326230335.36507-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removes multiple assignments at initialization and in computations to
better match Linux style. Issue found by checkpatch.pl.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 34 ++++++++++++++++++++--------------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 37fcc42ed000..cdea2ff1c8f0 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -195,21 +195,29 @@ s_uGetRTSCTSRsvTime(
 	unsigned short wCurrentRate
 )
 {
-	unsigned int uRrvTime, uRTSTime, uCTSTime, uAckTime, uDataTime;
-
-	uRrvTime = uRTSTime = uCTSTime = uAckTime = uDataTime = 0;
+	unsigned int uRrvTime = 0;
+	unsigned int uRTSTime = 0;
+	unsigned int uCTSTime = 0;
+	unsigned int uAckTime = 0;
+	unsigned int uDataTime = 0;
 
 	uDataTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, cbFrameLength, wCurrentRate);
 	if (byRTSRsvType == 0) { /* RTSTxRrvTime_bb */
-		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
-		uCTSTime = uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType,
+					   20, pDevice->byTopCCKBasicRate);
+		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType,
+					   14, pDevice->byTopCCKBasicRate);
+		uCTSTime = uAckTime;
 	} else if (byRTSRsvType == 1) { /* RTSTxRrvTime_ba, only in 2.4GHZ */
 		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 	} else if (byRTSRsvType == 2) { /* RTSTxRrvTime_aa */
-		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopOFDMBasicRate);
-		uCTSTime = uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType,
+					   20, pDevice->byTopOFDMBasicRate);
+		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType,
+					   14, pDevice->byTopOFDMBasicRate);
+		uCTSTime = uAckTime;
 	} else if (byRTSRsvType == 3) { /* CTSTxRrvTime_ba, only in 2.4GHZ */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
@@ -1040,16 +1048,14 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 	bool bRTS = (bool)(fifo_ctl & FIFOCTL_RTS);
 	struct vnt_tx_desc *ptdCurr;
 	unsigned int cbHeaderLength = 0;
-	void *pvRrvTime;
-	struct vnt_mic_hdr *pMICHDR;
-	void *pvRTS;
-	void *pvCTS;
-	void *pvTxDataHd;
+	void *pvRrvTime = NULL;
+	struct vnt_mic_hdr *pMICHDR = NULL;
+	void *pvRTS = NULL;
+	void *pvCTS = NULL;
+	void *pvTxDataHd = NULL;
 	unsigned short wTxBufSize;   /* FFinfo size */
 	unsigned char byFBOption = AUTO_FB_NONE;
 
-	pvRrvTime = pMICHDR = pvRTS = pvCTS = pvTxDataHd = NULL;
-
 	cbFrameSize = skb->len + 4;
 
 	if (info->control.hw_key) {
-- 
2.24.1


