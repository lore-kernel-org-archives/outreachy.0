X-GM-THRID: 6954316272717791232
X-Received: by 2002:a17:906:c348:: with SMTP id ci8mr3715771ejb.303.1619177933760;
        Fri, 23 Apr 2021 04:38:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:b216:: with SMTP id p22ls4341265ejz.4.gmail; Fri, 23
 Apr 2021 04:38:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxOXPVkC2eqrdbTgpk0X1kspxxkSc0x28nUQ7RMAcNj8hTfUVX8T15fj1lChaveh1XRhQKu
X-Received: by 2002:a17:906:2c19:: with SMTP id e25mr3678846ejh.483.1619177932063;
        Fri, 23 Apr 2021 04:38:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619177932; cv=none;
        d=google.com; s=arc-20160816;
        b=pdj7hnq8S2Ud/NkcJwDC9Zp7BcRUjIFgNyi768W5GIzIZKcrMVdV4CExngfxm3emQC
         Ea5yFHtIFQk/Y2saC9eW/3XzAOt2CCD+tBjR5edrxacWjCmOE/wZQHPOoMtmZMehQ6BK
         PBV8p8IPBe7p64UMKdEeacSIUQnIq+C2eN/P7IXLVDb/xyYcmgm5SBdVHxudMzkk7YHR
         X0U2WEwsyxQmwVBbVs8bu/AIeagKGriv9ehbAMkdN1LNiHtguTh3DvEmUV8NSjRRFIBf
         zRqtirVQDcyb6E0yezQ05m8qui+1noqE8ywxsLtp63RvCKAKO9oqVU/FrQSq/BZUys+3
         ArRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=tfwQKZxXdDYllkxh+HP2o7b8Xma124w7u9YX5ihdThk=;
        b=Lo6fjUOgRjGYzx3qFzeF++vX948unNeYA3LWu4gKGxFMqwnpwdFAVhobjPCyxP76Aa
         Rc9MrRSvLw2kQ7c4qP+dT7No7ENx6CUshrojrq1+Kc+rHeacFJAhGdhg2IQFOfotG/nX
         B2SxsSnILC5zMIJasKX1/pau4ata2JstMyFF6BESJN61xTbbbthBoQCz1+WcqSadf1Bi
         PmqSwAidWubjRMNsD3U8KyoB1KmPB+iCnXPgqaqaVf+GOpOUDTqLttKD7sVNJW9MaBmw
         r9iv1StxLHwM0XOQLWOyaXNLibvAc+TnAKKaR/jAsoSb/QKpVAdMN8WpJ8MKyvpnq9Mg
         Uoxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B0suzuxi;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id y16si806817edq.2.2021.04.23.04.38.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 04:38:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B0suzuxi;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62b.google.com with SMTP id r12so73436364ejr.5
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Apr 2021 04:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tfwQKZxXdDYllkxh+HP2o7b8Xma124w7u9YX5ihdThk=;
        b=B0suzuxifCcOfPo/dFqrCu+ZPlTvcWsFMBQ3qhXvoW30sjRxdGR3uDnk/8bKkUgmVp
         buVA60RHa7KMqBACHOi6zaxbTshOmcTRfmMPt/piPoz7R+qrvjdSxzFG+G35R/nZ4w4f
         VnYgbrGVEJdI8+FtAJ0H4kjzb5QQb3erUWGy7jo39EfgtBo3/wT4K0hejCrl325etzB2
         2GZE10id4/elX95fiEsvqTzyWWWECUSIJstXZWnQKBbTbf3lOGmHILZDTQyHS2kLGHK2
         ieYXAE63EEkMTgHVR4XzNSUYguPHBJjsoeJPG791p+N64ZMW/pMHBdpFVPB3R7j2GRUV
         UAlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tfwQKZxXdDYllkxh+HP2o7b8Xma124w7u9YX5ihdThk=;
        b=n0wEd2nkjHw+2ylWtgBkruNvnzCmr4SWzIn+AeBOXnAGo1zYboBsUEGQoYU2Q28rmn
         7JiJODNuXvOcZNLBBLqHyjsxOg97tAK54BDIsvm2LtGw5QodQqMjIGf493IIaw09nogY
         6qSPNTXthnouOyj8xp7ffaEV4FR27l0zozBgkPGm3lBq8K60lFlaQyHUvJrz1iemfOUb
         xzIwZzFtRF89x6KFOZHHRLBGViB5kYQ0v1Gqw0e1XHovAZZxogLtEYwYArnS032m1nHh
         IYgi3vYdM9yUxpLADkyLEaRa9TNcf4PeOuscNzdYnu+VCWim0efsYybXAxYuExjoMGFo
         0NBQ==
X-Gm-Message-State: AOAM533tgqahoRN3Dp2spHV2oIpplD7O6Fz6s3kB+Tt9L5k+fJZTDl00
	/Hpgw3z3z306v2xrSPcigOj3zj1j1n9cPLRb
X-Received: by 2002:a17:907:2662:: with SMTP id ci2mr3628395ejc.467.1619177931579;
        Fri, 23 Apr 2021 04:38:51 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id bm26sm3804553ejb.82.2021.04.23.04.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 04:38:51 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH] drm/amd/amdgpu: Fix errors in documentation of function parameters
Date: Fri, 23 Apr 2021 13:38:46 +0200
Message-Id: <20210423113846.29651-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In the function documentation, I removed the excess parameters,
described the undocumented ones, and fixed the syntax errors.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_acpi.c          | 12 ++++++------
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c  |  4 +++-
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c |  8 ++++----
 3 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_acpi.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_acpi.c
index 2e9b16fb3fcd..bf2939b6eb43 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_acpi.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_acpi.c
@@ -76,7 +76,7 @@ struct amdgpu_atif {
 /**
  * amdgpu_atif_call - call an ATIF method
  *
- * @handle: acpi handle
+ * @atif: acpi handle
  * @function: the ATIF function to execute
  * @params: ATIF function params
  *
@@ -166,7 +166,6 @@ static void amdgpu_atif_parse_functions(struct amdgpu_atif_functions *f, u32 mas
 /**
  * amdgpu_atif_verify_interface - verify ATIF
  *
- * @handle: acpi handle
  * @atif: amdgpu atif struct
  *
  * Execute the ATIF_FUNCTION_VERIFY_INTERFACE ATIF function
@@ -240,8 +239,7 @@ static acpi_handle amdgpu_atif_probe_handle(acpi_handle dhandle)
 /**
  * amdgpu_atif_get_notification_params - determine notify configuration
  *
- * @handle: acpi handle
- * @n: atif notification configuration struct
+ * @atif: acpi handle
  *
  * Execute the ATIF_FUNCTION_GET_SYSTEM_PARAMETERS ATIF function
  * to determine if a notifier is used and if so which one
@@ -304,7 +302,7 @@ static int amdgpu_atif_get_notification_params(struct amdgpu_atif *atif)
 /**
  * amdgpu_atif_query_backlight_caps - get min and max backlight input signal
  *
- * @handle: acpi handle
+ * @atif: acpi handle
  *
  * Execute the QUERY_BRIGHTNESS_TRANSFER_CHARACTERISTICS ATIF function
  * to determine the acceptable range of backlight values
@@ -363,7 +361,7 @@ static int amdgpu_atif_query_backlight_caps(struct amdgpu_atif *atif)
 /**
  * amdgpu_atif_get_sbios_requests - get requested sbios event
  *
- * @handle: acpi handle
+ * @atif: acpi handle
  * @req: atif sbios request struct
  *
  * Execute the ATIF_FUNCTION_GET_SYSTEM_BIOS_REQUESTS ATIF function
@@ -899,6 +897,8 @@ void amdgpu_acpi_fini(struct amdgpu_device *adev)
 /**
  * amdgpu_acpi_is_s0ix_supported
  *
+ * @adev: amdgpu_device_pointer
+ *
  * returns true if supported, false if not.
  */
 bool amdgpu_acpi_is_s0ix_supported(struct amdgpu_device *adev)
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c
index 5af464933976..98d31ebad9ce 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c
@@ -111,6 +111,8 @@ static const char *amdkfd_fence_get_timeline_name(struct dma_fence *f)
  *  a KFD BO and schedules a job to move the BO.
  *  If fence is already signaled return true.
  *  If fence is not signaled schedule a evict KFD process work item.
+ *
+ *  @f: dma_fence
  */
 static bool amdkfd_fence_enable_signaling(struct dma_fence *f)
 {
@@ -131,7 +133,7 @@ static bool amdkfd_fence_enable_signaling(struct dma_fence *f)
 /**
  * amdkfd_fence_release - callback that fence can be freed
  *
- * @fence: fence
+ * @f: dma_fence
  *
  * This function is called when the reference count becomes zero.
  * Drops the mm_struct reference and RCU schedules freeing up the fence.
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c
index b43e68fc1378..ed3014fbb563 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c
@@ -719,7 +719,7 @@ static void unlock_spi_csq_mutexes(struct amdgpu_device *adev)
 }
 
 /**
- * @get_wave_count: Read device registers to get number of waves in flight for
+ * get_wave_count: Read device registers to get number of waves in flight for
  * a particular queue. The method also returns the VMID associated with the
  * queue.
  *
@@ -755,19 +755,19 @@ static void get_wave_count(struct amdgpu_device *adev, int queue_idx,
 }
 
 /**
- * @kgd_gfx_v9_get_cu_occupancy: Reads relevant registers associated with each
+ * kgd_gfx_v9_get_cu_occupancy: Reads relevant registers associated with each
  * shader engine and aggregates the number of waves that are in flight for the
  * process whose pasid is provided as a parameter. The process could have ZERO
  * or more queues running and submitting waves to compute units.
  *
  * @kgd: Handle of device from which to get number of waves in flight
  * @pasid: Identifies the process for which this query call is invoked
- * @wave_cnt: Output parameter updated with number of waves in flight that
+ * @pasid_wave_cnt: Output parameter updated with number of waves in flight that
  * belong to process with given pasid
  * @max_waves_per_cu: Output parameter updated with maximum number of waves
  * possible per Compute Unit
  *
- * @note: It's possible that the device has too many queues (oversubscription)
+ * Note: It's possible that the device has too many queues (oversubscription)
  * in which case a VMID could be remapped to a different PASID. This could lead
  * to an iaccurate wave count. Following is a high-level sequence:
  *    Time T1: vmid = getVmid(); vmid is associated with Pasid P1
-- 
2.31.1


