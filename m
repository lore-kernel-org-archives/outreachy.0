X-GM-THRID: 7021822549853995008
X-Received: by 2002:a19:f805:: with SMTP id a5mr6860277lff.644.1634895471497;
        Fri, 22 Oct 2021 02:37:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4a1a:: with SMTP id x26ls1627341lja.11.gmail; Fri, 22
 Oct 2021 02:37:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyhscUiL8CdoFPZcH8HmnHaVfErwlj1W9b4R/T51PfskGIoxerC9AZQq1jT0tbnmpkG0hnn
X-Received: by 2002:a2e:8841:: with SMTP id z1mr11866859ljj.180.1634895469902;
        Fri, 22 Oct 2021 02:37:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634895469; cv=none;
        d=google.com; s=arc-20160816;
        b=hkaLaUuygDQ5ycYA8wSexSxxPZKcYvfv/nWvI6rL82ADXxxxdpPTeJt0i0oSWedDA8
         QypTPYnoM3wk1qbN5wNq7JvAE95xbvaBROQAo14fvQuM/E2r0kbhG26coKRkWLR01uy8
         o6v6VotPuJfiKdqwUk9A+JkGx5DM/yoEaZdsC30j+AS/6HUnMbWpVPRIIyykFycMsnFj
         ojymDk6s+UMgkg63u0A0GPStB4J3aYvSSRSMjWtkRmTeXkFnlcNW9zb0UVLHQ+gglePu
         WhJvSq3ho6Wo6X0ikU8+TpEK0oy3/CVxbu47VCkhjmoEsdNZZbblBK4WmwZlONGzLdx2
         R1Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eHPc3N37Jxt/ha1mRXWgFzhusdcNwFGBiIe67sBVlN8=;
        b=Wq96GEzxmO418wi8oycEDAXnfEoTXRVZUowUqW6pMo5PzE3qrdt+YCP7pVmItZY3gP
         DngQIEWUZ+OjoL9+B6wsQAOrKj4/4Ri+N3aGLC1U6g1uDNYKbQza1neHBAtavl7CnD7F
         AOAG7jDnYErDNhXa4Gyl2zneB1+D45i3HikN3IdTx8DQkxJsVARqikxu65P8oBsjYK4V
         n/3Nq517IJ+4gVFgS0D9wU0l9a7YH8D2Dfruh/Le0dTdnMmcX8cQrQdxCXbW+zHifsg6
         NjLXwVAwfqtOXDsELQiWkViHNl9/HJF0vwfRro/f/cfUvF6TRZm5o7zTVpZ+ITeugwof
         59Ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=FeEQdVMl;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id 8si451858lft.11.2021.10.22.02.37.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 02:37:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=FeEQdVMl;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x435.google.com with SMTP id i12so1311859wrb.7
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Oct 2021 02:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eHPc3N37Jxt/ha1mRXWgFzhusdcNwFGBiIe67sBVlN8=;
        b=FeEQdVMlkj1f+mgd3LmPprz60U9As8acN3sZRT3ZCY9dzNTv7zL2uA/Youp08xl6T0
         3cYHQADkjWAlH9buYpdGfr7TKnkKG0yACywB4EzXaJ163xKF1+9pcpz3JDSGv0LphDCy
         V/uyrTXNk1VXVHIfY+f+HKtlepT34gJrVnSjIGs7u1bkKv5ikuJgewS9oA0pJKmBZTLY
         7EQpGxatqZcOBkB8SZJiRzfw3VufwAlX7tyEmVyyZJuOFDBnyoRSQYf8Q0KDMEuMheLc
         4/xdWK3Xc7Cg0HeB4txEiguNcZEzzQns5w6d54htqWUCJrol5AzIfElHqoDljVIqkcG3
         GaQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eHPc3N37Jxt/ha1mRXWgFzhusdcNwFGBiIe67sBVlN8=;
        b=tLVOlsy7LgpPJ4Yc/ozd3s6CK8ATR07VIR1ScJiSS06RE4qN0CJWEV2q+MF8qDMV/d
         clyLiVY9sru32v8by6WqDlR8tf0pbgjehA0Z2k4a+8zt85ivU258dx7L9RhIZBmhXX8t
         Qybm09LmIMi5JGDZ3BNKYnfU4oPSW5hrabpkMnz2CzGTlZxA/L3z6S98yQ2vonDxgr/V
         aeL57jCXJyRYPOT0E419WRN06j9DhjHWHXcUxorAhseebzkxOMVguM8Sbu1DsXZcL3El
         NWSh3L8Rdg2iJfs6j4w730JSrtnTmkTV9brwLSEAyICdo05vHlDUeqzUorCGAWUsEArE
         iiTw==
X-Gm-Message-State: AOAM531E3tA0a4TyJAYUZRuVazWk5cE05k/nQYi1yU4yoeNo5gbIi3HG
	JmtRWYScjf5Gu4YmTIteWmglrQ1BPm0NVJNo
X-Received: by 2002:adf:d218:: with SMTP id j24mr14679201wrh.50.1634895469456;
        Fri, 22 Oct 2021 02:37:49 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id r15sm1643602wru.9.2021.10.22.02.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 02:37:48 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 2/5] staging: vt6655: Rename `byInitCount` variable
Date: Fri, 22 Oct 2021 10:37:15 +0100
Message-Id: <53430b1183324f6a715999792a15df2ea6a3e206.1634826774.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1634826774.git.karolinadrobnik@gmail.com>
References: <cover.1634826774.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop Hungarian notation in `byInitCount` variable in
`RFvWriteWakeProgSyn` function. Change it to use snake case.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <byInitCount>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 7e441309dd9c..36708af7d612 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -681,7 +681,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 {
 	void __iomem *iobase = priv->port_offset;
 	int i;
-	unsigned char byInitCount = 0;
+	unsigned char init_count = 0;
 	unsigned char bySleepCount = 0;
 
 	VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
@@ -693,9 +693,9 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 			return false;
 
 		 /* Init Reg + Channel Reg (2) */
-		byInitCount = CB_AL2230_INIT_SEQ + 2;
+		init_count = CB_AL2230_INIT_SEQ + 2;
 		bySleepCount = 0;
-		if (byInitCount > (MISCFIFO_SYNDATASIZE - bySleepCount))
+		if (init_count > (MISCFIFO_SYNDATASIZE - bySleepCount))
 			return false;
 
 		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
@@ -709,9 +709,9 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 		/* Need to check, PLLON need to be low for channel setting */
 	case RF_AIROHA7230:
 		 /* Init Reg + Channel Reg (3) */
-		byInitCount = CB_AL7230_INIT_SEQ + 3;
+		init_count = CB_AL7230_INIT_SEQ + 3;
 		bySleepCount = 0;
-		if (byInitCount > (MISCFIFO_SYNDATASIZE - bySleepCount))
+		if (init_count > (MISCFIFO_SYNDATASIZE - bySleepCount))
 			return false;
 
 		if (uChannel <= CB_MAX_CHANNEL_24G) {
@@ -736,7 +736,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 		return false;
 	}
 
-	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(bySleepCount, byInitCount));
+	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(bySleepCount, init_count));
 
 	return true;
 }
-- 
2.30.2


