X-GM-THRID: 6886436790360604672
X-Received: by 2002:a17:902:aa4c:b029:d5:e527:654c with SMTP id c12-20020a170902aa4cb02900d5e527654cmr2445067plr.24.1603374199906;
        Thu, 22 Oct 2020 06:43:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1884:: with SMTP id 126ls765720pfy.8.gmail; Thu, 22 Oct
 2020 06:43:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw9lQ/nTduntDl0998jt3U5YvLAnVT0DyoAk+aTaMIxVNRAIb4XDsc+3eArblePsxAUxovX
X-Received: by 2002:a63:f908:: with SMTP id h8mr2357501pgi.203.1603374198163;
        Thu, 22 Oct 2020 06:43:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603374198; cv=none;
        d=google.com; s=arc-20160816;
        b=uzM/gd9CLYh2Nu54FcNJ9ArDJBFTQr1xE/ciWMdxu0CbaN+ZctlXnKDk5Wa4DxxyEa
         SfVhbkisiIqpwK5eapWAM85KLbTWQQK6oBFKwmRcVtZG3DwKJMoX2POx9qKd9Pa/OI1W
         CM7t6GTbIKb/jW3/bL4tsg1f2FX9ak5V/r4/Dj75B18cycD/jNWRg31GbjvgKvHL220z
         mldz0HhI/QkVpmMF4CoPrCYh3xjn/SlEcRdPcXkuCzwkFxFejdJZEtKAFO5p+p9z0Oin
         DDZC+kbacKiCCweBxE6AvvXGk3enOHEEXXNAZ0qNEAUNR+ffB/1SyolU1j/4v8x6+vRq
         bkUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TGoYs6NX+Ndx+a6z9ojq9tBbYhFNYgIJY1nftO258C4=;
        b=oG/TKYFNInNaKJaBc/ycOZ2vM1UftErG2hbHA/Xq5SlLXy9Z5GZJNF+WrcSImhVoTD
         +E6aOvh1a+RKjDAYSQMnBPYc/Va/AxHNEr8CFZA9Wo2waNSqZUKGVPZ7kn4VrxpG/VrS
         cELf5TVN03qVCgzE0wKSFAVY4BdCM0wtYwVKMn8mK4pVEw6FZXLh8QlOUMvefdbPalIY
         COz7mnb7dhGmqm6FkA1YPELYXXrcjpXKSJ13+sNRBgoLlhLP2xbR+8XgmNe3OodC0hgc
         K03cSt7/b0MqZ1Nau6gKf80TB7Erm6I8OdUeC8JxWBaaLNt66eoYDiXLxgT0EQ+dVa9Q
         qMzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qBR9uUxU;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id v24si115627plo.1.2020.10.22.06.43.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 06:43:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qBR9uUxU;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id bh6so975722plb.5
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 06:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=TGoYs6NX+Ndx+a6z9ojq9tBbYhFNYgIJY1nftO258C4=;
        b=qBR9uUxUlHyzRD3U5yeOPNh2DDGVG9brz1blZmpia4NszHbmZ+F9wNVuaJbexA1L3Q
         /eGsZj1/Hj54rAPm6L5LilmL59AZk5K6sjXGE8XLjUje8GMErvT7f0RzBBIzt4bwDR7y
         CP+A1Is9IT0EVEitSCNGlmmmWZ1WHvAnd9ZTIrd0lM1wHSdXPkBVZXAwsdEj9CGOq1+W
         NYw767H1SD7DlQEa3Anp0F9TqIkNbjTargZkMcF5AbXQTTIJzXX/4ocvGZ8e6tajgd05
         OjcAKZCIrST80Fh562Wu+2NAvSfyTI7JHowQpGGjfI3hDZXxM6o91V6d4cuWtjIsgJxz
         Im2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TGoYs6NX+Ndx+a6z9ojq9tBbYhFNYgIJY1nftO258C4=;
        b=MNrMr3ZiJm0sFiTajgmF2cvnWcuGFXTkHDG5OAcoEuzco/QQelnvId6ayREFzzP54t
         jT8CGgis8YIqGT2KdWhHpdWsZX4/LiI6XXpPBJRKRq9GT3ovx8ZKNa1sHEdQHyKsxSrL
         lEmTLGui1XD3IJqHTmSfhXf7iT/dxFctomHMYIdA4VRaswJP9D/0Y3SqcE00aCOcbntI
         dyA2KkxPA8cpa6+QitXJ2bAc6PAOQPZLAymeK0QqEUOZX1GF1lXx12wlg628thbGuxHk
         1RJGTAXs3O7xHtja3O2P3NK0xiQQAOOHfJhyswPV4+GZbWHviMWMeNaUACkBd0fAL6tk
         FEvg==
X-Gm-Message-State: AOAM5314+IHvNqnqdUlxpKi9Sn+daHjz0NuNW+Zs3+cCECGR9FHD65xg
	dUYEXUpn325XNDu0Qi2SHrXI5rH/CHZwRA==
X-Received: by 2002:a17:902:a3c9:b029:d5:df0c:f217 with SMTP id q9-20020a170902a3c9b02900d5df0cf217mr2465001plb.59.1603374197886;
        Thu, 22 Oct 2020 06:43:17 -0700 (PDT)
Return-Path: <sylphrenadin@gmail.com>
Received: from adolin ([49.207.204.75])
        by smtp.gmail.com with ESMTPSA id l18sm2404726pfd.210.2020.10.22.06.43.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 06:43:17 -0700 (PDT)
Date: Thu, 22 Oct 2020 19:13:11 +0530
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: outreachy-kernel@googlegroups.com, alexander.deucher@amd.com,
	christian.koenig@amd.com, airlied@linux.ie, daniel@ffwll.ch,
	melissa.srw@gmail.com, linux-media@vger.kernel.org,
	amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
Message-ID: <78546ad9343ddf1b0f8bc300a3c8ae9a0dcb0ef9.1603371258.git.sylphrenadin@gmail.com>
References: <cover.1603371258.git.sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1603371258.git.sylphrenadin@gmail.com>

Using snprintf() for show() methods holds the risk of buffer overrun
as snprintf() does not know the PAGE_SIZE maximum of the temporary
buffer used to output sysfs content.

Modify amdgpu_device.c to use sysfs_emit() instead which knows the
size of the temporary buffer.

Issue found with Coccinelle.

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
index f7307af76452..7eef6b20578f 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
@@ -135,7 +135,7 @@ static ssize_t amdgpu_device_get_pcie_replay_count(struct device *dev,
 	struct amdgpu_device *adev = drm_to_adev(ddev);
 	uint64_t cnt = amdgpu_asic_get_pcie_replay_count(adev);
 
-	return snprintf(buf, PAGE_SIZE, "%llu\n", cnt);
+	return sysfs_emit(buf, PAGE_SIZE, "%llu\n", cnt);
 }
 
 static DEVICE_ATTR(pcie_replay_count, S_IRUGO,
@@ -159,7 +159,7 @@ static ssize_t amdgpu_device_get_product_name(struct device *dev,
 	struct drm_device *ddev = dev_get_drvdata(dev);
 	struct amdgpu_device *adev = drm_to_adev(ddev);
 
-	return snprintf(buf, PAGE_SIZE, "%s\n", adev->product_name);
+	return sysfs_emit(buf, PAGE_SIZE, "%s\n", adev->product_name);
 }
 
 static DEVICE_ATTR(product_name, S_IRUGO,
@@ -181,7 +181,7 @@ static ssize_t amdgpu_device_get_product_number(struct device *dev,
 	struct drm_device *ddev = dev_get_drvdata(dev);
 	struct amdgpu_device *adev = drm_to_adev(ddev);
 
-	return snprintf(buf, PAGE_SIZE, "%s\n", adev->product_number);
+	return sysfs_emit(buf, PAGE_SIZE, "%s\n", adev->product_number);
 }
 
 static DEVICE_ATTR(product_number, S_IRUGO,
@@ -203,7 +203,7 @@ static ssize_t amdgpu_device_get_serial_number(struct device *dev,
 	struct drm_device *ddev = dev_get_drvdata(dev);
 	struct amdgpu_device *adev = drm_to_adev(ddev);
 
-	return snprintf(buf, PAGE_SIZE, "%s\n", adev->serial);
+	return sysfs_emit(buf, PAGE_SIZE, "%s\n", adev->serial);
 }
 
 static DEVICE_ATTR(serial_number, S_IRUGO,
-- 
2.25.1


