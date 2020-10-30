X-GM-THRID: 6889248551394607104
X-Received: by 2002:a17:90a:4549:: with SMTP id r9mr345316pjm.146.1604028174716;
        Thu, 29 Oct 2020 20:22:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7786:: with SMTP id o6ls2213445pll.0.gmail; Thu, 29
 Oct 2020 20:22:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzbMu4nft2BpjgRR+4IgXvlBWzEjwm+7zmOfmo8pw8sa3Zcqx4Bhx01hptthLncqu0TqMfd
X-Received: by 2002:a17:902:bd8e:b029:d4:c98b:c315 with SMTP id q14-20020a170902bd8eb02900d4c98bc315mr7291134pls.69.1604028172943;
        Thu, 29 Oct 2020 20:22:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604028172; cv=none;
        d=google.com; s=arc-20160816;
        b=Ryk5r1rutTrSBGWK2WDT+Y2iSod5PKn+ZwU1mn6d1pYgYTJBGVsNmp0FOAmCfhmEqX
         UC8izR5s3a7xDfUxX/G8RJ8HCKkzm68ezzmLYW6aYM4lC1WSZf1vHR/b65MxfSskgQp5
         N5c4Co9WVirQrO8DESC2a37RfDb8dR4lxL8phnro/3ZzwWSM10cxmiWK7r+eXB+gS3Yy
         E9QvVFtQqSswnrnvPXlY8vHtbBVQu6Gfnbk6ie9LkIsHNaPiUVW5lZsCEOYe8V0yLDl0
         Yq7Ux/T3afKXjdCQjU/6d7bwZBcpW9Wu9Awb3GMHy66Dhaw7n+B9dtbnyStxW/TJD5cp
         FDqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=qBvjZd1NQE+Opu2oXBohKdYFGkxmEuNNU11hjYVYnCQ=;
        b=ulD3yBjURXY217F/EIiUqC6kijXk33XBBbQLEnUWPzDEU6dt/QFgapT12jt98I74no
         ZhXHK5G+JHvwra6RYTZ+WbTupqAKwYSuVGBVl/oo99VkxYDNUZ+hTiFgbtQ/XJgEQ5PS
         kv3IyZjuPO7kmaYqjZhT6/0BoKdmsRFM7bY+dnlA6S7MZbr0lpt79PIp2cijAJfjuKgi
         EUUTcScEyKQ8RFWD4y1SRjYxpdjxNPP+YZFtpJ+2VabypuUDhM4PjqufPzuHg0touOAU
         /pGqvfa1D5aB6Kvvo9LnNBwPmGm2/7HnC/cw9fTKT4+DxXAq9wPgzrOb1bpMW2LuTXkl
         kPYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mj33b48h;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id a6si298410pjw.3.2020.10.29.20.22.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 20:22:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mj33b48h;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id b3so4092257pfo.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 20:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=qBvjZd1NQE+Opu2oXBohKdYFGkxmEuNNU11hjYVYnCQ=;
        b=Mj33b48h76F1dSMxppcMSK6G6p3jotJKxzTrYojGUxfEpvhTrFPdTY+HPZoV2gq4oJ
         h+0vUFVO+e7BWDVQgOVC+R2T284CGbNoAAo+6ZYFsnOjZml55tKAFQ78cH3A15oJEZVG
         mrujRZtGJyCFgMx3FPZyX51iESlyui7nGtxqcddwonAsLZgt8dav4aFYBqgk71eEFUzL
         n2dOdvx+xZU5afm/QgSBfDbLIW7cbGz77YROOkiUFUc9acef+jknLNCe4n+Fc/2MIj3L
         iq760Cb4WVXRxzHf61KnVYP4HVfscx/HGeX/hkGimxhD2UZcbmv6WlkH5dxV34/JJVP3
         LIDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=qBvjZd1NQE+Opu2oXBohKdYFGkxmEuNNU11hjYVYnCQ=;
        b=MCG6GjaK91xBkuPYTImHKF6LJipd4b7s3dfxFnRj6g3IatvaB0Y8dBoa0WXKvdwAyk
         a3cJo1qrR43+XG6eHDYQ/I9AOVlZSwx/NgqkIRH4CFV9mhDfAZgJ1txfGjf4NX2ztEho
         MJdaMbBN1FXeqnNeywraIJ4ZcL80ikey9eclRuYbkBiHE2wcLBGUlEqXwP5wtcmz/qQ3
         x+hIeMw6yubmRNbVViNqqpvDo3gx3xOOsQ/JBwb3ScCpWJ+imh0jfD6JDOqlfjDuq92d
         04Uf0r3UgepiTsDAGDeJdx9KmDIhRC1tg7XeH35aY1/fwmyTnQ2gOtSMWrlblp+0KIOn
         cnsw==
X-Gm-Message-State: AOAM530CUuAd+DtXVUi+Lm6Lf4oWintRZSTNoxsRPnhgJ7g1t25WgYlT
	A2z5iOjNhp9W5x1lDbAePxDccPVsC50=
X-Received: by 2002:a63:ec57:: with SMTP id r23mr374312pgj.257.1604028172484;
        Thu, 29 Oct 2020 20:22:52 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.98.79.70])
        by smtp.gmail.com with ESMTPSA id 92sm1313206pjv.32.2020.10.29.20.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 20:22:51 -0700 (PDT)
Date: Fri, 30 Oct 2020 08:52:45 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Cc: mh12gx2825@gmail.com, melissa.srw@gmail.com, daniel.vetter@ffwll.ch
Subject: [PATCH] drm/amdgpu: use DEFINE_DEBUGFS_ATTRIBUTE with
 debugfs_create_file_unsafe()
Message-ID: <20201030032245.GA274478@my--box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Using DEFINE_DEBUGFS_ATTRIBUTE macro with debugfs_create_file_unsafe()
function in place of the debugfs_create_file() function will make the
file operation struct "reset" aware of the file's lifetime. Additional
details here: https://lists.archive.carbon60.com/linux/kernel/2369498

Issue reported by Coccinelle script:
scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Please Note: This is a Outreachy project task patch.

 drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
index 2d125b8b15ee..f076b1ba7319 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
@@ -1551,29 +1551,29 @@ static int amdgpu_debugfs_sclk_set(void *data, u64 val)
 	return 0;
 }
 
-DEFINE_SIMPLE_ATTRIBUTE(fops_ib_preempt, NULL,
-			amdgpu_debugfs_ib_preempt, "%llu\n");
+DEFINE_DEBUGFS_ATTRIBUTE(fops_ib_preempt, NULL,
+			 amdgpu_debugfs_ib_preempt, "%llu\n");
 
-DEFINE_SIMPLE_ATTRIBUTE(fops_sclk_set, NULL,
-			amdgpu_debugfs_sclk_set, "%llu\n");
+DEFINE_DEBUGFS_ATTRIBUTE(fops_sclk_set, NULL,
+			 amdgpu_debugfs_sclk_set, "%llu\n");
 
 int amdgpu_debugfs_init(struct amdgpu_device *adev)
 {
 	int r, i;
 
 	adev->debugfs_preempt =
-		debugfs_create_file("amdgpu_preempt_ib", 0600,
-				    adev_to_drm(adev)->primary->debugfs_root, adev,
-				    &fops_ib_preempt);
+		debugfs_create_file_unsafe("amdgpu_preempt_ib", 0600,
+					   adev_to_drm(adev)->primary->debugfs_root, adev,
+					   &fops_ib_preempt);
 	if (!(adev->debugfs_preempt)) {
 		DRM_ERROR("unable to create amdgpu_preempt_ib debugsfs file\n");
 		return -EIO;
 	}
 
 	adev->smu.debugfs_sclk =
-		debugfs_create_file("amdgpu_force_sclk", 0200,
-				    adev_to_drm(adev)->primary->debugfs_root, adev,
-				    &fops_sclk_set);
+		debugfs_create_file_unsafe("amdgpu_force_sclk", 0200,
+					   adev_to_drm(adev)->primary->debugfs_root, adev,
+					   &fops_sclk_set);
 	if (!(adev->smu.debugfs_sclk)) {
 		DRM_ERROR("unable to create amdgpu_set_sclk debugsfs file\n");
 		return -EIO;
-- 
2.25.1


