X-GM-THRID: 6532398432427966464
X-Received: by 10.202.225.66 with SMTP id y63mr131721oig.42.1520942531101;
        Tue, 13 Mar 2018 05:02:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.26.6 with SMTP id a6ls8767743ote.16.gmail; Tue, 13 Mar
 2018 05:02:09 -0700 (PDT)
X-Google-Smtp-Source: AG47ELv6/o0numfj/Jc3dLUDSHAY/2FVKZwgMC4ECoVYJHbb3UjN4tmaqBgmayiFJ/aK+aLPx7pg
X-Received: by 10.157.114.17 with SMTP id u17mr128330otj.16.1520942529106;
        Tue, 13 Mar 2018 05:02:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1520942529; cv=none;
        d=google.com; s=arc-20160816;
        b=wppb9cvfzK1JoLiydcvK6B06AZ1tV05xlMDtUVNYccHXSC0R4JlYwD+JE0p3CF/FzF
         ymYMyGTO9WOdW8uGMLWS1hYfH38x7bUaS4qOeyOK8TX061DDkBoX8Yay7/0y0cCVVqSg
         Sr2drhVCq4p9poV8zfHx8G8QZTEQwG5onKdFKfWzI10fKDT7Hy/RN91tSFJaEl66f0xQ
         yes2ANrlf9JhkMgIWBbWK4qjan65Y9UXn2+/0MD5mO3CItwnW5X2r8Iy3S/TWbTzBYPb
         jr10YNTnopOnAG6Thf42ng4yoTQQK/SOZdsPVbPJYRFxqeyoUqdIqM4pTN5XD5h0AYc1
         m0bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=+s1plrU1UFvbIgXzAkVBbb7xrxmWqQsIzL1+k4+g1JE=;
        b=UjfzAgKs/ESelgs8VTsK/WGGQixYqykf8Th80YzBSOVK9/1lGFcNIhzTWTSCktCVs+
         ygl/C/ooTXzys9hr0mkQksP+71Ai11JDgQasfa1voQQikj8TfIiWiKQyivD/RTOml2X/
         vQbbd7RrLnIt4wvZeo7JBlZBpKKrkn3JizqnZ8T5vk+FPfXs/B2IGoepeBXQv6QXe1UU
         1RutqYFENrS6C5ggSI4xKwnkqVrgaQGwN+wJSS++yIhE+SXnbuSmiier/S+7IPUdUP5F
         cgODGyvF3+VUNbqXH0lj2ARCJ7oiZdWZhkr8RlLv9RZ4Dn4+oDNrrQegZN7ryE6Ei1G4
         HZIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LMd7JKd4;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id l10si6271oth.1.2018.03.13.05.02.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Mar 2018 05:02:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LMd7JKd4;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x244.google.com with SMTP id v90so22301206qte.12
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Mar 2018 05:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+s1plrU1UFvbIgXzAkVBbb7xrxmWqQsIzL1+k4+g1JE=;
        b=LMd7JKd4Oqf+NfCP4m7WS/W9rReq4hCK4YXtt3r2w+nvJQhrptaHYTp3+u931/f0Re
         d8Oi1elQWztN+0ghdoaVty4BSAFLhkoD2qEZoJsjxk1qaancXnUu1i3Li9Mij0Y0DV2Y
         KTfn97U0+S2Ya/jFSgC8KY0XBP9+CrrMKEvRzgLd8dAKiO3bjBRuYoGcvk0fVRv3PgCh
         B8LGnddpWhKnhrzA/cGozVWM1MfD59+q+QmMrRW+R3xpUnwkeJH4BZ0zxCBWluCRwOlQ
         Sfguwl9JkFxgJn2ryj+8pliZ+Bf4Cqflba41g2Zhgh9OShGslOQAesvpCBoUoMBEa/aR
         /K8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+s1plrU1UFvbIgXzAkVBbb7xrxmWqQsIzL1+k4+g1JE=;
        b=C6QUjhK+cUz0Ng9jZz9cvdNfGXDYgz51R/grl9SY1ibilq7ZHzzY0o9obFrylIHrKp
         B9AJvmnJYl7bofFhCcJMFE/Cz1rzFgey6XYIORg2hndrPF1AORrzPPZTEIYK5nAO1f5b
         PX2Y3N+Jw7XKAWwuShnNGNqBLXQvNg28YyXbUpi7nUzikv81EIjMMgPY1KrZW9ncuaAw
         2hUL+/mMSWU0j93kOrx5ftw6g+HBVHdDRDK9RKKZtRyH+mOZEuRy6KbQOn93gv/ThDcL
         qGXMNT7f4KjuyAszRBSqfnBmOvTGqSpkMbXUT4QFPi5+h7bBNDCnUI6Kf8Gav8F3VX4W
         yaCA==
X-Gm-Message-State: AElRT7HIZUwUgao9J5ALifluD3W+RwMabNIp7T56peVTRVnyKjjaqV6y
	jYzPf80QhnQnUvIumOR5DkM=
X-Received: by 10.200.56.109 with SMTP id r42mr577366qtb.125.1520942528516;
        Tue, 13 Mar 2018 05:02:08 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([2601:184:4881:288:55e9:133d:c79:d67e])
        by smtp.gmail.com with ESMTPSA id f54sm27027qta.87.2018.03.13.05.02.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Mar 2018 05:02:07 -0700 (PDT)
Date: Tue, 13 Mar 2018 08:02:05 -0400
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Daniel Vetter <daniel.vetter@intel.com>,
	Gustavo Padovan <gustavo@padovan.org>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>
Cc: outreachy-kernel@googlegroups.com, hamohammed.sa@gmail.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH DRM] drm: Introduce drm_global_item_{get/put}()
Message-ID: <20180313120205.GA12094@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

For consistency with other reference counting APIs in the kernel,
introduce drm_global_item_{get/put} functions instead of
drm_global_item_{ref/unref}.

Compatibility aliases are added to keep existing code working.

The semantic patch scripts/coccinelle/api/drm-get-put.cocci has been
extended to account for the new helpers.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/gpu/drm/drm_global.c             | 43 +++++++++++++++++++++++++++-----
 include/drm/drm_global.h                 |  2 ++
 scripts/coccinelle/api/drm-get-put.cocci | 10 ++++++++
 3 files changed, 49 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_global.c b/drivers/gpu/drm/drm_global.c
index b2dc21e..76cf948 100644
--- a/drivers/gpu/drm/drm_global.c
+++ b/drivers/gpu/drm/drm_global.c
@@ -64,7 +64,7 @@ void drm_global_release(void)
 }
 
 /**
- * drm_global_item_ref - Initialize and acquire reference to memory
+ * drm_global_item_get - Initialize and acquire reference to memory
  * object
  * @ref: Object for initialization
  *
@@ -75,7 +75,7 @@ void drm_global_release(void)
  * Returns:
  * Zero on success, non-zero otherwise.
  */
-int drm_global_item_ref(struct drm_global_reference *ref)
+int drm_global_item_get(struct drm_global_reference *ref)
 {
 	int ret = 0;
 	struct drm_global_item *item = &glob[ref->global_type];
@@ -107,10 +107,10 @@ int drm_global_item_ref(struct drm_global_reference *ref)
 	mutex_unlock(&item->mutex);
 	return ret;
 }
-EXPORT_SYMBOL(drm_global_item_ref);
+EXPORT_SYMBOL(drm_global_item_get);
 
 /**
- * drm_global_item_unref - Drop reference to memory
+ * drm_global_item_put - Drop reference to memory
  * object
  * @ref: Object being removed
  *
@@ -120,7 +120,7 @@ EXPORT_SYMBOL(drm_global_item_ref);
  *
  */
 
-void drm_global_item_unref(struct drm_global_reference *ref)
+void drm_global_item_put(struct drm_global_reference *ref)
 {
 	struct drm_global_item *item = &glob[ref->global_type];
 
@@ -133,5 +133,36 @@ void drm_global_item_unref(struct drm_global_reference *ref)
 	}
 	mutex_unlock(&item->mutex);
 }
-EXPORT_SYMBOL(drm_global_item_unref);
+EXPORT_SYMBOL(drm_global_item_put);
 
+/**
+ * drm_global_item_ref - Initialize and acquire reference to memory
+ * object
+ * @ref: Object for initialization
+ *
+ * This is a compatibility alias for drm_global_item_get() and should
+ * not be used by new code.
+ *
+ * Returns:
+ * Zero on success, non-zero otherwise.
+ */
+int drm_global_item_ref(struct drm_global_reference *ref)
+{
+	return drm_global_item_get(ref);
+}
+EXPORT_SYMBOL(drm_global_item_ref);
+
+/**
+ * drm_global_item_unref - Drop reference to memory
+ * object
+ * @ref: Object being removed
+ *
+ * This is a compatibility alias for drm_global_item_get() and should not
+ * be used by new code.
+ */
+
+void drm_global_item_unref(struct drm_global_reference *ref)
+{
+	drm_global_item_put(ref);
+}
+EXPORT_SYMBOL(drm_global_item_unref);
diff --git a/include/drm/drm_global.h b/include/drm/drm_global.h
index 3a83060..5eb6f0c 100644
--- a/include/drm/drm_global.h
+++ b/include/drm/drm_global.h
@@ -47,6 +47,8 @@ struct drm_global_reference {
 
 void drm_global_init(void);
 void drm_global_release(void);
+int drm_global_item_get(struct drm_global_reference *ref);
+void drm_global_item_put(struct drm_global_reference *ref);
 int drm_global_item_ref(struct drm_global_reference *ref);
 void drm_global_item_unref(struct drm_global_reference *ref);
 
diff --git a/scripts/coccinelle/api/drm-get-put.cocci b/scripts/coccinelle/api/drm-get-put.cocci
index 91fceb8..db1c465 100644
--- a/scripts/coccinelle/api/drm-get-put.cocci
+++ b/scripts/coccinelle/api/drm-get-put.cocci
@@ -54,6 +54,12 @@ expression object;
 |
 - drm_dev_unref(object)
 + drm_dev_put(object)
+|
+- drm_global_item_ref(object)
++ drm_global_item_get(object)
+|
+- drm_global_item_unref(object)
++ drm_global_item_put(object)
 )
 
 @r depends on report@
@@ -87,6 +93,10 @@ drm_property_unreference_blob@p(object)
 drm_property_reference_blob@p(object)
 |
 drm_dev_unref@p(object)
+|
+drm_global_item_ref@p(object)
+|
+drm_global_item_unref@p(object)
 )
 
 @script:python depends on report@
-- 
2.7.4


