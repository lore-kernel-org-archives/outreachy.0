X-GM-THRID: 6950309311564218368
X-Received: by 2002:a1c:1f52:: with SMTP id f79mr16601194wmf.171.1618245010425;
        Mon, 12 Apr 2021 09:30:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:24d4:: with SMTP id k203ls8291465wmk.0.canary-gmail;
 Mon, 12 Apr 2021 09:30:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz7KY62WLq9jBBKcvGsxaj7R35779SuwJREWCd0sY3lcK77mLhd+hNMnjH4c+Vwq8xWntiO
X-Received: by 2002:a1c:bad6:: with SMTP id k205mr6087wmf.10.1618245009075;
        Mon, 12 Apr 2021 09:30:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618245009; cv=none;
        d=google.com; s=arc-20160816;
        b=F+e6Gv6Xfsg1b+S3TrqpfReUFXq0ZMh2hPRIVH5w+YVfhLVnNJusCm9azTYM1E+96J
         bEEHwdU9Wyzo8oWzvTNayoapzquKIUPOp99Gp0M5I+UFt5vdb0E2ZjtdMon0BVyM9/ug
         0lH4IYNb9ZYDpBtQ7rFHxHS8SHuqqRxowyAFGcb2HDUSFl5jbKsZRQAGK+1HZa5Nm1+4
         JLjfYaWtbR09BJyD/sKPc3jNtrL82Ok3ZHgeENcJYQVXqIVaTr7f30wKDIX9nYk+bssW
         Ec4G6RamW1FDXYOiPzrPB5zwsUtKqbmIsjRYJoS1yl4zSRT8sCH7sAAMH3ximcfBBbyv
         JAZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZLMXuiqimbamnVGxeY3wIizCjoU1LFQjurxEMAi/nOU=;
        b=HAhYWsZMPnA3FHVoiPkPbIrIrqfw66e/JeB4tiySQzLzS00td+dJTxif6+8NC2Oz3C
         xg1ObrrRh7Zpza93WhAT/sgZC34odKwGawrg0P1CENHmVPo8DVjQ6dB+qZkr6MPiTisJ
         nmb/li0khkcrm/bIPN21lbb3GpsGBFogNmQA6X+2ZYJTUVcCl43aABcOrIT1QoKmW8yh
         QwLcBzQA32NWOTLD/ywR9hf+QZ9XkA3bMchcY2MqoGmVCqbIATMzc4PcQVGS8BQUXMae
         VqgVTUWt/+95NwaXFEz2EIk0990y3mHCKwQyGBPiHkcnZ3caWJI8ddv8St0WFa4m06NY
         Graw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qk1UWmkI;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id 187si305993wmb.0.2021.04.12.09.30.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:30:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qk1UWmkI;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42f.google.com with SMTP id f12so13635519wro.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 09:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZLMXuiqimbamnVGxeY3wIizCjoU1LFQjurxEMAi/nOU=;
        b=qk1UWmkIqjEB3sQUGZa2ZR66NqTcHku4v4uwBJ0TkdvZpfBrzeZZ0UroO+wxDMKIE+
         BWEShIFwHoOgFOXSnK2LnXIs7oEi/GsNZYwlz3Fbwo95sdhFj1IEMEnw8N6KpxQR8yli
         8gfbSQTpTYoyu0xMVw6mF9mtUVrEqDZc6GDcJ5Lmh7oXi3coRXpLVHM9fnKS8HMHHXiX
         DGMvTZ+pLT5PAhwuqSWe0TDMnYM7hDaGF5KZXqaCus/8seQVEouQSXSr4kkH71MybHc9
         0RNTovXnRXylNd/mmLi9DQ4KK26gXQRE1N+9TvCNIRVPy7/P7/Xbq02D1fp8t/UH74qT
         HVGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZLMXuiqimbamnVGxeY3wIizCjoU1LFQjurxEMAi/nOU=;
        b=W2tOd4EBo/rYiSXJ416V0/r+L1tKPXntp75OtlBPpzy2VQJqfdxclaxqXm73/GKW7Q
         jJ8a5VTHPogy27ggGXmXe7xEXGuk/0T6kRc7JTtR1SVk3lMFzUdfmEXKUq5VYN56sXnx
         xC8LgNWQs3YxAPDscz14gRtNR9cyb1MqEOf+B/F5BF+Op8fBqbY/aM/sf4ZiagMyCS6l
         u/W/sU66fKssnLga7IF7pPRWlr+KEJO2xsuchZXxPHzENMUor8e4jFTP2v4xChsrkMDj
         1nXr7qXIWlwkuV0jVhYQc/V3V0z2shZt9ETSPa+FnO1FIE0YZ7LfngVeRGtDFx2cLn3E
         9MUA==
X-Gm-Message-State: AOAM533qxGleNZCraPE3yZm7D51e3/zfSg6Oc5DByjud45dpVqxfi+gA
	x4s9awE9odsSEwWvumTmo9c=
X-Received: by 2002:a5d:4e81:: with SMTP id e1mr9135210wru.305.1618245008945;
        Mon, 12 Apr 2021 09:30:08 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:813f:b20e:675a:834d])
        by smtp.gmail.com with ESMTPSA id b5sm16786524wri.57.2021.04.12.09.30.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 09:30:08 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [PATCH 2/3] staging: rtl8723bs: hal: Remove extra blank line
Date: Mon, 12 Apr 2021 17:29:37 +0100
Message-Id: <7f48b48d92b54c1f5db29f0d23c8c1c666236c43.1618243073.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1618243073.git.martinsdecarvalhobeatriz@gmail.com>
References: <cover.1618243073.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove multiple blank lines to conform Linux kernel coding style.
Reported by checkpatch in file Hal8723BReg.h

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
index 68a56627546f..1279ff82c097 100644
--- a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
+++ b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
@@ -19,8 +19,6 @@
 #ifndef __INC_HAL8723BREG_H
 #define __INC_HAL8723BREG_H
 
-
-
 /*  */
 /*  */
 /*  */
@@ -142,7 +140,6 @@
 #define REG_RQPN_NPQ_8723B			0x0214
 #define REG_DWBCN1_CTRL_8723B			0x0228
 
-
 /*  */
 /*  */
 /*	0x0280h ~ 0x02FFh	RXDMA Configuration */
@@ -158,7 +155,6 @@
 #define REG_RSVD5_8723B					0x02F0
 #define REG_RSVD6_8723B					0x02F4
 
-
 /*  */
 /*  */
 /*	0x0300h ~ 0x03FFh	PCIe */
@@ -355,7 +351,6 @@
 #define REG_BFMEE_SEL_8723B		0x0714
 #define REG_SND_PTCL_CTRL_8723B		0x0718
 
-
 /*	Redifine 8192C register definition for compatibility */
 
 /*  TODO: use these definition when using REG_xxx naming rule. */
-- 
2.25.1


