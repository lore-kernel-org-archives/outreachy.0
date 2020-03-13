X-GM-THRID: 6803757345304215552
X-Received: by 2002:a17:902:fe15:: with SMTP id g21mr15743699plj.215.1584135486122;
        Fri, 13 Mar 2020 14:38:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:8048:: with SMTP id e8ls1797575pjw.0.canary-gmail;
 Fri, 13 Mar 2020 14:38:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsAyIdEXAIiOmLz667kYSkl0od3lAQMyXALzNnhtifSVkcNDr04onI4uRjTkhZl6c5BJCyx
X-Received: by 2002:a17:90a:2503:: with SMTP id j3mr11836619pje.83.1584135484676;
        Fri, 13 Mar 2020 14:38:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584135484; cv=none;
        d=google.com; s=arc-20160816;
        b=GA81smlzX0jIL6Vk3PrwfSzJmCQt0d3ngl/4EmhbYRKUonrjH7IHAG9VCZlQClUW2m
         z7mvnbhkf1WqsIhz8KZB5KzgBV1+9LQ6CmI0oJikA1U9NsxIkjDbiWUEqppesQ6xaI71
         Co6ecN/stPe9aE5TGxdS7B0oJgglfzgHoKEt59j4MSkvn16HIn/iVlN2GeThWlLXN1cf
         jnrRT5ic7P/aD8bMw08MBN1U/g7tweSa5Qc7CFifA4PPjUTRpndHEuuA6E1RGABghxpI
         ydqs1NccpyH9AP6Vukh5Aos9oG7kYlAhKIegxI6E8wQejd37DaFv8d2iwbi+S9ijsgJ6
         xF9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=KNLgkhBkpRPngE30v7aTfDdB1/kDDn8OkrnSaAxQT0Q=;
        b=xKCuhY1TaL/ZwGOI/k9OX/MiN5w1gaFGzG3gZmwDCX8+r8S+9pwbrRuWZUbyoMZFqp
         NoXsrEUgX3cIdc5czZUxB6sggNBYZ+z+PRjHa5ONkvMv2IkfBkhXvd4BN5jSPDYNgeCr
         KxoQAmfshn/5JRGv8QAXCvZCM+F4i7Yc3Zk8F9SogxZ8ST3yXelFub1HoGlexkE0y0iK
         v0r9tc/azerBcetWb1Yx9Xot8gifTybOaOz/q3BT5X5ODFYRbblFCeOHaOCx736z5oIT
         ujFSmp3o0JVRqwpiK1SGbAKSAQrikjhFtJW67rhP4Njcof/0Cx+NSCg7xWWLrFoKw2iN
         hnXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZZIL41OK;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id r11si630033pjq.0.2020.03.13.14.38.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 14:38:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZZIL41OK;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id c7so5741203pgw.3
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 14:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KNLgkhBkpRPngE30v7aTfDdB1/kDDn8OkrnSaAxQT0Q=;
        b=ZZIL41OKymQT2SJcm88nCWMraiT0V3wW70ZXqV+WJXSBcoWgq8cwYNDDmbtEzxB4Q+
         icv4u4F2aWJuE3e6PRcs470IMnxu0m7AaiYJF0N3Ob/OGJZVMDRqyW7R7MG3d08RbArE
         pLMFhzS3STj8PLQg7lMKiJb6rxlx7kM8vN5VnPQCCACYbMXW11mLyYLj4pf3qM4q+5LZ
         ZFg+vLxeFjxjB+F5VvHyIKFmXl6Ek6OSLrZhbxcXmRRrkcpH1FSM6LGD9pSPmR34g0nE
         X6p8F/U6EfDN6YHoocVy1Iw+dZ6nZGyINTW6z6k2Crn3BjPD/YaUHgohLiL3E1xUSx1e
         h4wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KNLgkhBkpRPngE30v7aTfDdB1/kDDn8OkrnSaAxQT0Q=;
        b=EpQyLQD7fc/cIwWBVnpNvuVn74fN4/FW2au+1OKB/hdz3VddR0i10N5DCuhrMCWtIT
         dvF7zmp6xkHqtAwJP5PsOw6tuXYJ+dHtR73lyYmypfXLInUsvwKwk4XIBPDwwlTBbLDi
         kXHgG4M3K6m43f7mOIlwYsweZgjpzlW89rEqjvyKAlpGUxTpSqQTDbrd/M9iEz5nxjWu
         IKy3TELIg85klpJ4WNCjCNobwk9OUvKbjvP8DVhoY0AOrMHy7P0C4IpGTUOcQb/A4ro7
         AQjPgeFo+tXVdVEfk1ZfdDFIXBc3oZDGIvTgL/2noF+KmLXzQ5gz2OpklD0guBgTGTtn
         V7Og==
X-Gm-Message-State: ANhLgQ1BxGXaslx3LW0qEsBSMWpDTTFenSM+W6bvbwHz0k3bOi6NsPW6
	S2lZ2lyRaWyuGTpwgRR5PO6YbinS
X-Received: by 2002:a63:48e:: with SMTP id 136mr14614868pge.169.1584135484247;
        Fri, 13 Mar 2020 14:38:04 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id m26sm12133630pgc.77.2020.03.13.14.38.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 14:38:03 -0700 (PDT)
Date: Sat, 14 Mar 2020 03:07:58 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sakari.ailus@linux.intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com
Subject: [PATCH v2] media: staging/intel-ipu3: css: simplify expression
Message-ID: <20200313213755.GA5213@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

An array index computed inside square brackets leading to complexity
and code line exceeding 80 character. Add new variable to compute
array index separately and use it as an index during assignment.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v1:
  - Added feedback from Helen
	1. Updated variable type to "unsigned int" from earlier "int"
	2. Implemented the change in another area in same scope
	3. Left newly added variable unintialised.
  

 drivers/staging/media/ipu3/ipu3-css-params.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-css-params.c b/drivers/staging/media/ipu3/ipu3-css-params.c
index 4533dacad4be..5622319b69ff 100644
--- a/drivers/staging/media/ipu3/ipu3-css-params.c
+++ b/drivers/staging/media/ipu3/ipu3-css-params.c
@@ -49,13 +49,13 @@ imgu_css_scaler_setup_lut(unsigned int taps, unsigned int input_width,
 	int tap, phase, phase_sum_left, phase_sum_right;
 	int exponent = imgu_css_scaler_get_exp(output_width, input_width);
 	int mantissa = (1 << exponent) * output_width;
-	unsigned int phase_step;
+	unsigned int phase_step, phase_taps;
 
 	if (input_width == output_width) {
 		for (phase = 0; phase < IMGU_SCALER_PHASES; phase++) {
+			phase_taps = phase * IMGU_SCALER_FILTER_TAPS;
 			for (tap = 0; tap < taps; tap++) {
-				coeff_lut[phase * IMGU_SCALER_FILTER_TAPS + tap]
-					= 0;
+				coeff_lut[phase_taps + tap] = 0;
 			}
 		}
 
@@ -82,8 +82,8 @@ imgu_css_scaler_setup_lut(unsigned int taps, unsigned int input_width,
 			coeff += 1 << (IMGU_SCALER_COEFF_BITS - 1);
 			coeff >>= IMGU_SCALER_COEFF_BITS;
 
-			coeff_lut[phase * IMGU_SCALER_FILTER_TAPS + tap] =
-				coeff;
+			phase_taps = phase * IMGU_SCALER_FILTER_TAPS + tap;
+			coeff_lut[phase_taps] = coeff;
 		}
 	}
 
-- 
2.17.1


