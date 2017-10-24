X-GM-THRID: 6480480783151661056
X-Received: by 10.107.44.69 with SMTP id s66mr12522033ios.141.1508854511890;
        Tue, 24 Oct 2017 07:15:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.180.141 with SMTP id d135ls72653iof.6.gmail; Tue, 24 Oct
 2017 07:15:11 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+SSqDBUVv8cHTl6EtB+OHqDkyIfVS5eIqwxMNy2/cjADwHAQJImyTdCbOIPAbAeyxQBQyfz
X-Received: by 10.36.117.83 with SMTP id y80mr8713234itc.48.1508854511122;
        Tue, 24 Oct 2017 07:15:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508854511; cv=none;
        d=google.com; s=arc-20160816;
        b=ShI+LXitCR0rMJCZnssEt6yJB/WQnsRTr2L7M3fYKS0q38QKs8aIzJSW+AXXeTVLWe
         xtCELdUMVbjpbUnd36knf9rbn62CI2+ZW3PCiYfQDapBsDHMgiLYsNXBNRqap64zeSVJ
         me4upFlb+zBgiA7rAmBk9kEguwUBmdeFlWo+/Tb9KV7F2OBuffvZbYcLvXQjxEZHWye4
         jjbOoWufW5XGL5jBEosTdXk3w+2YMZxsrr+WYW5fto647Pjd7tGwG4ajXAfzhCmUSmwk
         /8GK31L4NPEitP+jII88P17urSYdUXqiofC30RJNk0Cfxw1thd3qhDKG8fIJ2vgwTRRr
         zCFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:arc-authentication-results;
        bh=l1gvMR7xlvJureHRJP3avtCynIGGVSz0a0lxtiGTLME=;
        b=lIs1MCnKbhVQM05apEjv5ZXpIzF1yoAx/3+mMOAiIauAyfkuRmLfPs+TQu0sZ99ZpO
         HsqinQxfo4iVmJzJpjqxdu+at6hdcf+iL4jlMrIhoHR+zJpmg3BTJGryDMWKrk6kixJ6
         4LCV2dIHWUyrh05y5RoFQMYDdcnEqvq2jNc2TDMLRM68spG4KhjJI2xpwQqExtiOuC9M
         7kx9FDbNVWpCAtu2ravPKYMHJMDFSJmS8ZWke/H74nH3uHbqPrGtxWZJg9PQPKfQxXSv
         1ZhiTA9NWDDsHrphebkQtRu/gt5r+7NPjQfL7C2GIjYsvIj0KTb8DeOWARAfqdO8DMiT
         5gpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bsnauIeQ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x231.google.com (mail-pg0-x231.google.com. [2607:f8b0:400e:c05::231])
        by gmr-mx.google.com with ESMTPS id e77si36812ita.0.2017.10.24.07.15.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 07:15:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) client-ip=2607:f8b0:400e:c05::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bsnauIeQ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x231.google.com with SMTP id y5so6805359pgq.7
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 07:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l1gvMR7xlvJureHRJP3avtCynIGGVSz0a0lxtiGTLME=;
        b=bsnauIeQ4KhH+vEIdcgmGluQxL7seP4FqrFRiOjxDYYqAfG6B/bnBCPgdSQVpvWUrL
         rzZHYSpIb+P+syZJx7lkxSMWYHJ061Y3v6FJ9PoeP+z8rSrVN+rDFe10uRzLgIbhSYIv
         IMJ7/pB9/DoPPXEHtc1Sj+wZBs+jYFeSFIhn3AKY4b3MYtVA58khkpN9NR2XPfD7nqiE
         mqqbVwrse4Tk9OaWk7wyQofNMbN6ld4Xe+xPWsGFrdO7HY6OaLtJowpyi5YtHBIH8TJW
         DphRdIWyuzMGjnI0chT1PNTsrCsta8IOZl+ZO085nlgjDHCVE1cKuqLKwvPCkY8bEmSE
         oMxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l1gvMR7xlvJureHRJP3avtCynIGGVSz0a0lxtiGTLME=;
        b=G496E9nx3xNHRMWGQU6WviQd9Q+ZSBjqOSqpPtNbR+qF9Hxv/H5XIz080cNAyH7/bR
         ptxuDUC97n6o+gUfiTbepMmjwOpuPAVqrmUhOuT/S/mcjz4FB7zbdSNBYdp4qrQhHoWH
         LnMaypK3bIFDffIXbweQMZQjW6BWi/Es0z3zySO0Ym9OpqPLt8KZJj/R5xHghoTEixOZ
         WK9EivEM+Fsh6UBcsXxS1ATTnBnm/3vPTYzO+7kwAcT/4kFhRFKw2PA/Pv5RB4dzFjJX
         uRpAhpa2pjlzuxE6wenqKofzCtNmFR6kVCg9E02aBQzJckj7g9O0BOQ+u96GZSxbHZAN
         3YqQ==
X-Gm-Message-State: AMCzsaX/xvKovUgO0+3ltwZjHFZChJm2mPCazfEMPtlIGm1A7MgT29+n
	KZj+0NK0gn+IQ4wvzGhP2D4=
X-Received: by 10.98.74.149 with SMTP id c21mr16555311pfj.200.1508854510719;
        Tue, 24 Oct 2017 07:15:10 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id v14sm737740pgq.72.2017.10.24.07.15.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 07:15:10 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	seanpaul@chromium.org,
	Lucas Stach <l.stach@pengutronix.de>,
	Russell King <linux+etnaviv@armlinux.org.uk>,
	Christian Gmeiner <christian.gmeiner@gmail.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [RESEND PATCH] drm: etnaviv: Replace dev_info with DRM_DEV_INFO
Date: Tue, 24 Oct 2017 19:45:04 +0530
Message-Id: <1508854504-19190-1-git-send-email-aastha.gupta4104@gmail.com>
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


