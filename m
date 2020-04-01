X-GM-THRID: 6810515093003960320
X-Received: by 2002:aca:df06:: with SMTP id w6mr3828958oig.2.1585764237591;
        Wed, 01 Apr 2020 11:03:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:b98a:: with SMTP id j132ls246829oif.3.gmail; Wed, 01 Apr
 2020 11:03:56 -0700 (PDT)
X-Google-Smtp-Source: APiQypKh2fcAMK+ofzft63H8aaA+VRFKe+OKu15/UeLd6y4UiV0TXbjyrPFBm1KpdP4fyHAAKvnw
X-Received: by 2002:aca:acc2:: with SMTP id v185mr3843212oie.27.1585764236537;
        Wed, 01 Apr 2020 11:03:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585764236; cv=none;
        d=google.com; s=arc-20160816;
        b=XnU3PATokacTOa+TbF0ELF5aLvTddgBQyDSKdZl3nO7MzT/L6bgIbSkzC1X2BBKtFo
         RmZ9RSmxeKXW2iK0fWsPGrFY6vZG5EB+UKW6Hii35xTu1UABCt8jT2EDeMe6Cxr+XWRT
         wK2qHkZjKYlLQdljSwzp8r5QY3lssQGZl8MGIVhXgMv/EgSEzBPERoKp/c7O+3Qpvcok
         /uBsh2CMSTdlIO5sR72u6eSxTZoKq4cUMTtJy815E3+XniQrDWezzPCnl5qWEopK7QkI
         RlXJKbpNvPdbxhDA4+MdF8GMUyh7L6TyoxpRK8Nw2JxOsshD7KrNKeYaOmuBLsGYpkpw
         SeAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BII+zTz7jtm8jhHP1QadI74TGiZQSSw2amVagkSFq0k=;
        b=rk2nicMk10pXO+TvFcU4SoCD2C4QwUzxOh15VMm1t4T/9uc5K4td0u94qdYWEybuo6
         LCLJWQVHBqg75tBJdgfMepysGbs9q51Ck0tjhRKhPNMgOoloJ2CGapfdHMCbhvKrl2pI
         U9GVdd1LIUxtml2rWC6s8WMBOO8Ris3S5Bo/x3eiodVSa1m70N9rJCsPzVUYIcxgtXoz
         rOFya8jXbPsuVzcKyoKUXFqK6tS6ufgdBhdyTJdesZqB6tN0zLeOi/YD2sQ4EYbSiVzr
         py/UxOZuvVcCxr0OuVSmgeM+Hs/Vb9xA5CRu2duAQb5Hj4hlyiipIPmigGVwpKxtoTay
         zUbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K3uPZ744;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id a63si184089oib.4.2020.04.01.11.03.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 11:03:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K3uPZ744;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42f.google.com with SMTP id b72so342536pfb.11
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 11:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BII+zTz7jtm8jhHP1QadI74TGiZQSSw2amVagkSFq0k=;
        b=K3uPZ744EGrn7oHy53MvfcMiBTtI5RJjFV7x0+B7d5B2as/oEBwH2PzDZ/F72HGJFn
         Bwsic4mRHttEYAC8cAXuw679gj5/1VpEq0taNKfNObkk2gUa7Bcwqs7tI/En/aWN10nN
         coWuuqx0Mx3ULQ/oCmjsuoan0mEpiUSO5m/rnykXXQnoyNcBZftuuA02k8vDWrZ1naw+
         bmpBglUp7ZkTtGf3gSWz7OrX7cgWkMIUySDyN6JV0jd+qL2rV6lNP01aXeTAZSFJ7U8c
         F7jtPvStO8oxlvf9XNeFKsa+QBNYsoVACFJkgWHM8XAVVsWxAEywGIqRIcjIIxtTMyow
         n7Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BII+zTz7jtm8jhHP1QadI74TGiZQSSw2amVagkSFq0k=;
        b=mZu8NP5TaZPF61/u8Xhh61TpzAxxg+byA/HY7iOYU+TI9lP4CIjGX6pY5a88j3jDDS
         owXuT/3T5vHtN6NpKlvna+Un9b/AkWsrdCIS7FBcUwTg52L/4Suw+GZ9enpEylrYU1FI
         UhPwJ1ALS3mZ8O3cpvTnjlNnStoL+MORZnb6uQ4cLhg0NDfWK5cw71x+zzw1aWcsGeb0
         WuustlO/HLnlTgv0I4lUMRXIvfIZO3OAsUvyOwr44B7Ocdm2j6XJFX1kcebwp0Fs/Ljb
         9SSWcnLwXtsI+mEO1LH9U1k+aHJiwDMi5BPSLT9PgHGFJTApeHo83SfKRUvFvjE65BfO
         zocw==
X-Gm-Message-State: AGi0PuZomGXI9lkBp1ARaQ+fwtJM0x0CEfuRpWZoYqkjjWRDnD4VY4CH
	AT0qvUuf3WohfIJu6Xead30=
X-Received: by 2002:a63:5053:: with SMTP id q19mr10194439pgl.66.1585764235977;
        Wed, 01 Apr 2020 11:03:55 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id ci18sm2131896pjb.23.2020.04.01.11.03.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 11:03:54 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	julia.lawall@inria.fr,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v3 3/4] Staging: vt6655: Eliminate nested if else
Date: Wed,  1 Apr 2020 11:03:41 -0700
Message-Id: <301ff66e13e76be6416b5c0f8359249fa25f08e3.1585763457.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585763457.git.briana.oursler@gmail.com>
References: <cover.1585763457.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Eliminate  nested if else statement, reduce code duplication, and
shorten long lines by creating a new variable, len, to determine
function input needed for s_uGetTxRsvTime.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
---
 drivers/staging/vt6655/rxtx.c | 43 ++++++++++++-----------------------
 1 file changed, 14 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 0fbbe81bc2ca..0548c48385b9 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -239,11 +239,16 @@ s_uGetDataDuration(
 )
 {
 	bool bLastFrag = false;
-	unsigned int uAckTime = 0, uNextPktTime = 0;
+	unsigned int uAckTime = 0, uNextPktTime = 0, len;
 
 	if (uFragIdx == (uMACfragNum - 1))
 		bLastFrag = true;
 
+	if (uFragIdx == (uMACfragNum - 2))
+		len = cbLastFragmentSize;
+	else
+		len = cbFrameLength;
+
 	switch (byDurType) {
 	case DATADUR_B:    /* DATADUR_B */
 		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
@@ -254,10 +259,7 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			if (uFragIdx == (uMACfragNum - 2))
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
-			else
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
 
 			if (bNeedAck)
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
@@ -274,10 +276,7 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			if (uFragIdx == (uMACfragNum - 2))
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
-			else
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
 
 			if (bNeedAck)
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
@@ -300,16 +299,9 @@ s_uGetDataDuration(
 				wRate = RATE_54M;
 
 			if (byFBOption == AUTO_FB_0) {
-				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
-				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
-
-			} else { /* (byFBOption == AUTO_FB_1) */
-				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
-				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
+				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
+			} else {
+				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
 			}
 
 			if (bNeedAck)
@@ -333,16 +325,9 @@ s_uGetDataDuration(
 				wRate = RATE_54M;
 
 			if (byFBOption == AUTO_FB_0) {
-				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
-				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
-
-			} else { /* (byFBOption == AUTO_FB_1) */
-				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
-				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
+				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
+			} else {
+				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
 			}
 
 			if (bNeedAck)
-- 
2.24.1


