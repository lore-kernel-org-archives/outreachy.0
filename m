X-GM-THRID: 7030748849446584320
X-Received: by 2002:a7b:ce8a:: with SMTP id q10mr56733449wmj.55.1636973782778;
        Mon, 15 Nov 2021 02:56:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:23c8:: with SMTP id j191ls6637530wmj.1.gmail; Mon, 15
 Nov 2021 02:56:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz3slCw8pdfshqCg8QDu/ZYIs0PZ3O2L5TaZr9cNw5cbp8USFPcnYVeonO2Xxztjw5XOYHR
X-Received: by 2002:a05:600c:21d6:: with SMTP id x22mr1623644wmj.194.1636973781401;
        Mon, 15 Nov 2021 02:56:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636973781; cv=none;
        d=google.com; s=arc-20160816;
        b=woApaqLcmc4zpNkVx6lV3g3OP64AWif12+tTOJ3Ds7+R9Jhu3DdRlEA8EE1bKg4JgU
         PpgDP5mukmtwEqW9IuFoUoJ8HourJCGVJgYw34eG//TAqP5eWkmvq/mejOF7WUVRLMtT
         guTL3N9MSKAmIa1f6/kIXG0RbiVTLndJ3C2EW+w7XjKizizFzHuxw+vMnnO659x0wake
         F7jFzwcxESh125kdPyeLxEEOudR+Ct9jYqILYU77umKY58fHMGO4ekAZP9YfP3I4AZBl
         +swQPLODuMyU4DW8bUHcohMX8qBuIBMIHPOEZ9OUXYjtHw6bPzgXGsfgKGq3PXtJ4tnp
         mAvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9HPYX9X+l+SHMmWoMwHMGj/nK3Gcy82dnkpOrVU1y4E=;
        b=VLp6z6UHlrkzPI6gA7TlJr0mk6Sg9d2VAazJX/tDWB/F/Oa1+hNd7mGRzcSiCnPVhd
         VFzaFianJMfM4BxSQYVfqZtnTqkakrYpkcNq79x2tDxPFWqxu1ZtIF6xtrJR7Oup1Y4B
         UzMejUQtwcN88rmBLq/hnUtJiUt+2bs7iVnqjBGZynLsyXPNsflUSTefbdtHyYHDb3qX
         AN39MfpVhz2hOw94ImWM9GuoOwm4m1ka+KT9zMmtNGeVnTEeXCQdUqIeGZGTkoFHR8e2
         RLl8r8nVLq2a9jUyZRLpR4uCB/AH0ctRRqtCRDM1+bgaeQ2/urv/24F5aRG14ZTtOzWl
         yJeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=CcxZc9cS;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com. [2a00:1450:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id e18si810187wra.2.2021.11.15.02.56.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 02:56:21 -0800 (PST)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) client-ip=2a00:1450:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=CcxZc9cS;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42a.google.com with SMTP id t30so29741246wra.10
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Nov 2021 02:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9HPYX9X+l+SHMmWoMwHMGj/nK3Gcy82dnkpOrVU1y4E=;
        b=CcxZc9cS925dLew7ws68qf5eBV9pJQabvv8BbtQMgpSQzwWCQ2KEKKVcFl3Zx1gs0K
         DxvPIOm3KH8dBW5STxTN2Pzohae0DTChOFxuZywi2gZkViHJxLdhlidyMMjcvFtIAhlJ
         u3qnHodw2I9rK3K5PwvvA68U8O1YKlfBpdvzBtsN7T6ApI4IId0hjkMO2w0gArjPE/Jv
         X7uAMW3kdugV6D9/sWL/WbvDJQTDRNKYRHhkBQwTDvsLezvSjzcBeKhhk424pDk3ljvb
         Yphfax2rjc+gURj5hXkKt0mlJmkXiQWj+x3tea0OdvEJ46tHRt+LlJn6+uSrKbm9Dk5u
         ONMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9HPYX9X+l+SHMmWoMwHMGj/nK3Gcy82dnkpOrVU1y4E=;
        b=clr8cFCba5p1/i90alN0s72pKrZxXm5pvvpMdnd0AYFF3t02rN9YJ2foqOijfVlb0c
         G8tq6zIui9XmMGmgo3Mw22BoFkvbWmjXGUfdGEuduZCtxnMMqMQ/7a4TY9mVlBcdjNcY
         fBoXHmg13/7pktCuaL+vrzZaoE2Zy7veVn3lNgVAgIMiIJG6xbiYe7p73CsxPjGu1H0v
         2e2qW72W65vzAdtvKvNCZsAqeuSi6ttGN5MjrSJzMlyndlNcMfkCknGE3t2Tm16kjiUK
         WFWOlRjVkyuto9SCmauwfqmfdzS8z53x2Un8JXOIZKb7O8/zG5FrmDftZglgDXSKwUjG
         2Fag==
X-Gm-Message-State: AOAM530X1A/ZEH0KZVURBvq19qoT7CaVGkOGFnnBxjrgscIcqcfl4JSt
	un3Y2xnVfVOdYMtRI4J4jBHWKJJ93DM=
X-Received: by 2002:a5d:4575:: with SMTP id a21mr44376663wrc.193.1636973781248;
        Mon, 15 Nov 2021 02:56:21 -0800 (PST)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id d1sm13516532wrz.92.2021.11.15.02.56.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 02:56:20 -0800 (PST)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v3 2/8] staging: vt6655: Introduce `idx` variable
Date: Mon, 15 Nov 2021 10:55:43 +0000
Message-Id: <596ae9bc980379860b5b1785b3ecc88e18121103.1636729147.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1636729147.git.karolinadrobnik@gmail.com>
References: <cover.1636729147.git.karolinadrobnik@gmail.com>
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
index aa90890c5c7a..d57fab3f10fb 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -683,6 +683,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 	int i;
 	unsigned char init_count = 0;
 	unsigned char sleep_count = 0;
+	unsigned short idx = MISCFIFO_SYNDATA_IDX;
 
 	VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
 	switch (rf_type) {
@@ -699,11 +700,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 			return false;
 
 		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
-			MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al2230_init_table[i]);
+			MACvSetMISCFifo(priv, idx + i, al2230_init_table[i]);
 
-		MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al2230_channel_table0[channel - 1]);
+		MACvSetMISCFifo(priv, idx + i, al2230_channel_table0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al2230_channel_table1[channel - 1]);
+		MACvSetMISCFifo(priv, idx + i, al2230_channel_table1[channel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -716,17 +717,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 
 		if (channel <= CB_MAX_CHANNEL_24G) {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al7230_init_table[i]);
+				MACvSetMISCFifo(priv, idx + i, al7230_init_table[i]);
 		} else {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al7230_init_table_a_mode[i]);
+				MACvSetMISCFifo(priv, idx + i, al7230_init_table_a_mode[i]);
 		}
 
-		MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al7230_channel_table0[channel - 1]);
+		MACvSetMISCFifo(priv, idx + i, al7230_channel_table0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al7230_channel_table1[channel - 1]);
+		MACvSetMISCFifo(priv, idx + i, al7230_channel_table1[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al7230_channel_table2[channel - 1]);
+		MACvSetMISCFifo(priv, idx + i, al7230_channel_table2[channel - 1]);
 		break;
 
 	case RF_NOTHING:
-- 
2.30.2


