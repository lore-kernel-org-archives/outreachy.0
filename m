X-GM-THRID: 6534531198530617344
X-Received: by 10.202.212.73 with SMTP id l70mr1568037oig.12.1521439104808;
        Sun, 18 Mar 2018 22:58:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.23.24 with SMTP id j24ls1353670oii.10.gmail; Sun, 18 Mar
 2018 22:58:23 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt8ZAkcvY64MR1cEYLWvSNW4iB/PiJQBdVrS9P80qgJ8/hGHpoDq5qK6/rcV9OZtl/1ijUO
X-Received: by 10.202.219.67 with SMTP id s64mr4596851oig.63.1521439103863;
        Sun, 18 Mar 2018 22:58:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521439103; cv=none;
        d=google.com; s=arc-20160816;
        b=VcQ1xAmTeHUPpLfq8dcgAa53E+ta4j/O+A1L0SSV4pgZCPQqdfCdrqSBnelwupOq7w
         A7OvO+HwB+u9kkumxwZUMwr8k9tM1f5211lSmAOSswXK6tVWQoEfvs7uwweMMXDb/EXq
         AjNxw540V1TCFYWNK0HDKl/wJJI5FMpa9LcWjIuE7U2RWsycZLD7pZzQ4xn/jcewSA4J
         OP4R/DEafmBSnaS456tDhrYrD0ACPdUfXQXjmeJkc7hs+Aug2+tXvkUDPs6CkMQyGJG2
         kbalM8AOYJcn661O9beSpnm/Aty99S7GdBikdI8NuaG6i4Fwl95+RNn2386kbHUwlUh7
         q2kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=wj5XaN5d+qvOGymwQjZUqfitv4e2e7+4amG+yF7my0I=;
        b=Oc0xWrLViMYlWS5RXMr0rjbWhErDnyN4QPbonI0iG72ejWhEAtQ72PtOsJvOHxgudB
         WSxVT76qjdFPL7EvyPZjQLJE923fbr48NpnnNy+8oMgLGdIrK2ygB5S+r5R1Mp6im2nk
         5dgig0G4Q7psGO4MIUj9TUPlddGPkPcmwlDPRaucQFZ+5YBQ9JIj3v48iu3nkvWVmkTE
         d2palpNCp/1JpJlighwfxm2u+BK+hIluUoGYE/q+Tb5ktDifv6GFLCUUWWu4nvM8poIT
         XoSjvRiG/iuiGi4U/9d5F6c0NvbuUhQI6o7OwXEN0ZVp/y9LQ33yUihhJSsmWj1hBd69
         GpNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZGA8RqSC;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id w11si870245oib.0.2018.03.18.22.58.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Mar 2018 22:58:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZGA8RqSC;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id o64so1447826qkl.7
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Mar 2018 22:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wj5XaN5d+qvOGymwQjZUqfitv4e2e7+4amG+yF7my0I=;
        b=ZGA8RqSCVlqgw4IgjzoqdmQcjhCBl9i724MTbrSn259JxKnXqfqdTtWHHhXyb70nkL
         Era2ta2zcO2uD5pVBsXgABjoUubEmY/UZ5OlWRy30fc0L6dmp998uouZIW/F+cB20Ztx
         +HN9byIuufw2lxT7ylSIlYL6Obr30FQoS38sM5e0a/PbcXC7emQ9V4ARkNYpBtyF4xzj
         J55BsdAzExz/rTQr2PBzfPbNLwjPLlVK/GuU/zH+f9lUjnnBZ9htkzo1FpD6dU3PJgqM
         539jUmrCUFak+xP83yoEMIbVnrtXgXynef3gobpZ9lpXbrz1HgKaCQtq8XOmnQQh/jlI
         vK2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wj5XaN5d+qvOGymwQjZUqfitv4e2e7+4amG+yF7my0I=;
        b=mIZ7a2OLWKuSu3a6fIA1Gfpeoq3QQtDInUw6doRcKoeFyTvrFEszm7+qfGP8d9mOue
         vatlWhXe6ZfzbsXFvtejAVcEV9OL8g667HuzK5tC8o3rZaD7vFHtb+7jD9x9pQSarX22
         90nmBysttuunN8XEPBFlgWavfkiY6otpSImYybrIOdB17SMfDD/U8pS8vrjOHC8tHCkW
         6PVZ3Bz3FvCxJs0u8yJcFFzzUMCwi/A12vLTTIhXYdI+J200I3ugyLN2t9nSABI7kJsn
         rm60H280DHDZSPJQT/G69f1GcD0uBQcsCaERBLnOSJY/oXRFwvtkPeNFw3YavbP4WarX
         p+TQ==
X-Gm-Message-State: AElRT7H/b6BxuF+SZbJRGHjBN6HvLIAZKz0eMYqkCGhdNY6T0ypT+ni+
	NrKRqwbIJW0FztqD6I/+YvMT6A==
X-Received: by 10.233.239.71 with SMTP id d68mr5749413qkg.100.1521439103501;
        Sun, 18 Mar 2018 22:58:23 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-VirtualBox (c-73-89-130-249.hsd1.nh.comcast.net. [73.89.130.249])
        by smtp.gmail.com with ESMTPSA id g9sm9880403qti.11.2018.03.18.22.58.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Mar 2018 22:58:22 -0700 (PDT)
Date: Mon, 19 Mar 2018 01:58:20 -0400
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: hamohammed.sa@gmail.com
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Gustavo Padovan <gustavo@padovan.org>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com
Subject: [PATCH DRM] drm: remove drm_mode_object_{un/reference} aliases
Message-ID: <20180319055820.GA17502@haneen-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch remove the compatibility aliases
drm_mode_object_{reference/unreference} of drm_mode_object_{get/put}
since all callers have been converted to the prefered _{get/put}.

Remove the helpers from the semantic patch drm-get-put-cocci.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 include/drm/drm_mode_object.h            | 24 ------------------------
 scripts/coccinelle/api/drm-get-put.cocci | 10 ----------
 2 files changed, 34 deletions(-)

diff --git a/include/drm/drm_mode_object.h b/include/drm/drm_mode_object.h
index 7ba3913..c34a3e8 100644
--- a/include/drm/drm_mode_object.h
+++ b/include/drm/drm_mode_object.h
@@ -120,30 +120,6 @@ struct drm_mode_object *drm_mode_object_find(struct drm_device *dev,
 void drm_mode_object_get(struct drm_mode_object *obj);
 void drm_mode_object_put(struct drm_mode_object *obj);
 
-/**
- * drm_mode_object_reference - acquire a mode object reference
- * @obj: DRM mode object
- *
- * This is a compatibility alias for drm_mode_object_get() and should not be
- * used by new code.
- */
-static inline void drm_mode_object_reference(struct drm_mode_object *obj)
-{
-	drm_mode_object_get(obj);
-}
-
-/**
- * drm_mode_object_unreference - release a mode object reference
- * @obj: DRM mode object
- *
- * This is a compatibility alias for drm_mode_object_put() and should not be
- * used by new code.
- */
-static inline void drm_mode_object_unreference(struct drm_mode_object *obj)
-{
-	drm_mode_object_put(obj);
-}
-
 int drm_object_property_set_value(struct drm_mode_object *obj,
 				  struct drm_property *property,
 				  uint64_t val);
diff --git a/scripts/coccinelle/api/drm-get-put.cocci b/scripts/coccinelle/api/drm-get-put.cocci
index 91fceb8..ceb71ea 100644
--- a/scripts/coccinelle/api/drm-get-put.cocci
+++ b/scripts/coccinelle/api/drm-get-put.cocci
@@ -16,12 +16,6 @@ expression object;
 @@
 
 (
-- drm_mode_object_reference(object)
-+ drm_mode_object_get(object)
-|
-- drm_mode_object_unreference(object)
-+ drm_mode_object_put(object)
-|
 - drm_connector_reference(object)
 + drm_connector_get(object)
 |
@@ -62,10 +56,6 @@ position p;
 @@
 
 (
-drm_mode_object_unreference@p(object)
-|
-drm_mode_object_reference@p(object)
-|
 drm_connector_unreference@p(object)
 |
 drm_connector_reference@p(object)
-- 
2.7.4


