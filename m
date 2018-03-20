X-GM-THRID: 6535020696311955456
X-Received: by 2002:a25:d893:: with SMTP id p141-v6mr6643748ybg.63.1521553075339;
        Tue, 20 Mar 2018 06:37:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.93.196 with SMTP id r187ls70125ywb.32.gmail; Tue, 20 Mar
 2018 06:37:54 -0700 (PDT)
X-Google-Smtp-Source: AG47ELszz0gkBA81bHYLtJIoO5H2pZyGnzIYQEvVUeNFu4gUQczuWSoQQLbu8J50xygvP1yj/dUr
X-Received: by 10.129.240.13 with SMTP id p13mr1399617ywm.0.1521553074504;
        Tue, 20 Mar 2018 06:37:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521553074; cv=none;
        d=google.com; s=arc-20160816;
        b=Go3KvmMwXxTaYff7hlbg4RgHIosDnpEWP+9wEumByg6W+8da1z+jCkRmM/GvVvxbV0
         OIdrqZI90SbsBGjYyj5z26rbmKC+AoTRReqsKDg8Eu/wOfbZLCC2AnaTNuWFd7n4wPxP
         jqqv3d0y2mpgzGAJwG2zIt7AQWkZu9vHCFgM6IYxBCbcKQ/sxojwWnN3UIaPrwo8PQUc
         v5FZXLPYdI7WOcZDZlV/2zfKseqLD/xbFVBsOJiyubYf0hSTNNm3PLpg0wsxK4rTEc3C
         oOnoBq81Zp0MQKE3KTElm+c3Qaoa0jVOHG+OpbdZXdLkAwhq2Of9+ZzisxdamiD55pRe
         EOQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=CUFWiS4/LC2KfB9CuDf9icYvrby1qUG8dPwuex9gac4=;
        b=LxQoGyXiX3CNgpheM+8wDVuyiidfVB56JeQspBDtlPU/+zgOE5jSR+JhAPG7Gs8eKl
         LWYUbvQWhozcKgihUD5MdFaFPSDutqGe/UUzdEgsgi0A9bgEUcT8WQlh9inguXG+w9QW
         r414b0M87fwyK5bwOGnWKQ+Gh93XKspxfcIwqmYOkU4sbzbGdqQcc1fYccB1XG0rCLKw
         uGKee8jCABFYrOwK+sdrWzfr8Fftc6WbUVcUr44QlrM+R0ybs5ComgrW39KdcSb/mYPS
         YqVIIW1bwoy2xKn9QtYI5EjU8NTqtxP7LA6C4RlEMzo2a6179OxwThz1UyXgol5Fe4v3
         Sujg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t6AghNPu;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c0d::230 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-qt0-x230.google.com (mail-qt0-x230.google.com. [2607:f8b0:400d:c0d::230])
        by gmr-mx.google.com with ESMTPS id d132-v6si100187ybh.1.2018.03.20.06.37.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Mar 2018 06:37:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c0d::230 as permitted sender) client-ip=2607:f8b0:400d:c0d::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t6AghNPu;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c0d::230 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x230.google.com with SMTP id n12so1559571qtl.5
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Mar 2018 06:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CUFWiS4/LC2KfB9CuDf9icYvrby1qUG8dPwuex9gac4=;
        b=t6AghNPua+RjtLJ5GrpckpKgxy0szbtvQJ+au0Eg4Wra0DN5381z6ZqE4uqET/5+vK
         ZveQ4bD4s8IFUc17yqBPVThEBqDf1TSS/63O7XmOmTLAL6cQLvxaknyELaiz3o1uNr9l
         RFu1D1v86hS2E5bopP1b2PZZ+RFtuYXtcnnowhPwlV+EeNV8yYgQJ/1+oXYaimG+JetN
         zf91Lg/1/DXr2r+jg6Dk0hJuxA04euDxlAhB7GqnwUhLlwQNiPpEwKKKLfsjhJkPr/Nb
         DKa88FjHYtB6oAJnEButJ4gijmonDsCTlvik1EcbnOPMj9q7GsDhpi83bo6YgdwgztoP
         Z5EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CUFWiS4/LC2KfB9CuDf9icYvrby1qUG8dPwuex9gac4=;
        b=r3M5NNW+fgE2WEd6k9T1L+2pc9s27fr5TIKsHd+0TZaaqvggHvwLhQwBsONIIiBwSv
         1cFV2HM8cMnY9ifjhfaqxP45ckXzkqHVU7Yii8YZKll3Hgnzg+0yO7q1Hx/y7tvkkBDQ
         TJMKgKsUZXA3xmcgGyx25dELAhjHFTFkgX2tNADGItakYZhblpUqlQ35fAvnl2jMICXy
         GLeVe6eBRT8fdkXA9b+GPrwGx3rut3PKdlox4TYkMgtdzLo74LcdZ+1Yy/Fy86cRMXAt
         LOcE5sBJLlDO7ObSpTnivHXXB+3+dtWG9owFcGyR/h8r6Lptqh9rG4qB+aA86fx2Rl8+
         grgA==
X-Gm-Message-State: AElRT7EtZ7y2Ujy+2O3Jgiy56TNuadlG7lqfAaFUaUMVbyrFc5HgXzn8
	KH/hHmIN9mkb13N4af7llk8=
X-Received: by 10.200.56.76 with SMTP id r12mr25206455qtb.125.1521553074140;
        Tue, 20 Mar 2018 06:37:54 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-VirtualBox (nat-128-84-124-0-57.cit.cornell.edu. [128.84.124.57])
        by smtp.gmail.com with ESMTPSA id e30sm1261172qtg.1.2018.03.20.06.37.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Mar 2018 06:37:53 -0700 (PDT)
Date: Tue, 20 Mar 2018 09:37:49 -0400
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: hamohammed.sa@gmail.com
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Gustavo Padovan <gustavo@padovan.org>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	Julia Lawall <Julia.Lawall@lip6.fr>,
	Gilles Muller <Gilles.Muller@lip6.fr>,
	Nicolas Palix <nicolas.palix@imag.fr>,
	Michal Marek <michal.lkml@markovi.net>,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: [PATCH DRM] drm: Remove drm_property_{un/reference}_blob aliases
Message-ID: <20180320133749.GA11695@haneen-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch remove the compatibility aliases
drm_property_{reference/unreference}_blob of
drm_property_blob_{get/put} since all callers have been converted to the
prefered _{get/put}.

Remove the helpers from the semantic patch drm-get-put-cocci.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 include/drm/drm_property.h               | 26 --------------------------
 scripts/coccinelle/api/drm-get-put.cocci | 10 ----------
 2 files changed, 36 deletions(-)

diff --git a/include/drm/drm_property.h b/include/drm/drm_property.h
index 8a522b4..08d5dbb 100644
--- a/include/drm/drm_property.h
+++ b/include/drm/drm_property.h
@@ -279,32 +279,6 @@ struct drm_property_blob *drm_property_blob_get(struct drm_property_blob *blob);
 void drm_property_blob_put(struct drm_property_blob *blob);
 
 /**
- * drm_property_reference_blob - acquire a blob property reference
- * @blob: DRM blob property
- *
- * This is a compatibility alias for drm_property_blob_get() and should not be
- * used by new code.
- */
-static inline struct drm_property_blob *
-drm_property_reference_blob(struct drm_property_blob *blob)
-{
-	return drm_property_blob_get(blob);
-}
-
-/**
- * drm_property_unreference_blob - release a blob property reference
- * @blob: DRM blob property
- *
- * This is a compatibility alias for drm_property_blob_put() and should not be
- * used by new code.
- */
-static inline void
-drm_property_unreference_blob(struct drm_property_blob *blob)
-{
-	drm_property_blob_put(blob);
-}
-
-/**
  * drm_property_find - find property object
  * @dev: DRM device
  * @file_priv: drm file to check for lease against.
diff --git a/scripts/coccinelle/api/drm-get-put.cocci b/scripts/coccinelle/api/drm-get-put.cocci
index ceb71ea..3a09c97 100644
--- a/scripts/coccinelle/api/drm-get-put.cocci
+++ b/scripts/coccinelle/api/drm-get-put.cocci
@@ -40,12 +40,6 @@ expression object;
 - drm_gem_object_unreference_unlocked(object)
 + drm_gem_object_put_unlocked(object)
 |
-- drm_property_reference_blob(object)
-+ drm_property_blob_get(object)
-|
-- drm_property_unreference_blob(object)
-+ drm_property_blob_put(object)
-|
 - drm_dev_unref(object)
 + drm_dev_put(object)
 )
@@ -72,10 +66,6 @@ __drm_gem_object_unreference(object)
 |
 drm_gem_object_unreference_unlocked(object)
 |
-drm_property_unreference_blob@p(object)
-|
-drm_property_reference_blob@p(object)
-|
 drm_dev_unref@p(object)
 )
 
-- 
2.7.4


