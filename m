X-GM-THRID: 6810515093003960320
X-Received: by 2002:a25:b94f:: with SMTP id s15mr22003756ybm.206.1585764235221;
        Wed, 01 Apr 2020 11:03:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1d85:: with SMTP id d127ls116458ybd.0.gmail; Wed, 01 Apr
 2020 11:03:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs7od2CWV9thfJKBW9ArR5N9l+eiqtdeZRGyfaosGDpN0SMQuLHsyleRkatZ3FGR31u3ruO
X-Received: by 2002:a25:a4c5:: with SMTP id g63mr39894620ybi.318.1585764234004;
        Wed, 01 Apr 2020 11:03:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585764234; cv=none;
        d=google.com; s=arc-20160816;
        b=HzNRMlBiiw/D4bu0z5P5R7aQ/jOkmI0V1JJSTrAN04dj29gEtsHAUsuTvZ0BNrQXX7
         35W7Tfw/RWBn0o5F8h5fADkfV7bw+Uz5fQp8hHUj489BPcnJfKESVPJ53NsVbU5oWSOt
         D3rqVsZ+q1k+5UzFsJAZl9dRls2ndLArcTFKefYM5axZR/xkJQDupEANzBS6ao6WEbS6
         GXSki1+MKKiH5U7vhNasx2uAGXdem7ky89TPGeBZRZIOm3O29VbbgZ8Nb7gpymTKjuBL
         i5nJqS+CO0GJe4SE21lukXuJZaz2yQU+RY1D3d/DvDm3HXpaYoaIZbGO/Z2RZ6MIqmf4
         qvbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0ytszynu+netDHk2GPmkuesoIlzhs8OdWs+7Onp8BW4=;
        b=MxhDAh2YjAidtoCnkRH98Vic3+g8Xjy607P0kKol7cbagDsgzDzGeD/vJESlPLFRfk
         EfIBE0KpwVLQABH2lbA8gEjnv6LHxaenKMyF0Cg4DdgqZRbQ4xZegpf+x9/WhVebnN55
         BeXns36Ql8iSDMbvIGxpkV0Th8wa4uBYzJg+nDTvAPo2o3+nV7L/W/XpOazOecv/USl8
         Ip6tfzbds5Vj21Lo6oISmUi+ylBuZBURa7HR3f7pzzhtH8kOMofhoOhBisHONGF9MCHP
         35XWss5yUHYjanEMHINqHoPMzikFkyPZZbi6XDuH5j1Tb2YQO3RxG5DLjs4w8qUjqOnc
         k17Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MM/AhceG";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id l1si239530ybt.2.2020.04.01.11.03.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 11:03:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MM/AhceG";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1036.google.com with SMTP id np9so372019pjb.4
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 11:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0ytszynu+netDHk2GPmkuesoIlzhs8OdWs+7Onp8BW4=;
        b=MM/AhceGhc/kPusALxaGFkbohA86PPt2RbPdPLJ+PKGdFbj4U0OYjywFVfl0onwJpc
         7N/4Rlo+Ogt2jOyVCKr+w0V/EpQ51KvjsLZfE0jlftLzIyxKj0Wx1xsnJX2fzkGdUQXM
         EfKjWWdThZ0/Jstf6JLfCs81/tRIlcCKp2uIfU+xVkKFNF15v9G1jfbbLE6wVbve4dwb
         yCHMWNTZBK32nGewIphRZM/PGImdf4jX7Ft+dbu4J6zwSPyI/yimKO5NifMlyInLnyFU
         iBq9qPZd6pQUco6ivLuMGXq9qtNQXEdV7bSKSvWhmtO/GxpgkB7BpIFg9KQSOuf5Kbqk
         70vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0ytszynu+netDHk2GPmkuesoIlzhs8OdWs+7Onp8BW4=;
        b=WDK9QE+c5l2+FYy5uO0RTOR4XV4xEU8QN/Y4g70YYnkm2LPsfETxFKy6ZxiCYOn17t
         8g/JfFAuC2NtUAF78LuC2j4LCBd+B0R533RHnpYautJx/PI1DEJK2gwqkSsRmRzrzR8V
         xBBv7MzM8grqKbbVy/aO0ax8R5VIN7NsXFVpTJJ/DaVUxe5rKusXRa3zwO1eD+zdL6cu
         siZ1SgHeHAjaHbEtEnZELpMqaCtsp8O6ZWS4JOsQMTyyUAfmdPvrcaUrNF3EBeOWMyzo
         nEUbfxDM9TUtIwQlI4enO8wFmwMzvfUZlG5jBbdiYbwrONE23SjgmMFZw8kYjHjdK13F
         Dg2w==
X-Gm-Message-State: AGi0PuZwFHVF18xYVRAnzNBEz1kNRZGcFXBbeiDc7ucWE/CgQHBw9goS
	J7S0NlDncNODtU8fdH3bs5o=
X-Received: by 2002:a17:902:744b:: with SMTP id e11mr5831144plt.292.1585764233121;
        Wed, 01 Apr 2020 11:03:53 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id ci18sm2131896pjb.23.2020.04.01.11.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 11:03:51 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	julia.lawall@inria.fr,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v3 2/4] Staging: vt6655: Move rate determination logic.
Date: Wed,  1 Apr 2020 11:03:40 -0700
Message-Id: <ba87af8a2d28d5737c6d8888bbda143aad723d2c.1585763457.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585763457.git.briana.oursler@gmail.com>
References: <cover.1585763457.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Factor rate setting logic out of nested if-else statement to prevent
code duplication.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

---
 drivers/staging/vt6655/rxtx.c | 30 ++++++++++--------------------
 1 file changed, 10 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 443d04c4c62f..0fbbe81bc2ca 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -294,23 +294,18 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else { /* First Frag or Mid Frag */
-			if (byFBOption == AUTO_FB_0) {
-				if (wRate < RATE_18M)
-					wRate = RATE_18M;
-				else if (wRate > RATE_54M)
-					wRate = RATE_54M;
+			if (wRate < RATE_18M)
+				wRate = RATE_18M;
+			else if (wRate > RATE_54M)
+				wRate = RATE_54M;
 
+			if (byFBOption == AUTO_FB_0) {
 				if (uFragIdx == (uMACfragNum - 2))
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
 				else
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
 
 			} else { /* (byFBOption == AUTO_FB_1) */
-				if (wRate < RATE_18M)
-					wRate = RATE_18M;
-				else if (wRate > RATE_54M)
-					wRate = RATE_54M;
-
 				if (uFragIdx == (uMACfragNum - 2))
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
 				else
@@ -332,23 +327,18 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else { /* First Frag or Mid Frag */
-			if (byFBOption == AUTO_FB_0) {
-				if (wRate < RATE_18M)
-					wRate = RATE_18M;
-				else if (wRate > RATE_54M)
-					wRate = RATE_54M;
+			if (wRate < RATE_18M)
+				wRate = RATE_18M;
+			else if (wRate > RATE_54M)
+				wRate = RATE_54M;
 
+			if (byFBOption == AUTO_FB_0) {
 				if (uFragIdx == (uMACfragNum - 2))
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
 				else
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
 
 			} else { /* (byFBOption == AUTO_FB_1) */
-				if (wRate < RATE_18M)
-					wRate = RATE_18M;
-				else if (wRate > RATE_54M)
-					wRate = RATE_54M;
-
 				if (uFragIdx == (uMACfragNum - 2))
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
 				else
-- 
2.24.1


