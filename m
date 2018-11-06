X-GM-THRID: 6618628196583604224
X-Received: by 2002:a62:c52:: with SMTP id u79-v6mr9298978pfi.102.1541521217918;
        Tue, 06 Nov 2018 08:20:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8219:: with SMTP id k25-v6ls4444406pfi.5.gmail; Tue, 06
 Nov 2018 08:20:17 -0800 (PST)
X-Google-Smtp-Source: AJdET5ey4cUVFKlfwUBjtZDF/Y0yeB+vb/CAR26lJwkJgmxOqYEVx8E16i1Q/1OVvNVyGOmZ3yxY
X-Received: by 2002:a63:a01:: with SMTP id 1mr1336273pgk.149.1541521217170;
        Tue, 06 Nov 2018 08:20:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541521217; cv=none;
        d=google.com; s=arc-20160816;
        b=iu0OcQgz1i5qB5uSxfwgLBVgv3i6lz85y2Wo3DjIG2GYHTyjfO1q7W+iniNNaviuzs
         jwY/d4py8hFReZI+tyrWehuprGYctnFz397uEFW3LMQYoiW7hE2hH3SBB86SoiULjRsX
         oXJJS0rMifHK5Pv0myaczhiQHcd3Q769A4ixgKupcyd88KyuICSG5usoMXzh0PNrtzFZ
         YpoPrHjxD2fuxy1ogCuFZBuZAMjJiO0Va47HtQ0pT7ZgMhMjwui1KLFV5DMbuA3UeHs8
         Yidg8RqqAnA4qPFEYK8EpGhojGTI7Jhg27Rp3BUCf6idET7JGuezLNQytp1SEDiNAufS
         gzWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=M1jct51NouuWowl8d6PZRlHpN7bjDs8mqzL9LudzrXg=;
        b=OySGTnORuxeNSSgPm4PH8wtYCzAgeiu+z9etYvFAAbsJkZkUL6HOo5MkPGmmimlrKk
         HzVeG9CIUVxM3dAAtT4U+7faeckpdhJIJVxjPHuU9e/5DqmTkBLYbosRb0dWbODytPo1
         0+QF4cujqYOT9iIVZuWwYBS88IadcPbQXrdPotQQ9fxjTEbPmtbf7heHMjkLPLFfMeMt
         ZiWccZ7+EyA3aRyFRaqLO87ZNZj2c6t7V9BTDnQPiAd7zbUH49r6NwksIkHnn20asp8v
         zsKeVLqjJacquf9y6ayl8dVHV4Sr01a7wBdX1IWkLKr9MkjBk5UNhpNMxNcaXsvf+8ep
         0vlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e2vNpSVN;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::82f as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com. [2607:f8b0:4864:20::82f])
        by gmr-mx.google.com with ESMTPS id y18-v6si843339pll.0.2018.11.06.08.20.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Nov 2018 08:20:17 -0800 (PST)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::82f as permitted sender) client-ip=2607:f8b0:4864:20::82f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e2vNpSVN;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::82f as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82f.google.com with SMTP id p35so3229393qtc.4
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Nov 2018 08:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=M1jct51NouuWowl8d6PZRlHpN7bjDs8mqzL9LudzrXg=;
        b=e2vNpSVNczut6eRRvvLujWjNlYKxsLLyyLEJRxHUgYHueZedm8prLc/yXHDxjFRLBX
         QoFfPfFDjvYmxVikudZe4tZl/up62lXzob6rsoLwdrgJJH4EheYnensHtIFaLRUwk1Zb
         NMeNy6Do7tieuoleIkYJoMl0PnfAFhIKBRZskVzLj+zb26xvcJOyEcjglOErgOBPPmh3
         JE1SPSCzt+DRJvdPp+3ZZKmyH+XdfYhJrQlbQbs0v7CRT9HVin6p2jfpPj7sIMXYAEGg
         IFP6GyQoNjP8Nrn3kRbHkdlkFc5ez5EkAn8Oe/JHYTx8GdEzesRs6ydmIYFeJErLw7pP
         shsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=M1jct51NouuWowl8d6PZRlHpN7bjDs8mqzL9LudzrXg=;
        b=I9zHko/9PJrD6TqEXD16canoGiDs0jpCySyxsg1pRqOYu4fQc0+f2pbnextXq3amMd
         5m6LL/IEt3zexzUe7xvZe9HsSMRhapLjwMT2Ne40c0M/4SOoh+9besWj7Tzdw3B0MFqq
         L6XisQyPTwseqO5XUzjL/RZqYNkyqR2k7U8966lUmWQcvu+Bq33QwoVRiiRgfBldyf3g
         JpuVgOYoddN9wVDtNWn2CSO3PzmLLlW4TkaQB1D53Wb6WZ2BhCarIjRErn7LMNCXgBhz
         7dolXI5INEhIyabFi2qG0wgJQlDULue1uuwkUEE9EVYOpYK2kWd6ZG/4RCigXKgdE/KN
         UnTA==
X-Gm-Message-State: AGRZ1gI8N2Pv/z02hz1RsyH8scHELTDJZCL5PywzSDRmJKBb10mgy3Gs
	tOtgg2XOVq1WaJZ+lz8DlpM=
X-Received: by 2002:a0c:c611:: with SMTP id v17mr13651778qvi.68.1541521216559;
        Tue, 06 Nov 2018 08:20:16 -0800 (PST)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id 74-v6sm16436154qta.45.2018.11.06.08.20.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 06 Nov 2018 08:20:16 -0800 (PST)
Date: Tue, 6 Nov 2018 14:20:11 -0200
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] drm: Rename crtc_idr as object_idr to KMS cleanups
Message-ID: <20181106162011.daqwi2gt2eblzgub@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

This patch solves this TODO task:
 drm_mode_config.crtc_idr is misnamed, since it contains all KMS object.
 Should be renamed to drm_mode_config.object_idr.

Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>

---
Changes in v2:
 - Make commit message more clear and change header file

 drivers/gpu/drm/drm_lease.c       | 6 +++---
 drivers/gpu/drm/drm_mode_config.c | 4 ++--
 drivers/gpu/drm/drm_mode_object.c | 8 ++++----
 include/drm/drm_mode_config.h     | 6 +++---
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/drm_lease.c b/drivers/gpu/drm/drm_lease.c
index 977f069f6d90..b2cbb58834bc 100644
--- a/drivers/gpu/drm/drm_lease.c
+++ b/drivers/gpu/drm/drm_lease.c
@@ -218,7 +218,7 @@ static struct drm_master *drm_lease_create(struct drm_master *lessor, struct idr
 
 	idr_for_each_entry(leases, entry, object) {
 		error = 0;
-		if (!idr_find(&dev->mode_config.crtc_idr, object))
+		if (!idr_find(&dev->mode_config.object_idr, object))
 			error = -ENOENT;
 		else if (!_drm_lease_held_master(lessor, object))
 			error = -EACCES;
@@ -434,7 +434,7 @@ static int fill_object_idr(struct drm_device *dev,
 		/*
 		 * We're using an IDR to hold the set of leased
 		 * objects, but we don't need to point at the object's
-		 * data structure from the lease as the main crtc_idr
+		 * data structure from the lease as the main object_idr
 		 * will be used to actually find that. Instead, all we
 		 * really want is a 'leased/not-leased' result, for
 		 * which any non-NULL pointer will work fine.
@@ -675,7 +675,7 @@ int drm_mode_get_lease_ioctl(struct drm_device *dev,
 
 	if (lessee->lessor == NULL)
 		/* owner can use all objects */
-		object_idr = &lessee->dev->mode_config.crtc_idr;
+		object_idr = &lessee->dev->mode_config.object_idr;
 	else
 		/* lessee can only use allowed object */
 		object_idr = &lessee->leases;
diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
index ee80788f2c40..ab553b6465e2 100644
--- a/drivers/gpu/drm/drm_mode_config.c
+++ b/drivers/gpu/drm/drm_mode_config.c
@@ -381,7 +381,7 @@ void drm_mode_config_init(struct drm_device *dev)
 	INIT_LIST_HEAD(&dev->mode_config.property_list);
 	INIT_LIST_HEAD(&dev->mode_config.property_blob_list);
 	INIT_LIST_HEAD(&dev->mode_config.plane_list);
-	idr_init(&dev->mode_config.crtc_idr);
+	idr_init(&dev->mode_config.object_idr);
 	idr_init(&dev->mode_config.tile_idr);
 	ida_init(&dev->mode_config.connector_ida);
 	spin_lock_init(&dev->mode_config.connector_list_lock);
@@ -484,7 +484,7 @@ void drm_mode_config_cleanup(struct drm_device *dev)
 
 	ida_destroy(&dev->mode_config.connector_ida);
 	idr_destroy(&dev->mode_config.tile_idr);
-	idr_destroy(&dev->mode_config.crtc_idr);
+	idr_destroy(&dev->mode_config.object_idr);
 	drm_modeset_lock_fini(&dev->mode_config.connection_mutex);
 }
 EXPORT_SYMBOL(drm_mode_config_cleanup);
diff --git a/drivers/gpu/drm/drm_mode_object.c b/drivers/gpu/drm/drm_mode_object.c
index cd9bc0ce9be0..bb1dd46496cd 100644
--- a/drivers/gpu/drm/drm_mode_object.c
+++ b/drivers/gpu/drm/drm_mode_object.c
@@ -38,7 +38,7 @@ int __drm_mode_object_add(struct drm_device *dev, struct drm_mode_object *obj,
 	int ret;
 
 	mutex_lock(&dev->mode_config.idr_mutex);
-	ret = idr_alloc(&dev->mode_config.crtc_idr, register_obj ? obj : NULL,
+	ret = idr_alloc(&dev->mode_config.object_idr, register_obj ? obj : NULL,
 			1, 0, GFP_KERNEL);
 	if (ret >= 0) {
 		/*
@@ -79,7 +79,7 @@ void drm_mode_object_register(struct drm_device *dev,
 			      struct drm_mode_object *obj)
 {
 	mutex_lock(&dev->mode_config.idr_mutex);
-	idr_replace(&dev->mode_config.crtc_idr, obj, obj->id);
+	idr_replace(&dev->mode_config.object_idr, obj, obj->id);
 	mutex_unlock(&dev->mode_config.idr_mutex);
 }
 
@@ -99,7 +99,7 @@ void drm_mode_object_unregister(struct drm_device *dev,
 {
 	mutex_lock(&dev->mode_config.idr_mutex);
 	if (object->id) {
-		idr_remove(&dev->mode_config.crtc_idr, object->id);
+		idr_remove(&dev->mode_config.object_idr, object->id);
 		object->id = 0;
 	}
 	mutex_unlock(&dev->mode_config.idr_mutex);
@@ -131,7 +131,7 @@ struct drm_mode_object *__drm_mode_object_find(struct drm_device *dev,
 	struct drm_mode_object *obj = NULL;
 
 	mutex_lock(&dev->mode_config.idr_mutex);
-	obj = idr_find(&dev->mode_config.crtc_idr, id);
+	obj = idr_find(&dev->mode_config.object_idr, id);
 	if (obj && type != DRM_MODE_OBJECT_ANY && obj->type != type)
 		obj = NULL;
 	if (obj && obj->id != id)
diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
index d643d268693e..4750fccb5b4a 100644
--- a/include/drm/drm_mode_config.h
+++ b/include/drm/drm_mode_config.h
@@ -385,18 +385,18 @@ struct drm_mode_config {
 	/**
 	 * @idr_mutex:
 	 *
-	 * Mutex for KMS ID allocation and management. Protects both @crtc_idr
+	 * Mutex for KMS ID allocation and management. Protects both @object_idr
 	 * and @tile_idr.
 	 */
 	struct mutex idr_mutex;
 
 	/**
-	 * @crtc_idr:
+	 * @object_idr:
 	 *
 	 * Main KMS ID tracking object. Use this idr for all IDs, fb, crtc,
 	 * connector, modes - just makes life easier to have only one.
 	 */
-	struct idr crtc_idr;
+	struct idr object_idr;
 
 	/**
 	 * @tile_idr:
-- 
2.19.1


