X-GM-THRID: 6470838209847754752
X-Received: by 10.101.73.198 with SMTP id t6mr655370pgs.181.1506609425439;
        Thu, 28 Sep 2017 07:37:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.78.4 with SMTP id r4ls1214454pgt.9.gmail; Thu, 28 Sep 2017
 07:37:04 -0700 (PDT)
X-Received: by 10.99.143.6 with SMTP id n6mr129259pgd.68.1506609424174;
        Thu, 28 Sep 2017 07:37:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506609424; cv=none;
        d=google.com; s=arc-20160816;
        b=MtlMj/hrcBaF50303+T9Ira7oYl2cT4ySXnEC4cCuNKQOZebHCnq/3jTJpblC1f6cD
         X1Hy/JlI4KJfX1ETHLc6lkMKkOz3dICFkni4aYmK3ZLVRJRz/hantC6Ah8mGXHjyumL6
         RfQ+uG0a6vRO6TrIDFx9Fj/b1yVOBGHg9xv4lVrMYLeken18wZ/PJZ/RzEl8eT/I5/uT
         hSX/UTGMhJrMgvfxRe9UqhjAor6osdI0rqkSZoqWuEC2jNUATWoQS+Aw8Hp6b703VFKD
         PCR/rsEsVFwAC6cVAweyqjUIX+uzOZy1vubrLLo0/QSiszi3wyqObacphigP8RfvQGOP
         JZaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=C8WHyzZuiqApu9WclXH7htCsYDFukeDwvmzhwNK38IU=;
        b=en1wBoyT5+0bQk7fSgKBFw0jqYNf6VOwR2r6YExHXl9GWnYp0lmFK3uDngH1hkOmm2
         SoSt5vg6W+JN8yjQynFQZw5ldz892+zBfwSRHa0FNg2PrD/+iCypKXLUK1/MrUpWg58l
         8rVQ6mnpbpy6wv6LeD6rwyneZXYksRlUCFaNrr1Z6Qcn67nud2gevV9TQVT42yk/N89q
         ehD5TP62gSdMJiDqgayNoOLgHHQYZBlQ8IsiNL7FRjcntWzinsZm7Z8Zo9MA+q8oWzc8
         dIyjAXPmbpBkWynp+gvSmBfdOOjTD3OqMtfjQSS7n1bXL2VTeOOCRCJSRD4ft0742/oI
         +GYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=flFXXucU;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a17si229528pfk.15.2017.09.28.07.37.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 07:37:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=flFXXucU;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 125so1944079pgj.4
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 07:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=C8WHyzZuiqApu9WclXH7htCsYDFukeDwvmzhwNK38IU=;
        b=flFXXucU5xW1TiUkgpB5+5+ubQV11zUxSwMviVmX/oJNMlCWALk7y1IhnjTMQD7gpv
         hA5i3Insdzw0arEa6w/f1oui0/BWNuHjS+xcM/4hk2pVImgVJOmqFg5kV7jJ51FxGxq2
         57TnXrdUALBmU7BImL4GjxhzxZwkKvl7yxicRyJZLiAiKGpH/4AReN+XKipP8Em6nZZr
         oIFek7mSKd88JWtT/7WkL2573wRhP69nrPKQ77oiQXjMidp0FPQ4cWn9B4wdNNQiLpvl
         zSU0gQ34hAAv0uxyhsBXA4cSmilbupqhsxHJwpnZQBLzjKG4SuS4CLjRCid8LtuPRuVy
         KoGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=C8WHyzZuiqApu9WclXH7htCsYDFukeDwvmzhwNK38IU=;
        b=euuBtj+b+Uh6PNbv5JJGx+vAWVRkiZFq6z0YcMD7jTBdMmBfqnSQgFrneu1JFHVNFg
         4Fz3lwrHD3lsbyMxqOTHMF30JmILpRK5RXSSfdr+xxwz8IB3spVTmdtt7qrDYDDULjAF
         V/3kvqy72Zfxq6QLaaxKBPgmdRjk8M5R85b30P5jBoZg8cAZUXs2QNuBj/Hiuptilq9z
         3l2+QwvKDWRDSPbD2UoGQKkJfT+DKHVy1PmFNHS7IRgFSr5AC0nq16v2slNmWEe26mV2
         XCu2nc0k+hr7dM70ZzwwnA3HTTmZzW6oS4tCJKS0zXVqVlG9Yd0E5N+eDjRvy5j8L/yo
         EUNQ==
X-Gm-Message-State: AHPjjUg+52ya5/lzTz8evpTJ22iHwhmAIfP5P56ocSVmalg1fAVEiBl4
	th9ta4JZxdvlZxYZBF6PvTA=
X-Google-Smtp-Source: AOwi7QBkCqHg9rBFV05q9IgihiXo+qfoZssq7J29T6nSI/VKis82lQa9WXI1sbvovhbblX2XiCsNKQ==
X-Received: by 10.84.212.150 with SMTP id e22mr4283523pli.426.1506609422980;
        Thu, 28 Sep 2017 07:37:02 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.9])
        by smtp.gmail.com with ESMTPSA id d23sm3581547pfe.115.2017.09.28.07.37.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 07:37:02 -0700 (PDT)
Date: Thu, 28 Sep 2017 19:50:40 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] drm/amdgpu: replace dev_* with DRM_DEV_* equivalents
Message-ID: <20170928142040.GA30838@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch was generated using the following cocci script:

@@
@@

(
- dev_info
+ DRM_DEV_INFO
(...)
|
- dev_err
+ DRM_DEV_ERROR
(...)
|
- dev_dbg
+ DRM_DEV_DEBUG
(...)
)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c     |  6 ++--
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c  | 10 +++----
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c  | 46 ++++++++++++++---------------
 drivers/gpu/drm/amd/amdgpu/amdgpu_display.c |  2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_fb.c      |  2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c   |  4 +--
 drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c     | 10 +++----
 drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c     |  2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c      | 12 ++++----
 drivers/gpu/drm/amd/amdgpu/amdgpu_ih.c      |  4 +--
 drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c     |  2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c     | 12 ++++----
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.c  | 14 ++++-----
 drivers/gpu/drm/amd/amdgpu/amdgpu_pm.c      |  2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c    | 12 ++++----
 drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c      | 12 ++++----
 drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c   |  8 ++---
 drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c     |  6 ++--
 drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c     | 10 +++----
 drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c     |  6 ++--
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c      |  6 ++--
 drivers/gpu/drm/amd/amdgpu/cik.c            |  2 +-
 drivers/gpu/drm/amd/amdgpu/cik_ih.c         |  2 +-
 drivers/gpu/drm/amd/amdgpu/cik_sdma.c       |  6 ++--
 drivers/gpu/drm/amd/amdgpu/cz_ih.c          |  2 +-
 drivers/gpu/drm/amd/amdgpu/dce_v10_0.c      |  2 +-
 drivers/gpu/drm/amd/amdgpu/dce_v11_0.c      |  2 +-
 drivers/gpu/drm/amd/amdgpu/dce_v8_0.c       |  2 +-
 drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c       |  4 +--
 drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c       |  6 ++--
 drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c       | 20 ++++++-------
 drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c       | 20 ++++++-------
 drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c       | 12 ++++----
 drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c       | 16 +++++-----
 drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c       | 10 +++----
 drivers/gpu/drm/amd/amdgpu/iceland_ih.c     |  2 +-
 drivers/gpu/drm/amd/amdgpu/psp_v10_0.c      |  2 +-
 drivers/gpu/drm/amd/amdgpu/psp_v3_1.c       |  2 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v2_4.c      |  6 ++--
 drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c      |  6 ++--
 drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c      |  4 +--
 drivers/gpu/drm/amd/amdgpu/si_dma.c         |  4 +--
 drivers/gpu/drm/amd/amdgpu/si_ih.c          |  2 +-
 drivers/gpu/drm/amd/amdgpu/soc15.c          |  2 +-
 drivers/gpu/drm/amd/amdgpu/tonga_ih.c       |  2 +-
 drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c       |  2 +-
 drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c       |  2 +-
 drivers/gpu/drm/amd/amdgpu/vce_v3_0.c       |  2 +-
 drivers/gpu/drm/amd/amdgpu/vce_v4_0.c       |  2 +-
 drivers/gpu/drm/amd/amdgpu/vi.c             |  2 +-
 50 files changed, 168 insertions(+), 168 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c
index a52795d..c59b701 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_acp.c
@@ -245,7 +245,7 @@ static struct device *get_mfd_cell_dev(const char *device_name, int r)
 	snprintf(auto_dev_name, sizeof(auto_dev_name),
 		 "%s.%d.auto", device_name, r);
 	dev = bus_find_device_by_name(&platform_bus_type, NULL, auto_dev_name);
-	dev_info(dev, "device %s added to pm domain\n", auto_dev_name);
+	DRM_DEV_INFO(dev, "device %s added to pm domain\n", auto_dev_name);
 
 	return dev;
 }
@@ -394,7 +394,7 @@ static int acp_hw_init(void *handle)
 			dev = get_mfd_cell_dev(adev->acp.acp_cell[i].name, i);
 			r = pm_genpd_add_device(&adev->acp.acp_genpd->gpd, dev);
 			if (r) {
-				dev_err(dev, "Failed to add dev to genpd\n");
+				DRM_DEV_ERROR(dev, "Failed to add dev to genpd\n");
 				return r;
 			}
 		}
@@ -425,7 +425,7 @@ static int acp_hw_fini(void *handle)
 			ret = pm_genpd_remove_device(&adev->acp.acp_genpd->gpd, dev);
 			/* If removal fails, dont giveup and try rest */
 			if (ret)
-				dev_err(dev, "remove dev from genpd failed\n");
+				DRM_DEV_ERROR(dev, "remove dev from genpd failed\n");
 		}
 		kfree(adev->acp.acp_genpd);
 	}
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c
index 5432af3..ad1a19f2 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c
@@ -85,7 +85,7 @@ void amdgpu_amdkfd_device_probe(struct amdgpu_device *adev)
 		kfd2kgd = amdgpu_amdkfd_gfx_8_0_get_functions();
 		break;
 	default:
-		dev_info(adev->dev, "kfd not supported on this ASIC\n");
+		DRM_DEV_INFO(adev->dev, "kfd not supported on this ASIC\n");
 		return;
 	}
 
@@ -186,7 +186,7 @@ int alloc_gtt_mem(struct kgd_dev *kgd, size_t size,
 			     AMDGPU_GEM_CREATE_CPU_GTT_USWC, NULL, NULL, 0,
 			     &(*mem)->bo);
 	if (r) {
-		dev_err(adev->dev,
+		DRM_DEV_ERROR(adev->dev,
 			"failed to allocate BO for amdkfd (%d)\n", r);
 		return r;
 	}
@@ -194,21 +194,21 @@ int alloc_gtt_mem(struct kgd_dev *kgd, size_t size,
 	/* map the buffer */
 	r = amdgpu_bo_reserve((*mem)->bo, true);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to reserve bo for amdkfd\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to reserve bo for amdkfd\n", r);
 		goto allocate_mem_reserve_bo_failed;
 	}
 
 	r = amdgpu_bo_pin((*mem)->bo, AMDGPU_GEM_DOMAIN_GTT,
 				&(*mem)->gpu_addr);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to pin bo for amdkfd\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to pin bo for amdkfd\n", r);
 		goto allocate_mem_pin_bo_failed;
 	}
 	*gpu_addr = (*mem)->gpu_addr;
 
 	r = amdgpu_bo_kmap((*mem)->bo, &(*mem)->cpu_ptr);
 	if (r) {
-		dev_err(adev->dev,
+		DRM_DEV_ERROR(adev->dev,
 			"(%d) failed to map bo to kernel for amdkfd\n", r);
 		goto allocate_mem_kmap_bo_failed;
 	}
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
index e630d91..dbc7958 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
@@ -605,7 +605,7 @@ void amdgpu_vram_location(struct amdgpu_device *adev, struct amdgpu_mc *mc, u64
 	mc->vram_end = mc->vram_start + mc->mc_vram_size - 1;
 	if (limit && limit < mc->real_vram_size)
 		mc->real_vram_size = limit;
-	dev_info(adev->dev, "VRAM: %lluM 0x%016llX - 0x%016llX (%lluM used)\n",
+	DRM_DEV_INFO(adev->dev, "VRAM: %lluM 0x%016llX - 0x%016llX (%lluM used)\n",
 			mc->mc_vram_size >> 20, mc->vram_start,
 			mc->vram_end, mc->real_vram_size >> 20);
 }
@@ -642,7 +642,7 @@ void amdgpu_gart_location(struct amdgpu_device *adev, struct amdgpu_mc *mc)
 		mc->gart_start = mc->vram_end + 1;
 	}
 	mc->gart_end = mc->gart_start + mc->gart_size - 1;
-	dev_info(adev->dev, "GTT: %lluM 0x%016llX - 0x%016llX\n",
+	DRM_DEV_INFO(adev->dev, "GTT: %lluM 0x%016llX - 0x%016llX\n",
 			mc->gart_size >> 20, mc->gart_start, mc->gart_end);
 }
 
@@ -728,7 +728,7 @@ int amdgpu_dummy_page_init(struct amdgpu_device *adev)
 	adev->dummy_page.addr = pci_map_page(adev->pdev, adev->dummy_page.page,
 					0, PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
 	if (pci_dma_mapping_error(adev->pdev, adev->dummy_page.addr)) {
-		dev_err(&adev->pdev->dev, "Failed to DMA MAP the dummy page\n");
+		DRM_DEV_ERROR(&adev->pdev->dev, "Failed to DMA MAP the dummy page\n");
 		__free_page(adev->dummy_page.page);
 		adev->dummy_page.page = NULL;
 		return -ENOMEM;
@@ -1396,14 +1396,14 @@ static int amdgpu_device_parse_gpu_info_fw(struct amdgpu_device *adev)
 	snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_gpu_info.bin", chip_name);
 	err = request_firmware(&adev->firmware.gpu_info_fw, fw_name, adev->dev);
 	if (err) {
-		dev_err(adev->dev,
+		DRM_DEV_ERROR(adev->dev,
 			"Failed to load gpu_info firmware \"%s\"\n",
 			fw_name);
 		goto out;
 	}
 	err = amdgpu_ucode_validate(adev->firmware.gpu_info_fw);
 	if (err) {
-		dev_err(adev->dev,
+		DRM_DEV_ERROR(adev->dev,
 			"Failed to validate gpu_info firmware \"%s\"\n",
 			fw_name);
 		goto out;
@@ -1440,7 +1440,7 @@ static int amdgpu_device_parse_gpu_info_fw(struct amdgpu_device *adev)
 		break;
 	}
 	default:
-		dev_err(adev->dev,
+		DRM_DEV_ERROR(adev->dev,
 			"Unsupported gpu_info table %d\n", hdr->header.ucode_version);
 		err = -EINVAL;
 		goto out;
@@ -2094,7 +2094,7 @@ int amdgpu_device_init(struct amdgpu_device *adev,
 
 	r = amdgpu_atombios_init(adev);
 	if (r) {
-		dev_err(adev->dev, "amdgpu_atombios_init failed\n");
+		DRM_DEV_ERROR(adev->dev, "amdgpu_atombios_init failed\n");
 		amdgpu_vf_error_put(AMDGIM_ERROR_VF_ATOMBIOS_INIT_FAIL, 0, 0);
 		goto failed;
 	}
@@ -2105,7 +2105,7 @@ int amdgpu_device_init(struct amdgpu_device *adev,
 	/* Post card if necessary */
 	if (amdgpu_vpost_needed(adev)) {
 		if (!adev->bios) {
-			dev_err(adev->dev, "no vBIOS found\n");
+			DRM_DEV_ERROR(adev->dev, "no vBIOS found\n");
 			amdgpu_vf_error_put(AMDGIM_ERROR_VF_NO_VBIOS, 0, 0);
 			r = -EINVAL;
 			goto failed;
@@ -2113,7 +2113,7 @@ int amdgpu_device_init(struct amdgpu_device *adev,
 		DRM_INFO("GPU posting now...\n");
 		r = amdgpu_atom_asic_init(adev->mode_info.atom_context);
 		if (r) {
-			dev_err(adev->dev, "gpu post error!\n");
+			DRM_DEV_ERROR(adev->dev, "gpu post error!\n");
 			amdgpu_vf_error_put(AMDGIM_ERROR_VF_GPU_POST_ERROR, 0, 0);
 			goto failed;
 		}
@@ -2125,7 +2125,7 @@ int amdgpu_device_init(struct amdgpu_device *adev,
 		/* Initialize clocks */
 		r = amdgpu_atomfirmware_get_clock_info(adev);
 		if (r) {
-			dev_err(adev->dev, "amdgpu_atomfirmware_get_clock_info failed\n");
+			DRM_DEV_ERROR(adev->dev, "amdgpu_atomfirmware_get_clock_info failed\n");
 			amdgpu_vf_error_put(AMDGIM_ERROR_VF_ATOMBIOS_GET_CLOCK_FAIL, 0, 0);
 			goto failed;
 		}
@@ -2133,7 +2133,7 @@ int amdgpu_device_init(struct amdgpu_device *adev,
 		/* Initialize clocks */
 		r = amdgpu_atombios_get_clock_info(adev);
 		if (r) {
-			dev_err(adev->dev, "amdgpu_atombios_get_clock_info failed\n");
+			DRM_DEV_ERROR(adev->dev, "amdgpu_atombios_get_clock_info failed\n");
 			amdgpu_vf_error_put(AMDGIM_ERROR_VF_ATOMBIOS_GET_CLOCK_FAIL, 0, 0);
 			goto failed;
 		}
@@ -2144,7 +2144,7 @@ int amdgpu_device_init(struct amdgpu_device *adev,
 	/* Fence driver */
 	r = amdgpu_fence_driver_init(adev);
 	if (r) {
-		dev_err(adev->dev, "amdgpu_fence_driver_init failed\n");
+		DRM_DEV_ERROR(adev->dev, "amdgpu_fence_driver_init failed\n");
 		amdgpu_vf_error_put(AMDGIM_ERROR_VF_FENCE_INIT_FAIL, 0, 0);
 		goto failed;
 	}
@@ -2154,7 +2154,7 @@ int amdgpu_device_init(struct amdgpu_device *adev,
 
 	r = amdgpu_init(adev);
 	if (r) {
-		dev_err(adev->dev, "amdgpu_init failed\n");
+		DRM_DEV_ERROR(adev->dev, "amdgpu_init failed\n");
 		amdgpu_vf_error_put(AMDGIM_ERROR_VF_AMDGPU_INIT_FAIL, 0, 0);
 		amdgpu_fini(adev);
 		goto failed;
@@ -2174,7 +2174,7 @@ int amdgpu_device_init(struct amdgpu_device *adev,
 
 	r = amdgpu_ib_pool_init(adev);
 	if (r) {
-		dev_err(adev->dev, "IB initialization failed (%d).\n", r);
+		DRM_DEV_ERROR(adev->dev, "IB initialization failed (%d).\n", r);
 		amdgpu_vf_error_put(AMDGIM_ERROR_VF_IB_INIT_FAIL, 0, r);
 		goto failed;
 	}
@@ -2219,7 +2219,7 @@ int amdgpu_device_init(struct amdgpu_device *adev,
 	 */
 	r = amdgpu_late_init(adev);
 	if (r) {
-		dev_err(adev->dev, "amdgpu_late_init failed\n");
+		DRM_DEV_ERROR(adev->dev, "amdgpu_late_init failed\n");
 		amdgpu_vf_error_put(AMDGIM_ERROR_VF_AMDGPU_LATE_INIT_FAIL, 0, r);
 		goto failed;
 	}
@@ -2709,7 +2709,7 @@ int amdgpu_sriov_gpu_reset(struct amdgpu_device *adev, struct amdgpu_job *job)
 	amdgpu_irq_gpu_reset_resume_helper(adev);
 
 	if (amdgpu_ib_ring_tests(adev))
-		dev_err(adev->dev, "[GPU_RESET] ib ring test failed (%d).\n", r);
+		DRM_DEV_ERROR(adev->dev, "[GPU_RESET] ib ring test failed (%d).\n", r);
 
 	/* release full control of GPU after ib test */
 	amdgpu_virt_release_full_gpu(adev, true);
@@ -2760,9 +2760,9 @@ int amdgpu_sriov_gpu_reset(struct amdgpu_device *adev, struct amdgpu_job *job)
 	ttm_bo_unlock_delayed_workqueue(&adev->mman.bdev, resched);
 	if (r) {
 		/* bad news, how to tell it to userspace ? */
-		dev_info(adev->dev, "GPU reset failed\n");
+		DRM_DEV_INFO(adev->dev, "GPU reset failed\n");
 	} else {
-		dev_info(adev->dev, "GPU reset successed!\n");
+		DRM_DEV_INFO(adev->dev, "GPU reset successed!\n");
 	}
 
 	adev->gfx.in_reset = false;
@@ -2829,7 +2829,7 @@ int amdgpu_gpu_reset(struct amdgpu_device *adev)
 		amdgpu_atom_asic_init(adev->mode_info.atom_context);
 
 		if (!r) {
-			dev_info(adev->dev, "GPU reset succeeded, trying to resume\n");
+			DRM_DEV_INFO(adev->dev, "GPU reset succeeded, trying to resume\n");
 			r = amdgpu_resume_phase1(adev);
 			if (r)
 				goto out;
@@ -2853,7 +2853,7 @@ int amdgpu_gpu_reset(struct amdgpu_device *adev)
 		amdgpu_irq_gpu_reset_resume_helper(adev);
 		r = amdgpu_ib_ring_tests(adev);
 		if (r) {
-			dev_err(adev->dev, "ib ring test failed (%d).\n", r);
+			DRM_DEV_ERROR(adev->dev, "ib ring test failed (%d).\n", r);
 			r = amdgpu_suspend(adev);
 			need_full_reset = true;
 			goto retry;
@@ -2901,7 +2901,7 @@ int amdgpu_gpu_reset(struct amdgpu_device *adev)
 			kthread_unpark(ring->sched.thread);
 		}
 	} else {
-		dev_err(adev->dev, "asic resume failed (%d).\n", r);
+		DRM_DEV_ERROR(adev->dev, "asic resume failed (%d).\n", r);
 		amdgpu_vf_error_put(AMDGIM_ERROR_VF_ASIC_RESUME_FAIL, 0, r);
 		for (i = 0; i < AMDGPU_MAX_RINGS; ++i) {
 			if (adev->rings[i] && adev->rings[i]->sched.thread) {
@@ -2915,11 +2915,11 @@ int amdgpu_gpu_reset(struct amdgpu_device *adev)
 	ttm_bo_unlock_delayed_workqueue(&adev->mman.bdev, resched);
 	if (r) {
 		/* bad news, how to tell it to userspace ? */
-		dev_info(adev->dev, "GPU reset failed\n");
+		DRM_DEV_INFO(adev->dev, "GPU reset failed\n");
 		amdgpu_vf_error_put(AMDGIM_ERROR_VF_GPU_RESET_FAIL, 0, r);
 	}
 	else {
-		dev_info(adev->dev, "GPU reset successed!\n");
+		DRM_DEV_INFO(adev->dev, "GPU reset successed!\n");
 	}
 
 	amdgpu_vf_error_trans_all(adev);
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c
index 6ad2432..dec1a78 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c
@@ -529,7 +529,7 @@ amdgpu_user_framebuffer_create(struct drm_device *dev,
 
 	obj = drm_gem_object_lookup(file_priv, mode_cmd->handles[0]);
 	if (obj ==  NULL) {
-		dev_err(&dev->pdev->dev, "No GEM object associated to handle 0x%08X, "
+		DRM_DEV_ERROR(&dev->pdev->dev, "No GEM object associated to handle 0x%08X, "
 			"can't create framebuffer\n", mode_cmd->handles[0]);
 		return ERR_PTR(-ENOENT);
 	}
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_fb.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_fb.c
index 9afa9c0..7ec3ff8 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_fb.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_fb.c
@@ -167,7 +167,7 @@ static int amdgpufb_create_pinned_object(struct amdgpu_fbdev *rfbdev,
 		ret = amdgpu_bo_set_tiling_flags(abo,
 						 tiling_flags);
 		if (ret)
-			dev_err(adev->dev, "FB failed to set tiling flags\n");
+			DRM_DEV_ERROR(adev->dev, "FB failed to set tiling flags\n");
 	}
 
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c
index 333bad7..e926962 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c
@@ -340,7 +340,7 @@ int amdgpu_fence_driver_start_ring(struct amdgpu_ring *ring,
 	ring->fence_drv.irq_type = irq_type;
 	ring->fence_drv.initialized = true;
 
-	dev_info(adev->dev, "fence driver on ring %d use gpu addr 0x%016llx, "
+	DRM_DEV_INFO(adev->dev, "fence driver on ring %d use gpu addr 0x%016llx, "
 		 "cpu addr 0x%p\n", ring->idx,
 		 ring->fence_drv.gpu_addr, ring->fence_drv.cpu_addr);
 	return 0;
@@ -423,7 +423,7 @@ int amdgpu_fence_driver_init_ring(struct amdgpu_ring *ring,
 int amdgpu_fence_driver_init(struct amdgpu_device *adev)
 {
 	if (amdgpu_debugfs_fence_init(adev))
-		dev_err(adev->dev, "fence debugfs file creation failed\n");
+		DRM_DEV_ERROR(adev->dev, "fence debugfs file creation failed\n");
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
index 7171968..9e8682e 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
@@ -181,7 +181,7 @@ void amdgpu_gem_object_close(struct drm_gem_object *obj,
 
 	r = ttm_eu_reserve_buffers(&ticket, &list, false, NULL);
 	if (r) {
-		dev_err(adev->dev, "leaking bo va because "
+		DRM_DEV_ERROR(adev->dev, "leaking bo va because "
 			"we fail to reserve bo (%d)\n", r);
 		return;
 	}
@@ -194,7 +194,7 @@ void amdgpu_gem_object_close(struct drm_gem_object *obj,
 
 			r = amdgpu_vm_clear_freed(adev, vm, &fence);
 			if (unlikely(r)) {
-				dev_err(adev->dev, "failed to clear page "
+				DRM_DEV_ERROR(adev->dev, "failed to clear page "
 					"tables on GEM object close (%d)\n", r);
 			}
 
@@ -556,7 +556,7 @@ int amdgpu_gem_va_ioctl(struct drm_device *dev, void *data,
 	int r = 0;
 
 	if (args->va_address < AMDGPU_VA_RESERVED_SIZE) {
-		dev_err(&dev->pdev->dev,
+		DRM_DEV_ERROR(&dev->pdev->dev,
 			"va_address 0x%lX is in reserved area 0x%X\n",
 			(unsigned long)args->va_address,
 			AMDGPU_VA_RESERVED_SIZE);
@@ -564,7 +564,7 @@ int amdgpu_gem_va_ioctl(struct drm_device *dev, void *data,
 	}
 
 	if ((args->flags & ~valid_flags) && (args->flags & ~prt_flags)) {
-		dev_err(&dev->pdev->dev, "invalid flags combination 0x%08X\n",
+		DRM_DEV_ERROR(&dev->pdev->dev, "invalid flags combination 0x%08X\n",
 			args->flags);
 		return -EINVAL;
 	}
@@ -576,7 +576,7 @@ int amdgpu_gem_va_ioctl(struct drm_device *dev, void *data,
 	case AMDGPU_VA_OP_REPLACE:
 		break;
 	default:
-		dev_err(&dev->pdev->dev, "unsupported operation %d\n",
+		DRM_DEV_ERROR(&dev->pdev->dev, "unsupported operation %d\n",
 			args->operation);
 		return -EINVAL;
 	}
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c
index 4f6c68f..9d2f793 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c
@@ -174,7 +174,7 @@ static int amdgpu_gfx_kiq_acquire(struct amdgpu_device *adev,
 		return 0;
 	}
 
-	dev_err(adev->dev, "Failed to find a queue for KIQ\n");
+	DRM_DEV_ERROR(adev->dev, "Failed to find a queue for KIQ\n");
 	return -EINVAL;
 }
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c
index 659997b..d8a06a1 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c
@@ -66,7 +66,7 @@ int amdgpu_ib_get(struct amdgpu_device *adev, struct amdgpu_vm *vm,
 		r = amdgpu_sa_bo_new(&adev->ring_tmp_bo,
 				      &ib->sa_bo, size, 256);
 		if (r) {
-			dev_err(adev->dev, "failed to get a new IB (%d)\n", r);
+			DRM_DEV_ERROR(adev->dev, "failed to get a new IB (%d)\n", r);
 			return r;
 		}
 
@@ -145,12 +145,12 @@ int amdgpu_ib_schedule(struct amdgpu_ring *ring, unsigned num_ibs,
 	}
 
 	if (!ring->ready) {
-		dev_err(adev->dev, "couldn't schedule ib on ring <%s>\n", ring->name);
+		DRM_DEV_ERROR(adev->dev, "couldn't schedule ib on ring <%s>\n", ring->name);
 		return -EINVAL;
 	}
 
 	if (vm && !job->vm_id) {
-		dev_err(adev->dev, "VM IB without ID\n");
+		DRM_DEV_ERROR(adev->dev, "VM IB without ID\n");
 		return -EINVAL;
 	}
 
@@ -159,7 +159,7 @@ int amdgpu_ib_schedule(struct amdgpu_ring *ring, unsigned num_ibs,
 
 	r = amdgpu_ring_alloc(ring, alloc_size);
 	if (r) {
-		dev_err(adev->dev, "scheduling IB failed (%d).\n", r);
+		DRM_DEV_ERROR(adev->dev, "scheduling IB failed (%d).\n", r);
 		return r;
 	}
 
@@ -228,7 +228,7 @@ int amdgpu_ib_schedule(struct amdgpu_ring *ring, unsigned num_ibs,
 
 	r = amdgpu_fence_emit(ring, f);
 	if (r) {
-		dev_err(adev->dev, "failed to emit fence (%d)\n", r);
+		DRM_DEV_ERROR(adev->dev, "failed to emit fence (%d)\n", r);
 		if (job && job->vm_id)
 			amdgpu_vm_reset_id(adev, ring->funcs->vmhub,
 					   job->vm_id);
@@ -286,7 +286,7 @@ int amdgpu_ib_pool_init(struct amdgpu_device *adev)
 
 	adev->ib_pool_ready = true;
 	if (amdgpu_debugfs_sa_init(adev)) {
-		dev_err(adev->dev, "failed to register debugfs file for SA\n");
+		DRM_DEV_ERROR(adev->dev, "failed to register debugfs file for SA\n");
 	}
 	return 0;
 }
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ih.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ih.c
index 3ab4c65..134c09b 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ih.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ih.c
@@ -94,14 +94,14 @@ int amdgpu_ih_ring_init(struct amdgpu_device *adev, unsigned ring_size,
 	} else {
 		r = amdgpu_wb_get(adev, &adev->irq.ih.wptr_offs);
 		if (r) {
-			dev_err(adev->dev, "(%d) ih wptr_offs wb alloc failed\n", r);
+			DRM_DEV_ERROR(adev->dev, "(%d) ih wptr_offs wb alloc failed\n", r);
 			return r;
 		}
 
 		r = amdgpu_wb_get(adev, &adev->irq.ih.rptr_offs);
 		if (r) {
 			amdgpu_wb_free(adev, adev->irq.ih.wptr_offs);
-			dev_err(adev->dev, "(%d) ih rptr_offs wb alloc failed\n", r);
+			DRM_DEV_ERROR(adev->dev, "(%d) ih rptr_offs wb alloc failed\n", r);
 			return r;
 		}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c
index 538e5f2..9cbd4bb 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c
@@ -237,7 +237,7 @@ int amdgpu_irq_init(struct amdgpu_device *adev)
 		int ret = pci_enable_msi(adev->pdev);
 		if (!ret) {
 			adev->irq.msi_enabled = true;
-			dev_info(adev->dev, "amdgpu: using MSI.\n");
+			DRM_DEV_INFO(adev->dev, "amdgpu: using MSI.\n");
 		}
 	}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c
index e162290..5e2f59a 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c
@@ -95,9 +95,9 @@ int amdgpu_driver_load_kms(struct drm_device *dev, unsigned long flags)
 		case CHIP_VERDE:
 		case CHIP_OLAND:
 		case CHIP_HAINAN:
-			dev_info(dev->dev,
+			DRM_DEV_INFO(dev->dev,
 				 "SI support provided by radeon.\n");
-			dev_info(dev->dev,
+			DRM_DEV_INFO(dev->dev,
 				 "Use radeon.si_support=0 amdgpu.si_support=1 to override.\n"
 				);
 			return -ENODEV;
@@ -112,9 +112,9 @@ int amdgpu_driver_load_kms(struct drm_device *dev, unsigned long flags)
 		case CHIP_HAWAII:
 		case CHIP_KABINI:
 		case CHIP_MULLINS:
-			dev_info(dev->dev,
+			DRM_DEV_INFO(dev->dev,
 				 "CIK support provided by radeon.\n");
-			dev_info(dev->dev,
+			DRM_DEV_INFO(dev->dev,
 				 "Use radeon.cik_support=0 amdgpu.cik_support=1 to override.\n"
 				);
 			return -ENODEV;
@@ -144,7 +144,7 @@ int amdgpu_driver_load_kms(struct drm_device *dev, unsigned long flags)
 	 */
 	r = amdgpu_device_init(adev, dev, dev->pdev, flags);
 	if (r) {
-		dev_err(&dev->pdev->dev, "Fatal error during GPU init\n");
+		DRM_DEV_ERROR(&dev->pdev->dev, "Fatal error during GPU init\n");
 		goto out;
 	}
 
@@ -154,7 +154,7 @@ int amdgpu_driver_load_kms(struct drm_device *dev, unsigned long flags)
 	if (!r) {
 		acpi_status = amdgpu_acpi_init(adev);
 		if (acpi_status)
-		dev_dbg(&dev->pdev->dev,
+		DRM_DEV_DEBUG(&dev->pdev->dev,
 				"Error during ACPI methods call\n");
 	}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
index 9e495da..1ea977f 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
@@ -202,7 +202,7 @@ int amdgpu_bo_create_reserved(struct amdgpu_device *adev,
 				     AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS,
 				     NULL, NULL, 0, bo_ptr);
 		if (r) {
-			dev_err(adev->dev, "(%d) failed to allocate kernel bo\n",
+			DRM_DEV_ERROR(adev->dev, "(%d) failed to allocate kernel bo\n",
 				r);
 			return r;
 		}
@@ -211,20 +211,20 @@ int amdgpu_bo_create_reserved(struct amdgpu_device *adev,
 
 	r = amdgpu_bo_reserve(*bo_ptr, false);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to reserve kernel bo\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to reserve kernel bo\n", r);
 		goto error_free;
 	}
 
 	r = amdgpu_bo_pin(*bo_ptr, domain, gpu_addr);
 	if (r) {
-		dev_err(adev->dev, "(%d) kernel bo pin failed\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) kernel bo pin failed\n", r);
 		goto error_unreserve;
 	}
 
 	if (cpu_addr) {
 		r = amdgpu_bo_kmap(*bo_ptr, cpu_addr);
 		if (r) {
-			dev_err(adev->dev, "(%d) kernel bo map failed\n", r);
+			DRM_DEV_ERROR(adev->dev, "(%d) kernel bo map failed\n", r);
 			goto error_unreserve;
 		}
 	}
@@ -730,7 +730,7 @@ int amdgpu_bo_pin_restricted(struct amdgpu_bo *bo, u32 domain,
 
 	r = ttm_bo_validate(&bo->tbo, &bo->placement, false, false);
 	if (unlikely(r)) {
-		dev_err(adev->dev, "%p pin failed\n", bo);
+		DRM_DEV_ERROR(adev->dev, "%p pin failed\n", bo);
 		goto error;
 	}
 
@@ -738,7 +738,7 @@ int amdgpu_bo_pin_restricted(struct amdgpu_bo *bo, u32 domain,
 	if (gpu_addr != NULL) {
 		r = amdgpu_ttm_bind(&bo->tbo, &bo->tbo.mem);
 		if (unlikely(r)) {
-			dev_err(adev->dev, "%p bind failed\n", bo);
+			DRM_DEV_ERROR(adev->dev, "%p bind failed\n", bo);
 			goto error;
 		}
 		*gpu_addr = amdgpu_bo_gpu_offset(bo);
@@ -778,7 +778,7 @@ int amdgpu_bo_unpin(struct amdgpu_bo *bo)
 	}
 	r = ttm_bo_validate(&bo->tbo, &bo->placement, false, false);
 	if (unlikely(r)) {
-		dev_err(adev->dev, "%p validate failed for unpin\n", bo);
+		DRM_DEV_ERROR(adev->dev, "%p validate failed for unpin\n", bo);
 		goto error;
 	}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_pm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_pm.c
index 7df503a..dfb6254 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_pm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_pm.c
@@ -1363,7 +1363,7 @@ int amdgpu_pm_sysfs_init(struct amdgpu_device *adev)
 								   hwmon_groups);
 	if (IS_ERR(adev->pm.int_hwmon_dev)) {
 		ret = PTR_ERR(adev->pm.int_hwmon_dev);
-		dev_err(adev->dev,
+		DRM_DEV_ERROR(adev->dev,
 			"Unable to register hwmon device: %d\n", ret);
 		return ret;
 	}
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c
index 5ce6528..2d5b2e9 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c
@@ -195,25 +195,25 @@ int amdgpu_ring_init(struct amdgpu_device *adev, struct amdgpu_ring *ring,
 
 	r = amdgpu_wb_get(adev, &ring->rptr_offs);
 	if (r) {
-		dev_err(adev->dev, "(%d) ring rptr_offs wb alloc failed\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) ring rptr_offs wb alloc failed\n", r);
 		return r;
 	}
 
 	r = amdgpu_wb_get(adev, &ring->wptr_offs);
 	if (r) {
-		dev_err(adev->dev, "(%d) ring wptr_offs wb alloc failed\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) ring wptr_offs wb alloc failed\n", r);
 		return r;
 	}
 
 	r = amdgpu_wb_get(adev, &ring->fence_offs);
 	if (r) {
-		dev_err(adev->dev, "(%d) ring fence_offs wb alloc failed\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) ring fence_offs wb alloc failed\n", r);
 		return r;
 	}
 
 	r = amdgpu_wb_get(adev, &ring->cond_exe_offs);
 	if (r) {
-		dev_err(adev->dev, "(%d) ring cond_exec_polling wb alloc failed\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) ring cond_exec_polling wb alloc failed\n", r);
 		return r;
 	}
 	ring->cond_exe_gpu_addr = adev->wb.gpu_addr + (ring->cond_exe_offs * 4);
@@ -223,7 +223,7 @@ int amdgpu_ring_init(struct amdgpu_device *adev, struct amdgpu_ring *ring,
 
 	r = amdgpu_fence_driver_start_ring(ring, irq_src, irq_type);
 	if (r) {
-		dev_err(adev->dev, "failed initializing fences (%d).\n", r);
+		DRM_DEV_ERROR(adev->dev, "failed initializing fences (%d).\n", r);
 		return r;
 	}
 
@@ -240,7 +240,7 @@ int amdgpu_ring_init(struct amdgpu_device *adev, struct amdgpu_ring *ring,
 					    &ring->gpu_addr,
 					    (void **)&ring->ring);
 		if (r) {
-			dev_err(adev->dev, "(%d) ring create failed\n", r);
+			DRM_DEV_ERROR(adev->dev, "(%d) ring create failed\n", r);
 			return r;
 		}
 		amdgpu_ring_clear_ring(ring);
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c
index 3144400..66f5b98 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c
@@ -66,7 +66,7 @@ int amdgpu_sa_bo_manager_init(struct amdgpu_device *adev,
 	r = amdgpu_bo_create(adev, size, align, true, domain,
 			     0, NULL, NULL, 0, &sa_manager->bo);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to allocate bo for manager\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to allocate bo for manager\n", r);
 		return r;
 	}
 
@@ -82,7 +82,7 @@ void amdgpu_sa_bo_manager_fini(struct amdgpu_device *adev,
 		sa_manager->hole = &sa_manager->olist,
 		amdgpu_sa_bo_try_free(sa_manager);
 		if (!list_empty(&sa_manager->olist)) {
-			dev_err(adev->dev, "sa_manager is not empty, clearing anyway\n");
+			DRM_DEV_ERROR(adev->dev, "sa_manager is not empty, clearing anyway\n");
 		}
 	}
 	list_for_each_entry_safe(sa_bo, tmp, &sa_manager->olist, olist) {
@@ -98,20 +98,20 @@ int amdgpu_sa_bo_manager_start(struct amdgpu_device *adev,
 	int r;
 
 	if (sa_manager->bo == NULL) {
-		dev_err(adev->dev, "no bo for sa manager\n");
+		DRM_DEV_ERROR(adev->dev, "no bo for sa manager\n");
 		return -EINVAL;
 	}
 
 	/* map the buffer */
 	r = amdgpu_bo_reserve(sa_manager->bo, false);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to reserve manager bo\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to reserve manager bo\n", r);
 		return r;
 	}
 	r = amdgpu_bo_pin(sa_manager->bo, sa_manager->domain, &sa_manager->gpu_addr);
 	if (r) {
 		amdgpu_bo_unreserve(sa_manager->bo);
-		dev_err(adev->dev, "(%d) failed to pin manager bo\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to pin manager bo\n", r);
 		return r;
 	}
 	r = amdgpu_bo_kmap(sa_manager->bo, &sa_manager->cpu_ptr);
@@ -126,7 +126,7 @@ int amdgpu_sa_bo_manager_suspend(struct amdgpu_device *adev,
 	int r;
 
 	if (sa_manager->bo == NULL) {
-		dev_err(adev->dev, "no bo for sa manager\n");
+		DRM_DEV_ERROR(adev->dev, "no bo for sa manager\n");
 		return -EINVAL;
 	}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c
index 36c7633..15b9466 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c
@@ -381,26 +381,26 @@ int amdgpu_ucode_init_bo(struct amdgpu_device *adev)
 				AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS,
 				NULL, NULL, 0, bo);
 	if (err) {
-		dev_err(adev->dev, "(%d) Firmware buffer allocate failed\n", err);
+		DRM_DEV_ERROR(adev->dev, "(%d) Firmware buffer allocate failed\n", err);
 		goto failed;
 	}
 
 	err = amdgpu_bo_reserve(*bo, false);
 	if (err) {
-		dev_err(adev->dev, "(%d) Firmware buffer reserve failed\n", err);
+		DRM_DEV_ERROR(adev->dev, "(%d) Firmware buffer reserve failed\n", err);
 		goto failed_reserve;
 	}
 
 	err = amdgpu_bo_pin(*bo, amdgpu_sriov_vf(adev) ? AMDGPU_GEM_DOMAIN_VRAM : AMDGPU_GEM_DOMAIN_GTT,
 				&fw_mc_addr);
 	if (err) {
-		dev_err(adev->dev, "(%d) Firmware buffer pin failed\n", err);
+		DRM_DEV_ERROR(adev->dev, "(%d) Firmware buffer pin failed\n", err);
 		goto failed_pin;
 	}
 
 	err = amdgpu_bo_kmap(*bo, &fw_buf_ptr);
 	if (err) {
-		dev_err(adev->dev, "(%d) Firmware buffer kmap failed\n", err);
+		DRM_DEV_ERROR(adev->dev, "(%d) Firmware buffer kmap failed\n", err);
 		goto failed_kmap;
 	}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
index e19928d..c8ccee6 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
@@ -173,14 +173,14 @@ int amdgpu_uvd_sw_init(struct amdgpu_device *adev)
 
 	r = request_firmware(&adev->uvd.fw, fw_name, adev->dev);
 	if (r) {
-		dev_err(adev->dev, "amdgpu_uvd: Can't load firmware \"%s\"\n",
+		DRM_DEV_ERROR(adev->dev, "amdgpu_uvd: Can't load firmware \"%s\"\n",
 			fw_name);
 		return r;
 	}
 
 	r = amdgpu_ucode_validate(adev->uvd.fw);
 	if (r) {
-		dev_err(adev->dev, "amdgpu_uvd: Can't validate firmware \"%s\"\n",
+		DRM_DEV_ERROR(adev->dev, "amdgpu_uvd: Can't validate firmware \"%s\"\n",
 			fw_name);
 		release_firmware(adev->uvd.fw);
 		adev->uvd.fw = NULL;
@@ -225,7 +225,7 @@ int amdgpu_uvd_sw_init(struct amdgpu_device *adev)
 				    AMDGPU_GEM_DOMAIN_VRAM, &adev->uvd.vcpu_bo,
 				    &adev->uvd.gpu_addr, &adev->uvd.cpu_addr);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to allocate UVD bo\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to allocate UVD bo\n", r);
 		return r;
 	}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c
index c855366..ea5c6e1 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c
@@ -140,14 +140,14 @@ int amdgpu_vce_sw_init(struct amdgpu_device *adev, unsigned long size)
 
 	r = request_firmware(&adev->vce.fw, fw_name, adev->dev);
 	if (r) {
-		dev_err(adev->dev, "amdgpu_vce: Can't load firmware \"%s\"\n",
+		DRM_DEV_ERROR(adev->dev, "amdgpu_vce: Can't load firmware \"%s\"\n",
 			fw_name);
 		return r;
 	}
 
 	r = amdgpu_ucode_validate(adev->vce.fw);
 	if (r) {
-		dev_err(adev->dev, "amdgpu_vce: Can't validate firmware \"%s\"\n",
+		DRM_DEV_ERROR(adev->dev, "amdgpu_vce: Can't validate firmware \"%s\"\n",
 			fw_name);
 		release_firmware(adev->vce.fw);
 		adev->vce.fw = NULL;
@@ -169,7 +169,7 @@ int amdgpu_vce_sw_init(struct amdgpu_device *adev, unsigned long size)
 				    AMDGPU_GEM_DOMAIN_VRAM, &adev->vce.vcpu_bo,
 				    &adev->vce.gpu_addr, &adev->vce.cpu_addr);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to allocate VCE bo\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to allocate VCE bo\n", r);
 		return r;
 	}
 
@@ -264,14 +264,14 @@ int amdgpu_vce_resume(struct amdgpu_device *adev)
 
 	r = amdgpu_bo_reserve(adev->vce.vcpu_bo, false);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to reserve VCE bo\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to reserve VCE bo\n", r);
 		return r;
 	}
 
 	r = amdgpu_bo_kmap(adev->vce.vcpu_bo, &cpu_addr);
 	if (r) {
 		amdgpu_bo_unreserve(adev->vce.vcpu_bo);
-		dev_err(adev->dev, "(%d) VCE map failed\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) VCE map failed\n", r);
 		return r;
 	}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c
index 041e012..c1f05e3 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c
@@ -70,14 +70,14 @@ int amdgpu_vcn_sw_init(struct amdgpu_device *adev)
 
 	r = request_firmware(&adev->vcn.fw, fw_name, adev->dev);
 	if (r) {
-		dev_err(adev->dev, "amdgpu_vcn: Can't load firmware \"%s\"\n",
+		DRM_DEV_ERROR(adev->dev, "amdgpu_vcn: Can't load firmware \"%s\"\n",
 			fw_name);
 		return r;
 	}
 
 	r = amdgpu_ucode_validate(adev->vcn.fw);
 	if (r) {
-		dev_err(adev->dev, "amdgpu_vcn: Can't validate firmware \"%s\"\n",
+		DRM_DEV_ERROR(adev->dev, "amdgpu_vcn: Can't validate firmware \"%s\"\n",
 			fw_name);
 		release_firmware(adev->vcn.fw);
 		adev->vcn.fw = NULL;
@@ -99,7 +99,7 @@ int amdgpu_vcn_sw_init(struct amdgpu_device *adev)
 				    AMDGPU_GEM_DOMAIN_VRAM, &adev->vcn.vcpu_bo,
 				    &adev->vcn.gpu_addr, &adev->vcn.cpu_addr);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to allocate vcn bo\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to allocate vcn bo\n", r);
 		return r;
 	}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
index bd20ff0..c264a80 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
@@ -363,7 +363,7 @@ int amdgpu_vm_alloc_pts(struct amdgpu_device *adev,
 	eaddr = saddr + size - 1;
 	last_pfn = eaddr / AMDGPU_GPU_PAGE_SIZE;
 	if (last_pfn >= adev->vm_manager.max_pfn) {
-		dev_err(adev->dev, "va above limit (0x%08llX >= 0x%08llX)\n",
+		DRM_DEV_ERROR(adev->dev, "va above limit (0x%08llX >= 0x%08llX)\n",
 			last_pfn, adev->vm_manager.max_pfn);
 		return -EINVAL;
 	}
@@ -2090,7 +2090,7 @@ int amdgpu_vm_bo_map(struct amdgpu_device *adev,
 	tmp = amdgpu_vm_it_iter_first(&vm->va, saddr, eaddr);
 	if (tmp) {
 		/* bo and tmp overlap, invalid addr */
-		dev_err(adev->dev, "bo %p va 0x%010Lx-0x%010Lx conflict with "
+		DRM_DEV_ERROR(adev->dev, "bo %p va 0x%010Lx-0x%010Lx conflict with "
 			"0x%010Lx-0x%010Lx\n", bo, saddr, eaddr,
 			tmp->start, tmp->last + 1);
 		return -EINVAL;
@@ -2591,7 +2591,7 @@ void amdgpu_vm_fini(struct amdgpu_device *adev, struct amdgpu_vm *vm)
 	amd_sched_entity_fini(vm->entity.sched, &vm->entity);
 
 	if (!RB_EMPTY_ROOT(&vm->va.rb_root)) {
-		dev_err(adev->dev, "still active bo inside vm\n");
+		DRM_DEV_ERROR(adev->dev, "still active bo inside vm\n");
 	}
 	rbtree_postorder_for_each_entry_safe(mapping, tmp,
 					     &vm->va.rb_root, rb) {
diff --git a/drivers/gpu/drm/amd/amdgpu/cik.c b/drivers/gpu/drm/amd/amdgpu/cik.c
index 567c4a5..9485ee0 100644
--- a/drivers/gpu/drm/amd/amdgpu/cik.c
+++ b/drivers/gpu/drm/amd/amdgpu/cik.c
@@ -1158,7 +1158,7 @@ static int cik_gpu_pci_config_reset(struct amdgpu_device *adev)
 	u32 i;
 	int r = -EINVAL;
 
-	dev_info(adev->dev, "GPU pci config reset\n");
+	DRM_DEV_INFO(adev->dev, "GPU pci config reset\n");
 
 	if (adev->flags & AMD_IS_APU)
 		kv_save_regs_for_reset(adev, &kv_save);
diff --git a/drivers/gpu/drm/amd/amdgpu/cik_ih.c b/drivers/gpu/drm/amd/amdgpu/cik_ih.c
index b891843..0010624 100644
--- a/drivers/gpu/drm/amd/amdgpu/cik_ih.c
+++ b/drivers/gpu/drm/amd/amdgpu/cik_ih.c
@@ -385,7 +385,7 @@ static int cik_ih_soft_reset(void *handle)
 	if (srbm_soft_reset) {
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/cik_sdma.c b/drivers/gpu/drm/amd/amdgpu/cik_sdma.c
index f508f4d..b066b6f 100644
--- a/drivers/gpu/drm/amd/amdgpu/cik_sdma.c
+++ b/drivers/gpu/drm/amd/amdgpu/cik_sdma.c
@@ -628,7 +628,7 @@ static int cik_sdma_ring_test_ring(struct amdgpu_ring *ring)
 
 	r = amdgpu_wb_get(adev, &index);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to allocate wb slot\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to allocate wb slot\n", r);
 		return r;
 	}
 
@@ -688,7 +688,7 @@ static int cik_sdma_ring_test_ib(struct amdgpu_ring *ring, long timeout)
 
 	r = amdgpu_wb_get(adev, &index);
 	if (r) {
-		dev_err(adev->dev, "(%ld) failed to allocate wb slot\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%ld) failed to allocate wb slot\n", r);
 		return r;
 	}
 
@@ -1118,7 +1118,7 @@ static int cik_sdma_soft_reset(void *handle)
 	if (srbm_soft_reset) {
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/cz_ih.c b/drivers/gpu/drm/amd/amdgpu/cz_ih.c
index 0c1209c..88a4e89 100644
--- a/drivers/gpu/drm/amd/amdgpu/cz_ih.c
+++ b/drivers/gpu/drm/amd/amdgpu/cz_ih.c
@@ -364,7 +364,7 @@ static int cz_ih_soft_reset(void *handle)
 	if (srbm_soft_reset) {
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/dce_v10_0.c b/drivers/gpu/drm/amd/amdgpu/dce_v10_0.c
index 4e519dc..d9b4e30 100644
--- a/drivers/gpu/drm/amd/amdgpu/dce_v10_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/dce_v10_0.c
@@ -2969,7 +2969,7 @@ static int dce_v10_0_soft_reset(void *handle)
 	if (srbm_soft_reset) {
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/dce_v11_0.c b/drivers/gpu/drm/amd/amdgpu/dce_v11_0.c
index 11edc75..37e8a84 100644
--- a/drivers/gpu/drm/amd/amdgpu/dce_v11_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/dce_v11_0.c
@@ -3088,7 +3088,7 @@ static int dce_v11_0_soft_reset(void *handle)
 	if (srbm_soft_reset) {
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/dce_v8_0.c b/drivers/gpu/drm/amd/amdgpu/dce_v8_0.c
index 9cf14b8..bcdd5a0 100644
--- a/drivers/gpu/drm/amd/amdgpu/dce_v8_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/dce_v8_0.c
@@ -2860,7 +2860,7 @@ static int dce_v8_0_soft_reset(void *handle)
 	if (srbm_soft_reset) {
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c
index 0086876..ccd10d7e 100644
--- a/drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c
@@ -4797,7 +4797,7 @@ static int gfx_v7_0_soft_reset(void *handle)
 		if (grbm_soft_reset) {
 			tmp = RREG32(mmGRBM_SOFT_RESET);
 			tmp |= grbm_soft_reset;
-			dev_info(adev->dev, "GRBM_SOFT_RESET=0x%08X\n", tmp);
+			DRM_DEV_INFO(adev->dev, "GRBM_SOFT_RESET=0x%08X\n", tmp);
 			WREG32(mmGRBM_SOFT_RESET, tmp);
 			tmp = RREG32(mmGRBM_SOFT_RESET);
 
@@ -4811,7 +4811,7 @@ static int gfx_v7_0_soft_reset(void *handle)
 		if (srbm_soft_reset) {
 			tmp = RREG32(mmSRBM_SOFT_RESET);
 			tmp |= srbm_soft_reset;
-			dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+			DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 			WREG32(mmSRBM_SOFT_RESET, tmp);
 			tmp = RREG32(mmSRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c
index fc260c1..a3e08f9 100644
--- a/drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c
@@ -1105,7 +1105,7 @@ static int gfx_v8_0_init_microcode(struct amdgpu_device *adev)
 
 out:
 	if (err) {
-		dev_err(adev->dev,
+		DRM_DEV_ERROR(adev->dev,
 			"gfx8: Failed to load firmware \"%s\"\n",
 			fw_name);
 		release_firmware(adev->gfx.pfp_fw);
@@ -5163,7 +5163,7 @@ static int gfx_v8_0_soft_reset(void *handle)
 	if (grbm_soft_reset) {
 		tmp = RREG32(mmGRBM_SOFT_RESET);
 		tmp |= grbm_soft_reset;
-		dev_info(adev->dev, "GRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "GRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmGRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmGRBM_SOFT_RESET);
 
@@ -5177,7 +5177,7 @@ static int gfx_v8_0_soft_reset(void *handle)
 	if (srbm_soft_reset) {
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
index 69182ee..a48f4b3 100644
--- a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
@@ -547,7 +547,7 @@ static int gfx_v9_0_init_microcode(struct amdgpu_device *adev)
 
 out:
 	if (err) {
-		dev_err(adev->dev,
+		DRM_DEV_ERROR(adev->dev,
 			"gfx9: Failed to load firmware \"%s\"\n",
 			fw_name);
 		release_firmware(adev->gfx.pfp_fw);
@@ -780,7 +780,7 @@ static int gfx_v9_0_rlc_init(struct amdgpu_device *adev)
 					      &adev->gfx.rlc.clear_state_gpu_addr,
 					      (void **)&adev->gfx.rlc.cs_ptr);
 		if (r) {
-			dev_err(adev->dev, "(%d) failed to create rlc csb bo\n",
+			DRM_DEV_ERROR(adev->dev, "(%d) failed to create rlc csb bo\n",
 				r);
 			gfx_v9_0_rlc_fini(adev);
 			return r;
@@ -801,7 +801,7 @@ static int gfx_v9_0_rlc_init(struct amdgpu_device *adev)
 					      &adev->gfx.rlc.cp_table_gpu_addr,
 					      (void **)&adev->gfx.rlc.cp_table_ptr);
 		if (r) {
-			dev_err(adev->dev,
+			DRM_DEV_ERROR(adev->dev,
 				"(%d) failed to create cp table bo\n", r);
 			gfx_v9_0_rlc_fini(adev);
 			return r;
@@ -1018,7 +1018,7 @@ static int gfx_v9_0_ngg_create_buf(struct amdgpu_device *adev,
 	int r;
 
 	if (size_se < 0) {
-		dev_err(adev->dev, "Buffer size is invalid: %d\n", size_se);
+		DRM_DEV_ERROR(adev->dev, "Buffer size is invalid: %d\n", size_se);
 		return -EINVAL;
 	}
 	size_se = size_se ? size_se : default_size_se;
@@ -1030,7 +1030,7 @@ static int gfx_v9_0_ngg_create_buf(struct amdgpu_device *adev,
 				    &ngg_buf->gpu_addr,
 				    NULL);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to create NGG buffer\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to create NGG buffer\n", r);
 		return r;
 	}
 	ngg_buf->bo_size = amdgpu_bo_size(ngg_buf->bo);
@@ -1074,7 +1074,7 @@ static int gfx_v9_0_ngg_init(struct amdgpu_device *adev)
 				    amdgpu_prim_buf_per_se,
 				    64 * 1024);
 	if (r) {
-		dev_err(adev->dev, "Failed to create Primitive Buffer\n");
+		DRM_DEV_ERROR(adev->dev, "Failed to create Primitive Buffer\n");
 		goto err;
 	}
 
@@ -1083,7 +1083,7 @@ static int gfx_v9_0_ngg_init(struct amdgpu_device *adev)
 				    amdgpu_pos_buf_per_se,
 				    256 * 1024);
 	if (r) {
-		dev_err(adev->dev, "Failed to create Position Buffer\n");
+		DRM_DEV_ERROR(adev->dev, "Failed to create Position Buffer\n");
 		goto err;
 	}
 
@@ -1092,7 +1092,7 @@ static int gfx_v9_0_ngg_init(struct amdgpu_device *adev)
 				    amdgpu_cntl_sb_buf_per_se,
 				    256);
 	if (r) {
-		dev_err(adev->dev, "Failed to create Control Sideband Buffer\n");
+		DRM_DEV_ERROR(adev->dev, "Failed to create Control Sideband Buffer\n");
 		goto err;
 	}
 
@@ -1104,7 +1104,7 @@ static int gfx_v9_0_ngg_init(struct amdgpu_device *adev)
 				    amdgpu_param_buf_per_se,
 				    512 * 1024);
 	if (r) {
-		dev_err(adev->dev, "Failed to create Parameter Cache\n");
+		DRM_DEV_ERROR(adev->dev, "Failed to create Parameter Cache\n");
 		goto err;
 	}
 
@@ -2990,7 +2990,7 @@ static int gfx_v9_0_soft_reset(void *handle)
 		if (grbm_soft_reset) {
 			tmp = RREG32_SOC15(GC, 0, mmGRBM_SOFT_RESET);
 			tmp |= grbm_soft_reset;
-			dev_info(adev->dev, "GRBM_SOFT_RESET=0x%08X\n", tmp);
+			DRM_DEV_INFO(adev->dev, "GRBM_SOFT_RESET=0x%08X\n", tmp);
 			WREG32_SOC15(GC, 0, mmGRBM_SOFT_RESET, tmp);
 			tmp = RREG32_SOC15(GC, 0, mmGRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c b/drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c
index 5be9c83..6959c30 100644
--- a/drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c
@@ -144,7 +144,7 @@ static int gmc_v6_0_init_microcode(struct amdgpu_device *adev)
 
 out:
 	if (err) {
-		dev_err(adev->dev,
+		DRM_DEV_ERROR(adev->dev,
 		       "si_mc: Failed to load firmware \"%s\"\n",
 		       fw_name);
 		release_firmware(adev->mc.fw);
@@ -481,7 +481,7 @@ static int gmc_v6_0_gart_enable(struct amdgpu_device *adev)
 	u32 field;
 
 	if (adev->gart.robj == NULL) {
-		dev_err(adev->dev, "No VRAM object for PCIE GART.\n");
+		DRM_DEV_ERROR(adev->dev, "No VRAM object for PCIE GART.\n");
 		return -EINVAL;
 	}
 	r = amdgpu_gart_table_vram_pin(adev);
@@ -560,7 +560,7 @@ static int gmc_v6_0_gart_enable(struct amdgpu_device *adev)
 		gmc_v6_0_set_fault_enable_default(adev, true);
 
 	gmc_v6_0_gart_flush_gpu_tlb(adev, 0);
-	dev_info(adev->dev, "PCIE GART of %uM enabled (table at 0x%016llX).\n",
+	DRM_DEV_INFO(adev->dev, "PCIE GART of %uM enabled (table at 0x%016llX).\n",
 		 (unsigned)(adev->mc.gart_size >> 20),
 		 (unsigned long long)adev->gart.table_addr);
 	adev->gart.ready = true;
@@ -635,7 +635,7 @@ static void gmc_v6_0_vm_decode_fault(struct amdgpu_device *adev,
 	mc_id = REG_GET_FIELD(status, VM_CONTEXT1_PROTECTION_FAULT_STATUS,
 			      MEMORY_CLIENT_ID);
 
-	dev_err(adev->dev, "VM fault (0x%02x, vmid %d) at page %u, %s from '%s' (0x%08x) (%d)\n",
+	DRM_DEV_ERROR(adev->dev, "VM fault (0x%02x, vmid %d) at page %u, %s from '%s' (0x%08x) (%d)\n",
 	       protections, vmid, addr,
 	       REG_GET_FIELD(status, VM_CONTEXT1_PROTECTION_FAULT_STATUS,
 			     MEMORY_CLIENT_RW) ?
@@ -854,7 +854,7 @@ static int gmc_v6_0_sw_init(void *handle)
 
 	r = gmc_v6_0_init_microcode(adev);
 	if (r) {
-		dev_err(adev->dev, "Failed to load mc firmware!\n");
+		DRM_DEV_ERROR(adev->dev, "Failed to load mc firmware!\n");
 		return r;
 	}
 
@@ -915,7 +915,7 @@ static int gmc_v6_0_hw_init(void *handle)
 	if (!(adev->flags & AMD_IS_APU)) {
 		r = gmc_v6_0_mc_load_microcode(adev);
 		if (r) {
-			dev_err(adev->dev, "Failed to load MC firmware!\n");
+			DRM_DEV_ERROR(adev->dev, "Failed to load MC firmware!\n");
 			return r;
 		}
 	}
@@ -1012,7 +1012,7 @@ static int gmc_v6_0_soft_reset(void *handle)
 
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
@@ -1085,11 +1085,11 @@ static int gmc_v6_0_process_interrupt(struct amdgpu_device *adev,
 		gmc_v6_0_set_fault_enable_default(adev, false);
 
 	if (printk_ratelimit()) {
-		dev_err(adev->dev, "GPU fault detected: %d 0x%08x\n",
+		DRM_DEV_ERROR(adev->dev, "GPU fault detected: %d 0x%08x\n",
 			entry->src_id, entry->src_data[0]);
-		dev_err(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
+		DRM_DEV_ERROR(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
 			addr);
-		dev_err(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
+		DRM_DEV_ERROR(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
 			status);
 		gmc_v6_0_vm_decode_fault(adev, status, addr, 0);
 	}
diff --git a/drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c b/drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c
index eace9e7..e274989 100644
--- a/drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c
@@ -585,7 +585,7 @@ static int gmc_v7_0_gart_enable(struct amdgpu_device *adev)
 	u32 tmp, field;
 
 	if (adev->gart.robj == NULL) {
-		dev_err(adev->dev, "No VRAM object for PCIE GART.\n");
+		DRM_DEV_ERROR(adev->dev, "No VRAM object for PCIE GART.\n");
 		return -EINVAL;
 	}
 	r = amdgpu_gart_table_vram_pin(adev);
@@ -761,7 +761,7 @@ static void gmc_v7_0_vm_decode_fault(struct amdgpu_device *adev,
 	mc_id = REG_GET_FIELD(status, VM_CONTEXT1_PROTECTION_FAULT_STATUS,
 			      MEMORY_CLIENT_ID);
 
-	dev_err(adev->dev, "VM fault (0x%02x, vmid %d) at page %u, %s from '%s' (0x%08x) (%d)\n",
+	DRM_DEV_ERROR(adev->dev, "VM fault (0x%02x, vmid %d) at page %u, %s from '%s' (0x%08x) (%d)\n",
 	       protections, vmid, addr,
 	       REG_GET_FIELD(status, VM_CONTEXT1_PROTECTION_FAULT_STATUS,
 			     MEMORY_CLIENT_RW) ?
@@ -1170,7 +1170,7 @@ static int gmc_v7_0_soft_reset(void *handle)
 
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
@@ -1250,11 +1250,11 @@ static int gmc_v7_0_process_interrupt(struct amdgpu_device *adev,
 		gmc_v7_0_set_fault_enable_default(adev, false);
 
 	if (printk_ratelimit()) {
-		dev_err(adev->dev, "GPU fault detected: %d 0x%08x\n",
+		DRM_DEV_ERROR(adev->dev, "GPU fault detected: %d 0x%08x\n",
 			entry->src_id, entry->src_data[0]);
-		dev_err(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
+		DRM_DEV_ERROR(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
 			addr);
-		dev_err(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
+		DRM_DEV_ERROR(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
 			status);
 		gmc_v7_0_vm_decode_fault(adev, status, addr, mc_client);
 	}
diff --git a/drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c b/drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c
index 3b3326d..f1f83f3 100644
--- a/drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c
@@ -784,7 +784,7 @@ static int gmc_v8_0_gart_enable(struct amdgpu_device *adev)
 	u32 tmp, field;
 
 	if (adev->gart.robj == NULL) {
-		dev_err(adev->dev, "No VRAM object for PCIE GART.\n");
+		DRM_DEV_ERROR(adev->dev, "No VRAM object for PCIE GART.\n");
 		return -EINVAL;
 	}
 	r = amdgpu_gart_table_vram_pin(adev);
@@ -977,7 +977,7 @@ static void gmc_v8_0_vm_decode_fault(struct amdgpu_device *adev,
 	mc_id = REG_GET_FIELD(status, VM_CONTEXT1_PROTECTION_FAULT_STATUS,
 			      MEMORY_CLIENT_ID);
 
-	dev_err(adev->dev, "VM fault (0x%02x, vmid %d) at page %u, %s from '%s' (0x%08x) (%d)\n",
+	DRM_DEV_ERROR(adev->dev, "VM fault (0x%02x, vmid %d) at page %u, %s from '%s' (0x%08x) (%d)\n",
 	       protections, vmid, addr,
 	       REG_GET_FIELD(status, VM_CONTEXT1_PROTECTION_FAULT_STATUS,
 			     MEMORY_CLIENT_RW) ?
@@ -1304,7 +1304,7 @@ static int gmc_v8_0_soft_reset(void *handle)
 
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
@@ -1381,9 +1381,9 @@ static int gmc_v8_0_process_interrupt(struct amdgpu_device *adev,
 	u32 addr, status, mc_client;
 
 	if (amdgpu_sriov_vf(adev)) {
-		dev_err(adev->dev, "GPU fault detected: %d 0x%08x\n",
+		DRM_DEV_ERROR(adev->dev, "GPU fault detected: %d 0x%08x\n",
 			entry->src_id, entry->src_data[0]);
-		dev_err(adev->dev, " Can't decode VM fault info here on SRIOV VF\n");
+		DRM_DEV_ERROR(adev->dev, " Can't decode VM fault info here on SRIOV VF\n");
 		return 0;
 	}
 
@@ -1400,11 +1400,11 @@ static int gmc_v8_0_process_interrupt(struct amdgpu_device *adev,
 		gmc_v8_0_set_fault_enable_default(adev, false);
 
 	if (printk_ratelimit()) {
-		dev_err(adev->dev, "GPU fault detected: %d 0x%08x\n",
+		DRM_DEV_ERROR(adev->dev, "GPU fault detected: %d 0x%08x\n",
 			entry->src_id, entry->src_data[0]);
-		dev_err(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
+		DRM_DEV_ERROR(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
 			addr);
-		dev_err(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
+		DRM_DEV_ERROR(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
 			status);
 		gmc_v8_0_vm_decode_fault(adev, status, addr, mc_client);
 	}
diff --git a/drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c b/drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c
index d04d0b1..94df18f8 100644
--- a/drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c
@@ -150,15 +150,15 @@ static int gmc_v9_0_process_interrupt(struct amdgpu_device *adev,
 	}
 
 	if (printk_ratelimit()) {
-		dev_err(adev->dev,
+		DRM_DEV_ERROR(adev->dev,
 			"[%s] VMC page fault (src_id:%u ring:%u vm_id:%u pas_id:%u)\n",
 			entry->vm_id_src ? "mmhub" : "gfxhub",
 			entry->src_id, entry->ring_id, entry->vm_id,
 			entry->pas_id);
-		dev_err(adev->dev, "  at page 0x%016llx from %d\n",
+		DRM_DEV_ERROR(adev->dev, "  at page 0x%016llx from %d\n",
 			addr, entry->client_id);
 		if (!amdgpu_sriov_vf(adev))
-			dev_err(adev->dev,
+			DRM_DEV_ERROR(adev->dev,
 				"VM_L2_PROTECTION_FAULT_STATUS:0x%08X\n",
 				status);
 	}
@@ -403,7 +403,7 @@ static int gmc_v9_0_late_init(void *handle)
 		unsigned vmhub = ring->funcs->vmhub;
 
 		ring->vm_inv_eng = vm_inv_eng[vmhub]++;
-		dev_info(adev->dev, "ring %u(%s) uses VM inv eng %u on hub %u\n",
+		DRM_DEV_INFO(adev->dev, "ring %u(%s) uses VM inv eng %u on hub %u\n",
 			 ring->idx, ring->name, ring->vm_inv_eng,
 			 ring->funcs->vmhub);
 	}
@@ -706,7 +706,7 @@ static int gmc_v9_0_gart_enable(struct amdgpu_device *adev)
 		(const u32)ARRAY_SIZE(golden_settings_vega10_hdp));
 
 	if (adev->gart.robj == NULL) {
-		dev_err(adev->dev, "No VRAM object for PCIE GART.\n");
+		DRM_DEV_ERROR(adev->dev, "No VRAM object for PCIE GART.\n");
 		return -EINVAL;
 	}
 	r = amdgpu_gart_table_vram_pin(adev);
diff --git a/drivers/gpu/drm/amd/amdgpu/iceland_ih.c b/drivers/gpu/drm/amd/amdgpu/iceland_ih.c
index 7a0ea27..3f98734 100644
--- a/drivers/gpu/drm/amd/amdgpu/iceland_ih.c
+++ b/drivers/gpu/drm/amd/amdgpu/iceland_ih.c
@@ -364,7 +364,7 @@ static int iceland_ih_soft_reset(void *handle)
 	if (srbm_soft_reset) {
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/psp_v10_0.c b/drivers/gpu/drm/amd/amdgpu/psp_v10_0.c
index f7cf994..ff7f21d 100644
--- a/drivers/gpu/drm/amd/amdgpu/psp_v10_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/psp_v10_0.c
@@ -122,7 +122,7 @@ int psp_v10_0_init_microcode(struct psp_context *psp)
 	return 0;
 out:
 	if (err) {
-		dev_err(adev->dev,
+		DRM_DEV_ERROR(adev->dev,
 			"psp v10.0: Failed to load firmware \"%s\"\n",
 			fw_name);
 		release_firmware(adev->psp.asd_fw);
diff --git a/drivers/gpu/drm/amd/amdgpu/psp_v3_1.c b/drivers/gpu/drm/amd/amdgpu/psp_v3_1.c
index 2a535a4..8b3b87a 100644
--- a/drivers/gpu/drm/amd/amdgpu/psp_v3_1.c
+++ b/drivers/gpu/drm/amd/amdgpu/psp_v3_1.c
@@ -150,7 +150,7 @@ int psp_v3_1_init_microcode(struct psp_context *psp)
 	return 0;
 out:
 	if (err) {
-		dev_err(adev->dev,
+		DRM_DEV_ERROR(adev->dev,
 			"psp v3.1: Failed to load firmware \"%s\"\n",
 			fw_name);
 		release_firmware(adev->psp.sos_fw);
diff --git a/drivers/gpu/drm/amd/amdgpu/sdma_v2_4.c b/drivers/gpu/drm/amd/amdgpu/sdma_v2_4.c
index f2d0710..c8192d7 100644
--- a/drivers/gpu/drm/amd/amdgpu/sdma_v2_4.c
+++ b/drivers/gpu/drm/amd/amdgpu/sdma_v2_4.c
@@ -612,7 +612,7 @@ static int sdma_v2_4_ring_test_ring(struct amdgpu_ring *ring)
 
 	r = amdgpu_wb_get(adev, &index);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to allocate wb slot\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to allocate wb slot\n", r);
 		return r;
 	}
 
@@ -674,7 +674,7 @@ static int sdma_v2_4_ring_test_ib(struct amdgpu_ring *ring, long timeout)
 
 	r = amdgpu_wb_get(adev, &index);
 	if (r) {
-		dev_err(adev->dev, "(%ld) failed to allocate wb slot\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%ld) failed to allocate wb slot\n", r);
 		return r;
 	}
 
@@ -1063,7 +1063,7 @@ static int sdma_v2_4_soft_reset(void *handle)
 	if (srbm_soft_reset) {
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c b/drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c
index b1de44f..16cf82c 100644
--- a/drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c
@@ -856,7 +856,7 @@ static int sdma_v3_0_ring_test_ring(struct amdgpu_ring *ring)
 
 	r = amdgpu_wb_get(adev, &index);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to allocate wb slot\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to allocate wb slot\n", r);
 		return r;
 	}
 
@@ -918,7 +918,7 @@ static int sdma_v3_0_ring_test_ib(struct amdgpu_ring *ring, long timeout)
 
 	r = amdgpu_wb_get(adev, &index);
 	if (r) {
-		dev_err(adev->dev, "(%ld) failed to allocate wb slot\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%ld) failed to allocate wb slot\n", r);
 		return r;
 	}
 
@@ -1366,7 +1366,7 @@ static int sdma_v3_0_soft_reset(void *handle)
 	if (srbm_soft_reset) {
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c b/drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c
index fd7c72a..4652505 100644
--- a/drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c
@@ -888,7 +888,7 @@ static int sdma_v4_0_ring_test_ring(struct amdgpu_ring *ring)
 
 	r = amdgpu_wb_get(adev, &index);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to allocate wb slot\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to allocate wb slot\n", r);
 		return r;
 	}
 
@@ -950,7 +950,7 @@ static int sdma_v4_0_ring_test_ib(struct amdgpu_ring *ring, long timeout)
 
 	r = amdgpu_wb_get(adev, &index);
 	if (r) {
-		dev_err(adev->dev, "(%ld) failed to allocate wb slot\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%ld) failed to allocate wb slot\n", r);
 		return r;
 	}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/si_dma.c b/drivers/gpu/drm/amd/amdgpu/si_dma.c
index 112969f..25485e4 100644
--- a/drivers/gpu/drm/amd/amdgpu/si_dma.c
+++ b/drivers/gpu/drm/amd/amdgpu/si_dma.c
@@ -223,7 +223,7 @@ static int si_dma_ring_test_ring(struct amdgpu_ring *ring)
 
 	r = amdgpu_wb_get(adev, &index);
 	if (r) {
-		dev_err(adev->dev, "(%d) failed to allocate wb slot\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%d) failed to allocate wb slot\n", r);
 		return r;
 	}
 
@@ -283,7 +283,7 @@ static int si_dma_ring_test_ib(struct amdgpu_ring *ring, long timeout)
 
 	r = amdgpu_wb_get(adev, &index);
 	if (r) {
-		dev_err(adev->dev, "(%ld) failed to allocate wb slot\n", r);
+		DRM_DEV_ERROR(adev->dev, "(%ld) failed to allocate wb slot\n", r);
 		return r;
 	}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/si_ih.c b/drivers/gpu/drm/amd/amdgpu/si_ih.c
index ce25e03..8d6da5d 100644
--- a/drivers/gpu/drm/amd/amdgpu/si_ih.c
+++ b/drivers/gpu/drm/amd/amdgpu/si_ih.c
@@ -241,7 +241,7 @@ static int si_ih_soft_reset(void *handle)
 	if (srbm_soft_reset) {
 		tmp = RREG32(SRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(SRBM_SOFT_RESET, tmp);
 		tmp = RREG32(SRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/soc15.c b/drivers/gpu/drm/amd/amdgpu/soc15.c
index f2c3a49..6021f54 100644
--- a/drivers/gpu/drm/amd/amdgpu/soc15.c
+++ b/drivers/gpu/drm/amd/amdgpu/soc15.c
@@ -411,7 +411,7 @@ static void soc15_gpu_pci_config_reset(struct amdgpu_device *adev)
 {
 	u32 i;
 
-	dev_info(adev->dev, "GPU pci config reset\n");
+	DRM_DEV_INFO(adev->dev, "GPU pci config reset\n");
 
 	/* disable BM */
 	pci_clear_master(adev->pdev);
diff --git a/drivers/gpu/drm/amd/amdgpu/tonga_ih.c b/drivers/gpu/drm/amd/amdgpu/tonga_ih.c
index 923df2c..f9a8960 100644
--- a/drivers/gpu/drm/amd/amdgpu/tonga_ih.c
+++ b/drivers/gpu/drm/amd/amdgpu/tonga_ih.c
@@ -427,7 +427,7 @@ static int tonga_ih_soft_reset(void *handle)
 
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c b/drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c
index 31db356..f43248a 100644
--- a/drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c
@@ -783,7 +783,7 @@ static int uvd_v6_0_soft_reset(void *handle)
 
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c b/drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c
index 23a8575..c11760d 100644
--- a/drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c
@@ -713,7 +713,7 @@ static int uvd_v7_0_mmsch_start(struct amdgpu_device *adev,
 	}
 
 	if (!loop) {
-		dev_err(adev->dev, "failed to init MMSCH, mmVCE_MMSCH_VF_MAILBOX_RESP = %x\n", data);
+		DRM_DEV_ERROR(adev->dev, "failed to init MMSCH, mmVCE_MMSCH_VF_MAILBOX_RESP = %x\n", data);
 		return -EBUSY;
 	}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/vce_v3_0.c b/drivers/gpu/drm/amd/amdgpu/vce_v3_0.c
index 90332f5..dd771bd 100644
--- a/drivers/gpu/drm/amd/amdgpu/vce_v3_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/vce_v3_0.c
@@ -658,7 +658,7 @@ static int vce_v3_0_soft_reset(void *handle)
 
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 		tmp |= srbm_soft_reset;
-		dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
+		DRM_DEV_INFO(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
 		WREG32(mmSRBM_SOFT_RESET, tmp);
 		tmp = RREG32(mmSRBM_SOFT_RESET);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/vce_v4_0.c b/drivers/gpu/drm/amd/amdgpu/vce_v4_0.c
index 11134d5..d3d1f60 100644
--- a/drivers/gpu/drm/amd/amdgpu/vce_v4_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/vce_v4_0.c
@@ -192,7 +192,7 @@ static int vce_v4_0_mmsch_start(struct amdgpu_device *adev,
 	}
 
 	if (!loop) {
-		dev_err(adev->dev, "failed to init MMSCH, mmVCE_MMSCH_VF_MAILBOX_RESP = %x\n", data);
+		DRM_DEV_ERROR(adev->dev, "failed to init MMSCH, mmVCE_MMSCH_VF_MAILBOX_RESP = %x\n", data);
 		return -EBUSY;
 	}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/vi.c b/drivers/gpu/drm/amd/amdgpu/vi.c
index 9ff69b9..04d4400 100644
--- a/drivers/gpu/drm/amd/amdgpu/vi.c
+++ b/drivers/gpu/drm/amd/amdgpu/vi.c
@@ -661,7 +661,7 @@ static int vi_gpu_pci_config_reset(struct amdgpu_device *adev)
 {
 	u32 i;
 
-	dev_info(adev->dev, "GPU pci config reset\n");
+	DRM_DEV_INFO(adev->dev, "GPU pci config reset\n");
 
 	/* disable BM */
 	pci_clear_master(adev->pdev);
-- 
2.7.4


