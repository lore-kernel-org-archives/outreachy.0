X-GM-THRID: 6887993543318568960
X-Received: by 2002:aca:d5c1:: with SMTP id m184mr13646927oig.19.1603735970215;
        Mon, 26 Oct 2020 11:12:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:d650:: with SMTP id n77ls2377996oig.5.gmail; Mon, 26 Oct
 2020 11:12:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzgTvr7/AsScmtrsmYkWKdrTlRHgJhHEUjblte3KvAFwOP000dDZjo++wCIDIDZhPBibXC7
X-Received: by 2002:aca:3b0a:: with SMTP id i10mr15129752oia.167.1603735969168;
        Mon, 26 Oct 2020 11:12:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603735969; cv=none;
        d=google.com; s=arc-20160816;
        b=zEUjxwkwtr72xw+AC1WvnfWW6v8PIi+YQo1mqNLqRyslKkBiaenTxHv7gUkvA65LaA
         QR9qqohlhUYuLI+uMiq4KY+bZ+gISWPxmQRPcySzDNEv5L1zwGGtsOPMbD/QOsiDoXXE
         DSvJ06kn/zBsO4ur8tq6pSIN1lMS4Xtwpms+PXTnxQKgCeDIAXrPKjmxKDIsreH+ZhY/
         F0PpNEee1lqAae/UirSjSI5NcbotkuUg6jwBBgdfw+iH0YbfGZEQNeG5zt6VhhvvlU2W
         u6pewHuBKVLjky9ySzB3jPQ4c5e5Q5m5OmS9BB7yAV5ckJUBV8xyAl0qKf9Xl4Wg/lk/
         JzMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=5HO3BVg0bRzxOwVnCXHaH7lLzHwWVLX1pNvQSsPVR34=;
        b=XXtU0XMPK3f/OVuV07xwwh1JvZEYMAlrziS/fBaHjXTW9dJ9HdAqDaheOMFIIdTAb5
         Ba5CrMR2rlNwN8EKrmQCaPtHe+TaPx60qSp2jtMaK+Etj5RnYoXP7L/skbddcso413Di
         vne6/z+SajBkviP2twEbsbclBcR4DaUWHrgR3h+VA8rDKg3EM3iODI+94pmrIK9fO1k/
         zzhMoVARAc0Q1+mvQhbx4oJoBzOAvvEYKlrPGDKUmSmJY3BaThifyFX7gTE2KvQfzkil
         jdAWIBwJoCACOT3M5hx3xEy96FQpG6HzRXC81fwK/HKaLnjNW0hr6rEjk+ihwEo+rjSd
         rnsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rOPmEVV1;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id o22si880765otk.2.2020.10.26.11.12.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 11:12:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rOPmEVV1;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id c17so3657513pjo.5
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2020 11:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=5HO3BVg0bRzxOwVnCXHaH7lLzHwWVLX1pNvQSsPVR34=;
        b=rOPmEVV1mJNejym0bVuvH9D4QxMR/bgR/uiSbmV/sI7ehBqx9zE3tPQI3irbzRxDDd
         NVkrepuMoOB1w0rze3dUFqEABBGq17D70yo/wQS+XFRhJ1knlr0TapHWZeaLm0lLgVCk
         ajbJ95GkSBe22vslkDkxh0/mNDW9UCzxwEqwbcAtBcZ3rWDFT8cs/8wr40BP+cKqQAHf
         Xqaj+8TzKs8sGYoowwCqyFoKjAJxNF44AEdMxKebFyX5QZoG10rCJsWZXnAoU8L+BFA/
         TxvFoEMzVN/jfugVoIQqz07xC2kpg1KYm5gwFSxpUVe5PR3Uwti4rO2g8TWdiFD7Ja6N
         cmJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=5HO3BVg0bRzxOwVnCXHaH7lLzHwWVLX1pNvQSsPVR34=;
        b=rZke+jL8OejANJvhmpogF3vRPXqkmNaraN3fzMdg2cc+auLJfGOOpOti1jy20Y+WGb
         tK2rO8QYXcHwFeniC7wgY132jZziJk58Z4mHYucko7rgImfWbvW9B57cYMdR+cVK+HdD
         T7MjE+CPa1A3WuUwVD3mlI6SDFIYBYABi7G66/eMSmLzC0GusiySChrlCqDA3X1i+tfX
         ptJ6uHsot3rIh8BtGT9gFLiy1MNolYH+r6XCnaZHp918mWE+YGxHGhiD2YO1/ENrgDmy
         voTA6Y+4E0l4yCXeOcEVl/aqZBE4bDHpoXDSCm/tym/terKRF7LH4pkJyIThYkKVHlhj
         Mx/g==
X-Gm-Message-State: AOAM533fyr9csX8rE1wKDjKdFcP9U9wSDpYD52RLcSSYSPnwFPmxgkVj
	NZwk4EboEcocH+gziyJnrFk=
X-Received: by 2002:a17:90a:ca:: with SMTP id v10mr22381893pjd.18.1603735968845;
        Mon, 26 Oct 2020 11:12:48 -0700 (PDT)
Return-Path: <sylphrenadin@gmail.com>
Received: from adolin ([49.207.196.21])
        by smtp.gmail.com with ESMTPSA id m3sm7813796pfd.217.2020.10.26.11.12.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 11:12:48 -0700 (PDT)
Date: Mon, 26 Oct 2020 23:42:42 +0530
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: daniel@ffwll.ch, Felix.Kuehling@amd.com, alexander.deucher@amd.com,
	christian.koenig@amd.com, airlied@linux.ie, sumit.semwal@linaro.org,
	amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, outreachy-kernel@googlegroups.com,
	melissa.srw@gmail.com
Subject: [Outreachy][PATCH] drm/amdgpu: use true and false for bool
 initialisations
Message-ID: <20201026181242.76bf3b6gx2yx7hr7@adolin>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Bool initialisation should use 'true' and 'false' values instead of 0
and 1.

Modify amdgpu_amdkfd_gpuvm.c to initialise variable is_imported
to false instead of 0.

Issue found with Coccinelle.

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
index 64d4b5ff95d6..ba4bd06bfcc5 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
@@ -1288,7 +1288,7 @@ int amdgpu_amdkfd_gpuvm_free_memory_of_gpu(
 	struct ttm_validate_buffer *bo_list_entry;
 	unsigned int mapped_to_gpu_memory;
 	int ret;
-	bool is_imported = 0;
+	bool is_imported = false;
 
 	mutex_lock(&mem->lock);
 	mapped_to_gpu_memory = mem->mapped_to_gpu_memory;
-- 
2.25.1


