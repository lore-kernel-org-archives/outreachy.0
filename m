X-GM-THRID: 6613766908377300992
X-Received: by 2002:a65:4888:: with SMTP id n8-v6mr14567533pgs.15.1539887606951;
        Thu, 18 Oct 2018 11:33:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:2041:: with SMTP id g62-v6ls6186362pfg.4.gmail; Thu, 18
 Oct 2018 11:33:26 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61Br6JlkciJen/hfH24x+RdVKo8X0RV71fazEcfyiOwoP3yHs17S69ioUogLRvml4+A0bOh
X-Received: by 2002:a65:52c4:: with SMTP id z4-v6mr15131983pgp.76.1539887606042;
        Thu, 18 Oct 2018 11:33:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539887606; cv=none;
        d=google.com; s=arc-20160816;
        b=jjzTLklhNRE/tfPVMNDxWpLfXAQt78VmVuGfElhPCfwAt9yDSxvc1thwHlji7kFSBj
         GGyIWtcdC4tZAW6XRL2D2EHnKoU7xtb90sUlYMf6+oAABCZ10WULjvDnBZP5qJmaRaq8
         /ZWqv9sx4hWJ1INyWn5/h5WLn9pGSmRjYDNwe4Uftvi3ILEi+Hik+w631q4t4KCx5SZJ
         +sYIVls1Q1/Q21kvv8/19EF6/Z7S1e/xAwmllTlAGNe7jg3hVJa6mEAN6mYz4+hBXNk5
         4jAUkVQ5G5XbQe5NhThF0+zJ9GoCQgVpEvOz4Dzqqps8vzWzZydoUp8e6HTcto7eLj7F
         B4kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=gwk3xLVBgmLhayw7si/XIghZpgmfWbfYsbyjzuNJzDg=;
        b=fdkmCguJRszeM0FsdijnnDPvbY5asU3FwHqOPHOYZpARN/EV4GcL0K4oEGULNbRkFO
         0x39Z0wB2MV2Br2vBxjgS2rPzjSfxNHlkhKaBt9qVz48vNPW2zv5r3OEsPxC5Vuwmqsa
         LM+tI4P+IKPqF0pL+grWwepmhb+g0RSDK59LXqTu86j5N+W3Se0krjE0Ug4qdDzzSiGI
         Gwe9cp8zFRleowcArl5aTLJ21ROTdaDrArMcotzpjMF+e0HU+V3vSdPEI6ekSFPG+X2F
         qz5dFcEc43CyGA4YRNdMvISznHtQBBa+u4gcAYql76dVL9BRm25EKhxPZ7Uto0itjUvh
         zOKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a6D0cC7C;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id i12-v6si897083plt.5.2018.10.18.11.33.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Oct 2018 11:33:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a6D0cC7C;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id f8-v6so14578008pgq.5
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Oct 2018 11:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gwk3xLVBgmLhayw7si/XIghZpgmfWbfYsbyjzuNJzDg=;
        b=a6D0cC7CZvKScHlq2m7CoAIIWUfn6kwTv+sFuiOEpxZvMPEUnna4yF+E4axjkgx52S
         RbFM4lQXB1pZyS22vphPMdy1FKroCqFe+UJBu821Y7fdMPyr5xhSWL6rR6dJobDjiF4x
         atdRAxmWFqdZa9aKRuZnNMBJb7SIv5N0LXR8AQ1YKy+V/SkTHqjZ45DpbMvRHwJIqzay
         sKzGxOkctgdxtDkrS4AtBL/TjvlkS42nYH8rJZpzXtcaywi1fiWhthdRU+EtVucWeNZs
         0AsYUxpTAmZW2Ip4izmDVy87l3CCwA6czp2Tmbsr3wpeWzClJXl7CY1pnN7pus+9RR4s
         W45A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gwk3xLVBgmLhayw7si/XIghZpgmfWbfYsbyjzuNJzDg=;
        b=DcqoU9NolBwg+Lf02jCcb3ZHVdF6PF6iD6T4SgmijGbgttFPfImFd+siMr10gqkTs9
         xtH/wsIeAic591yhhUURfBYBfecs4vJW5omY+pu8jVWEhKFu2d8xn8WedszolRVOuy1J
         HyFneFzs+ljw9X8v9Xrh8kXn/eYra2nhDUYfny5vwe4wpd3+0QcD9cdNeB31tOeHiJi1
         MUqwAvE/Gn5N158G/Y3zkDMRpuH7ZaBkQ27Ppzo03XYfRhf3P18dggIkEOwvqxF8+bQN
         XWUVKB8mgAspZrD5E6EOuBOMpQ+SxLzeaIEC3e9j/Utc1hSjCbaPGCJig34CAzw/J0Lw
         2BQw==
X-Gm-Message-State: ABuFfohkfyDLtw5lFfk4IRAzyas64WvG1Yk3NNV24PaVyDmWIBC/mAb8
	xtUKLwZ7kX5L9eKbiUk0snw0Bw81kqU=
X-Received: by 2002:a62:6801:: with SMTP id d1-v6mr31505513pfc.7.1539887605665;
        Thu, 18 Oct 2018 11:33:25 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.199.49.212])
        by smtp.gmail.com with ESMTPSA id h7-v6sm35782043pfd.35.2018.10.18.11.33.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Oct 2018 11:33:25 -0700 (PDT)
Date: Fri, 19 Oct 2018 00:03:22 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: dri-devel@lists.freedesktop.org, daniel.vetter@ffwll.ch,
	robdclark@gmail.com, airlied@linux.ie, sean@poorly.run
Subject: [PATCH DRM] drm: msm: adreno: Use DRM_DEV_* instead of dev_*
Message-ID: <20181018183322.GA10769@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use DRM_DEV_INFO/ERROR/WARN instead of dev_info/err/debug to generate
drm-formatted specific log messages so that it will be easy to
differentiate in case of multiple instances of driver.

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/gpu/drm/msm/adreno/a5xx_gpu.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
index 6a68493..bf8402d 100644
--- a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
@@ -514,7 +514,7 @@ static int a5xx_ucode_init(struct msm_gpu *gpu)
 		if (IS_ERR(a5xx_gpu->pm4_bo)) {
 			ret = PTR_ERR(a5xx_gpu->pm4_bo);
 			a5xx_gpu->pm4_bo = NULL;
-			dev_err(gpu->dev->dev, "could not allocate PM4: %d\n",
+			DRM_DEV_ERROR(gpu->dev->dev, "could not allocate PM4: %d\n",
 				ret);
 			return ret;
 		}
@@ -527,7 +527,7 @@ static int a5xx_ucode_init(struct msm_gpu *gpu)
 		if (IS_ERR(a5xx_gpu->pfp_bo)) {
 			ret = PTR_ERR(a5xx_gpu->pfp_bo);
 			a5xx_gpu->pfp_bo = NULL;
-			dev_err(gpu->dev->dev, "could not allocate PFP: %d\n",
+			DRM_DEV_ERROR(gpu->dev->dev, "could not allocate PFP: %d\n",
 				ret);
 			return ret;
 		}
@@ -1028,7 +1028,7 @@ static void a5xx_fault_detect_irq(struct msm_gpu *gpu)
 	struct msm_drm_private *priv = dev->dev_private;
 	struct msm_ringbuffer *ring = gpu->funcs->active_ring(gpu);
 
-	dev_err(dev->dev, "gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\n",
+	DRM_DEV_ERROR(dev->dev, "gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\n",
 		ring ? ring->id : -1, ring ? ring->seqno : 0,
 		gpu_read(gpu, REG_A5XX_RBBM_STATUS),
 		gpu_read(gpu, REG_A5XX_CP_RB_RPTR),
@@ -1134,7 +1134,7 @@ static irqreturn_t a5xx_irq(struct msm_gpu *gpu)
 
 static void a5xx_dump(struct msm_gpu *gpu)
 {
-	dev_info(gpu->dev->dev, "status:   %08x\n",
+	DRM_DEV_INFO(gpu->dev->dev, "status:   %08x\n",
 		gpu_read(gpu, REG_A5XX_RBBM_STATUS));
 	adreno_dump(gpu);
 }
@@ -1498,7 +1498,7 @@ struct msm_gpu *a5xx_gpu_init(struct drm_device *dev)
 	int ret;
 
 	if (!pdev) {
-		dev_err(dev->dev, "No A5XX device is defined\n");
+		DRM_DEV_ERROR(dev->dev, "No A5XX device is defined\n");
 		return ERR_PTR(-ENXIO);
 	}
 
-- 
1.9.1


