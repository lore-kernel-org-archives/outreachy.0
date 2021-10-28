X-GM-THRID: 7024064041486123008
X-Received: by 2002:a05:600c:22c3:: with SMTP id 3mr3457031wmg.170.1635417355424;
        Thu, 28 Oct 2021 03:35:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6b08:: with SMTP id v8ls3126853wrw.3.gmail; Thu, 28 Oct
 2021 03:35:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzf1o4st7iJvdqWtWVQ26gX7nqqqQLCZRGH3RxxZj4gsEZOGQSLdDgng88y0sHO/uNwYqUD
X-Received: by 2002:adf:efca:: with SMTP id i10mr4478328wrp.289.1635417353997;
        Thu, 28 Oct 2021 03:35:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635417353; cv=none;
        d=google.com; s=arc-20160816;
        b=Ny4MSB9u/rTw4gO8rC2vX+SEW9BaDeu1JbN2vqF08AuhQiWAB1qYXvVeJxGwVyImT7
         bpZ2ZMEHogvi0uyLanCHigI/zWugmaNgXEzOwWNXtKIt9VrqIdg0oYF3Wr9MdpPbGTHt
         hndmwD5b/kWQMQMoqSXRBUyzYJRVyxnR/c85IGEjb23fP54HIhVdA1FB19VTl3agTo8p
         KLEx97IfURz4vXpHquj1yJXzxuycPEVeF0Ed2/qSmTiP85/UpFxOhYCEL5zwn+nzTqoS
         cbAH2xZ/lYGfBvaV0PbjMNg9gFZYZtNscFx+hWXx/aITrPSPdbZXuxsXUFJBumKchSyE
         kZsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AVb5GC93bP5+2in7SXHaVRcFzvFScW/Z0MhMVVxwoss=;
        b=j/tlbpAbIpC0RaRshfTUXQ7jB4nsiI5UAv58UpAU4pLUoAcYxeTaKaohmiTDhP+aPI
         hVd76rpj+kf6ZeOa4KA4W56dyVBgtDBpseJTEFsHoDmfUIFWZz2VeYuscpvKXRNFNuFf
         ux+nE6oE1FSUkqGqCybAomlpS+wagqVr8m2M5wt/IYs27c4pMpGgAvHEYAEIbbL69kfe
         XZN4HdAA70JYq5+IThaXPW0a8P10tINmkCIraQcT8rR1xyPRMxpnxEOQAyu2e/DnqX9p
         ad1jhEw9zS0CGCVUTPQmg96XhcFsRzAUSL5bxls/tB7Sr8ETerdwlmsVPLRvq8jN3+U6
         DCrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UBeWVGZj;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id i1si160931wrc.2.2021.10.28.03.35.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 03:35:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UBeWVGZj;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x431.google.com with SMTP id v17so9280386wrv.9
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Oct 2021 03:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AVb5GC93bP5+2in7SXHaVRcFzvFScW/Z0MhMVVxwoss=;
        b=UBeWVGZjUohQkuLKp9B+34RO1/T07RvSf3ohLXqfSxP5X8++zY037fpNoSiErYR0Nt
         0uFiBOyT318fafXT1HJPh49qgSOgzuO0l0IiVc2Ln6GHGo4TcSh3ZM0ed3PtbizorHc8
         /9N1cWxqkqVCkrl/eUV35behsErEToo+Tj8acJ/XLfB+Rflp0QmZr3IoQ2/fALLgLa80
         puAeL+DtrzIcfpyRnu28cLgcM3tfisoVJyGBBzJbCsBgCwr1mfVKKg/n3to4nhoSw0p1
         Q+nUblPinH81PdK5rZUJbA0H5Ew6VGjgO5n3d29bSJsx0Cf1YMhcYtp0QhFvLKsV1v2S
         LMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AVb5GC93bP5+2in7SXHaVRcFzvFScW/Z0MhMVVxwoss=;
        b=NDkCkB9r7KfHCDyyDzpUE8LqwNV/NaCVS0bpfyST3qsijw+3PMQ0F87RdUxg+QNDMb
         K8GKXNKc99f/HNeYK3BX4DzjT87ixg05zqIwxiE+EGC4l/7t4u83WGQe21CmPQtuZFli
         /AmOijmeZiWx6UtVcGq8o/GvOlWqLftuvRfWko7+GpB1Ibpz+rqvBXoJuFfwxFcPRDjk
         th08FUXMLtNPL5XNUEoL4ZwDfX8fC3QWg3G5UAOMANv+401KbUc6qCtHjqQkkPNYirox
         kuTo6wvmBvsTJdGM+mifknLdcbF2BF+9+NyR8Z1cCJbIWBuGfIztPN43KvGxixqT4xAA
         8avQ==
X-Gm-Message-State: AOAM530ZiXYqhgZYA2dbBzNewQNosfKsSkzzjLrf0z64Q8MYXMXPeN7e
	AS5xhpSCRP5zF5quscPD0nNmopFWl68KGWv7
X-Received: by 2002:adf:dd07:: with SMTP id a7mr4552817wrm.395.1635417353741;
        Thu, 28 Oct 2021 03:35:53 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id 13sm3768083wrz.38.2021.10.28.03.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 03:35:53 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 1/7] staging: vt6655: Introduce `idx` temporary variable
Date: Thu, 28 Oct 2021 11:35:31 +0100
Message-Id: <34bd0e8f42597edf006a950d420345befc4e0bc2.1635415820.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635415820.git.karolinadrobnik@gmail.com>
References: <cover.1635415820.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a local variable to store `MISCFIFO_SYNDATA_IDX` offset.
This change helps in shortening the lines in `rf.c` that
are deemed too long by checkpatch.pl.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index bc4abe77db7b..f195dafb6e63 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -681,6 +681,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 {
 	void __iomem *iobase = priv->port_offset;
 	int i;
+	unsigned short idx = MISCFIFO_SYNDATA_IDX;
 	unsigned char init_count = 0;
 	unsigned char sleep_count = 0;
 
@@ -699,11 +700,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 			return false;
 
 		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
-			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_init_table[i]);
+			MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_init_table[i]);
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_channel_table0[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_channel_table0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_channel_table1[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_channel_table1[channel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -716,17 +717,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 
 		if (channel <= CB_MAX_CHANNEL_24G) {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_init_table[i]);
+				MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_init_table[i]);
 		} else {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_init_table_a_mode[i]);
+				MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_init_table_a_mode[i]);
 		}
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table0[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table1[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table1[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table2[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table2[channel - 1]);
 		break;
 
 	case RF_NOTHING:
-- 
2.30.2


