X-GM-THRID: 6465611589668044800
X-Received: by 10.129.79.77 with SMTP id d74mr14660138ywb.65.1505412188592;
        Thu, 14 Sep 2017 11:03:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.142 with SMTP id u14ls5341684iou.25.gmail; Thu, 14 Sep
 2017 11:03:06 -0700 (PDT)
X-Received: by 10.129.174.93 with SMTP id g29mr14251039ywk.76.1505412186147;
        Thu, 14 Sep 2017 11:03:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505412186; cv=none;
        d=google.com; s=arc-20160816;
        b=FrXBuqw4FtcgPhE5eIl5uJ96TN/d4zTkJIl1ioHUUnwo88jd2nmdX5H77rF3IxZF+p
         vcvbTWxywzqzMU8aWPN2gNGjrdl0TDDYmzJypWB7f0rd3ml/2R+R4AAZFrHesA3abVpn
         doqw+0THYVg2aFnv/EMEnDfyJZdpZqER1+SPzD+RNgYDPjYe4Fn0wCwC5pGgnmQVLSW1
         G1pYaFsOhZ8+zjrYDHVw2fFLMvANz5GxWT/dnKhCL9ZcedmtJCMRv2Da8l0xDQLPw5C6
         QQJ5/Kiexl+EHYp3YX/GI3TRlttX1THkI+j5ZsnDwKgbxlDMh045KffaQjnar5gmIgaN
         ow5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=uL1GZ7UQBuaE5uJLV3YYq8Qi3A6467tI3XM1bW6UoM4=;
        b=ymdzqgfSkdPSU4GO0WCNzKaTWU/E1Cn6Rlld79qDLtDeOFgQRgJVqwmFIJAo3bY97P
         ksfD3PUoBjCASMM8nPMNrEkYcmOYQh1foq9+BivhPIvUHdmBEp9a7QxEaaqk6SoDDf0d
         4WmlTgq/lP7zSYHmzXMyd3oJ1VNb8SAEGPqRIRJgxIb8Z2TULwQ6efdmIxKkwyUA6iDu
         xQc1ShljAUI+S4sGTCL34mM09pXYYBtVy8cgwM9XMZYHADQt8REGAEE6eqQJaLZtlfSD
         iQIfWmYkAcR2ig+TPulAVZGuA8a2Eqx5MEvzGPtjIfH3qdFIBSkXGxTKpKng7DPPRPUu
         DCyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JdgbFUMH;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 88si1435964pfm.20.2017.09.14.11.03.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 11:03:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JdgbFUMH;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e69so46658pfg.4
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 11:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=uL1GZ7UQBuaE5uJLV3YYq8Qi3A6467tI3XM1bW6UoM4=;
        b=JdgbFUMHT84Xg7N4b1biGc6/wMXBvHxsnqf0CUGF+vpjxDNhuBs5bjBcNxfIOcGu6F
         Ut4Ie+CzY70WgfyzF9BMLyqaRr42mQVawTbZUxzDhEIzEK/R0kdKrYxoyZ7sxkS0hqNZ
         aG2shLE6MLC2VSv4supAmSHNcTAbVHQEXsR9KmGxaj0y81AodNbOsxmpqWrKy6nxjYos
         w1rC+sEL9c0W37lrmGh/Q76wqwYKgc/YtUU+dSD5QdYXbJlsMchy4btZELQoXxjemr2v
         kjji6yUJTy/Tcu/VnI4PVYj5SV7+6ocIxTT7mWJ8pDl2OiEfxpXz93OrcwDNme0H1mu6
         FoGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uL1GZ7UQBuaE5uJLV3YYq8Qi3A6467tI3XM1bW6UoM4=;
        b=PADSovGB2hRVkPJWJuxVpT83HxlB0f+uhEQl4MVGzB2PrAotWT5holn1QUeOvRwmQu
         QLVI31wrJXdOXJOfNkVaGaXkdvlI2xQvyBaqFlWb4/fjUdB2Yu0shzXn5k9bAIBEMxyj
         tAEKIM2cSGx+QbpJEjHYwUL/ifWG/vS3hJ7bRzxFRbscMW3CFf3iVJsBEWYbMurZ5VCR
         nY3N5ekRaEQyI+6rw3v70QMFYbzuNw3BaRK3AdPig6kosolxTd0Bk3jtgrfHpEmUUa6L
         QwTPXYLPsYUnrG9J3tBZtGp4k8tiRWl73iVtgXOLVFc3gFySUY6cVQLnG2NeC/rgHowg
         5jcA==
X-Gm-Message-State: AHPjjUjk0nSr873SFB+RMKtDyG6PxFPyzzq74AAQSoJHoOadF6iV74uv
	Gcu147Wk9rmPvA==
X-Google-Smtp-Source: ADKCNb6oczhjcT78rBn+RFZPyl/zhLsYL4ydJee53Pg3TElGDLnt3Pw+UwItTRtvMOH0ep5BbIR8QQ==
X-Received: by 10.101.93.136 with SMTP id f8mr13979089pgt.60.1505412185751;
        Thu, 14 Sep 2017 11:03:05 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id 22sm16520533pfb.31.2017.09.14.11.03.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 11:03:04 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2] staging: lustre: fix macro definitions warnings
Date: Thu, 14 Sep 2017 23:32:53 +0530
Message-Id: <1505412173-4576-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes the checkpatch.pl warnings related to macro
definitions.
1. macros with complex values should be enclosed in parentheses.
2. macros with multiple lines should be enclosed in do-while block.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
Changes in v2:
  - removed changes to PLUBUF(buf)macro.As insturcted by Andreas,drop that macro in another patch.

 drivers/staging/lustre/lustre/include/lu_object.h | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index a3c0481..c8d5e0b 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1151,8 +1151,10 @@ struct lu_context_key {
 	struct __##mod##__dummy_fini {; } /* semicolon catcher */
 
 #define LU_KEY_INIT_FINI(mod, type)   \
+do {					\
 	LU_KEY_INIT(mod, type);	\
-	LU_KEY_FINI(mod, type)
+	LU_KEY_FINI(mod, type); \
+} while (0)
 
 #define LU_CONTEXT_KEY_DEFINE(mod, tags)		\
 	struct lu_context_key mod##_thread_key = {      \
@@ -1161,10 +1163,8 @@ struct lu_context_key {
 		.lct_fini = mod##_key_fini	      \
 	}
 
-#define LU_CONTEXT_KEY_INIT(key)			\
-do {						    \
-	(key)->lct_owner = THIS_MODULE;		 \
-} while (0)
+#define LU_CONTEXT_KEY_INIT(key) ((key)->lct_owner = THIS_MODULE)
+
 
 int lu_context_key_register(struct lu_context_key *key);
 void lu_context_key_degister(struct lu_context_key *key);
@@ -1223,10 +1223,12 @@ void lu_context_key_revive(struct lu_context_key *key);
 	struct __##mod##_dummy_type_stop {; }
 
 #define LU_TYPE_INIT_FINI(mod, ...)	     \
+do {						\
 	LU_TYPE_INIT(mod, __VA_ARGS__);	 \
 	LU_TYPE_FINI(mod, __VA_ARGS__);	 \
 	LU_TYPE_START(mod, __VA_ARGS__);	\
-	LU_TYPE_STOP(mod, __VA_ARGS__)
+	LU_TYPE_STOP(mod, __VA_ARGS__);		\
+} while (0)
 
 int lu_context_init(struct lu_context *ctx, __u32 tags);
 void lu_context_fini(struct lu_context *ctx);
-- 
2.7.4


