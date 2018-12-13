X-GM-THRID: 6634593201522999296
X-Received: by 2002:a24:6c93:: with SMTP id w141mr795459itb.35.1544736605630;
        Thu, 13 Dec 2018 13:30:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:ac6a:: with SMTP id m42ls1219448iti.3.gmail; Thu, 13 Dec
 2018 13:30:04 -0800 (PST)
X-Google-Smtp-Source: AFSGD/WP93cgyK2ArJiwkG28bRqaMinJlZchHC0LHwyBWaDuprgWA8y0fk9+FX2AGhgT71zF0mnq
X-Received: by 2002:a24:2f0e:: with SMTP id j14mr870461itj.14.1544736604565;
        Thu, 13 Dec 2018 13:30:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1544736604; cv=none;
        d=google.com; s=arc-20160816;
        b=saipfEgr9x6ejB+fngWOiuxV9Qyam07oJBAlT6d3QJk0GHxRKj3AW1MLxeeT2P0cDL
         yp2Q7azUdBgP0/InE9PXBSRLv6rOKS75tBv0up5znN25ir0WzhD6r8JQqa/JTbmgEv+6
         tJ3aZnwZKGZkewUSj1iy1naN+ayvVJ0oyjzV3S84qpz7R/qgis+0cKl0f9++Gao2aCUv
         n1OSOTScioXtdcvEGbe8GZYr6rvagD5ziJlYaLUpHewViEU3Y1lhQ9UNaXqPSDUb3ARU
         Ct277Ap+OQUYh7fEkTYyO0f8nFt8LM3Rzccm5fzCdHscjLmVusR6jbMAySH5dx5q03Vw
         uC7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=M1jct51NouuWowl8d6PZRlHpN7bjDs8mqzL9LudzrXg=;
        b=B/3moN85EX9QEcrZCrNPtCMTpfymGbfkCKCjz7mdhfMONvhphIuajARuJLqftNvma6
         FdTn+cnXWY2FfQIIoutDdqtWbAgf5+kl68ofm68wEYp4EaNK1DRDPQB71T/qdl0UA3gh
         PWnFgkFqr8mvmr6rxYzEQqfs3BAz1BtwvsJsfUGnx32TuInB6z2cjREIEcaGxfqTW3Dy
         xq3+7cS58G8+D7yPzPrQ9uUFF3KiA65if7xJ0neWHhfDpUNUwovYStDG6MmW2KXou93S
         4uY6oXxYeozh8gB0b2ISS7ohtmJBEIfXHSfbAHIwcUArzGXH1PWpdlhXq5LG7hD+5AfT
         XXYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PlfzYqT2;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id m65si991798itb.4.2018.12.13.13.30.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Dec 2018 13:30:04 -0800 (PST)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PlfzYqT2;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id d19so3902119qtq.9
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Dec 2018 13:30:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=M1jct51NouuWowl8d6PZRlHpN7bjDs8mqzL9LudzrXg=;
        b=PlfzYqT29n0B84Tz1v4gGi9OGAP1N9qef6S47dZmxaUKDlVL/V5NdHVUhDLJgXBYLQ
         07TY29iH47GN7jf3YN2VJLrk+XbRJPrWKfDW+nYYNTRogGoXxD7fW5gYy1jFQW/+q7BA
         LECOZfVD56Dm22xIi37XCpqBFt0DtC9HngswCMECAFwbZhLCPWuF59y4RILm95JVYaQ5
         YsWueOeOQppTrfAbo/TM2Err8lCJlh4LR3svpxi5mkRfVp3F2aQCSLdxBbn+ymxF37ro
         8myGs9OTzniPvbqaxHivstt+rEy/TZ3wWj55JkESDfu40sAvVLaYd8X02SwO4wzZ/UJE
         aOBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=M1jct51NouuWowl8d6PZRlHpN7bjDs8mqzL9LudzrXg=;
        b=cuvweXCkO4k27D7wpdZoJgKiJ1/5eTmqhcXyHg0X4c2rUuxm/Z//mGULiwizqr/L/5
         uY302ezd+jgv+nb9ShEMZccoyJaUtst9897uw7nMPiZOAWAEpZ4JHyFVsmTz3ViD8tt9
         AaX2QuFOxEblCbXo/PbbuwoqoXScTAP0fr+VcJ7/68KAP5Y1qSDQFPq/uXD/Sv4fRfMp
         auQwhOXfRcGBkaUZ/OdDFMG2Dz3KpJTmAyZAihZTVU4PRTERQN6WN/YKREoJn78X5PZh
         a1grUlA70wiJo3xGYumLLfHAg9ysxQSQPpNQZ/Un5fXAXuQwZcoYOiKeKrWyzSU99/gm
         wALg==
X-Gm-Message-State: AA+aEWaGaShtBqPDO88959Vmqb+CAlCIINX9hGBH1MoauQQXMSQ0O7ku
	f/1VCMarIIx1xPUO/y3AGP0=
X-Received: by 2002:a0c:ba24:: with SMTP id w36mr460071qvf.60.1544736604084;
        Thu, 13 Dec 2018 13:30:04 -0800 (PST)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id r56sm1944559qtj.30.2018.12.13.13.30.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 13 Dec 2018 13:30:03 -0800 (PST)
Date: Thu, 13 Dec 2018 19:29:57 -0200
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v2] drm: Rename crtc_idr as object_idr to KMS cleanups
Message-ID: <20181213212957.vkitkyl5cj2qh7qr@smtp.gmail.com>
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


