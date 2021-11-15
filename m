X-GM-THRID: 7030748849446584320
X-Received: by 2002:a05:6512:39d6:: with SMTP id k22mr34461291lfu.559.1636973784490;
        Mon, 15 Nov 2021 02:56:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:2610:: with SMTP id bt16ls165582lfb.2.gmail; Mon,
 15 Nov 2021 02:56:23 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyYPhoEJW1HHvDt4Ye0WKXrFHYCqIyiWVWTux9LXixRCWedm957cYU9Va5IpZbwTVk/Re/H
X-Received: by 2002:a05:6512:150a:: with SMTP id bq10mr33404219lfb.68.1636973782916;
        Mon, 15 Nov 2021 02:56:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636973782; cv=none;
        d=google.com; s=arc-20160816;
        b=JI7ZJX4lFTkZlIWNT8miHn/O4uMb7BLbvU5S3uovO5Q9ejCohwwKbEwDTpSdaZ32t/
         c5KopAAAvbAoVcJGslADF3Pi4stXrLUdYS7ZKCEffK6+mfXhk1I+8EA41uUAfmq+0tdO
         CSl/tx6P7IHSHb7vKR6Rlk/3rJNrePiEP+tUrexTn43SGUt7zp+rsGzukI5NIxst7Sff
         KoThhpVbiWM5B8+8+R0RKqXdSwVyRotVVBbwgcshfrjGUnvZCRKwOCXJjiGW0Elqlff0
         FMV3FaTWr2Z3dJffMUu01n5+AhtQMon4twsl76Q//DsvhuEwycA/gXJXOCaU+fsxrfhD
         F/vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KdnvnZ7J2/koQu70kgtIUFr3wg0Bu4erMOm8YnDNdUM=;
        b=kXfP40BiyAgp5p7QhKNgjRK93dIyv4HY/G8a2AIG6dRJlkuBG9YOk5TDMLlwT5YFmP
         Z5l2XjYKelqpHnR5eetxeLEWSDSXEDBM8KoXPRi54CQAiNx2qi4P3UbKFB0ZYG48klEB
         D+4UGBPBV0Jo7ZlmOh4B4CBKl6pVrF8kntv4h4tP+jKMXYsiQe8Ft+j3LVtnHK7LEeOp
         L9I44hmWV4PVbxvYnxDEtdHPhpzbJ8LOmf+Z4m6wSE7/3zrVEY933piQbuku2u4LXzPo
         Uwv9DSB7TkVH5TrCN1zb40T6plvC2uydVFR5Kgr20X+427qfjPgVwB4fQvjXMXjBXI+g
         nzpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=A5E0hXaT;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id x65si739170lff.10.2021.11.15.02.56.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 02:56:22 -0800 (PST)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=A5E0hXaT;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x435.google.com with SMTP id s13so29844214wrb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Nov 2021 02:56:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KdnvnZ7J2/koQu70kgtIUFr3wg0Bu4erMOm8YnDNdUM=;
        b=A5E0hXaT2bWiSVAxf7gesyVmU+UILmQB8ZTYTpV4rdR9GVUzKdlxi6qLnyQ0dAhC2U
         QzaxvNB4Q9Ex3d6xHkcygAWArAhZmGCrYDBt8Kezwrz4NHqBvXIMpj7QlhIhpKsR8Agu
         TQz5RtTgwHrFQccf+Oj0+QbtMIf3CWJuc+fhY45633nS5/6lTvgAVzPcg6a40na99g5N
         cGrsm285fdt+QkhCgmCY4q3Km92sx2sAVg9WVBQmGAhJ+cXU8bLGj4OGLGQXrEb3eypH
         rgpq3aR7tRR10TORWmo/5c8AFG4jWhGF7cJ47PsDVWfkR9nABI6QFU0kvHMpGIwBgWTw
         hS1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KdnvnZ7J2/koQu70kgtIUFr3wg0Bu4erMOm8YnDNdUM=;
        b=jh8/W6rh3XG1Cgy0MngvV+ViA5T+BpyZFYTOUvZbgMDGZz7cb3ks82V6A76GM19z3q
         AJHDv9eP2c9v12mDr/vk+mO7inuhIhFf4KPgeVI8zV/83WhNurC+se1ZNjJXywaXU2V2
         ZoeoR3KFwMIev27Lg92GDSwidoiOyxR8wQLHADj5DbJiKb5mHfUSkJj+tCIGEIwemSv4
         ps8bPCgDV6UpmS2p2Ex8IYUTb/1t0mHPr0bOU3CuO08XcZi0j0sZ9j6hPR9N3JFDSEOx
         bawy4qsjcO5TObrRa6wj/2VW0IFfueinerOqYTw03zsq+UaHEBBHNg6gxryiekKtanvy
         d49Q==
X-Gm-Message-State: AOAM530DqJb0fcGTI9e2fQKRhAiY/0jXi64a7ijsh2e6/I0zjxY6j7+o
	ZtOG6hOezekKhUrOyxgfLVK4WQfcx74=
X-Received: by 2002:adf:fa0b:: with SMTP id m11mr45732136wrr.152.1636973782467;
        Mon, 15 Nov 2021 02:56:22 -0800 (PST)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id d1sm13516532wrz.92.2021.11.15.02.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 02:56:22 -0800 (PST)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v3 3/8] staging: vt6655: Use incrementation in `idx`
Date: Mon, 15 Nov 2021 10:55:44 +0000
Message-Id: <9affeaf40ddb31e03b21db9acd099db4d80da179.1636729147.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1636729147.git.karolinadrobnik@gmail.com>
References: <cover.1636729147.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Increment `idx` in a loop instead of adding the loop counter
`i` to do so. Delete increments of `i` that were rendered
unnecessary by this change.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index d57fab3f10fb..ce91a03eb58f 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -700,11 +700,10 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 			return false;
 
 		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
-			MACvSetMISCFifo(priv, idx + i, al2230_init_table[i]);
+			MACvSetMISCFifo(priv, idx++, al2230_init_table[i]);
 
-		MACvSetMISCFifo(priv, idx + i, al2230_channel_table0[channel - 1]);
-		i++;
-		MACvSetMISCFifo(priv, idx + i, al2230_channel_table1[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al2230_channel_table0[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al2230_channel_table1[channel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -717,17 +716,15 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 
 		if (channel <= CB_MAX_CHANNEL_24G) {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, idx + i, al7230_init_table[i]);
+				MACvSetMISCFifo(priv, idx++, al7230_init_table[i]);
 		} else {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, idx + i, al7230_init_table_a_mode[i]);
+				MACvSetMISCFifo(priv, idx++, al7230_init_table_a_mode[i]);
 		}
 
-		MACvSetMISCFifo(priv, idx + i, al7230_channel_table0[channel - 1]);
-		i++;
-		MACvSetMISCFifo(priv, idx + i, al7230_channel_table1[channel - 1]);
-		i++;
-		MACvSetMISCFifo(priv, idx + i, al7230_channel_table2[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al7230_channel_table0[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al7230_channel_table1[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al7230_channel_table2[channel - 1]);
 		break;
 
 	case RF_NOTHING:
-- 
2.30.2


