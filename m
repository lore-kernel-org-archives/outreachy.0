X-GM-THRID: 6535096042701979648
X-Received: by 10.55.151.68 with SMTP id z65mr11929973qkd.30.1521570617797;
        Tue, 20 Mar 2018 11:30:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.237.33.218 with SMTP id m26ls1080583qtc.11.gmail; Tue, 20 Mar
 2018 11:30:16 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvaAMwblMq2J1NyHl1IPhZ19X5k6bGMdP8N0AKDOC+Ir2I6wE1PMGVGpkM1GCg2tA8+w1w5
X-Received: by 10.200.36.42 with SMTP id c39mr11978186qtc.9.1521570616870;
        Tue, 20 Mar 2018 11:30:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521570616; cv=none;
        d=google.com; s=arc-20160816;
        b=ISo2EEvSmbvjH6SjV1SAyqG1YBGFAFWmPVKf7WOhocFWB9UxEtWA9sKDiorNNIywA9
         A1UJUUg6EtLY1m3MNMwqSAk4cs6AZ/SeObbd/PyafvfanRGgQ/j7bq3vnmkrHTwvPxDn
         cF6YLMZhoaFu3zZ76Tixe3Mott3RCXNwAcA0rQY9HSrXT2mh+8gjDFJJ8byUbU/VtJkz
         nBPrEjoClpOYSI2t/jNXrzYNWOxENJ5VA4kmnTC4iEL+7gRnLIQz1GAm9O/oCYjtv2UV
         ciH0Txa56KuG/UVj+ZPk6lWSQeyDEnr9Vs/4ZEEmRI6lGguS4yHas8adv7gw2OHygIRD
         O7Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=eU1RCaUM8gT3Qi1alTTjoD/aPi8L66QRRMGja44Ag3k=;
        b=ULGKKObOIArtfHUtbEOru+nUsCXt4TzFTZRTJ9bu7ne6JNbv07Br3A9FodzXWZgNSz
         SU1psoNaBzOPoV6iH+O7XaTa3H/8FZRwm8Ns2mdm9W2cZ2aqJHRaZli8hLZGhOPIs3ul
         sk0rVO+UKutmOtOVjE2WWcGwAXNrGryQFXOORMWZ00fqSwUldePEh+EcYKZCSJDpR8/4
         +wirusokIYBMsm5caicsFci90krnJaTOfnEyXFeUSK6GJNe6BTgCLN7+WC2jLje9Xjtz
         rjI8kIFxlB2RI0OgaUQS/ORbC3MHC6jBMOFXYhE3/phHnCEOGoaQB0pqCkVtnIrHHOWM
         Q+Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SeJFOjnZ;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::229 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x229.google.com (mail-pl0-x229.google.com. [2607:f8b0:400e:c01::229])
        by gmr-mx.google.com with ESMTPS id t200si38503qke.4.2018.03.20.11.30.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Mar 2018 11:30:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::229 as permitted sender) client-ip=2607:f8b0:400e:c01::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SeJFOjnZ;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::229 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x229.google.com with SMTP id f23-v6so1519628plr.10
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Mar 2018 11:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eU1RCaUM8gT3Qi1alTTjoD/aPi8L66QRRMGja44Ag3k=;
        b=SeJFOjnZS0QqWYWmXwuSrn7GbvguEOv7vgwIsMlyFFQJ+kMjluV2DRBF90irJ6315v
         EgHWNssvLqjhPx7ryNWq8TU+NI5QIB1wqX6uGL89AForgMlJhaDOhRP/rvOd9aPvHyxK
         ZlzyUPY/4+77/stksYImNi8hPwPvSQyn3zkBZst1LMqv5pzMI3xVA2nEFLnNUhzMyv86
         4aH1poKqR/v4pKGf0ZbpxlWQUcWINICQtyMjq32brSpO0uIsdXktrjc1AWegRIv+CJ4r
         Et0hQVUP7rnuYa11A9R9nUG6hEIOGLdVyA5Z1AQozH+GWSZrU00adFG1LAv3cqcLId5r
         1xSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eU1RCaUM8gT3Qi1alTTjoD/aPi8L66QRRMGja44Ag3k=;
        b=evU9vI5bEn662Ww+b7q0hsOZ+IfUC5ygWd7PK+p68pSrLITzW6ND2PqqTwEczD4V2x
         OqDprZ4HF4uVUQl1S2d8T8TcHiRHMuAqrrOpvLo6c/GeY4D4ursgVbj8exOi7/baDLRG
         31i8v2QgOH1gmZHMrKX31WGJdlyQjT9Qrn+Qox12QfGw3eVV5mpDuMDW+HuISEDhH4Li
         jUNEnJI0TRKVgwC+hQgQfUNqZGcHoPJkrlWOBmsytQU44Q7QD/XyfrVe94b5fJomI1PX
         etU7/BJCKTimtLhcCjmxlLB0Si4/o+Qbum6JaTAFFyNFQv7dSP5neSmyZHIxVLteIOOe
         fTMQ==
X-Gm-Message-State: AElRT7EwUllPb0u8vzq5gR+CLFjl4iQDQvtUCz2xt4G3BtaPUx1UEW6x
	QbdrMvSwUp1kkpr9lwMsr88=
X-Received: by 2002:a17:902:b088:: with SMTP id p8-v6mr2847506plr.235.1521570616304;
        Tue, 20 Mar 2018 11:30:16 -0700 (PDT)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-20-23.resnet.ucsb.edu. [169.231.20.23])
        by smtp.gmail.com with ESMTPSA id j188sm5495253pfc.7.2018.03.20.11.30.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Mar 2018 11:30:14 -0700 (PDT)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: airlied@redhat.com
Cc: kraxel@redhat.com,
	airlied@linux.ie,
	virtualization@lists.linux-foundation.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	seanpaul@chromium.org,
	daniel.vetter@intel.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] drm/qxl: Replace drm_gem_object_reference/unreference() with _get/put()
Date: Tue, 20 Mar 2018 11:29:27 -0700
Message-Id: <1521570567-22519-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace drm_gem_object_reference/unreference function with *_get/put()
suffixes, because it is shorter and consistent with the kernel
kref_get/put() functions. The following Coccinelle script was used:

@@
expression e;
@@

(
-drm_gem_object_reference(e);
+drm_gem_object_get(e);
|
-drm_gem_object_unreference(e);
+drm_gem_object_put(e);
|
-drm_gem_object_unreference_unlocked(e);
+drm_gem_object_put_unlocked(e);
)

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/gpu/drm/qxl/qxl_display.c | 4 ++--
 drivers/gpu/drm/qxl/qxl_dumb.c    | 2 +-
 drivers/gpu/drm/qxl/qxl_fb.c      | 6 +++---
 drivers/gpu/drm/qxl/qxl_gem.c     | 2 +-
 drivers/gpu/drm/qxl/qxl_ioctl.c   | 4 ++--
 drivers/gpu/drm/qxl/qxl_object.c  | 6 +++---
 6 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
index 9a9214a..ecb35ed 100644
--- a/drivers/gpu/drm/qxl/qxl_display.c
+++ b/drivers/gpu/drm/qxl/qxl_display.c
@@ -309,7 +309,7 @@ void qxl_user_framebuffer_destroy(struct drm_framebuffer *fb)
 	struct qxl_bo *bo = gem_to_qxl_bo(qxl_fb->obj);
 
 	WARN_ON(bo->shadow);
-	drm_gem_object_unreference_unlocked(qxl_fb->obj);
+	drm_gem_object_put_unlocked(qxl_fb->obj);
 	drm_framebuffer_cleanup(fb);
 	kfree(qxl_fb);
 }
@@ -1215,7 +1215,7 @@ qxl_user_framebuffer_create(struct drm_device *dev,
 	ret = qxl_framebuffer_init(dev, qxl_fb, mode_cmd, obj, &qxl_fb_funcs);
 	if (ret) {
 		kfree(qxl_fb);
-		drm_gem_object_unreference_unlocked(obj);
+		drm_gem_object_put_unlocked(obj);
 		return NULL;
 	}
 
diff --git a/drivers/gpu/drm/qxl/qxl_dumb.c b/drivers/gpu/drm/qxl/qxl_dumb.c
index 11085ab..c666b89 100644
--- a/drivers/gpu/drm/qxl/qxl_dumb.c
+++ b/drivers/gpu/drm/qxl/qxl_dumb.c
@@ -82,6 +82,6 @@ int qxl_mode_dumb_mmap(struct drm_file *file_priv,
 		return -ENOENT;
 	qobj = gem_to_qxl_bo(gobj);
 	*offset_p = qxl_bo_mmap_offset(qobj);
-	drm_gem_object_unreference_unlocked(gobj);
+	drm_gem_object_put_unlocked(gobj);
 	return 0;
 }
diff --git a/drivers/gpu/drm/qxl/qxl_fb.c b/drivers/gpu/drm/qxl/qxl_fb.c
index 23af3e3..3388914 100644
--- a/drivers/gpu/drm/qxl/qxl_fb.c
+++ b/drivers/gpu/drm/qxl/qxl_fb.c
@@ -95,7 +95,7 @@ static void qxlfb_destroy_pinned_object(struct drm_gem_object *gobj)
 	qxl_bo_kunmap(qbo);
 	qxl_bo_unpin(qbo);
 
-	drm_gem_object_unreference_unlocked(gobj);
+	drm_gem_object_put_unlocked(gobj);
 }
 
 int qxl_get_handle_for_primary_fb(struct qxl_device *qdev,
@@ -316,11 +316,11 @@ static int qxlfb_create(struct qxl_fbdev *qfbdev,
 		qxl_bo_unpin(qbo);
 	}
 	if (fb && ret) {
-		drm_gem_object_unreference_unlocked(gobj);
+		drm_gem_object_put_unlocked(gobj);
 		drm_framebuffer_cleanup(fb);
 		kfree(fb);
 	}
-	drm_gem_object_unreference_unlocked(gobj);
+	drm_gem_object_put_unlocked(gobj);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/qxl/qxl_gem.c b/drivers/gpu/drm/qxl/qxl_gem.c
index 85f5467..f5c1e78 100644
--- a/drivers/gpu/drm/qxl/qxl_gem.c
+++ b/drivers/gpu/drm/qxl/qxl_gem.c
@@ -98,7 +98,7 @@ int qxl_gem_object_create_with_handle(struct qxl_device *qdev,
 		return r;
 	/* drop reference from allocate - handle holds it now */
 	*qobj = gem_to_qxl_bo(gobj);
-	drm_gem_object_unreference_unlocked(gobj);
+	drm_gem_object_put_unlocked(gobj);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/qxl/qxl_ioctl.c b/drivers/gpu/drm/qxl/qxl_ioctl.c
index e8c0b10..e238a1a 100644
--- a/drivers/gpu/drm/qxl/qxl_ioctl.c
+++ b/drivers/gpu/drm/qxl/qxl_ioctl.c
@@ -121,7 +121,7 @@ static int qxlhw_handle_to_bo(struct drm_file *file_priv, uint64_t handle,
 	qobj = gem_to_qxl_bo(gobj);
 
 	ret = qxl_release_list_add(release, qobj);
-	drm_gem_object_unreference_unlocked(gobj);
+	drm_gem_object_put_unlocked(gobj);
 	if (ret)
 		return ret;
 
@@ -343,7 +343,7 @@ static int qxl_update_area_ioctl(struct drm_device *dev, void *data,
 	qxl_bo_unreserve(qobj);
 
 out:
-	drm_gem_object_unreference_unlocked(gobj);
+	drm_gem_object_put_unlocked(gobj);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/qxl/qxl_object.c b/drivers/gpu/drm/qxl/qxl_object.c
index f6b80fe..e9fb0ab 100644
--- a/drivers/gpu/drm/qxl/qxl_object.c
+++ b/drivers/gpu/drm/qxl/qxl_object.c
@@ -211,13 +211,13 @@ void qxl_bo_unref(struct qxl_bo **bo)
 	if ((*bo) == NULL)
 		return;
 
-	drm_gem_object_unreference_unlocked(&(*bo)->gem_base);
+	drm_gem_object_put_unlocked(&(*bo)->gem_base);
 	*bo = NULL;
 }
 
 struct qxl_bo *qxl_bo_ref(struct qxl_bo *bo)
 {
-	drm_gem_object_reference(&bo->gem_base);
+	drm_gem_object_get(&bo->gem_base);
 	return bo;
 }
 
@@ -318,7 +318,7 @@ void qxl_bo_force_delete(struct qxl_device *qdev)
 		list_del_init(&bo->list);
 		mutex_unlock(&qdev->gem.mutex);
 		/* this should unref the ttm bo */
-		drm_gem_object_unreference_unlocked(&bo->gem_base);
+		drm_gem_object_put_unlocked(&bo->gem_base);
 	}
 }
 
-- 
2.7.4


