X-GM-THRID: 6468338986973659136
X-Received: by 10.101.90.11 with SMTP id y11mr4148337pgs.82.1506044054626;
        Thu, 21 Sep 2017 18:34:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.37.119.12 with SMTP id s12ls921550ybc.0.gmail; Thu, 21 Sep
 2017 18:34:13 -0700 (PDT)
X-Received: by 10.13.249.65 with SMTP id j62mr6162540ywf.20.1506044053861;
        Thu, 21 Sep 2017 18:34:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506044053; cv=none;
        d=google.com; s=arc-20160816;
        b=ItPKwDj13lMRpveqOz96+0xUe07K/P8/ix3xRbj970LdIZ+nHQuKTXdDZAxuZd9jfc
         TSCiv11LMLg4L9XapcHpnIim8GfCr8O5Xo/J8SDj2kfllMgGb02KgHCNI6jMqKrN74yS
         SPkg9ibD2kGEyxpMG/u5XtyFxUGCZljdpMiOcHO8I3eMQKLLpDYcMVFcQnM66JJwMTKH
         2baboU2NOdBFcmU3O/GrKZLK7aE5KUEC+bYyHfp0mLo/QU4YoiiK/N7rsMelDatKZ8XI
         vj9qvQGygRSmb45GMwjeEG6qyqPXNyDZr8jvwg1NbKe5t8L9AV7fbfa6QJP7eBtfN+j4
         gRlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=aV6Wqnz1v5NotepWraBfBrct6Puv7OP7BnIlVT/iUvU=;
        b=UTuAwM1GUyJGa19bSvqzwY8CQxv5dMVLl8HdPDHrDOP0cDMCf+JaledmcOR0lEsBXU
         OLESBF+xbLvw5cMkhb6UKrbR1UWt0XhJB6VXKSTt7L3kLDiXbn9ts1+58kNApglOMNlp
         GnI3tXaoU2TJK98qqjB2jSh0Ho9ZZ81G4ISV8Tg5yVKQVOg/tmNRIXsOSAOFFiL6obKu
         lUmBod1KKN3vd32Q/VizCC52LssqklESmeanJanf3f2g/UFK2VMtyZP+AQBEJp9Iz2PX
         dw2CW/t9El8DMnsozx4QnBOdsGZ95DG8liCsG4OJ9/ozRlsMervDxKlIM5QOv5F5ASdT
         gqrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f8LBF5y7;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id a83si159394pfl.25.2017.09.21.18.34.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 18:34:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f8LBF5y7;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id h4so3155457pfk.0
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Sep 2017 18:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=aV6Wqnz1v5NotepWraBfBrct6Puv7OP7BnIlVT/iUvU=;
        b=f8LBF5y7N6Y5A91UZHAbO63E2LShUlPhufAiPuVRG/kJkMM9HjVjCWb5Cnf1tuX01S
         G75FH8teBLkRpr25EJWW8B6ApdLt6olnjeFIdfU0Bf2XENpLykHgUnY8pnZrLNGLmKs/
         7/65+gj7gurR6Z+rlf267vYzSvSC15G2SguB4jfRKwNd0ciIpe6QQjjgI3Bc3L39bXj5
         1Hp6poMd4EuFRgrmiAcmTjKIdCR/eXP3AaSCd0Bubdgl/Cwy6K1KLBqFoauZ4bICaA30
         NFae1zzDttKVkst5fMCgx1Ra5XuF0jqsZqsWnPRUjVdIhTUvTPMnApxaBe8/VR1RxQZZ
         CPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=aV6Wqnz1v5NotepWraBfBrct6Puv7OP7BnIlVT/iUvU=;
        b=ISazdsnk21NluPzi3+pENhrhNd6YGH4zUJEvPCXKUHibHprzOCR/nexzRnlon9C8+J
         OxM1WCfg9dD/h1emX2FjZ2begYJxf1KinL1gcrizWeLrTcEqMjIkwA/WAdinKAmKXZlc
         /w3xht5GeQf8e0naasq4MfBdA7CXLy33hPm0MF6dUCfVNbB6PFrOs0WFR4+WHZGu4mU9
         S+ZEs+erGeP21JdiXrfpTlbh9k4qQ8XGkqFfZIf9oY4Ncvqj9IvFPOslbImS5RUbO1ir
         ohqkZMsevW24iaKViNpxAHkmSS6plN4kgz/7g7knTORNyvH+uXYueNfjMVBjrpQmIS5n
         QCMw==
X-Gm-Message-State: AHPjjUiPoZSQodh/+9063bCTjctKhYPgapzNkMF/mQW060XMf0UdtjyT
	1OmdRRu+7b+LZx0TmGvkyGY=
X-Google-Smtp-Source: AOwi7QBHEH0zNhAihCO0l12xRrgMXGP9acYyRdwEhZQqfO9JOowGa35jG5YuQk5eNdtnxs6mYq6sUQ==
X-Received: by 10.98.217.133 with SMTP id b5mr7705821pfl.227.1506044053327;
        Thu, 21 Sep 2017 18:34:13 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id g68sm4261007pfb.120.2017.09.21.18.34.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 18:34:12 -0700 (PDT)
Date: Thu, 21 Sep 2017 19:34:09 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] drm: Remove obsolete "This is gross" comment
Message-ID: <20170922013409.GA2741@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove obsolete comment which was initially added in 2008 to annotate
that idr_find() was used before idr_remove() since idr_remove() didn't
use to return feedback. The comment now is irrelevant with
commit f6cd7daecff5 ("drm: Release driver references to handle before
making it available again").
In addition, remove the todo item about this issue.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
Changes in v2:
- remove todo item regarding this comment

 Documentation/gpu/todo.rst | 6 ------
 drivers/gpu/drm/drm_gem.c  | 9 ---------
 2 files changed, 15 deletions(-)

diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index 22af55d..5e96dc7 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -180,12 +180,6 @@ Contact: Daniel Vetter, respective driver maintainers
 Core refactorings
 =================
 
-Use new IDR deletion interface to clean up drm_gem_handle_delete()
-------------------------------------------------------------------
-
-See the "This is gross" comment -- apparently the IDR system now can return an
-error code instead of oopsing.
-
 Clean up the DRM header mess
 ----------------------------
 
diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index c55f338..b9bddaa 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -282,15 +282,6 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
 {
 	struct drm_gem_object *obj;
 
-	/* This is gross. The idr system doesn't let us try a delete and
-	 * return an error code.  It just spews if you fail at deleting.
-	 * So, we have to grab a lock around finding the object and then
-	 * doing the delete on it and dropping the refcount, or the user
-	 * could race us to double-decrement the refcount and cause a
-	 * use-after-free later.  Given the frequency of our handle lookups,
-	 * we may want to use ida for number allocation and a hash table
-	 * for the pointers, anyway.
-	 */
 	spin_lock(&filp->table_lock);
 
 	/* Check if we currently have a reference on the object */
-- 
2.7.4


