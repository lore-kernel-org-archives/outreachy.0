X-GM-THRID: 6618628196583604224
X-Received: by 2002:a02:1685:: with SMTP id a127-v6mr3656958jaa.9.1541019463346;
        Wed, 31 Oct 2018 13:57:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5dc6:: with SMTP id w189-v6ls3366501ita.4.canary-gmail;
 Wed, 31 Oct 2018 13:57:42 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cP0Hg6bbTSrHFnGO5QlLliKRxBGA1ByFRRQGtl9e1o1Dte3+OAzMT5AE13191/lK6KCHpP
X-Received: by 2002:a24:2795:: with SMTP id g143-v6mr3248821ita.38.1541019462574;
        Wed, 31 Oct 2018 13:57:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541019462; cv=none;
        d=google.com; s=arc-20160816;
        b=h8X5nVBny9tA1QuxnsaSvlO1+YqNQqkZsPVGWBUaeo+gwSleuSqH1UtV/MCvP0iYtv
         XIP89uHLt7ecnVK6ZrKjks5EYSQHmP4M8lbtGTavUZqpsj0aSfGHYosYaWEOrAu5DFmh
         sGS2Gg/d7+3xgXpXYD9xn+l2uQv+nafzPZrf3Z6QCLh/sPPR7AEWHjgmIVlmDlSxZqcS
         Mw42FRb6l4lHooeSgRTnSxhUoLz7f3C6Z9fsRlfO5cGqrOjYzDBVnbk5djjsKtdLgYxO
         b3504y4FEqTbSiMUU3ThF1Hdu7qwHoXOwZFhY6Y74dBnzniuen7S31EGFSRyVYc9d3pf
         kjLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=P/+YaClhl463b55HNkEDJSmrYu6HJuE62UikqKKubfI=;
        b=okwMmEwn/tndA9SIQ9DOgy/txP46Agw013UB6lzP8a4wh/LV6dKulE6NMKPi6ct7pb
         kB7TI1oiJeMHETQwbQIyMNjVY8pQNNeRUuJEzhcjsLF/viCfufNdfyFo1mLxzmFb/4hF
         ak0hKL6IWzT1cw5MLz4Qtsaa6oe5i0x496xrIAj8i1tEe2SWetsB6/m3X3mvGmbuyaxg
         DfOWTB1y9kYj18Uefy1LJnxqbUUIbK8VQDrEPzrDmCv28Xuix6jHTxWXxzVm34tzV3DE
         mav645r2QO2Gt9mMl8WbqUl/EjKcrJpPyXQK1jU5NVMxFK82KUTjbzROHtLDw/AtA+Cs
         IDkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BRJ9FWO6;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com. [2607:f8b0:4864:20::730])
        by gmr-mx.google.com with ESMTPS id a75-v6si365553itc.1.2018.10.31.13.57.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 13:57:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) client-ip=2607:f8b0:4864:20::730;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BRJ9FWO6;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x730.google.com with SMTP id v68-v6so11034766qka.2
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 13:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=P/+YaClhl463b55HNkEDJSmrYu6HJuE62UikqKKubfI=;
        b=BRJ9FWO6fUu0YJQeL50LI6vGFyl/xRz/WGPUv9rzD8YWGbevwthS8v6eWkiNQYyWaH
         R+bxH2SxYzO69xv56kyjPVVZPEyI5PR/o8aw3zdXJAK+1KaXFc9+02gMSgECXe6HMren
         QEW6ERccqbbjooglY0PLtMhEZtI1yMRARcflSFpRyR1WjWAwWx673SFH/wMxg3a2TRrZ
         apimM2jbB7MFJr6+0XEJhdu0A8ZHwRn10XTf7z307G1LcY55QIW0zzwCR4rPkqQ2kvOd
         EP3jIi33UqKut4hDCbfJmGDF6hzEcvzIGicK5kbL8yZzzDD/KqjWaBPKesz/kjKUQYk/
         kIsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=P/+YaClhl463b55HNkEDJSmrYu6HJuE62UikqKKubfI=;
        b=ZFQtpBgAXkiN375XFv3ctstA1hVgKFHggSlHh8m44hinBVBp4dWN09q9l71PtI6RLG
         FIWjtdMHdsT43pUcMngQ45uKrpDzHaBFFH9ZM/rjbfQ6iFe2NgqE6MOr269NiU5lA3t8
         og60KB6vrDF9vgRqoMkDLFFWNp8a+hAXygW1tc6VAaCe3dncj/+NG4l58q1W8eGrMOwH
         Ny62HNy5ObvO9RDJAvVXwUWZwJeIfVj0dToF80/WU412rNQvEJ6e/FfPiwdGv5L/IEae
         l1Ah6gv8Zd7aHHk2aCK+8r7a4U9WZFrr8NG8aoaH6WicFz0i1vtzmP0pH5xQN2kJd9io
         K1Ng==
X-Gm-Message-State: AGRZ1gKtQVlSTERh0NaP9XMiO86OVqyFSbjVMuNKdkW9xBD9LO9GNNA0
	9AnyiIscdK/qasOHBoHHcXU=
X-Received: by 2002:a37:9e44:: with SMTP id h65mr4129485qke.300.1541019462076;
        Wed, 31 Oct 2018 13:57:42 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id o63-v6sm9119499qka.16.2018.10.31.13.57.39
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 13:57:41 -0700 (PDT)
Date: Wed, 31 Oct 2018 17:57:37 -0300
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] drm: Rename crtc_idr as object_idr to KMS cleanups
Message-ID: <20181031205737.cingeaqget7hkbs6@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

Rename 'drm_mode_config.crtc_idr' as 'drm_mode_config.object_idr',
as proposed in the task description in TODO list for KMS cleanups.

Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
---
 drivers/gpu/drm/drm_lease.c       | 6 +++---
 drivers/gpu/drm/drm_mode_config.c | 4 ++--
 drivers/gpu/drm/drm_mode_object.c | 8 ++++----
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/drm_lease.c b/drivers/gpu/drm/drm_lease.c
index f4702f23c11d..4f8de2217049 100644
--- a/drivers/gpu/drm/drm_lease.c
+++ b/drivers/gpu/drm/drm_lease.c
@@ -222,7 +222,7 @@ static struct drm_master *drm_lease_create(struct drm_master *lessor, struct idr
 
 	idr_for_each_entry(leases, entry, object) {
 		error = 0;
-		if (!idr_find(&dev->mode_config.crtc_idr, object))
+		if (!idr_find(&dev->mode_config.object_idr, object))
 			error = -ENOENT;
 		else if (!_drm_lease_held_master(lessor, object))
 			error = -EACCES;
@@ -438,7 +438,7 @@ static int fill_object_idr(struct drm_device *dev,
 		/*
 		 * We're using an IDR to hold the set of leased
 		 * objects, but we don't need to point at the object's
-		 * data structure from the lease as the main crtc_idr
+		 * data structure from the lease as the main object_idr
 		 * will be used to actually find that. Instead, all we
 		 * really want is a 'leased/not-leased' result, for
 		 * which any non-NULL pointer will work fine.
@@ -679,7 +679,7 @@ int drm_mode_get_lease_ioctl(struct drm_device *dev,
 
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
-- 
2.19.1


