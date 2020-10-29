X-GM-THRID: 6889119685603753984
X-Received: by 2002:a17:90a:e00c:: with SMTP id u12mr579740pjy.185.1603998255767;
        Thu, 29 Oct 2020 12:04:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:4486:: with SMTP id t6ls390922pjg.0.canary-gmail;
 Thu, 29 Oct 2020 12:04:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxMZYZYWIclPTl1z/2ZaRlx89RHXIcybY1qGmMrfXEtG4GiNE4KloBE603sc3ntv/QOwjGG
X-Received: by 2002:a17:90a:fd0d:: with SMTP id cv13mr658255pjb.34.1603998254362;
        Thu, 29 Oct 2020 12:04:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603998254; cv=none;
        d=google.com; s=arc-20160816;
        b=NeM2DJF6KUgUaEiqmXTRAd6Zr3fo/ia6aqorsKl9gmrU16qaT/SEffq7QC1r4jjePY
         Wmx0qrlVfPaY3h9eVWQwpnLfZQibroZ/5mbC2K+5ULNDv1RGsLJ8wO3R+dJBPEvVnXEl
         RtXGpUo3iy8MhzAK/uYKTFZAotWECuCAa37QjkzQRAzlCOilnwcPZBnqwM2QZEYyF6sY
         GOVOpKDclCq2A/dyp4CDxqdwD8JXXAbW07ycM/ZxCF+hsyDJJ49y+liWg9PdEMs5/ZTI
         Zqx3/KLUFkKvxMfW1vTTFWL2XTLWGThEcXJZNSx4YzksC5bteYUFGHlphwJmqQlpbp8N
         MFKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=E/YO8QhrBtgOUHxaIDNankNBd/9HmVJuOo7AD36126w=;
        b=t7vaQMoxKDVSuD1HrYdVDVDrS8UEpQ/MQKSgyVIxjn6rx2Pop7tDRFUpebPzKb0/T1
         44YeYWxPME7uoOBWh9QTS7tVqQL8LqOGONvn9oVBUGQNJKyGBPv5iy0NSj+dTdgJ6Bz0
         F/Gzyz+91bAym0tIr832164Sw1oJGCwyKkuPShQaX0nQbvYegF7DsRAjb3KbvEYa04DF
         rkHs+3UsJEwVfHQv6F3EbxjTH3txLLI8Mn3T+75lQSBi3Y8pjrKq7qkUJEAt1D3RQLLW
         a4rBcg9reRWcGTtRFK0hsZaf842acafH2VUCzCOSArSQqB8b4IS3PbWVWPMlZ9T58SNx
         QP4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PLfkqocE;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id m62si324454pgm.2.2020.10.29.12.04.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 12:04:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PLfkqocE;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id r186so3144908pgr.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 12:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=E/YO8QhrBtgOUHxaIDNankNBd/9HmVJuOo7AD36126w=;
        b=PLfkqocEdos35ZQHCQz/KTCSR/zMAv3dAbZfuP5kApLSMaTsx7PFKmmwIEBMuJFbFC
         qC9PdeAhCfMDVWkvy7mrzdhGx8oHpIjCVqULqOklNfRAXVfXVA2r8nPjl2mFopa9IxIp
         bGQIykKdYgDlBFjJHtGKn43D02lpYwtRVslmiIVm4XXBTr+RbE5XUwGb+k3LOCthAz7g
         cv6P2xhzPjSwC8fWDCToPqu0kJOxC3WT8a/sp7Xb7gq40x9A64votvET4rP2ylYSwn+a
         CNl1LQvuP93+p+ZbgI0roqCVTxygv6KD7V3x6aedt6LifnYrTC8MXqvj7SIP+7AR51fj
         OqLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=E/YO8QhrBtgOUHxaIDNankNBd/9HmVJuOo7AD36126w=;
        b=H+OQ6utdR1FP39ZTT9l1MR43D0c6SmYVRQ8ADKS2aeNUUUrgMZstd11YKSYHO2c0gZ
         akKn/3u5xzHNfEs+H82yfrnnJ+N96ZIpwe4P3rjK5461PwKW4WCBft/1koyXerjqz3LY
         p8Ae1G+5+/xX323k/Ewq6a2OOmddqPH+S7g6gAQQ8lvgbPsTnEx+YgyK/f3YjM//0fVB
         XjC5ds8eehuXsinFIWgD5Qxuptmf6eKsxnDOeOX0NpvvkZw+T2u3sz2ETj/JmU3vTNy5
         JdPnpv1akTpdBGNA3qMxXql9uDRTP6HwMYCIuxaIF0xFIsBfHljld2nhRAEmYRDpd3gL
         IEGQ==
X-Gm-Message-State: AOAM532PXgxPZMzf7Zd8VQrC9uc9R6PZ525hXrvcuOUeW4SLgiczxkEI
	f+gjI3mekaaEkkiYa0VTTNbc+bJNU2A=
X-Received: by 2002:a62:e113:0:b029:152:69aa:6a08 with SMTP id q19-20020a62e1130000b029015269aa6a08mr5770954pfh.14.1603998254180;
        Thu, 29 Oct 2020 12:04:14 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.98.79.70])
        by smtp.gmail.com with ESMTPSA id ne17sm547478pjb.44.2020.10.29.12.04.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 12:04:13 -0700 (PDT)
Date: Fri, 30 Oct 2020 00:34:08 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: mh12gx2825@gmail.com
Subject: [PATCH 2/2] drm: msm: adreno: improve code indentation & alignment
Message-ID: <e196c426de9e12f149492a92c0a8d92b6106f27c.1603998014.git.mh12gx2825@gmail.com>
References: <9ca2c2e4cbd9ebb282b90f742305fd9b481aacc2.1603998014.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9ca2c2e4cbd9ebb282b90f742305fd9b481aacc2.1603998014.git.mh12gx2825@gmail.com>

Align instructions split across multiple lines as per the coding
standards. Issue flagged by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Please note: This is a project task specific patch.

 drivers/gpu/drm/msm/adreno/a5xx_debugfs.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a5xx_debugfs.c b/drivers/gpu/drm/msm/adreno/a5xx_debugfs.c
index ffe1fb9be155..ac9296f314be 100644
--- a/drivers/gpu/drm/msm/adreno/a5xx_debugfs.c
+++ b/drivers/gpu/drm/msm/adreno/a5xx_debugfs.c
@@ -20,7 +20,7 @@ static void pfp_print(struct msm_gpu *gpu, struct drm_printer *p)
 	for (i = 0; i < 36; i++) {
 		gpu_write(gpu, REG_A5XX_CP_PFP_STAT_ADDR, i);
 		drm_printf(p, "  %02x: %08x\n", i,
-			gpu_read(gpu, REG_A5XX_CP_PFP_STAT_DATA));
+			   gpu_read(gpu, REG_A5XX_CP_PFP_STAT_DATA));
 	}
 }
 
@@ -33,7 +33,7 @@ static void me_print(struct msm_gpu *gpu, struct drm_printer *p)
 	for (i = 0; i < 29; i++) {
 		gpu_write(gpu, REG_A5XX_CP_ME_STAT_ADDR, i);
 		drm_printf(p, "  %02x: %08x\n", i,
-			gpu_read(gpu, REG_A5XX_CP_ME_STAT_DATA));
+			   gpu_read(gpu, REG_A5XX_CP_ME_STAT_DATA));
 	}
 }
 
@@ -46,7 +46,7 @@ static void meq_print(struct msm_gpu *gpu, struct drm_printer *p)
 
 	for (i = 0; i < 64; i++) {
 		drm_printf(p, "  %02x: %08x\n", i,
-			gpu_read(gpu, REG_A5XX_CP_MEQ_DBG_DATA));
+			   gpu_read(gpu, REG_A5XX_CP_MEQ_DBG_DATA));
 	}
 }
 
@@ -63,7 +63,7 @@ static void roq_print(struct msm_gpu *gpu, struct drm_printer *p)
 		for (j = 0; j < 4; j++)
 			val[j] = gpu_read(gpu, REG_A5XX_CP_ROQ_DBG_DATA);
 		drm_printf(p, "  %02x: %08x %08x %08x %08x\n", i,
-			val[0], val[1], val[2], val[3]);
+			   val[0], val[1], val[2], val[3]);
 	}
 }
 
@@ -155,5 +155,5 @@ void a5xx_debugfs_init(struct msm_gpu *gpu, struct drm_minor *minor)
 				 minor->debugfs_root, minor);
 
 	debugfs_create_file_unsafe("reset", S_IWUGO, minor->debugfs_root, dev,
-				&reset_fops);
+				   &reset_fops);
 }
-- 
2.25.1


