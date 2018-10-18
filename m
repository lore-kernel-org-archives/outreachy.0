X-GM-THRID: 6613749508225368064
X-Received: by 2002:aca:4f51:: with SMTP id d78-v6mr26694942oib.40.1539883554105;
        Thu, 18 Oct 2018 10:25:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3946:: with SMTP id g67-v6ls5469902oia.10.gmail; Thu, 18
 Oct 2018 10:25:53 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63NYD9cUhZ4+mpF81htw6il7cLHHZLkWCgq/1noWJB48yJe6nhbqIgQkqrkNOCwRBQQg09a
X-Received: by 2002:aca:e087:: with SMTP id x129-v6mr25858020oig.13.1539883553363;
        Thu, 18 Oct 2018 10:25:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539883553; cv=none;
        d=google.com; s=arc-20160816;
        b=S+AVGBRhDqBKd95v1WYpjYZMRTVdV9g6Cls+Uw1wGe8dhk8aE7/70B7xsDjKOGR6ke
         KBBwY1Ld7WtpS5W05Cblq2b9PV4ugXEiOiBf79FKE/9RaA7DshaSACqewLV33HKratm8
         5MXpdej4J0pyL1O6fGj/cn4IEQ6AjtK9uGikw8eNXJ861CrUmB1M+TnsLaYrS6tBLzv7
         pWuiyOpJvf0taVfSyM+k5+VB6KOUiiTOVX+WCM8txgl71jKF0lj8vJ4sV1WfnrAgvKBl
         gBj2nQve/RNnO016VWdp0zmWyMSIu1/kbgAOdnbNmqkMkf70y/k1HA80DsOMxNYPX6mQ
         ymuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=opp4YwnkKY0O93Qj4Yb8gghK0x+A+J5AYKToYd1IByU=;
        b=BMZw2zQ/09xwWw0nCq2ZEyj/qhaLTSvBw4JxhUPGiChAb2DaCZu0wBxEcw/q/uJL2S
         0INIsPzSRm3iMJyBVtRfZyLu/vTVpPrFa6BI1B7wOKxxYf8E94/PL/MjCnE2V9TbhpGy
         x/R3ANMPjiGc+PmpPWRFaSgLedQv9RB4Lx/WcqJ++WbsqkoOeKkcGIL/22sH3v3SWmuI
         FmyqSsgXcManiMj9qJNW/YNbTVejRhS0mND/bL5AqvRj0hZPOf7BvLMy1LIppZQQY97g
         MVJ+mipVkqkmWND0iejb0wqg0JdLo/6gBMKmk5weaSvDEWP2x2dBnCD7Ee6Xkk0KvgPF
         6ccA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=etZ2TSXA;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id u207-v6si906458oie.0.2018.10.18.10.25.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Oct 2018 10:25:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=etZ2TSXA;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id l81-v6so15199536pfg.3
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Oct 2018 10:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=opp4YwnkKY0O93Qj4Yb8gghK0x+A+J5AYKToYd1IByU=;
        b=etZ2TSXAfSZT+KTaLArl0No4cEj896pidGavTXQ7MwYLA3lp++dZ5o9gZ0eGpbwsI5
         Q8dt/M9BbfwVDfeuee3XmIDzbphvx2tOKShhgsfXRU47Ja6vWEVaz0wIeE7/h3oJS6J6
         8WJjm/7+EOHaKLzG2BVHXoxvegMrPPxLwQETvDjwy7I7+2KOcdVp7wP8DfaII/qCY5tX
         bnvKNbxk9h4qLjsZSMiXyVsJEV/2rfwBwkRRBJEKR2d9qvNE1pwceqiyEc+72Vm4OpIN
         V2sevMUfZnYYQZC/PjMzN5hvocu5wCBhgqJAYfobVTt4CFgAoaCrCy2YjsEd2jl9p9fM
         QXmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=opp4YwnkKY0O93Qj4Yb8gghK0x+A+J5AYKToYd1IByU=;
        b=CzCuCey32O7t6ao27EvoQfp+CW8uGjAWuGNpSZbxyj2HVTUDayp5tFfSm4sp9kVxqH
         2HCre43oUnuokbr3Jyfbo325UgMZlaVxE4QDPa3hm8FKiY68F5OP/1h2dHk2Ac7nTYkg
         8SQQCEsAZff491UvFM/pWKd1B0fuQN2CzMCHATJFn2lUcbvzv2ipxMORY8qOdXEqK7cs
         wQhH4eePHKDvrjwjxNOpeccMF8mm375VsPAi3P+/drCIDVgpNKZiDieqNdOKKlC3F27Z
         zLnY1afVgTOD7vvS290Q/vNpFtYU29l0ZB8CSeO24v/FGVt3udxSsiBt88hsn24z44DQ
         PMRA==
X-Gm-Message-State: ABuFfoiGirl/pY39d5nf+iK9i2ai+x6q1XcoN6ers2Te/59lPCj33Luy
	ZHOcqivMCWYt/6rAODu9WXg=
X-Received: by 2002:a62:1dca:: with SMTP id d193-v6mr30928980pfd.157.1539883552528;
        Thu, 18 Oct 2018 10:25:52 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.199.49.212])
        by smtp.gmail.com with ESMTPSA id h88-v6sm47734087pfa.184.2018.10.18.10.25.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Oct 2018 10:25:51 -0700 (PDT)
Date: Thu, 18 Oct 2018 22:55:49 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: dri-devel@lists.freedesktop.org, daniel.vetter@ffwll.ch,
	robdclark@gmail.com, airlied@linux.ie
Subject: [PATCH DRM] drm: msm: Replace instances of *_reference/unreference()
 with *_get/put()
Message-ID: <20181018172549.GA5442@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace instances of *_reference/unreference() with *_get/put(),
to maintain consistency with the kernel use of *_get/put suffixes and get/put() is shorter.

Issue found with drm-get-put.cocci:
WARNING: use get/put helpers to reference and dereference state

Path to the Coccinelle script: scripts/coccinelle/api/drm-get-put.cocci

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/gpu/drm/msm/adreno/a5xx_debugfs.c  | 4 ++--
 drivers/gpu/drm/msm/adreno/a5xx_gpu.c      | 2 +-
 drivers/gpu/drm/msm/adreno/a5xx_power.c    | 2 +-
 drivers/gpu/drm/msm/adreno/a5xx_preempt.c  | 2 +-
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c      | 2 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c | 4 ++--
 drivers/gpu/drm/msm/msm_drv.c              | 4 ++--
 drivers/gpu/drm/msm/msm_gem_submit.c       | 4 ++--
 8 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a5xx_debugfs.c b/drivers/gpu/drm/msm/adreno/a5xx_debugfs.c
index 059ec7d..d2127b1 100644
--- a/drivers/gpu/drm/msm/adreno/a5xx_debugfs.c
+++ b/drivers/gpu/drm/msm/adreno/a5xx_debugfs.c
@@ -132,14 +132,14 @@ static int show(struct seq_file *m, void *arg)
 	if (a5xx_gpu->pm4_bo) {
 		if (a5xx_gpu->pm4_iova)
 			msm_gem_put_iova(a5xx_gpu->pm4_bo, gpu->aspace);
-		drm_gem_object_unreference(a5xx_gpu->pm4_bo);
+		drm_gem_object_put(a5xx_gpu->pm4_bo);
 		a5xx_gpu->pm4_bo = NULL;
 	}
 
 	if (a5xx_gpu->pfp_bo) {
 		if (a5xx_gpu->pfp_iova)
 			msm_gem_put_iova(a5xx_gpu->pfp_bo, gpu->aspace);
-		drm_gem_object_unreference(a5xx_gpu->pfp_bo);
+		drm_gem_object_put(a5xx_gpu->pfp_bo);
 		a5xx_gpu->pfp_bo = NULL;
 	}
 
diff --git a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
index ab1d930..6a68493 100644
--- a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
@@ -1234,7 +1234,7 @@ static void a5xx_crashdumper_free(struct msm_gpu *gpu,
 	msm_gem_put_iova(dumper->bo, gpu->aspace);
 	msm_gem_put_vaddr(dumper->bo);
 
-	drm_gem_object_unreference(dumper->bo);
+	drm_gem_object_put(dumper->bo);
 }
 
 static int a5xx_crashdumper_run(struct msm_gpu *gpu,
diff --git a/drivers/gpu/drm/msm/adreno/a5xx_power.c b/drivers/gpu/drm/msm/adreno/a5xx_power.c
index e9c0e56..7a41e1c 100644
--- a/drivers/gpu/drm/msm/adreno/a5xx_power.c
+++ b/drivers/gpu/drm/msm/adreno/a5xx_power.c
@@ -323,7 +323,7 @@ void a5xx_gpmu_ucode_init(struct msm_gpu *gpu)
 	if (a5xx_gpu->gpmu_iova)
 		msm_gem_put_iova(a5xx_gpu->gpmu_bo, gpu->aspace);
 	if (a5xx_gpu->gpmu_bo)
-		drm_gem_object_unreference(a5xx_gpu->gpmu_bo);
+		drm_gem_object_put(a5xx_gpu->gpmu_bo);
 
 	a5xx_gpu->gpmu_bo = NULL;
 	a5xx_gpu->gpmu_iova = 0;
diff --git a/drivers/gpu/drm/msm/adreno/a5xx_preempt.c b/drivers/gpu/drm/msm/adreno/a5xx_preempt.c
index 970c796..f3c21f8 100644
--- a/drivers/gpu/drm/msm/adreno/a5xx_preempt.c
+++ b/drivers/gpu/drm/msm/adreno/a5xx_preempt.c
@@ -272,7 +272,7 @@ void a5xx_preempt_fini(struct msm_gpu *gpu)
 		if (a5xx_gpu->preempt_iova[i])
 			msm_gem_put_iova(a5xx_gpu->preempt_bo[i], gpu->aspace);
 
-		drm_gem_object_unreference(a5xx_gpu->preempt_bo[i]);
+		drm_gem_object_put(a5xx_gpu->preempt_bo[i]);
 		a5xx_gpu->preempt_bo[i] = NULL;
 	}
 }
diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index c629f74..53b9061 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -744,7 +744,7 @@ static void a6xx_destroy(struct msm_gpu *gpu)
 	if (a6xx_gpu->sqe_bo) {
 		if (a6xx_gpu->sqe_iova)
 			msm_gem_put_iova(a6xx_gpu->sqe_bo, gpu->aspace);
-		drm_gem_object_unreference_unlocked(a6xx_gpu->sqe_bo);
+		drm_gem_object_put__unlocked(a6xx_gpu->sqe_bo);
 	}
 
 	a6xx_gmu_remove(a6xx_gpu);
diff --git a/drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c b/drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c
index d5e4f0d..1d4bce1 100644
--- a/drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c
+++ b/drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c
@@ -184,7 +184,7 @@ static void mdp5_plane_reset(struct drm_plane *plane)
 	struct mdp5_plane_state *mdp5_state;
 
 	if (plane->state && plane->state->fb)
-		drm_framebuffer_unreference(plane->state->fb);
+		drm_framebuffer_put(plane->state->fb);
 
 	kfree(to_mdp5_plane_state(plane->state));
 	mdp5_state = kzalloc(sizeof(*mdp5_state), GFP_KERNEL);
@@ -227,7 +227,7 @@ static void mdp5_plane_destroy_state(struct drm_plane *plane,
 	struct mdp5_plane_state *pstate = to_mdp5_plane_state(state);
 
 	if (state->fb)
-		drm_framebuffer_unreference(state->fb);
+		drm_framebuffer_put(state->fb);
 
 	kfree(pstate);
 }
diff --git a/drivers/gpu/drm/msm/msm_drv.c b/drivers/gpu/drm/msm/msm_drv.c
index 69dbdba..f1cacf9 100644
--- a/drivers/gpu/drm/msm/msm_drv.c
+++ b/drivers/gpu/drm/msm/msm_drv.c
@@ -338,7 +338,7 @@ static int msm_drm_uninit(struct device *dev)
 		mdss->funcs->destroy(ddev);
 
 	ddev->dev_private = NULL;
-	drm_dev_unref(ddev);
+	drm_dev_put(ddev);
 
 	kfree(priv);
 
@@ -655,7 +655,7 @@ static int msm_drm_init(struct device *dev, struct drm_driver *drv)
 err_free_priv:
 	kfree(priv);
 err_unref_drm_dev:
-	drm_dev_unref(ddev);
+	drm_dev_put(ddev);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/msm/msm_gem_submit.c b/drivers/gpu/drm/msm/msm_gem_submit.c
index 7bd83e0..7a7923e 100644
--- a/drivers/gpu/drm/msm/msm_gem_submit.c
+++ b/drivers/gpu/drm/msm/msm_gem_submit.c
@@ -144,7 +144,7 @@ static int submit_lookup_objects(struct msm_gem_submit *submit,
 			goto out_unlock;
 		}
 
-		drm_gem_object_reference(obj);
+		drm_gem_object_get(obj);
 
 		submit->bos[i].obj = msm_obj;
 
@@ -396,7 +396,7 @@ static void submit_cleanup(struct msm_gem_submit *submit)
 		struct msm_gem_object *msm_obj = submit->bos[i].obj;
 		submit_unlock_unpin_bo(submit, i, false);
 		list_del_init(&msm_obj->submit_entry);
-		drm_gem_object_unreference(&msm_obj->base);
+		drm_gem_object_put(&msm_obj->base);
 	}
 
 	ww_acquire_fini(&submit->ticket);
-- 
1.9.1


