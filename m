X-GM-THRID: 6808656295974928384
X-Received: by 2002:a17:90a:730b:: with SMTP id m11mr3424299pjk.195.1585276565968;
        Thu, 26 Mar 2020 19:36:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6542:: with SMTP id d2ls5632517pln.2.gmail; Thu, 26
 Mar 2020 19:36:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vudfhREKeO6AXKZ0u7BaObc5opunlx4Wr7LxSeI8QyczBLsgrUvDlYCpTDvTpMkKRw/Kp8s
X-Received: by 2002:a17:902:9a82:: with SMTP id w2mr11141696plp.117.1585276564411;
        Thu, 26 Mar 2020 19:36:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585276564; cv=none;
        d=google.com; s=arc-20160816;
        b=UK5zH4MTPRbi8Ahu+2j4XHR637bfJplgdcNDAEP8TRjCeqnLiC7GG2gUahDTVfFQ3s
         n2E5n5UILmGpZWUS5JnWX/jHe4pCBIApH7s2tQ/4X8KXIggdtrmLph/+JSQ33Eiw+oVG
         d5ha+h2DhG4zovB1cgxPWldqJRQp0MrdK9SWM4igBg7tmcewm7bkLQhju3FdFjaIIwRe
         WlTigp0SW9GHFFhjimbenKx18v4Uqn+OE76+tjkNpzNtPOTHgXpX92PNLeylcEirZIel
         6faqjlZ3pyR3qvMncDBzavUKchd5gCT6N14kA0ysFCx2oItxpfY+ZV7hO3c4pwsXJACI
         j7fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ajnnFo2BgqAACaCqyTWV9C2WVeITeD603e3CIRKjymw=;
        b=APdQetl6vqRNYFfdmhzgD8t/U4Ho/fwS4wzEGVGtMh4ZyX9UOTJiJrNQMOHcXkQX5A
         +GEuLWweDSNSgALiLQkvjwBKLBpSb8Zsj7H+Bdn9n52/YI75Us5OVGroQi4MnfeinebP
         toexmLJoHesYVQP4l9Xn5vAIGhNwFgt3GZNOiUJGx2T/EJ2JMO8eW08HYG245v9ECfx4
         wYhwdGLqf2Q0C89KQP8oOYVE8YzMIa51mdLwoSYUCqxp6QkjSDsLIHBEWQd/HzGlV5vE
         2JyAri8pod5kO6ea9DeWRd5QKA82fSeDBIyB1W69Chmpi73eNjtyY+qLS8QGM3Q+tAdg
         JJFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=csxsVTmZ;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id 188si312515pfb.1.2020.03.26.19.36.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 19:36:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=csxsVTmZ;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id d25so3770145pfn.6
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 19:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ajnnFo2BgqAACaCqyTWV9C2WVeITeD603e3CIRKjymw=;
        b=csxsVTmZn96UVnFBYxVPlnnAR8p2zWZ3BgpFhk+rVMXFUAWmYT5bleBEB9ZsS3O+X2
         h9fdLJDflsgswBsC6XR05AmPW62pupxTAMpP5T+NqiG3qSUFLcRD7akuuk8PDfvaCgaW
         RdRa/1/Vgn9MeX1ZmFO8DDErLHnWj1R2aLq7uT2RMqv5A1Pgstub2N0FCOY2Z4133PT7
         2CTJiR7Uvtyci6leUzG9sKexlA/Ri3gZ8yXOXgIPHwDg1rzyzQKlFlY7/e++EF0QcyNZ
         1Ry3CCml+XJHWAyBOhlEmb9h1PX7ZLHWBZmC8b6KcobQwL9XYPm0J1zVNKVLgfXNgfhP
         0OnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ajnnFo2BgqAACaCqyTWV9C2WVeITeD603e3CIRKjymw=;
        b=tkCldFkzEZOGeIeZpFDfiyzKY/HH3INKM4ux7wTfPl+wi/Pt0m++N8bgF0ALYcfRZg
         hZKk6lmVO3RooLHG39Qws8QGzARXNb63ZkSUG9AAi2xXJ9V6mwBhYEI6eYqN003Qdky7
         Bfm6rpUXy3upXznBpQS0psr5rDWZqMmM7EDO8862J84fbUWRqr1XxikCvMcFvEjrL9lu
         jC7x5blbWmUqbagsJjPba6xlkjo0eSXg7x2wd34A7lGYl4WQ8P09CUW9YFSBphFVqXye
         dkTBmaGDqRfVD1pYlP0EurEKavUXrHMS/LYRFbwZi0spZPTdtuzOpv8bSEdcON5Aw5Pu
         POBA==
X-Gm-Message-State: ANhLgQ17YibjZU1X5fPiil9Y/7c4TFV1iLwN5gTg8bUKe0UmiU5I68uI
	qX/m13ypl5lz0Hoievc2BXI=
X-Received: by 2002:aa7:9e46:: with SMTP id z6mr12468418pfq.17.1585276563949;
        Thu, 26 Mar 2020 19:36:03 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id e187sm2813140pfe.50.2020.03.26.19.36.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 19:36:03 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: nramas@linux.microsoft.com,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH v2] staging: vt6655: Remove multiple assignments.
Date: Thu, 26 Mar 2020 19:35:50 -0700
Message-Id: <20200327023550.74406-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <5951d33f-ea8a-ec99-474b-2d8b2009da6a@linux.microsoft.com>
References: <5951d33f-ea8a-ec99-474b-2d8b2009da6a@linux.microsoft.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove multiple assignments at initialization and in computations to
better match Linux style. Issue found by checkpatch.pl.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---

Changes in v2:
	- Change removes to remove in patch description.

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


