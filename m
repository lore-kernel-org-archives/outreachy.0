X-GM-THRID: 7030748849446584320
X-Received: by 2002:a5d:5144:: with SMTP id u4mr43862576wrt.91.1636973781319;
        Mon, 15 Nov 2021 02:56:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:770f:: with SMTP id t15ls6629020wmi.3.gmail; Mon, 15 Nov
 2021 02:56:20 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxJAl99S4H/ZFYWVmhj7Y2+jeFvwRXl+qvqTJlMa+/YfD1/hdMXcWOgT1zWbR1O7PXbp6Ka
X-Received: by 2002:a1c:f609:: with SMTP id w9mr1573435wmc.99.1636973780097;
        Mon, 15 Nov 2021 02:56:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636973780; cv=none;
        d=google.com; s=arc-20160816;
        b=WT42sVwYHIOghpJHpDXmnu0PdzPc6ImaTUrCzzlpJqAPivROaJXNc9OGl/KkF5YElQ
         Ap0R+f3fV1fDtFfLITp6iHpbhdkGhDyejbIf2zYHSkTOufgYD5irw+1xB2TebSR7Dsjr
         qn7IjCV3hXlD+nk5TKH47RCVAQ1zTw+3vwVGdrph2EDwcKJvgZCZUb5CMhsJT8YCW6Np
         LYLSaqTMW4j3EpwqkJTSH7ICneE4jyANycvFVjPYTK5NvqIDbATgG/HoECRnaoR7uBGD
         yOkrojeJCByRo80e1YKGVXTHc0v6PiLRxUePQbWGBiz0FFlVVymj8Oppc4jwUhSrsICN
         lQzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pfoIbbQyeoaiMVTbbswbVOIqx8arnjzrsrDHWc/2QRA=;
        b=DFUXL7M8lrzQaADh7YRDJNGuZRvOuD86dRWFAP+8R4nGfto2SsYVuLVIpioVaVybqF
         JTGuGUXPxV9pIbvgzeyE6+guHzp6buIMueGfhY2egIXhSFLx2iMeS9miIFwzcy5ATkUq
         oLvmxvVOJR2E2DobZLMEAfq5L8uo7ZlxT6jROruCD8ATA5A/c6Pk7hMy8cHxtjbULBW7
         u1MSCshxQeY66u93OWAVDAQBurB2uAjNZlJZFZE8J+eTJ5XC47V+Q49UlMz4QA7/qrDJ
         0ANp5HrHHRmDCVMTSjGdzR3Zl2uVov7VXJMyyD1OBrrEPNqml8sUz0IyLZA15c00MOrM
         8gXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=fICl6o6q;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com. [2a00:1450:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id e18si810187wra.2.2021.11.15.02.56.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 02:56:20 -0800 (PST)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) client-ip=2a00:1450:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=fICl6o6q;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42a.google.com with SMTP id t30so29741246wra.10
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Nov 2021 02:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pfoIbbQyeoaiMVTbbswbVOIqx8arnjzrsrDHWc/2QRA=;
        b=fICl6o6qvgnNDUrRxFFC9A7JfHMK5wooQfuCLafAMEgZz7pzOnKPBk0Iaj1KTmZZ5h
         1pM+6bl8YW4SQrRBzPRVlONWXQc4biLjsT0zbeoZSqNxFZTStOO/BoAXIUPUzSnV7L1p
         gxPagntPe0GpltGbtwJZkV4c7d3kZli7tpB+X6Kiq0rJ0491cKidV4B+ajSDH+uKNkiU
         8CC7SLwsupagjstanh5jQlx4Lfp0lssQI4J57Q8GFSBB27smKbbLHS+68ZWk1Tm7aR/l
         8/6e9Pcyax1I0LuogQuPfRkZDjTHjt8S0wFjuElJioJD1Cac0JYf9ppzEO6ulvNOuMGx
         ipXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pfoIbbQyeoaiMVTbbswbVOIqx8arnjzrsrDHWc/2QRA=;
        b=0X6ovcI4WnKFcT3L9YRC2rVk1HB5vxqLV0XocBkDSzfk2xJcSdxVu/RN8V7oy1239s
         ndBPZ3zF+wcHcyVCIhIPi5/Z4NnBHhjvQVA/2ACG6AbUnwT/7YfLv9OCks9WmU2je4Yw
         kUnxaWxgklgP8+0ffEm5PIsJen2+iGKB+ySOcYr1MGVIN0w6J0IP9tv1QvF17G1LuidR
         uvBxZ2fNypoXwoWqEZD/ZYic5MdIWjhAeJvlLcWV+aRJ2RVhCD2gEoYsK+t59ltkamTg
         /DB2sN99rB/0rVu/kq+macYrA5eiIEctGsstJ/yFfwFrp+cRL5SYDc/28kCAqFVe7USl
         GH6Q==
X-Gm-Message-State: AOAM5329vaMMXs9j203zgg+7S9R4Vo1M7NUWb/gpyQYsQ/5aCK33A/Jk
	JjwfHf/LBoXrwMngkbraxVLb/bc4xKc=
X-Received: by 2002:adf:cd8c:: with SMTP id q12mr45812392wrj.144.1636973779927;
        Mon, 15 Nov 2021 02:56:19 -0800 (PST)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id d1sm13516532wrz.92.2021.11.15.02.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 02:56:19 -0800 (PST)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v3 1/8] staging: vt6655: Remove unnecessary type casts
Date: Mon, 15 Nov 2021 10:55:42 +0000
Message-Id: <c9a5718479deda078b582cbc42a4e7b2f3a6cb39.1636729147.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1636729147.git.karolinadrobnik@gmail.com>
References: <cover.1636729147.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove casts to unsigned short in `RFvWriteWakeProgSyn` function as they are
not needed.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index bc4abe77db7b..aa90890c5c7a 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -699,11 +699,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 			return false;
 
 		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
-			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_init_table[i]);
+			MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al2230_init_table[i]);
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_channel_table0[channel - 1]);
+		MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al2230_channel_table0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_channel_table1[channel - 1]);
+		MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al2230_channel_table1[channel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -716,17 +716,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 
 		if (channel <= CB_MAX_CHANNEL_24G) {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_init_table[i]);
+				MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al7230_init_table[i]);
 		} else {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_init_table_a_mode[i]);
+				MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al7230_init_table_a_mode[i]);
 		}
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table0[channel - 1]);
+		MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al7230_channel_table0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table1[channel - 1]);
+		MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al7230_channel_table1[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table2[channel - 1]);
+		MACvSetMISCFifo(priv, MISCFIFO_SYNDATA_IDX + i, al7230_channel_table2[channel - 1]);
 		break;
 
 	case RF_NOTHING:
-- 
2.30.2


