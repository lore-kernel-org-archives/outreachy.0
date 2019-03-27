X-GM-THRID: 6673109681211179008
X-Received: by 2002:a62:204c:: with SMTP id g73mr216801pfg.95.1553709413182;
        Wed, 27 Mar 2019 10:56:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:461d:: with SMTP id t29ls10480948pfa.1.gmail; Wed, 27
 Mar 2019 10:56:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzJDujjYHxKfs2b+bqQ3sJpw7/nD8KBjDRlr6p6PDtpVZqX7UiHjoWE5r80whU+6wLoHoxE
X-Received: by 2002:a62:b415:: with SMTP id h21mr162852pfn.91.1553709412427;
        Wed, 27 Mar 2019 10:56:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553709412; cv=none;
        d=google.com; s=arc-20160816;
        b=l0elTaG5ocy2WvdaEAaHfyiyjvLcK4kP3mHP8IdTkpWrjqVYUf9Z5tBFRG8d5KX8jx
         fcpLhGgYZfacpp2uh385ulRtlBgXRzx+Fe8ChhZAzp+tI7AD4pGvVMhLyFMxlpoy1Yof
         JfURSrPwFDdSTJqqyMDnnwPXSdEQHBhOGPW6riKBRk5y070lCqdlkFmat/LIgRLPKhBM
         StametN07/TvnvlpE28uPQHXoyPUh/6yG0CPgBPhESVdra4uUBurTyZesfTV7n+bJ/Be
         9nKPYDKdp/mPJUtfqFRf4E3kKIvGfxvTOtxZAkUOtGPZ2d69tRA0/TjHM6JvIeyOTG8m
         U0Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=gxVznCKRx1pbN+R1JGygjKK0/VGQ1Rtg1e7Ff54uaik=;
        b=nDbVyxHpjwMYZ/BipZ0WUDzPPOUqyuEdXonVb3AwNQ/RppGxsHUB17kp0dFH3qg+XJ
         gljpWhidW6o7t6R/iBkqBe56RB6mAn9ASjXyGzO4TaAfTB/fEZaR4C3lrsgdzSmafjqK
         mJQHqZN2OyBcmfuaQqxkVEdECA90wrbTtmK3DQoPDs7DqXjE3Fr2IRYEHffEIEi8lCg4
         D4x4q3CAg0gaOLqtkYjqcyXhLzmoO1aS/pdPC8xDWIuiWcFHYgV/7zktGglCf9q05RDj
         RKlSVB4yEVnwlKlHX3fpV8OtrYRxBV3vW7RgVLysEvCQInJuSA2RsUqfe1ycljCxDIjt
         LiBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d2IB847w;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com. [2607:f8b0:4864:20::332])
        by gmr-mx.google.com with ESMTPS id r133si1397683pgr.4.2019.03.27.10.56.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 10:56:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) client-ip=2607:f8b0:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d2IB847w;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x332.google.com with SMTP id e80so15753824ote.5
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Mar 2019 10:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=gxVznCKRx1pbN+R1JGygjKK0/VGQ1Rtg1e7Ff54uaik=;
        b=d2IB847wBFBpxireUW6XlsTQplOPIVKlKnm6iQ9xeKC0IvJPtMhAxIHsAokvS38ntr
         hUawp/GAAVosr0O1bwPSLlkatWePMobpLvM6uUeXqxW9EeXoD3SKo5w8C/SusqHv0eRL
         As9mZWczMd0G4K+2ka0VRMEUbYxc6eeZo6bEHXQ91vCFjQF3jacr/BW6cbHZfiGhSzJw
         f/K3q6+eEq/uWEJf5vaXcSDhu18iVYwjc53kCJHd8X8Hpa5tyTiSEOoW0rv/lxVUEX7M
         E5oAFw/leZ6Uw6HQ7kaXQNfr1TAjlOMb7WyExlv1PisnqYJWLt/IPwgkcYDWNJV+xdaN
         Envg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gxVznCKRx1pbN+R1JGygjKK0/VGQ1Rtg1e7Ff54uaik=;
        b=eeJuioRzuK+4lpg7LAZnnHQ/v4f00WXgL9Rkr0TAUOaEXp5rFr+5Vts/MqZ4lqOGHD
         uTFx6SqG1x2to8BvT3wuShLyUZjiB8s54OTd+8W2FY4ylmsY5gtfbeNr4zCdXeqD75Kw
         G3ICflNNW24v1xoB9iOBYoExll5Nj8cHvNB0cdGgQFCV5F1vRmiHKWKunPe32x6NS8u3
         djrRV3AEWFX/I/V6Nqb90HixWoWt59eSySOFqfhEXEzt/LIk1r0CLYpePTGWlhQ+CjGx
         DYuB72HhTitA4OH4DrDR86U6ph2P3kianDyjfVG3SlDwuEyboAHiMifv2KiGHPC81bWm
         LuHw==
X-Gm-Message-State: APjAAAVn24rYhmRCe5R3ALtX2H9+d4INKGUA16D+D249bjhIMySQVB+z
	IbozjIym0fXafrQrUSoRoys=
X-Received: by 2002:a05:6830:128c:: with SMTP id z12mr14674263otp.101.1553709411911;
        Wed, 27 Mar 2019 10:56:51 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:b885:380e:c834:19c3])
        by smtp.gmail.com with ESMTPSA id i17sm8776390otc.67.2019.03.27.10.56.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Mar 2019 10:56:51 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: media: davinci_vpfe: Convert macro into an inline function
Date: Wed, 27 Mar 2019 12:56:48 -0500
Message-Id: <20190327175648.29538-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

COnvert macro into an inline function in order to maintain Linux kernel
coding style based on which the inline function is preferable over the
macro.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.h   | 5 ++++-
 drivers/staging/media/davinci_vpfe/dm365_resizer.c | 4 ++--
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
index 174334b53f96..32dce3c95304 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
@@ -27,7 +27,10 @@
 #include "davinci_vpfe_user.h"
 #include "vpfe_video.h"
 
-#define CEIL(a, b)	(((a) + (b-1)) / (b))
+inline unsigned int ceil(unsigned int a, unsigned int b)
+{
+	return ((a + (b - 1)) / b);
+}
 
 enum ipipe_noise_filter {
 	IPIPE_D2F_1ST = 0,
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 9d726298b406..395c66520932 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -386,7 +386,7 @@ resizer_calculate_down_scale_f_div_param(struct device *dev,
 	}
 	o = 10 + (two_power << 2);
 	if (((input_width << 7) / rsz) % 2)
-		o += (((CEIL(rsz, 1024)) << 1) << n);
+		o += ((ceil(rsz, 1024) << 1) << n);
 	h2 = output_width - h1;
 	/* phi */
 	val = (h1 * rsz) - (((upper_h1 - (o - 10)) / two_power) << 8);
@@ -630,7 +630,7 @@ resizer_calculate_normal_f_div_param(struct device *dev, int input_width,
 		val /= rsz << 1;
 		val <<= 1;
 		val += 2;
-		o += ((CEIL(rsz, 1024)) << 1);
+		o += (ceil(rsz, 1024) << 1);
 		h1 = val;
 	}
 	h2 = output_width - h1;
-- 
2.17.1


