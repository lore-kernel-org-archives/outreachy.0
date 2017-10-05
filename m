X-GM-THRID: 6473408777724887040
X-Received: by 10.101.67.7 with SMTP id j7mr2545592pgq.150.1507207932366;
        Thu, 05 Oct 2017 05:52:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.51.79 with SMTP id z76ls3065629pgz.2.gmail; Thu, 05 Oct
 2017 05:52:11 -0700 (PDT)
X-Received: by 10.99.119.68 with SMTP id s65mr777323pgc.89.1507207931299;
        Thu, 05 Oct 2017 05:52:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507207931; cv=none;
        d=google.com; s=arc-20160816;
        b=Hd3vdxwRGA1oarQB8JPQ4qtZVRmXXNIMlvl6Bzlr8Xl+A0ud2es6LHxkc4z8ZFbhP/
         uiw0lFHs+g2SSer2Aa7HZU/9IG8m2ice4zVQhIxtOZnXvy3izNuycPZzZsp+lhEWIGj7
         sz1SjADEGfO2sXu38eonCXulcrKrHs3FDIZ6wMh+2vYA0PrS3q0ov2GnhxCW//sX8O/H
         vCdi4rsV9nLrbGQe0PgDhv/BPp+ARj0XbRHWLfEzHQtjVaalA6UFR9/QIOEIyKe3pzSr
         0fasL4cLrtMe7WOMBF+QcMUnnTQ10IHfykiWNr6hy1m6gM9GrKKRehimoIO+6O1Hl8GG
         GEjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:arc-authentication-results;
        bh=g2HChKG7s+M4Y0FtFtzhcaMx0BWkQa8Ikc5sspnrAT4=;
        b=PHszYs0UoM+6Ptni/auqqCB3cA3SQtGUaxxQOPfdNmwzF1EKWlXb6I55mzBX3hBnxm
         +QSe8IIF8PbzdQ57ZiY34SUmbyKM6MlqagNIVhrmdI7G0rbnMJuLIpkb5/+m/5+1xPNg
         qVHSxIs65X6rTOqc6eujgBLTrSFpaGl9OABKFYvydP0TWtTpmopQCVxDMAzNBPelvUzw
         9++SFHau8tGC6f2q+Bcczmv9uCB8oi4CBJYfzfkaiCgEMQBAtBo3zoa2PSJJdD6WLDBA
         T+hMkQqdc4W2DtjfnAXHOpjHF2Kv9p7R4USKEkkYMmYwC0yNHDHxQqfewZrQT++MLITp
         /2mQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ooEvTJ1v;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id t77si1862488pfi.13.2017.10.05.05.52.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 05:52:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ooEvTJ1v;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i195so7275161pgd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 05:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=g2HChKG7s+M4Y0FtFtzhcaMx0BWkQa8Ikc5sspnrAT4=;
        b=ooEvTJ1v3nbGUCxHXZZ9dGVzzb49bPtFLrBVIoFm/L4pt74qKnJ+KGvQMI2s8lahUE
         OA4BqxZi5oywAjyqO00l8gV1Jg/wWaQLjgEXWIDxSMF9xu/FJ/befBJoikVz9URyIfJl
         03ypMTQJb54GjG3rp5pwKuxGadG7dBuzGj1p2aMB0X9Ef4eY4oE1E3pChL94PjJs1J/0
         pC6e62fYfLfTPDjHyDr8M/tEPV1dOeDf5in/gozu60dIz1Ww7RiLfop3mOtWFeyxWoO1
         pVdDprEKtY9PXFTMDWi9KEIlH94arneXlBJqNuG1XMkjE3uq49/RQpJcL+gH6ULIMCp7
         GMHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=g2HChKG7s+M4Y0FtFtzhcaMx0BWkQa8Ikc5sspnrAT4=;
        b=ch0KN8qrIgSR8OVaphETxcl8QgT8/aqOr8QwaA/5Zp5sD7dMYrCGIGVLA5Gb0f7OGu
         wFumN2Ymq9LsBD818JQz46NgcEmCCgS6WkbssSI/IqJDxCVXPWrIR+J9EKaoB2bkNzL8
         MmLohHj7nMllZTkzC7oSGMT1lYq/DyJf1/dfQB/ACObMOxpOrcX37e7nDfkDbnOoHMot
         pip9OEOqetdBnSrqKXJMKhL6fV2cSc02qPEGmYKisgqMUy6IaJBPBoVMKS3+PSa9zgLB
         CI03ea58n8DxOHZgLai1MXq7eFD+JhvRSGiL3Oo1/6yA7I7F72HktfVp7WWX82CnPeKa
         sfuw==
X-Gm-Message-State: AMCzsaX8JLRPeaCSW45ADlIkv3+cHr4UENWrN1zF/4DlrenyiY/dUmVy
	cbyY+vazHU+lVcRZTq3xqELDmz4b
X-Google-Smtp-Source: AOwi7QDsHn7O/G2Bi93Z8pWPqijBpvN2okeIusrg4Xp2UmItpyKX36EkzG0md87pYDc8qF8glw+FCA==
X-Received: by 10.98.88.7 with SMTP id m7mr926531pfb.169.1507207930913;
        Thu, 05 Oct 2017 05:52:10 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id l68sm30955569pfb.126.2017.10.05.05.52.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 05:52:10 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: drm: radeon: de-midlayer driver loading
Date: Thu,  5 Oct 2017 18:22:04 +0530
Message-Id: <1507207924-17250-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patch gets rid of the driver’s ->load callbacks and open-codes the
load sequence properly.
The goal is to de-midlayer driver's loading.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/gpu/drm/radeon/radeon.h     |  1 +
 drivers/gpu/drm/radeon/radeon_drv.c |  8 +++--
 drivers/gpu/drm/radeon/radeon_kms.c | 70 +++++++++++++++++++++++++------------
 3 files changed, 53 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/radeon/radeon.h b/drivers/gpu/drm/radeon/radeon.h
index 8cbaeec..54d5ab5 100644
--- a/drivers/gpu/drm/radeon/radeon.h
+++ b/drivers/gpu/drm/radeon/radeon.h
@@ -2311,6 +2311,7 @@ typedef void (*radeon_wreg_t)(struct radeon_device*, uint32_t, uint32_t);
 
 struct radeon_device {
 	struct device			*dev;
+	struct drm_device		drm;
 	struct drm_device		*ddev;
 	struct pci_dev			*pdev;
 	struct rw_semaphore		exclusive_lock;
diff --git a/drivers/gpu/drm/radeon/radeon_drv.c b/drivers/gpu/drm/radeon/radeon_drv.c
index f4becad..2505d96 100644
--- a/drivers/gpu/drm/radeon/radeon_drv.c
+++ b/drivers/gpu/drm/radeon/radeon_drv.c
@@ -104,7 +104,9 @@
 #define KMS_DRIVER_MAJOR	2
 #define KMS_DRIVER_MINOR	50
 #define KMS_DRIVER_PATCHLEVEL	0
-int radeon_driver_load_kms(struct drm_device *dev, unsigned long flags);
+int radeon_driver_load_kms(struct pci_dev *pdev,
+			   const struct pci_device_id *ent,
+			   struct drm_driver *driver)
 void radeon_driver_unload_kms(struct drm_device *dev);
 void radeon_driver_lastclose_kms(struct drm_device *dev);
 int radeon_driver_open_kms(struct drm_device *dev, struct drm_file *file_priv);
@@ -354,7 +356,8 @@ static int radeon_pci_probe(struct pci_dev *pdev,
 	if (ret)
 		return ret;
 
-	return drm_get_pci_dev(pdev, ent, &kms_driver);
+	return radeon_driver_load_kms(pdev, ent, &kms_driver);
+
 }
 
 static void
@@ -563,7 +566,6 @@ static struct drm_driver kms_driver = {
 	    DRIVER_USE_AGP |
 	    DRIVER_HAVE_IRQ | DRIVER_IRQ_SHARED | DRIVER_GEM |
 	    DRIVER_PRIME | DRIVER_RENDER,
-	.load = radeon_driver_load_kms,
 	.open = radeon_driver_open_kms,
 	.postclose = radeon_driver_postclose_kms,
 	.lastclose = radeon_driver_lastclose_kms,
diff --git a/drivers/gpu/drm/radeon/radeon_kms.c b/drivers/gpu/drm/radeon/radeon_kms.c
index dfee8f7..a392ff8 100644
--- a/drivers/gpu/drm/radeon/radeon_kms.c
+++ b/drivers/gpu/drm/radeon/radeon_kms.c
@@ -93,10 +93,14 @@ void radeon_driver_unload_kms(struct drm_device *dev)
  * (crtcs, encoders, hotplug detect, etc.).
  * Returns 0 on success, error on failure.
  */
-int radeon_driver_load_kms(struct drm_device *dev, unsigned long flags)
+int radeon_driver_load_kms(struct pci_dev *pdev,
+			   const struct pci_device_id *ent,
+			   struct drm_driver *driver)
 {
 	struct radeon_device *rdev;
-	int r, acpi_status;
+	int acpi_status, r = 0;
+
+	uint32_t flags = 0;
 
 	if (!radeon_si_support) {
 		switch (flags & RADEON_FAMILY_MASK) {
@@ -105,7 +109,7 @@ int radeon_driver_load_kms(struct drm_device *dev, unsigned long flags)
 		case CHIP_VERDE:
 		case CHIP_OLAND:
 		case CHIP_HAINAN:
-			dev_info(dev->dev,
+			dev_info(pdev->dev,
 				 "SI support disabled by module param\n");
 			return -ENODEV;
 		}
@@ -117,22 +121,40 @@ int radeon_driver_load_kms(struct drm_device *dev, unsigned long flags)
 		case CHIP_HAWAII:
 		case CHIP_KABINI:
 		case CHIP_MULLINS:
-			dev_info(dev->dev,
+			dev_info(pdev->dev,
 				 "CIK support disabled by module param\n");
 			return -ENODEV;
 		}
 	}
 
+	int ret;
+
+	ret = -ENOMEM;
 	rdev = kzalloc(sizeof(struct radeon_device), GFP_KERNEL);
-	if (rdev == NULL) {
-		return -ENOMEM;
+	if (rdev)
+		ret = drm_dev_init(&rdev->drm, driver, &pdev->dev);
+	if (ret) {
+		dev_error(&pdev->dev,
+			  "[" DRM_NAME ":%s] allocation failed\n", __func__);
+		kfree(rdev);
+		return ret;
+	}
+
+	rdev->drm.pdev = pdev;
+	rdev->drm.dev_private = rdev;
+	rdev->dev = &rdev->drm;
+
+	r = pci_enable_device(pdev);
+	if (r) {
+		goto out;
 	}
-	dev->dev_private = (void *)rdev;
+
+	pci_set_drvdata(pdev, &rdev->drm);
 
 	/* update BUS flag */
-	if (pci_find_capability(dev->pdev, PCI_CAP_ID_AGP)) {
+	if (pci_find_capability(pdev, PCI_CAP_ID_AGP)) {
 		flags |= RADEON_IS_AGP;
-	} else if (pci_is_pcie(dev->pdev)) {
+	} else if (pci_is_pcie(pdev)) {
 		flags |= RADEON_IS_PCIE;
 	} else {
 		flags |= RADEON_IS_PCI;
@@ -141,7 +163,7 @@ int radeon_driver_load_kms(struct drm_device *dev, unsigned long flags)
 	if ((radeon_runtime_pm != 0) &&
 	    radeon_has_atpx() &&
 	    ((flags & RADEON_IS_IGP) == 0) &&
-	    !pci_is_thunderbolt_attached(dev->pdev))
+	    !pci_is_thunderbolt_attached(pdev))
 		flags |= RADEON_IS_PX;
 
 	/* radeon_device_init should report only fatal error
@@ -150,9 +172,9 @@ int radeon_driver_load_kms(struct drm_device *dev, unsigned long flags)
 	 * properly initialize the GPU MC controller and permit
 	 * VRAM allocation
 	 */
-	r = radeon_device_init(rdev, dev, dev->pdev, flags);
+	r = radeon_device_init(rdev, rdev->dev, pdev, flags);
 	if (r) {
-		dev_err(&dev->pdev->dev, "Fatal error during GPU init\n");
+		dev_err(&pdev->dev, "Fatal error during GPU init\n");
 		goto out;
 	}
 
@@ -162,7 +184,7 @@ int radeon_driver_load_kms(struct drm_device *dev, unsigned long flags)
 	 */
 	r = radeon_modeset_init(rdev);
 	if (r)
-		dev_err(&dev->pdev->dev, "Fatal error during modeset init\n");
+		dev_err(&pdev->dev, "Fatal error during modeset init\n");
 
 	/* Call ACPI methods: require modeset init
 	 * but failure is not fatal
@@ -170,25 +192,27 @@ int radeon_driver_load_kms(struct drm_device *dev, unsigned long flags)
 	if (!r) {
 		acpi_status = radeon_acpi_init(rdev);
 		if (acpi_status)
-		dev_dbg(&dev->pdev->dev,
+			dev_dbg(&pdev->dev,
 				"Error during ACPI methods call\n");
 	}
 
 	radeon_kfd_device_probe(rdev);
 	radeon_kfd_device_init(rdev);
 
-	if (radeon_is_px(dev)) {
-		pm_runtime_use_autosuspend(dev->dev);
-		pm_runtime_set_autosuspend_delay(dev->dev, 5000);
-		pm_runtime_set_active(dev->dev);
-		pm_runtime_allow(dev->dev);
-		pm_runtime_mark_last_busy(dev->dev);
-		pm_runtime_put_autosuspend(dev->dev);
+	if (radeon_is_px(pdev->dev)) {
+		pm_runtime_use_autosuspend(pdev->dev->dev);
+		pm_runtime_set_autosuspend_delay(pdev->dev->dev, 5000);
+		pm_runtime_set_active(pdev->dev->dev);
+		pm_runtime_allow(pdev->dev->dev);
+		pm_runtime_mark_last_busy(pdev->dev->dev);
+		pm_runtime_put_autosuspend(pdev->dev->dev);
 	}
 
 out:
-	if (r)
-		radeon_driver_unload_kms(dev);
+	if (r) {
+		radeon_driver_unload_kms(pdev->dev);
+		pci_disable_device(pdev);
+	}
 
 
 	return r;
-- 
2.7.4


