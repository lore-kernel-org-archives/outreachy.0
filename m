X-GM-THRID: 6808656295974928384
X-Received: by 2002:a25:5556:: with SMTP id j83mr574190ybb.348.1585337226267;
        Fri, 27 Mar 2020 12:27:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2ace:: with SMTP id q197ls3359287ybq.1.gmail; Fri, 27
 Mar 2020 12:27:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtzYSGPcXtuREWrh66lYiuaxs9QvB6jr3Hx4/+OJKTpgw/YomMBb7AnS/koZLSNKsVfyiQv
X-Received: by 2002:a25:b904:: with SMTP id x4mr595644ybj.184.1585337224776;
        Fri, 27 Mar 2020 12:27:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585337224; cv=none;
        d=google.com; s=arc-20160816;
        b=Tw2k6cAiskW/U0Es0adrUjnAWuYQEo8JuR+7yDl8B+k315h2NvImn6f9DMlGVMwe05
         DdWI44IsoWZY52TnfBSygg03I0+7+6IJZm3tZQ0IcGU/gG+nlkRi9pAkMQiiQn5OQ4mB
         cfkWJHFKg38AvyvguPvTLToyk2WFRCM1GszzwZVyIhbewnPS5emPH42Q2mENbKswsEqE
         9rAulm8VFcGd74BIBafQcMpzdLkB7rUlGjKz3X9WGBiOs57Z7FCd6dmOtYzP0aKpDycd
         gM3QY2uB43lQT4lNeGrT5ddKDts3BbCW2AuW7EpnHQgKseL1kaebMAW6i9vAY3w1tPa7
         BnpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=oXdCE9SUOmuU2Xb/AkCRyNR8mgA1+SYivgF1csygs0A=;
        b=r48is2sTGoB3g1AkCrIH4aK1TtUQ1xA24jwvnbo++GECFhWkxEP5GEFoBDFYMuZ7xF
         jfNgxqLat+gFs/vd4mRgNy7BfrNPj2qN7/mpoQYoo+Yo60R7buNRDLBpHwuGhZIjtraT
         csoCoM1j4RrKavBJNB6sGkd3QzJC6I9H0cgJdV1nXLP4GnT3ixLiFktMYjCDR1VJpkcB
         rzOR4fjfb5/1FF7/eO3i7wnD4+Py8A91r1oZMDGSb6trIfHOlH51hxaCJ0TQrNsIT5Q0
         /mK6EP3z9Kf72Qa6Sim4soBM+KkmUSdV678bF9Pf0rtI3FqjYlPoamz739Y11fJ+bvv6
         Ef0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="S/KXQWQp";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id d72si307677ybh.5.2020.03.27.12.27.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 12:27:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="S/KXQWQp";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id b9so3800250pls.12
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 12:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oXdCE9SUOmuU2Xb/AkCRyNR8mgA1+SYivgF1csygs0A=;
        b=S/KXQWQphcqT3qRgfEnbPBJr5UfGk/G28cI4phMl2WgtShq3vf7kJX3vQM+ymr8loD
         ZpHFq1aE0XWKm6g7eYKLFXYtyb/jLv0eDS9kd6EAsz1GhVnJH1t3ie8iWKlEs6QttyiY
         BPLx4CnjuOqYdrECZM+OsA1wPp05UbgcvHT+YUbYY8L4FfmOAw66ccmHraQOSuQEQFtD
         +uBGWKirb25b2XZ945VCPP/qI3JboQO7yVw2w+z9IkXu76b2hz4ZVOeSzM1aeTyHtmVH
         NQ/iIp4PQKQKWqyYdupquJVKPEPkUhfGCU8n7eBjRtC/kBcjrVa0pUf3Nj3kC8BhiS91
         vZ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oXdCE9SUOmuU2Xb/AkCRyNR8mgA1+SYivgF1csygs0A=;
        b=XIVEMRaGdsMveyGXJSuGPRV+/cYkxXpmrSDOBBIE7HtSrHX11Qj27EtKC4b+my7Qkb
         2chrjssEuYGSOQX7uuni1eQZlkZ6Cs5lTr3IosUUFxjdIX4NNA9CnRRJ38Eu/ghf7j9g
         VjEjFMlLY0RduAdySg/jieEZHOmu0Iey1zncxxa32ynL3C4565t4cHckBJocKvUcejq7
         mUUM/sT9KrFJV/9q7e+U4aCI1gB5xL5p/D5B9H0oEfcw3PaKtUrpImMlU7xKyDKPWr7L
         FDH3la+RaxjKJC3lfTVa1iV78XJOQRm1O00ou4cOjSzAaHgWt1w3gCXrkl0AQL7Aj/a7
         tx0A==
X-Gm-Message-State: ANhLgQ393NxabdSHFYccHcyy0Ut9+Cm4KaX0f6IluMwDiI7STn97CCm/
	v5DVnDRkkreXi1xIBkB8xXAJGO+vkf+mKQ==
X-Received: by 2002:a17:902:b586:: with SMTP id a6mr577700pls.239.1585337223781;
        Fri, 27 Mar 2020 12:27:03 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id x11sm4407635pgq.48.2020.03.27.12.27.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2020 12:27:03 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	nramas@linux.microsoft.com,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v3] staging: vt6655: Remove multiple assignments.
Date: Fri, 27 Mar 2020 12:27:00 -0700
Message-Id: <20200327192700.12289-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200327090534.GB1669531@kroah.com>
References: <20200327090534.GB1669531@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove multiple assignments at initialization and in computations to
better match Linux style. Issue found by checkpatch.pl.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---

Changes in v3:
	- Undo formatting changes to better focus scope of commit.

Changes in v2:
	 - Change removes to remove in patch description.
 drivers/staging/vt6655/rxtx.c | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 37fcc42ed000..a1ddd7990e81 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -195,21 +195,25 @@ s_uGetRTSCTSRsvTime(
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
 		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
-		uCTSTime = uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+		uCTSTime = uAckTime;
 	} else if (byRTSRsvType == 1) { /* RTSTxRrvTime_ba, only in 2.4GHZ */
 		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 	} else if (byRTSRsvType == 2) { /* RTSTxRrvTime_aa */
 		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopOFDMBasicRate);
-		uCTSTime = uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+		uCTSTime = uAckTime;
 	} else if (byRTSRsvType == 3) { /* CTSTxRrvTime_ba, only in 2.4GHZ */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
@@ -1040,16 +1044,14 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
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


