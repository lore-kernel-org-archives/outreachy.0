X-GM-THRID: 6952206676913029120
X-Received: by 2002:a2e:5445:: with SMTP id y5mr6247386ljd.381.1618686755476;
        Sat, 17 Apr 2021 12:12:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls3945163lfv.1.gmail; Sat,
 17 Apr 2021 12:12:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw6ObZPk/VY5uinKWE+DbYYjMBdiTBtFXQY6UeAFaNZaM3/Cum+DCqs+lW9hOkGV6KP84AM
X-Received: by 2002:a05:6512:38c9:: with SMTP id p9mr6917541lft.572.1618686753798;
        Sat, 17 Apr 2021 12:12:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618686753; cv=none;
        d=google.com; s=arc-20160816;
        b=y81lvpF70rC46AQMEhH1u5ZDSLE+ENOHG5+cAA0xW9nAKy0MiIT/WCAOXfGvmtT94D
         fpLVAqf/zZnO1vxvJQFGR8pLSu96RGhORJoRSXm8++3AewX41boZOS14YRUrqWA39qnm
         iFijIiGwj5Vi3U9NuoEPjzpAc7KIUr9FPF/TpO2YNBhSonS8lcqcMXjwgNIllMLHshTg
         2SuJ8zscxaYn98qWsX4h+snmBYgjhvW6NvG6IuNABmjQic46rk6psgDnkoj7L7qOSrZz
         pO3CRR5F4ld8Rmmjo6jfNaXpG2sbG5uLPOrd7eHU3GOr8DukDuxGnFxHzYI/g1VqzR9a
         XEzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=4EeE/jEG+BwS2yLzax1oxoe1YlEFDe9IUirRYoBxddY=;
        b=d3TH6pNUk5Ak/VZL/6TnMwxFt5GmxSrPjvwf99zhc5wy3JZM6TxHRugOST+NUXfZ9x
         afd6GmbxqyvP1S7bhif3TskH1uTkyTYXtXu3SIyFu/GK/UdAG2NqePZkgEqyk9gunvex
         gMfEkh/Wn84pBKLzOepbgjflC35bru57hG1yn3hBiPhtxutIwAdGM1Q+K88Hfkk5CrzM
         qFveufUUP4yq1FUQtPvUZoAE8Ac+ZTWvUHcfYHbcZE2w3cHcl4AiQBW27h/RYPhmDkPM
         HIMkql/UDrTTFm3R0PWpeqq6cTB3soDEutrVZboTsCHlii2Wf7+D736i8Bp1ncFFbWFf
         BLdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c7+kaWC9;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id a36si290498ljq.5.2021.04.17.12.12.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Apr 2021 12:12:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c7+kaWC9;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62b.google.com with SMTP id e14so46866727ejz.11
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Apr 2021 12:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4EeE/jEG+BwS2yLzax1oxoe1YlEFDe9IUirRYoBxddY=;
        b=c7+kaWC9DjKkxn882whe6mMcd7HxFJ1bFx6boT52Kt5Na7Hsz74IweAgpdXTr9Hdqb
         cHm600tCOzfepihXRSKoRjr6P6Y7eHYHOVaJM4nU41WthSVcIRCiEcASb4fNULWj5dHK
         8cAGqT78I0dG6DkmvQFXelgrGqLF+iR5FO8Q83Llwb9dq3d6fRcivo0AMZoeFtu61O8u
         gaJNhW5PcY9WXX5H/Xp07n41hirN7EnlshoAtZsKOU7mQMSw9zqmt6z11qzqVDZJSCXg
         CwEkFYy4nhHJSDaTd8rYJP9LREtzHDp2MWoE4IMYRiJdzeIGdOPaL5AqlbeWNOwB38e7
         ZonQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4EeE/jEG+BwS2yLzax1oxoe1YlEFDe9IUirRYoBxddY=;
        b=idJMCeeLzh9sXafsRbCAHmF2O+OUWCJZNQYCwRb6A5KF1gXyexC91o6h6rBd/HNJCe
         9uYuK6vEqm7ACd+k3pIq7TTYEvz/ZP8WXGfXVzcMnAxhXAk7J+3o8doSsapt8HdOhgKK
         JLBUon2yfqEkM+SYDdTzOT9RugK8rrtrXmYalA3c7M25uRzGMyyS6w1LNLVKCZyF+Fkt
         /l67+cX4oec91q80xUYRVolI3IUrz0v05AuqHNIKpyns+eRfunwOmMg04WYlJW2oeUcb
         XFnJ9RHr2WLWoXL/GPOWB7uVSaQpyeLexlNqKe5wkRj8XQbJBf1GG8qS0fUDQy9552cX
         eiCA==
X-Gm-Message-State: AOAM531ic5r9mLcCDJMPofSJrHbA2YjnkspTAoKfHn2ayZ59/Fp1FIDi
	30Ae2Ny6JANwv7MWCyCte54=
X-Received: by 2002:a17:906:3509:: with SMTP id r9mr14193077eja.490.1618686753304;
        Sat, 17 Apr 2021 12:12:33 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id g11sm8330120edy.9.2021.04.17.12.12.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Apr 2021 12:12:32 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com,
	Ben Skeggs <bskeggs@redhat.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH] drm/nouveau/dispnv50: disp.c: Replace drm_modeset_*_all with DRM_MODESET_LOCK_ALL_*
Date: Sat, 17 Apr 2021 21:12:28 +0200
Message-Id: <20210417191228.2980-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace the deprecated API with DRM_MODESET_LOCK_ALL_* helpers (according
to the TODO list of the DRM subsystem).

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/gpu/drm/nouveau/dispnv50/disp.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
index 828f48d5bdd4..e167bf96ff12 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
@@ -666,16 +666,19 @@ nv50_audio_component_bind(struct device *kdev, struct device *hda_kdev,
 	struct drm_device *drm_dev = dev_get_drvdata(kdev);
 	struct nouveau_drm *drm = nouveau_drm(drm_dev);
 	struct drm_audio_component *acomp = data;
+	struct drm_modeset_acquire_ctx ctx;
+	int ret = 0;
 
 	if (WARN_ON(!device_link_add(hda_kdev, kdev, DL_FLAG_STATELESS)))
 		return -ENOMEM;
 
-	drm_modeset_lock_all(drm_dev);
+	DRM_MODESET_LOCK_ALL_BEGIN(drm_dev, ctx, 0, ret);
 	acomp->ops = &nv50_audio_component_ops;
 	acomp->dev = kdev;
 	drm->audio.component = acomp;
-	drm_modeset_unlock_all(drm_dev);
-	return 0;
+	DRM_MODESET_LOCK_ALL_END(drm_dev, ctx, ret);
+
+	return ret;
 }
 
 static void
@@ -685,12 +688,14 @@ nv50_audio_component_unbind(struct device *kdev, struct device *hda_kdev,
 	struct drm_device *drm_dev = dev_get_drvdata(kdev);
 	struct nouveau_drm *drm = nouveau_drm(drm_dev);
 	struct drm_audio_component *acomp = data;
+	struct drm_modeset_acquire_ctx ctx;
+	int ret = 0;
 
-	drm_modeset_lock_all(drm_dev);
+	DRM_MODESET_LOCK_ALL_BEGIN(drm_dev, ctx, 0, ret);
 	drm->audio.component = NULL;
 	acomp->ops = NULL;
 	acomp->dev = NULL;
-	drm_modeset_unlock_all(drm_dev);
+	DRM_MODESET_LOCK_ALL_END(drm_dev, ctx, ret);
 }
 
 static const struct component_ops nv50_audio_component_bind_ops = {
-- 
2.31.1


