X-GM-THRID: 6534405823463948288
X-Received: by 10.107.147.67 with SMTP id v64mr2862035iod.26.1521409913510;
        Sun, 18 Mar 2018 14:51:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:55c3:: with SMTP id e186-v6ls1273562itb.3.canary-gmail;
 Sun, 18 Mar 2018 14:51:52 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtgFTaNkQw3azhRkk2jPjnZUG4eb95QTiVEWUx92hEfe4L/i6UCwXwtxoqjHAUy/zgzgDtp
X-Received: by 2002:a24:f101:: with SMTP id c1-v6mr4869258iti.15.1521409912458;
        Sun, 18 Mar 2018 14:51:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521409912; cv=none;
        d=google.com; s=arc-20160816;
        b=g8epOqApP9tSLOZurrE142oWS0pU8yhg7my3NICWPGLt8nJpzFgo3ZxGvyfana9raW
         nblsj8bt7GWodmL8s+MeOP0At9SGKI/sAAACtAJ87HJkJ6U3esZL0k6Jz2FUxdp9N0Ac
         NIGktIUrpDxDSDwVL9dQuz0imZgT6Zpsqc9cT1L0nEviv+4eO7qw3J+khDUAvv8k3aXw
         5zdQcJhXlcC51Q3gRM8bzFy8dMCq/+CAwaxCyWfJ0CRKeyaDJPa2R8lY2/SEw05HsrD9
         /WE9ODjrDSNd3130B8czmGQljXsTkKmhBJ2ESEwBAmTCTNySbRk1TAH4Jw9OYvUKZ4nY
         R0JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=JntWGuaqDI0hzwgZPo1rkEoUod1o9UwXPTEOmmqXQCo=;
        b=HsGqUhAitxnHu+T/GGWE17EVtkEmBkZODEvUZehJ3+FupBufMOJVOuZ62vExn0q58Q
         9+vuDudnQwVQUetMFp679dRqNhg08WQQuPC9pnv5RsPsY4kR6Fn22sL9JFh9Il+L1Vl+
         dJnoPO9tjnhVDNBZXnaRg5m2kH6abxroAfL915svnzERiMKxP+VwJWRm4PWlLgW9hNu4
         fSNoGEz5YzB0yJbqjpJE+Y24N8b6shV7VLS9YqhQUgFx/a2QfeJko5J5G08mmXc41Mk8
         ilDoChN83Jc6S4DpZn9Xrj5MjP4q484khBYxEY/q26pOAb1Zibj6yKdU4jFFH7SepmBX
         8mFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nkKt+6p3;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id w69-v6si437476itb.0.2018.03.18.14.51.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Mar 2018 14:51:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nkKt+6p3;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x1so6250213pfh.7
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Mar 2018 14:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JntWGuaqDI0hzwgZPo1rkEoUod1o9UwXPTEOmmqXQCo=;
        b=nkKt+6p3N8Fidmzx67FAgcqq4S+oNaFP3LNsjKT8bVp+Jb/uwUy+c5PUa9iCTdHGbr
         Z2Vrx7fv49FWebImNYGVMhoS6pSwF/0Ce2Ach4exYcsQTR3VxE41SSsw4HaXcLqqeJTI
         sSMEX3Kl0zGQBiBXxm3/HwRKXxspaGr54EAiWv7m/fT+TlqTJM54qTimKIWC4aRIFqeb
         qlY72kkcnw5YnNQY4n5/P/y/d3Arpn1Eyv5prLlD5LnOpL0lWxb7BtvkysbYaiaC2ovJ
         5rBahiXxgmXxhoY0L/ZuPxZpiJ2aZFOl3Wl8IwGtBPJ8lIohv+j8OrULt2Q18fvWrV6z
         65Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JntWGuaqDI0hzwgZPo1rkEoUod1o9UwXPTEOmmqXQCo=;
        b=Z6pwNdKcRkbbtjTSxSsrIIOZqNVpE94eVm6n49xLU6da0Yp0epAkWnEWPp4+tp7KSp
         bTSHOHnzfhtWL06lMW3k6dfCnYPM9pnhnuPPhoR7EFHC5yQ2GVWkxSLaB8eEWC/axz+U
         P7UfOeDJek4wDN75DdsHdwzE4nJuBPOw0ylKp96vprhncVqNViY3yYnWeuFsytOHPGFU
         7PJfeIkC82JRm8fYm0C6148+QSIPACHS6ledP+WVzLFWdBHtuUxIWQy1gbXMK1+7sa0r
         zpWzG+rmIeGyquomOu1QujKmPBIUJPP8OXVPdnBcXXhu0v06y+mKMylaPgTZpwoReG34
         va0A==
X-Gm-Message-State: AElRT7F4zT7FWJTm+8d4yw6IyV7s4u1wJgKpJUlapaFj+6cWmIvmy2PV
	HqebjTeX2+nTGtC6hYd6xb9JPA==
X-Received: by 10.98.7.68 with SMTP id b65mr8204384pfd.39.1521409911473;
        Sun, 18 Mar 2018 14:51:51 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s75sm24318181pfj.43.2018.03.18.14.51.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Mar 2018 14:51:50 -0700 (PDT)
Date: Mon, 19 Mar 2018 03:21:05 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: alexander.deucher@amd.com
Cc: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>,
	David Airlie <airlied@linux.ie>,
	Tomi Valkeinen <tomi.valkeinen@ti.com>,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] gpu: drm: Use list_first_entry instead of list_entry
Message-ID: <20180318215105.GA15431@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces list_entry with list_first_entry as it makes the
code more clear.
Done using coccinelle:

@@
expression e;
@@
(
- list_entry(e->next,
+ list_first_entry(e,
  ...)
|
- list_entry(e->prev,
+ list_last_entry(e,
  ...)
)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c | 4 ++--
 drivers/gpu/drm/omapdrm/dss/display.c  | 4 ++--
 drivers/gpu/drm/radeon/radeon_sa.c     | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c
index 3144400..646f593 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c
@@ -158,7 +158,7 @@ static void amdgpu_sa_bo_try_free(struct amdgpu_sa_manager *sa_manager)
 	if (sa_manager->hole->next == &sa_manager->olist)
 		return;
 
-	sa_bo = list_entry(sa_manager->hole->next, struct amdgpu_sa_bo, olist);
+	sa_bo = list_first_entry(sa_manager->hole, struct amdgpu_sa_bo, olist);
 	list_for_each_entry_safe_from(sa_bo, tmp, &sa_manager->olist, olist) {
 		if (sa_bo->fence == NULL ||
 		    !dma_fence_is_signaled(sa_bo->fence)) {
@@ -183,7 +183,7 @@ static inline unsigned amdgpu_sa_bo_hole_eoffset(struct amdgpu_sa_manager *sa_ma
 	struct list_head *hole = sa_manager->hole;
 
 	if (hole->next != &sa_manager->olist) {
-		return list_entry(hole->next, struct amdgpu_sa_bo, olist)->soffset;
+		return list_first_entry(hole, struct amdgpu_sa_bo, olist)->soffset;
 	}
 	return sa_manager->size;
 }
diff --git a/drivers/gpu/drm/omapdrm/dss/display.c b/drivers/gpu/drm/omapdrm/dss/display.c
index 0c9480b..fb9ecae 100644
--- a/drivers/gpu/drm/omapdrm/dss/display.c
+++ b/drivers/gpu/drm/omapdrm/dss/display.c
@@ -158,8 +158,8 @@ struct omap_dss_device *omap_dss_get_next_device(struct omap_dss_device *from)
 				goto out;
 			}
 
-			dssdev = list_entry(l->next, struct omap_dss_device,
-					panel_list);
+			dssdev = list_first_entry(l, struct omap_dss_device,
+						  panel_list);
 			omap_dss_get_device(dssdev);
 			goto out;
 		}
diff --git a/drivers/gpu/drm/radeon/radeon_sa.c b/drivers/gpu/drm/radeon/radeon_sa.c
index 197b157..66c0482 100644
--- a/drivers/gpu/drm/radeon/radeon_sa.c
+++ b/drivers/gpu/drm/radeon/radeon_sa.c
@@ -158,7 +158,7 @@ static void radeon_sa_bo_try_free(struct radeon_sa_manager *sa_manager)
 	if (sa_manager->hole->next == &sa_manager->olist)
 		return;
 
-	sa_bo = list_entry(sa_manager->hole->next, struct radeon_sa_bo, olist);
+	sa_bo = list_first_entry(sa_manager->hole, struct radeon_sa_bo, olist);
 	list_for_each_entry_safe_from(sa_bo, tmp, &sa_manager->olist, olist) {
 		if (sa_bo->fence == NULL || !radeon_fence_signaled(sa_bo->fence)) {
 			return;
@@ -182,7 +182,7 @@ static inline unsigned radeon_sa_bo_hole_eoffset(struct radeon_sa_manager *sa_ma
 	struct list_head *hole = sa_manager->hole;
 
 	if (hole->next != &sa_manager->olist) {
-		return list_entry(hole->next, struct radeon_sa_bo, olist)->soffset;
+		return list_first_entry(hole, struct radeon_sa_bo, olist)->soffset;
 	}
 	return sa_manager->size;
 }
-- 
2.7.4


