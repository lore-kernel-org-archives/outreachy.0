X-GM-THRID: 6675361484896206848
X-Received: by 2002:a62:1a44:: with SMTP id a65mr959667pfa.103.1554228711157;
        Tue, 02 Apr 2019 11:11:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5681:: with SMTP id h1ls422731pfj.11.gmail; Tue, 02 Apr
 2019 11:11:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwbrKfFVlcfFBuh4OU66bYxrqBLxMaYgJaEkUpTYLBIXVMiOgEHJl4gmcNmIVmpHESa7BV0
X-Received: by 2002:aa7:8c87:: with SMTP id p7mr261278pfd.24.1554228710380;
        Tue, 02 Apr 2019 11:11:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554228710; cv=none;
        d=google.com; s=arc-20160816;
        b=Bke93QFejHEymBsjr8OICbAAuu5NnO7cUizvzE8gBixf455zvVwLROLT+48J9NG1jj
         4KfNPLyzkpHVjAUD6z4MkA9ZdzXskO9Ct5PJEWemCsFkeEZSfy7zM0cqQjCzyOh5ftQU
         FJXgM+QZ+M8ppPx3rEae158ZMxgd7BfmH0Z0CU0oadMNT1yKw3/PnSZFg0Z2pMPyM24o
         bXs4paaQ+4cNzNaREnCljFoKk2lmClUEAOTwayEKMohS7hu0Bzd1kZwbtasVVK7TU1ll
         zULefD5DQUgtA4yIfF0k5PHzwpFfwBRZlhBmKsEkpz39H2HNDaLIhpu0X981y/jNc1Rb
         FZ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=2urcb1djK1O+fRi2Dbj6coVD3Sv/Ewhb3lefJ0yFAJQ=;
        b=gGuDcFGIqXHL1+jPUQ1IDUgeWUaTVO9lmCzHeeFJnBcW1B0FrlhIuWtPIeWviimT65
         WfLe15O8jMN5slHPrOcD8+PnTRajJytrFhNAIQdCmyyHTSaszuSjnhbh2FPJizf462g5
         BNdcuE+1EfKlYr21aZXpuZ1gMVZiaTqM7x8IX9CWozAXA6M58pPQ2+JP3v4c6J5SP9i7
         yAmpoG1Zovsx3q2Zx1jrWZzmkdmKCEqQD3iJeq7gptYGEEB65VbvvYx2LZVAm7Aae/jo
         l6mpuBY46v+zW9EFBY9uArroUDsyS7vLlh1RbQUlcF1CgRnC/dUQVCRPouXvG+UVIYtd
         EaPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JXGGVSq8;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::336 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com. [2607:f8b0:4864:20::336])
        by gmr-mx.google.com with ESMTPS id c6si760936pgm.2.2019.04.02.11.11.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 11:11:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::336 as permitted sender) client-ip=2607:f8b0:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JXGGVSq8;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::336 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x336.google.com with SMTP id e5so12857046otk.12
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 11:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=2urcb1djK1O+fRi2Dbj6coVD3Sv/Ewhb3lefJ0yFAJQ=;
        b=JXGGVSq8c6+c/gnJRW4jrh/BDb/N1cJk9EtEZfucTX232998FDq0kjWMShhv97gqIu
         ho9sDEMZYE6WXZGYEy+zIaEC3ss1nd7emMvDzKK+pdbze+g/GwQb20HnFvylf/AQTFMV
         jnwEBhQcvfgmmHY0i2ivnyRcOVNoTks4IgiSmohGZ+v/AzOM5IIs9r+UWcXoqABt/4Xp
         NAAH680HrkBbUFlAcYEeINj9Qdk6EAGXIHzab8Va7eqKq+3nBAQ1sMbY1VgqBOukwuT8
         nZU+eLh4RKFNDlAUjEZsiPKmlYHb/TeRsSlmp4+0HjTjluysQp1kykJ3UNSRvbzBPZmK
         +IVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2urcb1djK1O+fRi2Dbj6coVD3Sv/Ewhb3lefJ0yFAJQ=;
        b=SnLkpnsBCjY4GZQge3K6W1Fp/Ea795LMmgc67S7Ez6rZf7S4kfhoG5OqzSywiB/JCz
         9CtqWC76LnvlYMT7koGadGHprliYosCJWvba5KxiBISR0pP/khoyf/0VDm2cXQaQ4bL3
         qV1vVo6M0TB8J3PWykOqlX3Fgds5WeVVWJp+wmPW3YRaPb0OkP+vc/xN5qOmw2PwW3oG
         u6G1JBi7yXnh0eBGN5rlXh5ssg/M0/+o19cPpnV/CV9YSqXz5QhrjP/ZcpsW9agFlWqi
         1QgFLT1HR+kqZ/uOzJC3IMewSaBXCm2HesIKhO9aKVB74XEtog5visibyUDFyzD6XMaw
         s0Qw==
X-Gm-Message-State: APjAAAW2WCpDVxg0qXGOVqmo5vanYnP01RL0jPc7NVDz8W6X0dkJdrTy
	Nhfxd0NfD8wgBwrQTFb1OSA=
X-Received: by 2002:a9d:2941:: with SMTP id d59mr22632090otb.199.1554228709994;
        Tue, 02 Apr 2019 11:11:49 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id m206sm5632777oif.50.2019.04.02.11.11.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 02 Apr 2019 11:11:49 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3] Staging: media: davinci_vpfe: Drop macro and use an in-kernel function
Date: Tue,  2 Apr 2019 13:11:46 -0500
Message-Id: <20190402181146.27776-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Drop macro CEIL and use an in-kernel function DIV_ROUND_UP.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v3:
- Drop conversion of macro into inline functions and instead use in-kernel
function

Changes in v2:
- Corrected commit log spelling
- Made the subject line unique from previous commit
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.h   | 2 --
 drivers/staging/media/davinci_vpfe/dm365_resizer.c | 4 ++--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
index 174334b53f96..866ae12aeb07 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
@@ -27,8 +27,6 @@
 #include "davinci_vpfe_user.h"
 #include "vpfe_video.h"
 
-#define CEIL(a, b)	(((a) + (b-1)) / (b))
-
 enum ipipe_noise_filter {
 	IPIPE_D2F_1ST = 0,
 	IPIPE_D2F_2ND = 1,
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 9d726298b406..d460963106fa 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -386,7 +386,7 @@ resizer_calculate_down_scale_f_div_param(struct device *dev,
 	}
 	o = 10 + (two_power << 2);
 	if (((input_width << 7) / rsz) % 2)
-		o += (((CEIL(rsz, 1024)) << 1) << n);
+		o += ((DIV_ROUND_UP(rsz, 1024) << 1) << n);
 	h2 = output_width - h1;
 	/* phi */
 	val = (h1 * rsz) - (((upper_h1 - (o - 10)) / two_power) << 8);
@@ -630,7 +630,7 @@ resizer_calculate_normal_f_div_param(struct device *dev, int input_width,
 		val /= rsz << 1;
 		val <<= 1;
 		val += 2;
-		o += ((CEIL(rsz, 1024)) << 1);
+		o += (DIV_ROUND_UP(rsz, 1024) << 1);
 		h1 = val;
 	}
 	h2 = output_width - h1;
-- 
2.17.1


