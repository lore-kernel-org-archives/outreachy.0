X-GM-THRID: 6951472733283680256
X-Received: by 2002:ac2:4431:: with SMTP id w17mr485257lfl.554.1618515870052;
        Thu, 15 Apr 2021 12:44:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a785:: with SMTP id c5ls1432026ljf.8.gmail; Thu, 15 Apr
 2021 12:44:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwCi3lkUXml4zfh77CbqvgHhIKJwxjtwFCJomL/LIQZb7s/IR5k5k8u9iWvXYeOs28CgAN6
X-Received: by 2002:a2e:908a:: with SMTP id l10mr489158ljg.38.1618515868225;
        Thu, 15 Apr 2021 12:44:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618515868; cv=none;
        d=google.com; s=arc-20160816;
        b=XGisSdC6QgfqctQfY8l1wdws95s/7grAcNCFiu8Zup6URysshq3k671sN6VAWfL860
         34dmzrNNcNmWKLJRAECxNRjeZUdQz84rvWNuNmSlcogjTQ7jrTRZNvHdL0ssLys9YBlQ
         K5hMW3jLo1jxHVDu0oA7kMEr3agL610Y34QySR0xd9hrBO8RR8yALaw/36DvJ+9d5PUx
         nHzNKLChA7mcmXCZbU77fYC3jZFvToqgnMqpptiyYnizYRHh2WaxVXC/0GQbFESD1rqx
         DR0BWb6SFhj2e0Lk5B2I+pLjtWL0EGTa5LRJH9gAulxILMICYhbLsMk58/90XKy296sh
         Obxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=jCBFMV7+puiUW4LunOS5oSKSWBIOUTheXXT0UG7Gcbk=;
        b=dzspCI2dGf8fYMTOBC//y9osyORtZVjQSCTuJ083anOuUpQqNrvWooFItVfEsZPbwJ
         dMKMhbfIYwcrOi5ZKTpNTVuhf92lpy0e4q92NEO3LqThFsMRYHglz9FCWraTku+J/+4d
         HBLdVyi0XDa/EgqGZtTTOZX7BYiqsGs+Q9htHtwS1FZDo/6GR7PJUiBySiH2j7T8727y
         9fzHmCLtiUkEIwlv/6HHQD+H7ZRf6gBXZqSuCW79lo5DeYkafYsGRDCOiBrva+A6flZG
         dpmkVyNja16f2DN/oH/4OV+yRecHSGFKutLm8ObBJ8w0Tlxxh66IM1geV7JhBO0LJ/E1
         Gnug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X0B5rkgV;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com. [2a00:1450:4864:20::532])
        by gmr-mx.google.com with ESMTPS id n13si203877lfi.5.2021.04.15.12.44.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 12:44:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) client-ip=2a00:1450:4864:20::532;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X0B5rkgV;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x532.google.com with SMTP id j12so4477292edy.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 12:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jCBFMV7+puiUW4LunOS5oSKSWBIOUTheXXT0UG7Gcbk=;
        b=X0B5rkgVr79wI8ut5bPZ3XPHutXSdLTS+Sk1vLBt7o9vA6QjC3ORXzft3tZ6ZJ2HiX
         Ee9PNMStMowOsMbUXFUy0GuCUBmpBgbkVhev6FuEbXjzFY1fOCyOw/QYFZcYdYddL7W+
         LBLzQFdoUFOtHd4M8eUANzl0lHt+PZHtXxRlZc/gybAiyH8cOZ1yU59Ldp8DGM+5UHUL
         SkeNxS4LKL2SbyOLt1R6pmEW4ROJ28BOXx2LjOjvP4nES06IwJ6J8J9LpGmFa8Rev6iL
         OXov9otGPXUI+UAiIHJpN5ReEbR5hJh2KnV91rHB1ve6c0P8fLyauVj2ipZY7WbWVWrf
         26tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jCBFMV7+puiUW4LunOS5oSKSWBIOUTheXXT0UG7Gcbk=;
        b=q2tcif7lrS1ewzNvn18/pFK8z24XihYNXu+PqA58TNNQlfu3AkIsFYZ2YXbARMiwdz
         BUUYScQFECZDNIRD0zZAQEAtE5dp8wxyp5IoeQSVuIXq3ouIsXYGTMqexxFVveE0Hl3O
         tFpANBnZNuef23tl7WeHm5aJ7hepnjDD11hGaU7jsJV5vPbBBNbI0TsHhrLNp5JqmFDK
         H6hSShHNFs6uX1TL1pEoaVZXvLe3W/A79hEMs51Jas4qemhEvP7uSbuZmUuxTYvYRWyF
         /gLi/Nc0xI9CiY4wrPoKzaKmpuTYdQ5g2XXPm6EFSBk8hOHFbEJxFCtGcKnKLL/Atn8+
         CrxQ==
X-Gm-Message-State: AOAM5331dWUFHRRsU/nohD6Oe9SYSqPQbKOZDyPzme6e7FeTNdEdJn/F
	p4ygaIEKzEbD1nmAmbLd6mo=
X-Received: by 2002:a50:8fe6:: with SMTP id y93mr6179609edy.224.1618515868019;
        Thu, 15 Apr 2021 12:44:28 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id pv21sm2538207ejb.109.2021.04.15.12.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 12:44:27 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>,
	Ben Skeggs <bskeggs@redhat.com>,
	David Airlie <airlied@linux.ie>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH] drm: nouveau: dispnv50: disp.c: Remove set but unused variables
Date: Thu, 15 Apr 2021 21:44:23 +0200
Message-Id: <20210415194423.4880-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed two set but unused variables.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/gpu/drm/nouveau/dispnv50/disp.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
index 196612addfd6..828f48d5bdd4 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
@@ -1386,12 +1386,11 @@ nv50_mstm_cleanup(struct nv50_mstm *mstm)
 {
 	struct nouveau_drm *drm = nouveau_drm(mstm->outp->base.base.dev);
 	struct drm_encoder *encoder;
-	int ret;
 
 	NV_ATOMIC(drm, "%s: mstm cleanup\n", mstm->outp->base.base.name);
-	ret = drm_dp_check_act_status(&mstm->mgr);
+	drm_dp_check_act_status(&mstm->mgr);
 
-	ret = drm_dp_update_payload_part2(&mstm->mgr);
+	drm_dp_update_payload_part2(&mstm->mgr);
 
 	drm_for_each_encoder(encoder, mstm->outp->base.base.dev) {
 		if (encoder->encoder_type == DRM_MODE_ENCODER_DPMST) {
@@ -1410,10 +1409,9 @@ nv50_mstm_prepare(struct nv50_mstm *mstm)
 {
 	struct nouveau_drm *drm = nouveau_drm(mstm->outp->base.base.dev);
 	struct drm_encoder *encoder;
-	int ret;
 
 	NV_ATOMIC(drm, "%s: mstm prepare\n", mstm->outp->base.base.name);
-	ret = drm_dp_update_payload_part1(&mstm->mgr);
+	drm_dp_update_payload_part1(&mstm->mgr);
 
 	drm_for_each_encoder(encoder, mstm->outp->base.base.dev) {
 		if (encoder->encoder_type == DRM_MODE_ENCODER_DPMST) {
-- 
2.31.1


