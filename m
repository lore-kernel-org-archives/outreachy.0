X-GM-THRID: 6671334644654276608
X-Received: by 2002:a25:b31b:: with SMTP id l27mr22610145ybj.67.1553532181670;
        Mon, 25 Mar 2019 09:43:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:e6ce:: with SMTP id p197ls6714324ywe.0.gmail; Mon, 25
 Mar 2019 09:43:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxAFZo8YcZv9RePl32ZOXQf4JSWm2ybJvsFD0lcf21b8fZbRB2sQbAR3B27/8q4tJSHV5Z9
X-Received: by 2002:a81:9295:: with SMTP id j143mr22718356ywg.24.1553532180799;
        Mon, 25 Mar 2019 09:43:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553532180; cv=none;
        d=google.com; s=arc-20160816;
        b=w/iIi532tOxGVzYSFONTLBJCpe8a4p+CSyUhSJ8+SzlUHUVhMr4LeaRaM+L9LDTG+/
         ZHGfJ9Tcu9sTBA9OPGGGDuz93nhJslxiiESKfsjBBvkA6lplqrKkkAfbFIGXK9c2iBvX
         ncrtdsTouJGJZyrXZt0+c39ANfkGUNa2FyrVVKeyKKHBORdCK8g29vzEyQf1ldDHpPXa
         XtdYNzQ0BRM61z7AfS2ZBUikhmjCjblB+PO9ou0W4AssAkmzYwjfUBPtwNI5+1+GumVP
         mny9yPr7t1pAUxG+MKGRFRiHN/K0BheeRkzwvt+1yAqAkB++r3QA74b52ATrS42dHUEG
         NXWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=kMxBU4qnvGaDahbErrZeU5Z3Qeflw9ZJ7hSKNaCkjzg=;
        b=pXSevCfWJZYDVeyjEwt8cwJYXJvA03tTLWIIkA6MuTpiExhSs6RPjNkJbgnOduJN0/
         /uI/f7g7/ZjqzYxE6uWIMZuUUKcZjRqjfaxj/CRf5Cu65A9Z7PUGgyeNEnpKZdGGUTiP
         7aQFqQNTBs7QwXfny/PkhEqJ/P+duLzNLR5BVnRJ9V/kf5zxTKtiff+Sni1kP4zXCICu
         nKbqcsMPAjyH6RKKSdSCbnvkXRjugt/eI8kfusLxMzbH47CAyoi7UXytYa8q0fnpGJ8O
         4K5VOYa78S4yUhFuGLGGMzzmnmuoc/a7qqHm+0JQEFnVOirYyplZzqzBzQ3N1or18Nuz
         A0Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QdNQFJKr;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com. [2607:f8b0:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id f23si1076283yba.3.2019.03.25.09.43.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 09:43:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) client-ip=2607:f8b0:4864:20::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QdNQFJKr;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22d.google.com with SMTP id i21so7472407oib.11
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 09:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kMxBU4qnvGaDahbErrZeU5Z3Qeflw9ZJ7hSKNaCkjzg=;
        b=QdNQFJKrUjOV2WSHGJ8mQV5Tb9Sg+aUHqZuJDRajK71Og72nE5ZnAevxOu6Mr64IjR
         8IP5qUxPEGal7Nx8Duj4y2ylmwQEYgg2y8MIGuYp0u0wIKedpzpZoXZiYxaEpTnYFHKQ
         lAGf2Z8iRJ4I/VVLqn7AOLIjcgnXD5jI/iyR9f8vaVUDGQAMYmdz/PAuDai06csyj0T0
         bRYZDz5G8F11m0A4DVPJCl5DktSTnygmUyw6ZV3HOL9qix/gR2aa1eIcINzGo9n/A04b
         zQm5Ii2kAJODftza5GTxcmzJyTOAQb8xNhzRC+xBOjZuL47b9GOQbEHz8gdXJupIYHvc
         dlJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kMxBU4qnvGaDahbErrZeU5Z3Qeflw9ZJ7hSKNaCkjzg=;
        b=hlCmIKFVV3Lf0Lp8B4rJ5Vm5wksITWudob1YQriE4RvN1cc/UlnuiQrpDwSuCo1ylQ
         6YDhQshHRTWX46+0AOuDEcxBwOwEpHVz78Fpawx2ETWIiQfyDY7swMuC9fOnExEsdvId
         VuP+m4jr8k+ceA++pJOT3+hs7L4d1np6iOVrx8S0Ny6diReHkA/N9IPgWEiWkroZm7Y5
         kAnYMFysm16FHLnZX/p5p84yMQ6Z5wgwOYDr4LYz+ASk8Z1ZpX3IN7wgs7xxIR1Yikym
         Z0UUyVyzM1SDrqBh2mCySBnm2jcXYs9LhvZD5AmZTIFei1K4sH4KFm0AYVdwLiEPeH22
         Pp/g==
X-Gm-Message-State: APjAAAVtQQCRyrtaTP/t+kY85LYWLZ439AViAsI+DP2RIz+aPmXs5O53
	yh4lTq/3A3eCPCNhHg1yj1A=
X-Received: by 2002:aca:aa57:: with SMTP id t84mr12619554oie.149.1553532180291;
        Mon, 25 Mar 2019 09:43:00 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:832:78e3:a24f:c6c7])
        by smtp.gmail.com with ESMTPSA id l63sm6332792oia.47.2019.03.25.09.42.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Mar 2019 09:42:59 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v4] Staging: media: davinci_vpfe: Drop macros
Date: Mon, 25 Mar 2019 11:42:55 -0500
Message-Id: <20190325164255.19906-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Drop macros instead use functions set_bit() and clear_bit directly.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v4:
- Change local variable data type
- Include set_bit() and clear_bit() kernel functions directly

Changes in v3:
- Drop inline functions and use functions

Changes in v2:
- Convert macros into inline functions
---
 .../staging/media/davinci_vpfe/dm365_ipipeif.c | 18 +++++++++---------
 .../staging/media/davinci_vpfe/dm365_ipipeif.h |  2 --
 2 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 4380e0a8e6dc..51d4cd1bdb97 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -189,7 +189,7 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
 	enum ipipeif_input_source ipipeif_source;
 	u32 isif_port_if;
 	void __iomem *ipipeif_base_addr;
-	unsigned int val;
+	unsigned long val;
 	int data_shift;
 	int pack_mode;
 	int source1;
@@ -296,14 +296,14 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
 		case MEDIA_BUS_FMT_YUYV8_1X16:
 		case MEDIA_BUS_FMT_UYVY8_2X8:
 		case MEDIA_BUS_FMT_Y8_1X8:
-			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			clear_bit(IPIPEIF_CFG2_YUV8_SHIFT, &val);
+			set_bit(IPIPEIF_CFG2_YUV16_SHIFT, &val);
 			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
 			break;
 
 		default:
-			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			RESETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			clear_bit(IPIPEIF_CFG2_YUV8_SHIFT, &val);
+			clear_bit(IPIPEIF_CFG2_YUV16_SHIFT, &val);
 			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
 			break;
 		}
@@ -344,16 +344,16 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
 		switch (isif_port_if) {
 		case MEDIA_BUS_FMT_YUYV8_1X16:
 		case MEDIA_BUS_FMT_YUYV10_1X20:
-			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			clear_bit(IPIPEIF_CFG2_YUV8_SHIFT, &val);
+			set_bit(IPIPEIF_CFG2_YUV16_SHIFT, &val);
 			break;
 
 		case MEDIA_BUS_FMT_YUYV8_2X8:
 		case MEDIA_BUS_FMT_UYVY8_2X8:
 		case MEDIA_BUS_FMT_Y8_1X8:
 		case MEDIA_BUS_FMT_YUYV10_2X10:
-			SETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			set_bit(IPIPEIF_CFG2_YUV8_SHIFT, &val);
+			set_bit(IPIPEIF_CFG2_YUV16_SHIFT, &val);
 			val |= IPIPEIF_CBCR_Y << IPIPEIF_CFG2_YUV8P_SHIFT;
 			break;
 
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
index 4685d64016de..4d126fc871f3 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
@@ -166,8 +166,6 @@ struct vpfe_ipipeif_device {
 #define IPIPEIF_RSZ_MIN			16
 #define IPIPEIF_RSZ_MAX			112
 #define IPIPEIF_RSZ_CONST		16
-#define SETBIT(reg, bit)   (reg = ((reg) | ((0x00000001)<<(bit))))
-#define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
 
 #define IPIPEIF_ADOFS_LSB_MASK		0x1ff
 #define IPIPEIF_ADOFS_LSB_SHIFT		5
-- 
2.17.1


