X-GM-THRID: 6889706616955863040
X-Received: by 2002:a63:d74b:: with SMTP id w11mr11103453pgi.147.1604890618934;
        Sun, 08 Nov 2020 18:56:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7809:: with SMTP id p9ls3049822pll.7.gmail; Sun, 08
 Nov 2020 18:56:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxDFW88b0ShQoO8z7KZFTxYxYJLDUYrNI/mLx/WKVX3B0UN5GQ1A0lywkbN9A/913wa7FhL
X-Received: by 2002:a17:90b:154:: with SMTP id em20mr9117642pjb.114.1604890617167;
        Sun, 08 Nov 2020 18:56:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604890617; cv=none;
        d=google.com; s=arc-20160816;
        b=gn88HzvKERan6kNWO0/9knfwWoNrpetKT6RJjGaR+SpV9sr/m/rvdwa7l51WKuZUUF
         OFZ58K+9AuxicBrkTMy5AdXVk/xXniFb5REuDcLs1XGcyeZmF1KkyIAy5ogudeU1XZTL
         QWjsd5s2l9cFRUlFbZtkTF+ZesFfSpFRbo7Rqwfr2xD6cTvC/rW15TfHCdver3cbEYI/
         YU3hpjQ545NBLzV7X/s9WoI7hJy+ADEGRBb/VGfWH7uoeLel5NlOgBuZ+i2V8bfjGvRT
         X0SXIlaamrn/w58PmOZyrzJ81KCEPDnI6hCMFLpm6okvQc6m6tgljs91Fd5XomSQzgM1
         urEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=8DPaU6UMQSAwzpdyHtwc96A/u7tXhquEPixM48chs0s=;
        b=zgvIdPN6a7RSZu2vTQZEq+sw735wuqfOk8iMFwen44vPVfPcfznFhJCbJS7VoUaywk
         8dIMLg97Wfn5g3iyWHxrFZO2kVVHbco6aC0vDaT+u/TnqP6bXqO5wA9sBKl3MBIFDzBj
         vXjoI2ZwdzekO+HsVbHtOBB2LJhoNYoQOBR3jSvBEcZvh9odfwu5X5ifWZzNz3mmfi2H
         shEZaUmsjLss3aHF1xW57dPPYh7kqu2G2VHJKSQEImbKeQJZtu9UCnoWntfzvMEehZOo
         nr02polkGJnlO5C8jOiVt1AfXm9Qby7KOw4F5fUW8WNXf6HDAdNTCBtn7v0oFspRI/GD
         kFrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=banOAK4z;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mdejesusfilho@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h17si509881pjv.3.2020.11.08.18.56.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Nov 2020 18:56:57 -0800 (PST)
Received-SPF: pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=banOAK4z;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id c20so6687465pfr.8
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Nov 2020 18:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=8DPaU6UMQSAwzpdyHtwc96A/u7tXhquEPixM48chs0s=;
        b=banOAK4zpKybs57MN4wEABKl/zYrlNjZYqF8Ptygvifs4T6SzA+TzykXwv+pbyWr7/
         TIKSFwJ6k877SZOtf6IsxvaBphgDZd0JxDwwEBWLphnRQjxND9XOvixeWBoQ7cHMtA3b
         WkeQw3d0kYY8G6k7GWNcIhBLEtuj6ceigj+bk2LyPXoqKrITI9DJz76GuCj9oommXAKw
         d0m4V34P/yZ9QCYhGq4akx9OO/sWaY244fFMjVdhu9Lk0N2Zoi5Fkv6TbnxNMEPobmjJ
         B4ZL6iNu7V3criHkXvaag3PFIscOgb/c4Q15DxsiXBAnHmj7+w0kWO55QaApOoST3ZGP
         9AMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=8DPaU6UMQSAwzpdyHtwc96A/u7tXhquEPixM48chs0s=;
        b=qbu9PfgQICCtBDr6U93e0n6THkDd1SRmUdRd0qC2lpnKlU00v+Ju+XZqQSv4ipOnnj
         If2V9tRSrpOPFhHvVM7B7Yb6yhrNW4QfB69rNcF9980PfP6aDN4ANovZG5XVyUUQpgLB
         ztWjDKin7730She6eeH6LAN+qBFYOJi3Bn8ajEmBDFgYoaiIAayeuIhNX20hogB6Gsp+
         pO/VaGku1HiTtwEV4nj1IPRf9xY4DAKMXPsMNxSojYlhU/fL9Ths0Ns8Fq5+snh87X6e
         JtohglR9GxJ9uUS64zsDsUrLz93Uy/K98lUZvTZIXuWlQ6wG+wuslF1bkkYNkmygUbsV
         Sg4A==
X-Gm-Message-State: AOAM532Kje3rpRYmK1hJCdm07H6CySh4in326b0aoRsl5PLTPFWCO5cg
	yrHiDYvMeBL8BiJfKRFMKt+i3ltWNkmeIQ==
X-Received: by 2002:a62:fc8f:0:b029:18b:823a:13c2 with SMTP id e137-20020a62fc8f0000b029018b823a13c2mr12253899pfh.57.1604890616793;
        Sun, 08 Nov 2020 18:56:56 -0800 (PST)
Return-Path: <mdejesusfilho@gmail.com>
Received: from localhost ([2601:643:282:4810:aed1:b8ff:fe8c:bd73])
        by smtp.gmail.com with ESMTPSA id k5sm9315461pjj.37.2020.11.08.18.56.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2020 18:56:56 -0800 (PST)
Date: Sun, 8 Nov 2020 18:56:41 -0800
From: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: vt6655: Remove useless else
Message-ID: <20201109025641.GA69196@Zangetsu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The else statements are not useful due to the presence of a return
statement on the if block. Remove the else statements, adjust the
indentation of the code, move variable declarations to the beginning of
their scope and remove useless return statement. Reported by checkpatch.

Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
---
Changes in V2:
  - Make the commit message more informative. 
  - Fix all the erros of the same type.

 drivers/staging/vt6655/rxtx.c | 99 ++++++++++++++++++-----------------
 1 file changed, 51 insertions(+), 48 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 477d19314634..508e1bd7d76e 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -440,10 +440,15 @@ s_uFillDataHead(
 	bool is_pspoll
 )
 {
+	struct vnt_tx_datahead_ab *buf = pTxDataHead;
+
 	if (!pTxDataHead)
 		return 0;
 
 	if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {
+		/* Auto Fallback */
+		struct vnt_tx_datahead_g_fb *buf = pTxDataHead;
+
 		if (byFBOption == AUTO_FB_NONE) {
 			struct vnt_tx_datahead_g *buf = pTxDataHead;
 			/* Get SignalField, ServiceField & Length */
@@ -477,32 +482,33 @@ s_uFillDataHead(
 			buf->time_stamp_off_b = vnt_time_stamp_off(pDevice, pDevice->byTopCCKBasicRate);
 
 			return buf->duration_a;
-		} else {
-			/* Auto Fallback */
-			struct vnt_tx_datahead_g_fb *buf = pTxDataHead;
-			/* Get SignalField, ServiceField & Length */
-			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
-					  byPktType, &buf->a);
-
-			vnt_get_phy_field(pDevice, cbFrameLength,
-					  pDevice->byTopCCKBasicRate,
-					  PK_TYPE_11B, &buf->b);
-			/* Get Duration and TimeStamp */
-			buf->duration_a = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
-									      wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
-			buf->duration_b = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_B, cbFrameLength, PK_TYPE_11B,
-									       pDevice->byTopCCKBasicRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
-			buf->duration_a_f0 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F0, cbFrameLength, byPktType,
-										  wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
-			buf->duration_a_f1 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F1, cbFrameLength, byPktType,
-										 wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+		}
 
-			buf->time_stamp_off_a = vnt_time_stamp_off(pDevice, wCurrentRate);
-			buf->time_stamp_off_b = vnt_time_stamp_off(pDevice, pDevice->byTopCCKBasicRate);
+		/* Get SignalField, ServiceField & Length */
+		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
+				  byPktType, &buf->a);
 
-			return buf->duration_a;
-		} /* if (byFBOption == AUTO_FB_NONE) */
+		vnt_get_phy_field(pDevice, cbFrameLength,
+				  pDevice->byTopCCKBasicRate,
+				  PK_TYPE_11B, &buf->b);
+		/* Get Duration and TimeStamp */
+		buf->duration_a = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
+								      wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+		buf->duration_b = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_B, cbFrameLength, PK_TYPE_11B,
+								       pDevice->byTopCCKBasicRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+		buf->duration_a_f0 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F0, cbFrameLength, byPktType,
+									  wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+		buf->duration_a_f1 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F1, cbFrameLength, byPktType,
+									 wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+
+		buf->time_stamp_off_a = vnt_time_stamp_off(pDevice, wCurrentRate);
+		buf->time_stamp_off_b = vnt_time_stamp_off(pDevice, pDevice->byTopCCKBasicRate);
+
+		return buf->duration_a;
+		  /* if (byFBOption == AUTO_FB_NONE) */
 	} else if (byPktType == PK_TYPE_11A) {
+		struct vnt_tx_datahead_ab *buf = pTxDataHead;
+
 		if (byFBOption != AUTO_FB_NONE) {
 			/* Auto Fallback */
 			struct vnt_tx_datahead_a_fb *buf = pTxDataHead;
@@ -519,30 +525,8 @@ s_uFillDataHead(
 										wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
 			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
 			return buf->duration;
-		} else {
-			struct vnt_tx_datahead_ab *buf = pTxDataHead;
-			/* Get SignalField, ServiceField & Length */
-			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
-					  byPktType, &buf->ab);
-
-			if (is_pspoll) {
-				__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
-
-				buf->duration = dur;
-			} else {
-				/* Get Duration and TimeStampOff */
-				buf->duration =
-					cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
-									    wCurrentRate, bNeedAck, uFragIdx,
-									    cbLastFragmentSize, uMACfragNum,
-									    byFBOption));
-			}
-
-			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
-			return buf->duration;
 		}
-	} else {
-		struct vnt_tx_datahead_ab *buf = pTxDataHead;
+
 		/* Get SignalField, ServiceField & Length */
 		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
 				  byPktType, &buf->ab);
@@ -554,7 +538,7 @@ s_uFillDataHead(
 		} else {
 			/* Get Duration and TimeStampOff */
 			buf->duration =
-				cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_B, cbFrameLength, byPktType,
+				cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
 								    wCurrentRate, bNeedAck, uFragIdx,
 								    cbLastFragmentSize, uMACfragNum,
 								    byFBOption));
@@ -563,7 +547,26 @@ s_uFillDataHead(
 		buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
 		return buf->duration;
 	}
-	return 0;
+
+	/* Get SignalField, ServiceField & Length */
+	vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
+			  byPktType, &buf->ab);
+
+	if (is_pspoll) {
+		__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
+
+		buf->duration = dur;
+	} else {
+		/* Get Duration and TimeStampOff */
+		buf->duration =
+			cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_B, cbFrameLength, byPktType,
+							    wCurrentRate, bNeedAck, uFragIdx,
+							    cbLastFragmentSize, uMACfragNum,
+							    byFBOption));
+	}
+
+	buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
+	return buf->duration;
 }
 
 static
-- 
2.28.0


