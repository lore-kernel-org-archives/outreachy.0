X-GM-THRID: 7023011661987446784
X-Received: by 2002:a17:906:6a10:: with SMTP id qw16mr23542326ejc.551.1635172345267;
        Mon, 25 Oct 2021 07:32:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:f111:: with SMTP id w17ls346142edl.2.gmail; Mon, 25 Oct
 2021 07:32:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz6mflLGEaY8kMYveOMwzwC696JW5laeIPgxLNMGEcPs8UvvR4CKFO2p/GcBg8WHsKVxIOT
X-Received: by 2002:a05:6402:5215:: with SMTP id s21mr27144482edd.113.1635172343781;
        Mon, 25 Oct 2021 07:32:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635172343; cv=none;
        d=google.com; s=arc-20160816;
        b=lXXEi/5z83iEg2zUAsjD2RBmySD85fRUFAT/8iIXzvxnG1OsRFRkjghWTyB/EYeUEb
         xSNqAtWntBXN8nNr8Kp8iHnasrCv6e/0iTC2P8fxaY7zRROOiESd16haPyPpnn7+pOV4
         Wtyc8ksNjSYw+jjAejTuMQYSh//vKKu/4axXCZtKYVmlpoy2SZAkVsZMa+dM13y1HN8t
         eiysc8p3gAfIGhumfeNO6Uge6eHKx7mjgribYfsrBoV1rbJ7Ujb++AbYzbg6UvA2WNck
         oNab1/clu3STy67WqBpFSrOOmlsMHBDUJElEuP27yC/ByA6TZWg/kMU06iSY5rpoYd6+
         Z0Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CN1bzN5gAX0mR9pVVX4XrUmk+ae17sN/41d9NohOKlo=;
        b=c1oDHRDvoPOvI1/mRjupUyM8xwoA6XlnOh33U+okvuIaVYPsYKEhuhE6xC8+freqvf
         d1OUJYE/H2+8lr5WPrEnWwie6F8kB+okvyLoSlQzNvDJxoG1O/FQN01a7g3IgBVsP2NB
         bwf3ZxiSymwwSLDIPUmByFDtejrOTQh0jKja819DvDkM73BEnrKOvvyF1X6ezSGo8ToW
         iaqJ3aEdNOYYMViylBc3SHGxtHIo1U6vc4GGi4vIv8AYAJvkvPdz14bsXCxMoqRGXV2p
         GZZAPKcQOIx1KcVz59IgO3bUWnML6pq/yGjLbbAtfhAhe4eFFxVqhtrrULKRwr23+TvF
         Fhbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="H/9Cig8T";
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id bi21si781452edb.0.2021.10.25.07.32.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 07:32:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="H/9Cig8T";
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x332.google.com with SMTP id 5so1220189wmb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 07:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CN1bzN5gAX0mR9pVVX4XrUmk+ae17sN/41d9NohOKlo=;
        b=H/9Cig8TOUsoag0xHxHxcJ/HsWnggINCOtje/+QkLhac5dV66z44hGoxQnqHUF8AGl
         w7jtIXbazQqtQ2AgdJUfyzNvSWKmTSONasOuqgbg6BcEWnFUB7jRTrR73H4sFEs6FIU4
         P6Nhk/+0B6kmAvbk9/MygP7msalRWELE0s2mM8Gck2Gg/4npsyNM+kYwFJB7dKBqWEpC
         SX0Xgvy7EH/dxbIeEaU8Qg06F33xOrd34INByymtnXHRjU5cGr56y0Yv/YBLQ5OXn6Z/
         QtFMJoVQsDBhDOjh+rtjBP60pZome3FJsJxxeIJOnenDywmDX+0LKDWMymCqiGXAZPWc
         P9rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CN1bzN5gAX0mR9pVVX4XrUmk+ae17sN/41d9NohOKlo=;
        b=3Rwh74QL5m3y0w7T675DXFR8pklQ6+qzRxMdVxYFNYjIisczRekJj4V3ASRds9R0Wr
         IaxGIE83uXZCDInGV7dUVoSBIj5UhiHZO7vf50oimJjFcUF+Qx8vCQv6M+Wu8M4/X9EQ
         uk0LDGqDS0q2KJch0X8n16vwoA2MQXYYqAscd5WHHBHtcfhBJQkYJdxwdZm6RjHPJbVi
         MLfPLizczmhBAIZdLLl3GVEgZe77yTaPlpce18vpa3PGyhZkAXXnt+jM6Dlj9LKDPhbg
         Sd9xevglBRw93KqjK5D8KPtYF5VuBMAKV+jFjYcxGEW0Vwaby0NcZ1gk+obKYwnGka3Q
         QuVg==
X-Gm-Message-State: AOAM530EwZGi1RTcYh+JrUz2uYo3TfvIwa1W5fyOCRalehl9Lqg6jOSz
	D8nEfH86knT06yfCZpUp7DlQ/t9J+X+UPQ==
X-Received: by 2002:a05:600c:4f8b:: with SMTP id n11mr19798568wmq.54.1635172343529;
        Mon, 25 Oct 2021 07:32:23 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id x8sm13011500wrr.53.2021.10.25.07.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 07:32:23 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 6/8] staging: vt6655: Rename `dwAL7230InitTableAMode` array
Date: Mon, 25 Oct 2021 15:31:32 +0100
Message-Id: <bd97b801861fac2168625c3e4ea1f97b9960e962.1635171519.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635171518.git.karolinadrobnik@gmail.com>
References: <cover.1635171518.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To align with the kernel coding style, remove the type from
the variable name and do not use CamelCase.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <dwAL7230InitTableAMode>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index a5c8dc5875eb..d132a21faf24 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -176,7 +176,7 @@ static const unsigned long dwAL7230InitTable[CB_AL7230_INIT_SEQ] = {
 	0x1ABA8F00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW  /* Need modify for 11a: 12BACF */
 };
 
-static const unsigned long dwAL7230InitTableAMode[CB_AL7230_INIT_SEQ] = {
+static const unsigned long al7230_init_table_a_mode[CB_AL7230_INIT_SEQ] = {
 	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Channel184 // Need modify for 11b/g */
 	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Channel184 // Need modify for 11b/g */
 	0x451FE200 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11b/g */
@@ -719,7 +719,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230InitTable[i]);
 		} else {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230InitTableAMode[i]);
+				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_init_table_a_mode[i]);
 		}
 
 		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table0[channel - 1]);
@@ -923,13 +923,13 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
 	 */
 	if ((byOldChannel <= CB_MAX_CHANNEL_24G) && (byNewChannel > CB_MAX_CHANNEL_24G)) {
 		/* Change from 2.4G to 5G [Reg] */
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[2]);
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[3]);
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[5]);
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[7]);
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[10]);
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[12]);
-		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[15]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table_a_mode[2]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table_a_mode[3]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table_a_mode[5]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table_a_mode[7]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table_a_mode[10]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table_a_mode[12]);
+		ret &= IFRFbWriteEmbedded(priv, al7230_init_table_a_mode[15]);
 	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) && (byNewChannel <= CB_MAX_CHANNEL_24G)) {
 		/* Change from 5G to 2.4G [Reg] */
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[2]);
-- 
2.30.2


