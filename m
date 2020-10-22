X-GM-THRID: 6886436790360604672
X-Received: by 2002:ab0:658e:: with SMTP id v14mr1306581uam.97.1603374432450;
        Thu, 22 Oct 2020 06:47:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:eb42:: with SMTP id x2ls201962vso.3.gmail; Thu, 22 Oct
 2020 06:47:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw928O9O72xiRr8k51gIJsuUjSVQra1cDEVfCDpxQhFFQxSK8BA1XVF5FCQ4bBPLdYOjmyb
X-Received: by 2002:a67:fd64:: with SMTP id h4mr1797414vsa.38.1603374431038;
        Thu, 22 Oct 2020 06:47:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603374431; cv=none;
        d=google.com; s=arc-20160816;
        b=wQkbxmYBaxbJjBQt689Acu5C0GCKk+qlqLcz90lXj6mNfvH6z/VvTg9LEKaGHWUNkF
         zgIeHRGKC5bs32LSxXjTjYstuGou3Gh+w0kZCj52Xa25oyQ2nqLg3auDsp6emizPemY9
         nzuV2LR+0CAnbsHmI8JKlec+4qKSA8ch6cOqyI1dxDL20a+vyqarbVomahB2MS5LMvwE
         pn5CBhO6/FLm6x9dLwjw4PsqRWqCcMN3nZuzgUDTrqDwuPrafuwBRptvxcRuInVQGaxy
         ZbQ6eq6cvrRJONmuicPNxe/3Bu8zx99CKe7WBEAnSpe/6wxvyB3dB/ReHbKcykBbap6l
         u7mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1gypUtIc864PbkDDcPxNQEUh8zBoJi60ZtKxJZr3rhk=;
        b=SX0b9pR86ivl1mfAhihwLV90thbBwiRzuRGW7Fl906o1P2jrds6p1RcLZJXsWGLldN
         DxdhvRdW/xWkkxOHpbZY5EOAFEKhcwHs1yyI21BVhy3d+8TISM+HhSE/so5xhoLVke2S
         zwcOavpSSTClKTRIqQ72Gj2Jia0Gv0R2dU6aq91i0Up9j/b63hCxGr45leRX0dq7XgGA
         jvKTYawC9TxLfodEDp+4mQXLGygdYwI45xwxWcofY3Y8iqCLX/ybe7IPPZHH1uDjIPPf
         meHAnjLvNTRC2bCqkRgkup/YQMD9txv9qlxu1Z4FArc6qfKl2oDMiWSafaPfI41Y3knE
         uo+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BhFPvqZ2;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id e21si183166vsj.2.2020.10.22.06.47.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 06:47:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BhFPvqZ2;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id p21so1065186pju.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 06:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=1gypUtIc864PbkDDcPxNQEUh8zBoJi60ZtKxJZr3rhk=;
        b=BhFPvqZ2fI2InSAjrYY0zeX18fhNHww1+FQ/xSM5zKcowMhycbuWkOnfxAIq4PB4Er
         UOJF2GZM0pLpbcswZLc3aeYilTgEEmxUEGT0/k2CEEdmC3m5ftiWv8BJm10VuGQirQFT
         tk+IS1SS/s1WxJ+zcwFm5SZX4KFb/kcYL5onqjBP80vdQAiVFHIBwyJXNgb6uVUwdkfy
         EtQgkvNjRxzy5e109mcft/9UN0MFO0q3Sq8D2mLc65jjek86iE1AkevB8kdyhRlWYhsQ
         h7X8b8kWeuL8yLHrj6mOZa86q+dowjDyuKh3VA6Uv3YSEaEnUt2vXSiZa/M+UVXLUoGQ
         AeZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1gypUtIc864PbkDDcPxNQEUh8zBoJi60ZtKxJZr3rhk=;
        b=N10es8+n3q++KV5Kr1e77NupvaDLohuBE1TGHx5e4nIk/bKEhdkyhMGS+4i9KWbwuF
         +bmiNhLyt5yFyARxJ6QrRP/tWU7HrkK2tpOo+HwdRxzdop/coRMD7tlXYiKiHG7zJTQb
         QQmeMgDVlAsLjrmjVCy9zjDe/AF9zFHVblNbikMsh5GFkQAUm47F40O3uzpS13vhqv+Q
         OaLc6IOeNNXg0B46zQF98ovp4NkuO8O1CnkKkRsHHdDdIRZ7+ofKKWAbSXNv8xq3caNI
         EoyoMoUVS7MplHD4p9oMaoY1UxAs3452Ox8ibiD16pAhofVYpT+ykWZQq8cBFTXy+fx1
         WPqQ==
X-Gm-Message-State: AOAM533IA5+F0BNIfoRAUAUBQRLmHFHKntmzHtRbga0UQ+ETC74Nu7rt
	5uLmhyE+xqYTIGgiglHiyrc=
X-Received: by 2002:a17:902:a50f:b029:d6:da2:aaa7 with SMTP id s15-20020a170902a50fb02900d60da2aaa7mr2614665plq.42.1603374430254;
        Thu, 22 Oct 2020 06:47:10 -0700 (PDT)
Return-Path: <sylphrenadin@gmail.com>
Received: from adolin ([49.207.204.75])
        by smtp.gmail.com with ESMTPSA id b128sm2233467pga.80.2020.10.22.06.47.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 06:47:09 -0700 (PDT)
Date: Thu, 22 Oct 2020 19:17:04 +0530
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: outreachy-kernel@googlegroups.com, alexander.deucher@amd.com,
	christian.koenig@amd.com, airlied@linux.ie, daniel@ffwll.ch,
	melissa.srw@gmail.com, linux-media@vger.kernel.org,
	amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.or
Subject: [PATCH 3/5] gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
Message-ID: <864a0c5d7bc85d9eeaf1ca7b3db38b58e042471b.1603371258.git.sylphrenadin@gmail.com>
References: <cover.1603371258.git.sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1603371258.git.sylphrenadin@gmail.com>

Using snprintf() for show() methods holds the risk of buffer overrun
as snprintf() does not know the PAGE_SIZE maximum of the temporary
buffer used to output sysfs content.

Modify amdgpu_gtt_mgr.c to use sysfs_emit() instead which knows the
size of the temporary buffer.

Issue found with Coccinelle.

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c
index 1721739def84..441e07ee1967 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c
@@ -49,7 +49,7 @@ static ssize_t amdgpu_mem_info_gtt_total_show(struct device *dev,
 	struct amdgpu_device *adev = drm_to_adev(ddev);
 	struct ttm_resource_manager *man = ttm_manager_type(&adev->mman.bdev, TTM_PL_TT);
 
-	return snprintf(buf, PAGE_SIZE, "%llu\n",
+	return sysfs_emit(buf, PAGE_SIZE, "%llu\n",
 			man->size * PAGE_SIZE);
 }
 
@@ -68,7 +68,7 @@ static ssize_t amdgpu_mem_info_gtt_used_show(struct device *dev,
 	struct amdgpu_device *adev = drm_to_adev(ddev);
 	struct ttm_resource_manager *man = ttm_manager_type(&adev->mman.bdev, TTM_PL_TT);
 
-	return snprintf(buf, PAGE_SIZE, "%llu\n",
+	return sysfs_emit(buf, PAGE_SIZE, "%llu\n",
 			amdgpu_gtt_mgr_usage(man));
 }
 
-- 
2.25.1


