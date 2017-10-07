X-GM-THRID: 6474135928708268032
X-Received: by 10.98.54.68 with SMTP id d65mr318177pfa.3.1507377235912;
        Sat, 07 Oct 2017 04:53:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.195.228 with SMTP id j91ls338779pld.4.gmail; Sat, 07 Oct
 2017 04:53:54 -0700 (PDT)
X-Received: by 10.98.160.71 with SMTP id r68mr311125pfe.9.1507377234797;
        Sat, 07 Oct 2017 04:53:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507377234; cv=none;
        d=google.com; s=arc-20160816;
        b=eyCXba1gWwF2VogRuts+VE4+QWImYKhUSMmHROJ4ed453hjpXUXPc+BJOvmgOkjkEV
         vHD3wnQb5yZhpN0xeU80w2I7+7rxXPT/ED2UVTDY8fZbpbf3QCn38xt46rNttgFtB3wN
         EHPBVUHWJOSPKbqtBsosPHMkAV8NNkQjg6DtQ1ZVgPRTU1Sxd4ifAdK9TBZVKmqHG+VT
         UOoykyREo9u7t9Tmj5BlRPLYNfphpgSJCSs7jbpkqzkOjXM0hXBqyoHc0KfZd7P+6ARp
         78SlacJIbgVdm51Gpgeej0tGSQchb2ABilVIFOcHKO5AQCxThhaFnHYInC1ojth+I2u+
         CtqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:arc-authentication-results;
        bh=l1gvMR7xlvJureHRJP3avtCynIGGVSz0a0lxtiGTLME=;
        b=i7QnAajsrhSX+JqDYhyP49d2GwQXUqQQkhpBjvXijfESJHXzPDL9Qel1jyoTOeZe0r
         YF4zYMe6mxUskaplC0SheW+5gBwYUKMQbzgfc9AQRdTDQY29jU8YjpRMXtZwDeOplczd
         IXICijWeTcUCccbbPQfNLJOKdO2T9/cSej4mUVzdrE6gFDa+MyiyfI1rl2bgZ1woQsc4
         Ge3he9AsHBb6zf3PHJae8pmP17DnKqXld3qk4e+ce7uPZokPsXvv8+k5598IoCqYSd//
         Si62Er5aeAUdkHh9ixylABjUPkBD5nNe0U0+1j7kF+DSTzUv3pVoBJ+BOvq5/TCvTrYU
         ft1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XUbGXbkD;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id g193si426554pfc.9.2017.10.07.04.53.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 04:53:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XUbGXbkD;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id i23so18986751pfi.2
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 04:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l1gvMR7xlvJureHRJP3avtCynIGGVSz0a0lxtiGTLME=;
        b=XUbGXbkDBu1KD8NHRi/yX/3jDY2Kz9UMZhcTAWKmJbbqsBYsikU3lwJ7ejPV8wG17A
         estzOPhHM7/3uoZFaekqBIkEZYkDsNpSCcUqxmV+EFqapnauNhPthtLmJKbdosCQvdpK
         W/OXSXTb8dXx1YNvrqQFuWBBXLwr5NPviMttNoV0q067bu/BcWP8TYhkp5UoN03hR3Dr
         ycrHxfkEYPoIvaxB/I7WX3nOkeY5gpcca7OeHRALzkKqOW86rruc5cvxg17/s6fx5b5+
         b7bhUuvLHB2nfY+7i6y9pgszi7TA3E+Ku6n8GtHEaxOrY2QaiQ0UOXD9FS55DKb4WhSV
         xuYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l1gvMR7xlvJureHRJP3avtCynIGGVSz0a0lxtiGTLME=;
        b=GhxwRJPJvVUBkDGgdpEyl6Cv5N0+o4jROia7YOFx/Z3HRJj5OhdVjGUAVP4Yi9L0so
         4emJJPsX6N5fXv6+QJf1wu31mslB4YhAx4GBmr2ft7MfjyXUmKz9fYuwqxv8UaeONCeH
         jeVA9Eark+KyOeZwx5YklvnmTL7vecOLTxGonAaHrAJVZXPjl52tMka29pDE9+7TA/RW
         QDkLyAJQr2Cw+Rud0m4FM8fKlsU6iql/o9/81D/Zkg1u8LVofbIF3YZ5NaV9mUaxhd4O
         EoM+OSZG0ZS5IpKnWVx/e14PtBRx0ARb8whiD7YiTFWpdRgiwGEzpsVIRipwd2d4wjYk
         VFbg==
X-Gm-Message-State: AMCzsaX9vJ8teK9yuSP0L0fZ7Gop6wVtelhpI64o2RgQMCP0vC4OPKbb
	kmJZo4POG+6PFa0/nTiNtI0=
X-Google-Smtp-Source: AOwi7QBA3Tj7ZvbIzHMljcURM++QN/WgnpYF3H3IbFBPzsL4BBkw02jw7GTs8UyDnIQcLSVk9yDU7g==
X-Received: by 10.98.139.76 with SMTP id j73mr5030249pfe.265.1507377234434;
        Sat, 07 Oct 2017 04:53:54 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([45.127.232.78])
        by smtp.gmail.com with ESMTPSA id z11sm7693194pfe.41.2017.10.07.04.53.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 04:53:53 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	seanpaul@chromium.org,
	Lucas Stach <l.stach@pengutronix.de>,
	Russell King <linux+etnaviv@armlinux.org.uk>,
	Christian Gmeiner <christian.gmeiner@gmail.com>,
	David Airlie <airlied@linux.ie>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] drm: etnaviv: Replace dev_info with DRM_DEV_INFO
Date: Sat,  7 Oct 2017 17:23:48 +0530
Message-Id: <1507377228-9365-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

For drivers which could have multiple instances, it is necessary to
differentiate between which is which in the logs. Since
DRM_INFO/WARN/ERROR don’t do this, drivers used dev_info/warn/err to
make this differentiation. We now have DRM_DEV_* variants of the drm
print macros, so we can start to convert those drivers back to using
drm-formwatted specific log messages.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/gpu/drm/etnaviv/etnaviv_buffer.c | 4 ++--
 drivers/gpu/drm/etnaviv/etnaviv_gpu.c    | 9 +++++----
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/etnaviv/etnaviv_buffer.c b/drivers/gpu/drm/etnaviv/etnaviv_buffer.c
index ed9588f..0091a8b 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_buffer.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_buffer.c
@@ -125,8 +125,8 @@ static void etnaviv_buffer_dump(struct etnaviv_gpu *gpu,
 	u32 size = buf->size;
 	u32 *ptr = buf->vaddr + off;
 
-	dev_info(gpu->dev, "virt %p phys 0x%08x free 0x%08x\n",
-			ptr, etnaviv_cmdbuf_get_va(buf) + off, size - len * 4 - off);
+	DRM_DEV_INFO(gpu->dev, "virt %p phys 0x%08x free 0x%08x\n", ptr,
+		     etnaviv_cmdbuf_get_va(buf) + off, size - len * 4 - off);
 
 	print_hex_dump(KERN_INFO, "cmd ", DUMP_PREFIX_OFFSET, 16, 4,
 			ptr, len * 4, 0);
diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
index fc9a6a8..862beac 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
@@ -344,8 +344,8 @@ static void etnaviv_hw_identify(struct etnaviv_gpu *gpu)
 		}
 	}
 
-	dev_info(gpu->dev, "model: GC%x, revision: %x\n",
-		 gpu->identity.model, gpu->identity.revision);
+	DRM_DEV_INFO(gpu->dev, "model: GC%x, revision: %x\n",
+		     gpu->identity.model, gpu->identity.revision);
 
 	gpu->identity.features = gpu_read(gpu, VIVS_HI_CHIP_FEATURE);
 
@@ -673,7 +673,7 @@ int etnaviv_gpu_init(struct etnaviv_gpu *gpu)
 	/* Exclude VG cores with FE2.0 */
 	if (gpu->identity.features & chipFeatures_PIPE_VG &&
 	    gpu->identity.features & chipFeatures_FE20) {
-		dev_info(gpu->dev, "Ignoring GPU with VG and FE2.0\n");
+		DRM_DEV_INFO(gpu->dev, "Ignoring GPU with VG and FE2.0\n");
 		ret = -ENXIO;
 		goto fail;
 	}
@@ -695,7 +695,8 @@ int etnaviv_gpu_init(struct etnaviv_gpu *gpu)
 		else
 			gpu->memory_base = dma_mask - SZ_2G + 1;
 	} else if (PHYS_OFFSET >= SZ_2G) {
-		dev_info(gpu->dev, "Need to move linear window on MC1.0, disabling TS\n");
+		DRM_DEV_INFO(gpu->dev,
+			     "Need to move linear window on MC1.0, disabling TS\n");
 		gpu->memory_base = PHYS_OFFSET;
 		gpu->identity.features &= ~chipFeatures_FAST_CLEAR;
 	}
-- 
2.7.4


