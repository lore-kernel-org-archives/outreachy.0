X-GM-THRID: 6946995103705595904
X-Received: by 2002:a2e:8159:: with SMTP id t25mr11753698ljg.437.1617473342439;
        Sat, 03 Apr 2021 11:09:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:58f8:: with SMTP id v24ls2781857lfo.2.gmail; Sat, 03 Apr
 2021 11:09:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzjkOC+3peiHrZGBOuQ+9jokEXemttgDGKpARu2yXgrclFm2qAYInIZLkoYIvTV8YqPH6Mn
X-Received: by 2002:ac2:5c0a:: with SMTP id r10mr11770509lfp.47.1617473340891;
        Sat, 03 Apr 2021 11:09:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617473340; cv=none;
        d=google.com; s=arc-20160816;
        b=1IYYX6Gg4KLG+i+/2J00Pi10qfb2c8ln3kDo6Gywhir9b0MjG9Y+D18cjLaMpuK/bp
         UYrOyFVUwtk8MklX1T6GO20KUGHswpr496i44X07Fd0iQmnWYu1HRvLyo68T/GY4I9I7
         hoB+oOeNz30ouDTSW1mscEB5+/u+L/HwZv/9PRw9sHI0Dvl7YyUn56znn5KKmH1HjHgT
         YmI33JmBRXMAizhM9V9YhrSu7aiS/cz+4KeG+M9/6i5UxYfE+3BR/yeGK4/3cVsCI2CF
         kEQXimwFgHqYUSeqSkzdajx5mbTwotqky2NGWfjVijTUKfBHa6OF+216x/Xvp5kLIULy
         /YFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=P4L7V3F+4F2OsutYm9zIXnd8ryH/kFEzVMXabtRtrgk=;
        b=EN5TdAxlcPS7ANCIHj25Ifw4YE2HZGTDHKSsFBrI3xfB8Gr4zOzqPcE8Xk2/mwb42z
         Xzor7w7oDkxfLm2YGcFqA/uqlbJravwZs3vwysNEYVu/MwpdUltSbtkXNkT+NBZ+vopo
         cDNqrswrJd29WSpvcDUIUwEtA/Bl0rETtcSy+9I5O1crn8kWImju56P6GF8aAEJbINKa
         EExmbjULLUOrfq+6evPoBBNdBbOSMX8vn2ViwiwujKFvGFbLdIrf4Dvzgy3K4ylevMwp
         xaSEz1h0ywnJQ/bDMpyWZfcoJFwmr4bF8QUjVm+uUlJYxjmQHm+88njR4GWdxGzVJAxk
         Yg7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lRBp5XWB;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id h2si1047048lja.3.2021.04.03.11.09.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 11:09:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lRBp5XWB;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x235.google.com with SMTP id u9so8647169ljd.11
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Apr 2021 11:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=P4L7V3F+4F2OsutYm9zIXnd8ryH/kFEzVMXabtRtrgk=;
        b=lRBp5XWB67XwzXmrSb70V7fo3Wxrzm8PBa/F8TImBkan1WX/LKrH0IHmQUagWTQ2n4
         6IAHtIds6+/RBi1DIeffQPYParjg8zPeoYhgQPGQNBfNt74WeICCS3p6ImxgErGl2ECO
         r/BeRFErk4YYNZE0QEsYAwOwNDRpzfJjvK8+6jZZE7vHCT4xKjOiBxKssl+6IoKMfBPq
         Y8GxsEMwNl590e+yOfVfwWoza3EyWX3HO+vCoavfhyK60lbvfWCcleUkvVqx0JwNczxp
         1oFqXD8N3Se7pSgvGNmQ4YSyXZZIXtHqvdwf8c16XeEyiWRKaC54cbqyAtUFpeVwPv1g
         d15A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=P4L7V3F+4F2OsutYm9zIXnd8ryH/kFEzVMXabtRtrgk=;
        b=ZeKK9iSFrI3L2VqYauauGYOB8aUBeSPRfeBoQ5PdaEl6N0ClMJb6BNagG9QCQXT7v6
         cv2jf9+PIGeoWJgTwmvfZeU3x1Sf4tljEo9B3h4cQDbanGN4YZThhUKCmewkX4CNnCMZ
         VTrpCOe4M82zF4zCDfJHqSdhyR6Nk3aiZ8kVW/i2xJSjZj1dKR8pspQmRcLqt+yRyAaI
         vDKAXl6RQ8NqmYfXHEi7X7dlTLU+54fPbsh38MPqPQxa4mDqLmBaw6sCP5VNyesNZV2c
         CeNQvoxN6zgAaDmBK1gVrpA+ZpNEmxECayF/RrCT8hlX95jV97ex/a0ZVTfL+VhkKnQF
         67Vw==
X-Gm-Message-State: AOAM530yT7mga11L/MIg1Bb6juGwaYUC24TdaMwGxD1pXc1SEsks0g0T
	4b34bacPeRKNqDGKxi7wDupvQ7lJR1eJMqNr
X-Received: by 2002:a2e:a415:: with SMTP id p21mr11798268ljn.108.1617473340519;
        Sat, 03 Apr 2021 11:09:00 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id r4sm1204044lfn.135.2021.04.03.11.09.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 11:09:00 -0700 (PDT)
Date: Sun, 4 Apr 2021 00:08:59 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/7] staging: media: zoran: Rename 'HEnd' to 'h_end'
Message-ID: <b5713f89cb4c52f50cfb3db6ac1e1e9dc2665f2d.1617472411.git.zhansayabagdaulet@gmail.com>
References: <cover.1617472411.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617472411.git.zhansayabagdaulet@gmail.com>

Rename variable 'HEnd' to 'h_end' to eliminate camelcase
Reported by checkpatch.pl.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/media/zoran/zoran_device.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index e569a1341d01..415b3cf4826e 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -291,7 +291,7 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 			    const struct zoran_format *format)
 {
 	const struct tvnorm *tvn;
-	unsigned int h_start, HEnd, v_start, VEnd;
+	unsigned int h_start, h_end, v_start, VEnd;
 	unsigned int DispMode;
 	unsigned int VidWinWid, VidWinHt;
 	unsigned int hcrop1, hcrop2, vcrop1, vcrop2;
@@ -331,11 +331,11 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	 * However, the DC10 has '0' as h_start, but does need |1, so we
 	 * use a dirty check...
 	 */
-	HEnd = h_start + tvn->wa - 1;
+	h_end = h_start + tvn->wa - 1;
 	h_start += hcrop1;
-	HEnd -= hcrop2;
+	h_end -= hcrop2;
 	reg = ((h_start & ZR36057_VFEHCR_HMASK) << ZR36057_VFEHCR_H_START)
-	    | ((HEnd & ZR36057_VFEHCR_HMASK) << ZR36057_VFEHCR_H_END);
+	    | ((h_end & ZR36057_VFEHCR_HMASK) << ZR36057_VFEHCR_H_END);
 	if (zr->card.vfe_pol.hsync_pol)
 		reg |= ZR36057_VFEHCR_HS_POL;
 	btwrite(reg, ZR36057_VFEHCR);
-- 
2.25.1


