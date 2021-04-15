X-GM-THRID: 6951450814320738304
X-Received: by 2002:a17:907:c08:: with SMTP id ga8mr4751777ejc.376.1618510767528;
        Thu, 15 Apr 2021 11:19:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:ca0c:: with SMTP id jt12ls3101305ejb.11.gmail; Thu,
 15 Apr 2021 11:19:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzbc6W29rslzu3VyOhIwB20kwwp+oFhZd3zDr/cG1t69LlvoGOqUIO42hCYjOfLS2jDQ15W
X-Received: by 2002:a17:907:9691:: with SMTP id hd17mr4856183ejc.205.1618510766046;
        Thu, 15 Apr 2021 11:19:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618510766; cv=none;
        d=google.com; s=arc-20160816;
        b=YionPbL1qtJf+ZYFoH/jV9rRqHE77nC36GSNmTYdc6CFCqFRE8ZN2/K9Vkj3LGyypX
         6jCLYhmevabM5Akn0PSPEE5ZT9tJO4mU6/CHBRT/QGpvnDrLkb3z2sAcToHTcu9O15L+
         yHiPo/kKtyrQ2II7mcAfbD/5D2oP/fX3Ap3ZvsUsyMrkQiDaH/WvNt78lc9b1Kilw13l
         PrD2+cU0Z9dbOHOtYxOMmQF/5yO0xV+/VpE6lUL4mqFW0qZfWMhVS20bn8L1HetVr2xH
         gYZMKZtzYWIMuJ8dgiJOzvlipMMP9RQlkbMKd3T8OYabTucMl6/iWYC4CdzmmgMJaoVa
         +5DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=urMYKw+CObY8Bf46P0yEDPYdb/81R4owb7A3rC2Hphs=;
        b=EQP+31H2A/Agx8z9Ztn/vnfWC8j/B7cKeQaumFi/EJillzHBNQ7zRm2J+7bcTBdzHE
         DT0bIP59n7hiaOpswY/qRnQKknnoSSYzfRIIqrfyuBW1x2pCddkvFDmJMyg6Qg5smxub
         +SwNX7STADre7E92G9PM2ImZGsU0ICc8V/sooauza3ptUDgnIKRRlLSYIRDI+cZX676P
         u3u/lX4ehTMCp1tgUBdhHwQ1FPxWqQSx3x75Se/w/jC8ITNupwUlJDcZw9EqvRbfIcMg
         iZlgMdst3y2tz+fr78bG48vVOlJ9MN5PtMPUpB2Y25YY0018JkLEDhsKcCdGBunG7tBj
         5JnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BPPP7qlb;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com. [2a00:1450:4864:20::632])
        by gmr-mx.google.com with ESMTPS id m18si99633edd.5.2021.04.15.11.19.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 11:19:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) client-ip=2a00:1450:4864:20::632;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BPPP7qlb;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x632.google.com with SMTP id sd23so29620887ejb.12
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 11:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=urMYKw+CObY8Bf46P0yEDPYdb/81R4owb7A3rC2Hphs=;
        b=BPPP7qlbJn0PdHs3aCepP/xzbyBa2FDzLTTkZc7CYGHtjfBhO68dg8hdNkiidOQBbo
         vNcAClzViSNO9GITBFw+CLQdz6pJBmNR7vTaisFptWOqZLBRqd4or11c/QHt9Nrs2Wz3
         SK/S6zPjz3pv9Ha1cNg4C6K49gtpNdBWk5GRbFoIOsh+ZSMPR1iFxdqo3da18pBACe1o
         3mtuM/wH+Pgln2ffbgbmZZXnIlr7GlDPuwD0dNFEv+Ct1dEiCkKlMukzSl0D7WYlazZd
         FUrTu3ACyiQHUKaG+6T5IhM7pseTbJsgHPLn28kPqXi7vILJ+IYG47fGXW/0/roSlIZN
         YwmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=urMYKw+CObY8Bf46P0yEDPYdb/81R4owb7A3rC2Hphs=;
        b=lJ5wYv9GpD49b3lTdNuWjl9tjsrdb0TzAg6zfoy1hxaFnupmsMou+dKNBe7ALBfrwI
         MM3K9kX60LyRi1ZIORMbVSgEEaQ+ivcKSHZVn9Y6w0OIPEXnbW+qTFneuRtoHcFxMMfy
         mwsfeKL2YzRJFqxDQ/96qHgdiINbNp1BtrRtZ1gKBQGUXH/5F+Pf/M7Tmcvj5Xkipjfx
         nWRPAIbjfCaBRrjKrd3lvD6hzbU8wbaZn2SijnsNa3CM9rI0a2SemCw8jXp6sonyv/p7
         VwgZ3ECxSYFq69pgH5CV5TlqNoSkf0yUY0smOXfxJzshoUAyBqguJgLdHu2/npxMNxJ9
         n/sQ==
X-Gm-Message-State: AOAM532u2u8OkdGqEKgJel98OJvQiMFV6mYSbOZGHYKweMqpz+wdw+mr
	6RLE9RY47LuGBEs+lYRMXAU=
X-Received: by 2002:a17:906:724b:: with SMTP id n11mr4841403ejk.338.1618510765818;
        Thu, 15 Apr 2021 11:19:25 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id gt26sm2517705ejb.31.2021.04.15.11.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 11:19:25 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>,
	Ben Skeggs <bskeggs@redhat.com>,
	David Airlie <airlied@linux.ie>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH] drm: nouveau: nouveau_bo.c: Remove set but unused variables
Date: Thu, 15 Apr 2021 20:19:21 +0200
Message-Id: <20210415181921.15742-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed two variables set but unused.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/gpu/drm/nouveau/nouveau_bo.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/nouveau_bo.c b/drivers/gpu/drm/nouveau/nouveau_bo.c
index 2d5d68fc15c2..d0eac5375533 100644
--- a/drivers/gpu/drm/nouveau/nouveau_bo.c
+++ b/drivers/gpu/drm/nouveau/nouveau_bo.c
@@ -1247,7 +1247,6 @@ nouveau_ttm_tt_populate(struct ttm_device *bdev,
 {
 	struct ttm_tt *ttm_dma = (void *)ttm;
 	struct nouveau_drm *drm;
-	struct device *dev;
 	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);
 
 	if (ttm_tt_is_populated(ttm))
@@ -1260,7 +1259,6 @@ nouveau_ttm_tt_populate(struct ttm_device *bdev,
 	}
 
 	drm = nouveau_bdev(bdev);
-	dev = drm->dev->dev;
 
 	return ttm_pool_alloc(&drm->ttm.bdev.pool, ttm, ctx);
 }
@@ -1270,14 +1268,12 @@ nouveau_ttm_tt_unpopulate(struct ttm_device *bdev,
 			  struct ttm_tt *ttm)
 {
 	struct nouveau_drm *drm;
-	struct device *dev;
 	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);
 
 	if (slave)
 		return;
 
 	drm = nouveau_bdev(bdev);
-	dev = drm->dev->dev;
 
 	return ttm_pool_free(&drm->ttm.bdev.pool, ttm);
 }
-- 
2.31.1


