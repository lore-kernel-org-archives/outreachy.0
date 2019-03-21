X-GM-THRID: 6670949781191262208
X-Received: by 2002:a81:a4d0:: with SMTP id b199mr5215084ywh.71.1553201531049;
        Thu, 21 Mar 2019 13:52:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:41d4:: with SMTP id o203ls2256365yba.0.gmail; Thu, 21
 Mar 2019 13:52:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwcFTNLv2gNJARwGv71jMeJ7M6l7ICeMkpzvfrY0M16YfLbUzMVsw23Ga2zAE0j+qfaKnba
X-Received: by 2002:a25:c78e:: with SMTP id w136mr5082948ybe.358.1553201530041;
        Thu, 21 Mar 2019 13:52:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553201530; cv=none;
        d=google.com; s=arc-20160816;
        b=pZXavG1S3q41tHvD2thIyOhDbYpMsf6rkLpgCehUW/BkpC827yhz6f9oyTR63W1/na
         jf3cm9H2mvM8df7uTThJkFWvXbn6LRSo3Fa3Ce1FkecVdQQL40Elkz7uMOMHygf6/VVz
         oOC7zDZ8MLmWjASnr37UmghhDfmdCPW4sJn68h3+6u/+mMZQGuf3KOqbC3DHMnkCaQBx
         qmnmeYewKqLrhpr7luPZNqTJFjSHCR5PDGB//EVHucEnvXnqv8RC8cu5lz8a7kRl8nx8
         OCIYBsC+4AXtb7UUY1/qNry2NV+rXiSCXOV82IsAsaQVh64IVD6DmBsIYt8MCaANnEA1
         X4cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=qj1GH9Nb4gcxuMW3l+jcG+IvGFuAE+RhaCdEKiBgqvQ=;
        b=s7wTHDuh5UUZyxLuIf5Lj99e2H2/cAeJkHqcQRQ+2GJ7qkTiNTLCOb3cZYV/RH3UJG
         Nvqp7iBT+b21dao8RSk9j73z6V26Hmid4YNdMzdnnM4GbB7ELKILFXFmCpsWOrLId9Fi
         4xN9wl0YZXfciJgu/ED3DPlXRV5+F7TjgvvUkl7DBtzTQnvCiuS/kEmMFuCW2HuFKgFI
         Cgauzz9kpdIA1t9eT4UH0FuXJ9MMWfSTM9l5G/tax8KWRJEMpiQj37HljGsBvu+/XdEh
         NZ0EeO44xNOk5xOvK5zgUsNKvz9w5iscpEfLIOCMSJXfa8wFsqpCqd+6/dniZZ+WSSDC
         BjRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y1XwkXKX;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id w62si454017ywf.2.2019.03.21.13.52.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 13:52:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y1XwkXKX;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id m10so52927otp.2
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 13:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=qj1GH9Nb4gcxuMW3l+jcG+IvGFuAE+RhaCdEKiBgqvQ=;
        b=Y1XwkXKXKIb7v5Akfa8VwStrPnp4MOIPXuuhmE7wWKr7X3/Xrsh7PxE7yrGA96hxS9
         de9cJb3SLVw0ayqI3mEcPX49jkxZFIar4OMqFCmaFX42MedEgs1EDV13HrrzSrgg7uJ4
         HJPkZ5BoQRTCzyDcuXy1RoCSlGCCNM7So3UCmGv7aDgen4shEXkUFukzouftv9DjU30C
         I0NAsEuCTXPqIycfCN49rx4eJtJm8rEtGiRyjr7ECh7ax7rKOWxxNfMuSULJtSxOgb0u
         8PlMGDD1WSeUfREyb4FRdipDGWfZ6yL8YLH9Ge38AaOZO7aP0UXOcXqg//MCOz+rTre2
         wdPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qj1GH9Nb4gcxuMW3l+jcG+IvGFuAE+RhaCdEKiBgqvQ=;
        b=KZdYeo0SfUImSEG/hFiJzlF6EFKo3qAO41e6Qjkq1rCEvMUVbqlvmYAaQhEiO+vTaP
         9NGpQn4mZczExkvOepGB3OD8SSWJIravrzExHLCwLntOOGVQhXmMwlx3vuT0xgPMUifL
         xL1xJht0NqhLc1fNxeOIuTYchG3UyYYsBwWKZn66yUnyNiQOTNbEC3XtqAm9sz2zd7IO
         v7jrMvdIH2zb3hNGabelwQZqu0+8e54fZepdbJ3X6KnWE06SpBNncm2MmiZ35OZfSVWm
         nEf3/3dPqAf8EfRiwfJ0gHXmvMF6CncJDSvA8FpNEoPE9K6MUMXnEM+q8fcgsCz+zttU
         I2Ww==
X-Gm-Message-State: APjAAAXYCscPfHa6dB06flfBjDR7HLOLKmU7p3LsuJ3OTrVo7AiWARic
	MxUFXjnXHvRJM6n9sNjt+nn6jGG+pOg=
X-Received: by 2002:a9d:5f06:: with SMTP id f6mr4126850oti.18.1553201529482;
        Thu, 21 Mar 2019 13:52:09 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:c92d:a4c3:eeab:413d])
        by smtp.gmail.com with ESMTPSA id w16sm2336563otm.42.2019.03.21.13.52.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Mar 2019 13:52:08 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: media: Convert macro into an inline function
Date: Thu, 21 Mar 2019 15:52:06 -0500
Message-Id: <20190321205206.21875-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Convert macro into an inline function to maintain Linux kernel coding
style. In addition to that change the function names in respective call
sites.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 8 ++++----
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.h | 5 ++++-
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 4380e0a8e6dc..7d750e14253c 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -297,7 +297,7 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
 		case MEDIA_BUS_FMT_UYVY8_2X8:
 		case MEDIA_BUS_FMT_Y8_1X8:
 			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			setbit(val, IPIPEIF_CFG2_YUV16_SHIFT);
 			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
 			break;
 
@@ -345,15 +345,15 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
 		case MEDIA_BUS_FMT_YUYV8_1X16:
 		case MEDIA_BUS_FMT_YUYV10_1X20:
 			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			setbit(val, IPIPEIF_CFG2_YUV16_SHIFT);
 			break;
 
 		case MEDIA_BUS_FMT_YUYV8_2X8:
 		case MEDIA_BUS_FMT_UYVY8_2X8:
 		case MEDIA_BUS_FMT_Y8_1X8:
 		case MEDIA_BUS_FMT_YUYV10_2X10:
-			SETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			setbit(val, IPIPEIF_CFG2_YUV8_SHIFT);
+			setbit(val, IPIPEIF_CFG2_YUV16_SHIFT);
 			val |= IPIPEIF_CBCR_Y << IPIPEIF_CFG2_YUV8P_SHIFT;
 			break;
 
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
index 4685d64016de..0fe9d394962f 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
@@ -166,7 +166,10 @@ struct vpfe_ipipeif_device {
 #define IPIPEIF_RSZ_MIN			16
 #define IPIPEIF_RSZ_MAX			112
 #define IPIPEIF_RSZ_CONST		16
-#define SETBIT(reg, bit)   (reg = ((reg) | ((0x00000001)<<(bit))))
+static void setbit(u32 reg, int bit)
+{
+	reg = (reg | (0x00000001 << bit));
+}
 #define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
 
 #define IPIPEIF_ADOFS_LSB_MASK		0x1ff
-- 
2.17.1


