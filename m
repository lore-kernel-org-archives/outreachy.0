X-GM-THRID: 6810978384400613376
X-Received: by 2002:a37:b185:: with SMTP id a127mr1891349qkf.224.1585804483466;
        Wed, 01 Apr 2020 22:14:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b946:: with SMTP id j67ls1588077qkf.2.gmail; Wed, 01 Apr
 2020 22:14:42 -0700 (PDT)
X-Google-Smtp-Source: APiQypL0su67fyLVxpPiZUSATLlOsCHzMBlx23WTKJRW4JxDLWVQgR848+JlfsEN1gYBCIhySKp5
X-Received: by 2002:a37:6182:: with SMTP id v124mr1800898qkb.320.1585804482033;
        Wed, 01 Apr 2020 22:14:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585804482; cv=none;
        d=google.com; s=arc-20160816;
        b=DAfbb0+CPqzwFvGVNOCNwt1p9R69i4C93kxeCM61+epmZM1JOi30V0kZtnv0mE0poq
         jILQhx6NpRelFzbcqCvaJp0L6rqywaAH/PojCvqxdvoNDOE+q+0kD9ts/XuE834oTOlr
         7Bl38tHajzPtc87FOqef8Ez/a/uPEeZaENZJDhvfrU5qUGzcpv/3CgF7fKfTLx6wdxsM
         PPxpqb1ttKRRK1tV5nyUCuPAAu7JstkFl6h7ebISYKHD2ljen8/HVpMaSmA4pm+yNxOo
         WrOw+fvrauRs62n2fXLHV5LFzldzF1F4bN1UBqc6Y+qKbVfOUqA0FJFx0FlGylzxHDJn
         jYKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y0gRj04HpGi9Jm7ow/5V4LdyI87E3C578Lv2j+KCdX8=;
        b=RyGcE9P5bSdzBwhJoTgX8sYUnJeTHqYqr4tHkkbx1pSL5N3QDjko03Pq9aIZpqWnvE
         5TzI27HItGZcbycQVb9+ExRt/PccVT30F5FED59P6TKe9YBEudRUCl5jm3T/mL5wXjtm
         tk9PnJMC3A5OIPYE591sCY0TrpznvPbvRh+oNVFeN9QzwmjoCAN3hmPrnDrpYyBu8yDF
         yj2DXs3I94XZR9KYbthbWpeYGTwrIyqhzWECjWGGWAxz8DKZdSEp5BAyYmyMLyvmohNT
         e/4N5mDfgClfrLMVAnQT/J4GNqNQwkuERf74T11M4Cg8Dbte19/OtkP7hllmWDz6qoNR
         wVHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ekcRyBWT;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id d34si312963qte.4.2020.04.01.22.14.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 22:14:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ekcRyBWT;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id ay1so916782plb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 22:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Y0gRj04HpGi9Jm7ow/5V4LdyI87E3C578Lv2j+KCdX8=;
        b=ekcRyBWTJsEwP2KjzyqoU6hbqa9Kxwjfs6T70tU8brKjzv2Nu3T+L5qCsjWZIY86hG
         EoH5+yrf0yJiOtQ1AoFphy0zUIZhNgnPOPBtghy/Jf2rUKI2UU02EQjKUBT29HeZ/FxZ
         XdvVw/pydK8KEiItLvn2//3gGu399yijHoL2WjrOQxgJXo1eKGuRe7/xD813dgxAsJUI
         XPN2iZA9A6FO6CulAfS1njuW4DdPkugr/eUs/yvGiMKP7QEuR57vyEMZmTkY7y18YVIf
         KUgZEcb+AdXyNgKDMZ6vYAz19hceHxh1LNC5X3zN0fX9/AT9kNKtF/F3S/vBsK8x4sp6
         nYzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Y0gRj04HpGi9Jm7ow/5V4LdyI87E3C578Lv2j+KCdX8=;
        b=o/5liqU/DTql5f37tWICjJjDEd39ztUEOUtD8Sq/mL8C3PAwaEA4CIqSWrGrQssUWv
         9tLCtwGCAmPfRjtawKQ3wz89C0ZP2zoROeQeig1hT6+4CjPYv6le3Mk5Vpw7/dXDSbjF
         2OppjQS6xtoLTu+KJO12Jrr7Pi+TdCH2eUSd0oc+qxFfcN2gGjkkCaeJ2/2iNMmD8D4V
         VfLes4OqBK01jUEPSMsCPsmAKMQLVnG05f1vLWezUH1RRnTq5TazhNxtDFW/7yaSXxR8
         VXRcRBlfaFbmXdI7nKS158SnBUMJAV7GrOJbR8/tkeCcLR7O4P1bGTNAJZW268+uMOeV
         4F9g==
X-Gm-Message-State: AGi0PuZsYqRU7yEhd4/6ugETYj0LXP0RJz2YfxccUprICiunOEjnLVYT
	QdFh3tKb9czWOIXuSQO4qcw=
X-Received: by 2002:a17:90a:d58a:: with SMTP id v10mr1762538pju.53.1585804481066;
        Wed, 01 Apr 2020 22:14:41 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id l1sm2846485pje.9.2020.04.01.22.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 22:14:40 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	julia.lawall@inria.fr,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v4 1/4] Staging: vt6655: Remove CARDbSoftwareReset definition.
Date: Wed,  1 Apr 2020 22:14:33 -0700
Message-Id: <8ec491439b947c959fab52e006d9ca26ec3657ab.1585802818.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585802818.git.briana.oursler@gmail.com>
References: <cover.1585802818.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove function CARDbSoftwareReset that is never called, along with
comments related to it.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---

Changes in v2:
	- Remove extra newline that was introduced after function call,
	  change recommended by Stefano Brivio.

 drivers/staging/vt6655/card.c | 21 ---------------------
 drivers/staging/vt6655/card.h |  1 -
 2 files changed, 22 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index e65c9825ea5a..52af85fe538d 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -12,7 +12,6 @@
  *      CARDbAddBasicRate - Add to BasicRateSet
  *      CARDbIsOFDMinBasicRate - Check if any OFDM rate is in BasicRateSet
  *      CARDvSetLoopbackMode - Set Loopback mode
- *      CARDbSoftwareReset - Sortware reset NIC
  *      CARDqGetTSFOffset - Calculate TSFOffset
  *      CARDbGetCurrentTSF - Read Current NIC TSF counter
  *      CARDqGetNextTBTT - Calculate Next Beacon TSF counter
@@ -843,26 +842,6 @@ void CARDvSetLoopbackMode(struct vnt_private *priv,
 	/* set Baseband loopback */
 }
 
-/*
- * Description: Software Reset NIC
- *
- * Parameters:
- *  In:
- *      priv         - The adapter to be reset
- *  Out:
- *      none
- *
- * Return Value: none
- */
-bool CARDbSoftwareReset(struct vnt_private *priv)
-{
-	/* reset MAC */
-	if (!MACbSafeSoftwareReset(priv))
-		return false;
-
-	return true;
-}
-
 /*
  * Description: Calculate TSF offset of two TSF input
  *              Get TSF Offset from RxBCN's TSF and local TSF
diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 337266add6b2..a811ac8942a0 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -46,7 +46,6 @@ void CARDvUpdateBasicTopRate(struct vnt_private *priv);
 bool CARDbIsOFDMinBasicRate(struct vnt_private *priv);
 void CARDvSetLoopbackMode(struct vnt_private *priv,
 			  unsigned short wLoopbackMode);
-bool CARDbSoftwareReset(struct vnt_private *priv);
 void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 			   unsigned short wBeaconInterval);
 void CARDvUpdateNextTBTT(struct vnt_private *priv, u64 qwTSF,
-- 
2.24.1


