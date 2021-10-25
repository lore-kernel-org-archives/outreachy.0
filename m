X-GM-THRID: 7023011661987446784
X-Received: by 2002:a2e:8099:: with SMTP id i25mr19629810ljg.277.1635172350681;
        Mon, 25 Oct 2021 07:32:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:31d4:: with SMTP id j20ls379935lfe.2.gmail; Mon, 25
 Oct 2021 07:32:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz+2TVVmZ8QmU5FkW08VxLhnzsLUbvMVAoKmaTM5Ch+Qc4/+U5WopTk3Dn8j0ii3NfRlhld
X-Received: by 2002:a05:6512:68e:: with SMTP id t14mr17953715lfe.625.1635172348574;
        Mon, 25 Oct 2021 07:32:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635172348; cv=none;
        d=google.com; s=arc-20160816;
        b=FJBUHSQ7cVgb7sR+kwQ4HjMjwv4CQrVDRL+aW9VVKTt0ctTpfE60kVN+S0oBdkOxJg
         UZeK9ynSmzQA68olAgwJ6uY6rLgglDdBzSwsh/ESG6Ze0h+mVCHKruqtpkPUmJ0F+Sr5
         gixYvURUjLCAT15uwPOV09+5JuRfv+jHIL70f5CqbIUtm4dXB8E0+ooVZfh3RAaWb2qR
         GlDXZq3HVEY0bO/jdKwMhtqS8Hwccm8DJuLTMgP+wDxR9C/ym//WSZ/ZHDWszjZfOn88
         7O38LxC/KkQhRMbDtDewptsjhc44TLuK4JkfjtfvN3otp2jgF41q/LbsNUx4XjPu04Nd
         W0Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RAj0aiWl+Hji1MErAOm7QfqsGTlwZNUkSUsTTflQ6nc=;
        b=MbcQZ8VJkxfgwGHmSmMHUkfsVBz1yg0Iq3pcxeAuvy1MZp4Z1heyMtCQSHHHPtNkBd
         f8y/oF53PGEyjjpV9P+GXmHv2+rDOQCxRmYopQZwoDwx8fYMLw057WQ5Fr88+6JiKD17
         g2eCn+ymJa0hvhOneGwVBtP3DwBEKH29vMesnSr+Jc2gBBmQJsKw5VFKXiWDW42p6BOR
         ZGao28Q4i0a3LSwXfGmH4swlB4+TTUoSAuCkfoTkAsl6Zlm5bmQZchgf6UT6mY1EuPud
         ApyGocQVfXH7dPtTRuM67UNkXdfr3+KoYdQqza7r5do6RaK2EY9AJz8Tuu5nXg8dZHbP
         +ETg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=czlC5k1W;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com. [2a00:1450:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id x78si135441lff.10.2021.10.25.07.32.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 07:32:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) client-ip=2a00:1450:4864:20::32e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=czlC5k1W;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32e.google.com with SMTP id 83-20020a1c0456000000b0032cb02544aaso162733wme.5
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 07:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RAj0aiWl+Hji1MErAOm7QfqsGTlwZNUkSUsTTflQ6nc=;
        b=czlC5k1WkXToJ+m2VHFI27g7tQ3OxyiA3rL2Yq4a+KMUhEOAgXei30wU1sGBisPT+z
         vh0cIZnHRn2JCE23Zs3Azd2GrEqWdb2NVeLV9UZGIKdykjJRYXXnkjKq6lm5qe9FzIhf
         Rr2nlL/Lg74QzynpN+ffYQ+MKRZA6vqWTIJ4B/Bvvics4eSusk9iEAlReengHJl3GV18
         QwwV7o/a9z/sxk9vw33VRn4cEQqF9J8reBi1W42T3LRB6bDh74K5fqBiVo1YfKX9z0WL
         o02tWsvG+p5f++FAbVfpxJV/P/dD2HPvu+GSPvReGWdrY8vhrvB2VrXfEAidzO0kex+Q
         ezsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RAj0aiWl+Hji1MErAOm7QfqsGTlwZNUkSUsTTflQ6nc=;
        b=a+oJ/QkqkNVEsOTypt0ollivRbx3wML1J82/s5Kimr5f2R+FrOZvBIocRwrwmqpa9G
         ZuOrPHNZBVliPXUIZr6ozWxzsZIGspowjhozvaruBp1q2rC+oe453fUJG2wTVxmFvElp
         ISghvG8cWkh0vTTGByPdtDNrW3zcGufLVEPsBkt+W3wMDQCKAAzBXAhCWVd8hVB+156o
         ZhYf+DRbxgRZGN7n1wirCNMbpxQxTHudeuecxNFkjjaUdYovC4gwV8URsvrQ50dF5csN
         v5Q8nh31bjTHKW23LmY+P9m85sBpuMAe5bQC8GX9sJSn753U5s4FRwk/be85EPCRI3gQ
         pgaA==
X-Gm-Message-State: AOAM531spvk3f1E/HFKeAb9irVLtk+RIV205N+X5epaNDJeTpFEjNkQd
	pFEXtmgGnLwDWJlDTqLh9Gt/fx6pPk3eBA==
X-Received: by 2002:a7b:c442:: with SMTP id l2mr49988880wmi.131.1635172348279;
        Mon, 25 Oct 2021 07:32:28 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id x8sm13011500wrr.53.2021.10.25.07.32.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 07:32:27 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 8/8] staging: vt6655: Rename `dwAL7230InitTable` array
Date: Mon, 25 Oct 2021 15:31:34 +0100
Message-Id: <4e78c4628ba75d9793bd8a60d69a1b0cc4d2a073.1635171519.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635171518.git.karolinadrobnik@gmail.com>
References: <cover.1635171518.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To align with the kernel coding style, remove the type from
the variable name and do not use CamelCase.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <dwAL7230InitTable>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 1c81c44f086c..bc4abe77db7b 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -155,7 +155,7 @@ static unsigned long al2230_power_table[AL2230_PWR_IDX_LEN] = {
 /* 40MHz reference frequency
  * Need to Pull PLLON(PE3) low when writing channel registers through 3-wire.
  */
-static const unsigned long dwAL7230InitTable[CB_AL7230_INIT_SEQ] = {
+static const unsigned long al7230_init_table[CB_AL7230_INIT_SEQ] = {
 	0x00379000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Channel1 // Need modify for 11a */
 	0x13333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Channel1 // Need modify for 11a */
 	0x841FF200 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 451FE2 */
@@ -420,7 +420,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 	bb_power_save_mode_off(priv); /* RobertYu:20050106, have DC value for Calibration */
 
 	for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++)
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[ii]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table[ii]);
 
 	/* PLL On */
 	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
@@ -434,7 +434,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 	ret &= IFRFbWriteEmbedded(priv, (0x3ABA8F00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW));
 	MACvTimer0MicroSDelay(priv, 30);/* 30us */
 	/* TXDCOC:disable, RCK:disable */
-	ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[CB_AL7230_INIT_SEQ - 1]);
+	ret &= IFRFbWriteEmbedded(priv, al7230_init_table[CB_AL7230_INIT_SEQ - 1]);
 
 	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
 							 SOFTPWRCTL_SWPE2    |
@@ -716,7 +716,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 
 		if (channel <= CB_MAX_CHANNEL_24G) {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230InitTable[i]);
+				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_init_table[i]);
 		} else {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
 				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_init_table_a_mode[i]);
@@ -932,13 +932,13 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
 		ret &= IFRFbWriteEmbedded(priv, al7230_init_table_a_mode[15]);
 	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) && (byNewChannel <= CB_MAX_CHANNEL_24G)) {
 		/* Change from 5G to 2.4G [Reg] */
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[2]);
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[3]);
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[5]);
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[7]);
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[10]);
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[12]);
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[15]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table[2]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table[3]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table[5]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table[7]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table[10]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table[12]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table[15]);
 	}
 
 	return ret;
-- 
2.30.2


