X-GM-THRID: 6534991187044990976
X-Received: by 2002:a25:5ed5:: with SMTP id s204-v6mr6351332ybb.33.1521546204250;
        Tue, 20 Mar 2018 04:43:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.145.142 with SMTP id i136ls45357ywg.1.gmail; Tue, 20 Mar
 2018 04:43:23 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuDZWOdS6sx3RGVhVZsekx55xSGLiC2c+ADdmumMrdx2oUbF3o1Ae36xtHpL+1u6l94AghR
X-Received: by 10.129.55.82 with SMTP id e79mr6537353ywa.228.1521546203251;
        Tue, 20 Mar 2018 04:43:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521546203; cv=none;
        d=google.com; s=arc-20160816;
        b=pfgCmvaEX/wxVzMvotUbW17OT0MhNrfA1JhJGjAOE1/818WX7KkG65RVcI3m1I22yS
         G+EdaknRdjL5WxR/XJp9hXadmy5h2twLWc6pucXybTBIvCRqxlRo3KZR6jlAwb8zDBAR
         dZ+erJnevtQYQ1/hC4oMRqDolguhbAUgT9X2fa5odd/gH2Bv9/W4ITtL62IxMS3FPtRp
         JX/eqISEPKCgh644fonwcm7JS/W5PwbG8pVZKnTwtAsRW9O3nQq4/+/Ziuje+anN/1rn
         AF4Zs2j9tg9XsFzs2xnMkJ72iDO8V8TmyYyPXT749PeHSiTZcEMicP9q7ze/jaEzJsPE
         AotQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=UEFx1cKq1O0JlJVwEEvHL8k/RwEzM4kTdpc+sM4F2Ac=;
        b=b/rtH06Zw08DQrevn+p7Qa2+FHcMpUpsNZDaF+eteVaXxgEFevzgi8NZbn4goshaKt
         KSu1eJmgWXtZvRijeGw4gd/OJMz3SOeFvhUFccoPwFJSQWpN+9+QoqSfqNI2g7NXqteM
         Iq9VugP80N4NVLmB2wMEntd8JyZMnca++ee+q0viYOF0IkAlvsLpW3tqYQ2mP0qlM6Tl
         9p6TsYDhLWCcoK7IZ7lrv/mlG2MvVweP5Ii9CiZK8+hdB6TQ470xtf7rGY10h0fUs8cH
         pCLeArs8rUOpU0T+DIMDIE4YL1/Y75waS2FYkiFfpRSGxc3MVYYAURokqKGRgtxplGqp
         WEOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uYDb12fR;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id p12si79296ywg.4.2018.03.20.04.43.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Mar 2018 04:43:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uYDb12fR;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id i8so1179131qtj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Mar 2018 04:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=UEFx1cKq1O0JlJVwEEvHL8k/RwEzM4kTdpc+sM4F2Ac=;
        b=uYDb12fR/WFg8ixwjbQJJhucrg1KKZtXbMrP2Aoc2PDc7Vp+DGcCQfQTjRsU9EdZ4S
         RTFK/rX3IDGknGSm/r6xhpK0yblQCXzmudg3TzlxickD7jz7Nbt4wk2RgjUHgRZbol81
         tA8JW0rZ4z4PRi0uZYE717Ltg8l0KUtw4dXxqXOe/ZoDNb6/+UZzfMynNPzOcL2bLI1O
         3shfOvH9ufahdYapNTC0y7x9nCrWAf2ufkIL/SGnYyujLWFpwvYjio0PCIN9hQFwIygO
         hOa/dRIEVgKOCgelbzvminoNYLRnZilmMdSJ11ZvADYfx0ESwMW+syhgL1ZzJ6pIT9zi
         QhGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=UEFx1cKq1O0JlJVwEEvHL8k/RwEzM4kTdpc+sM4F2Ac=;
        b=H9MHp39f5Sy4aWmGdpmfqSbcAX73xfZFairnj+XU8W+LgYAf2dywqdrB6gLDf2l0uN
         xC/l824KTCQitW79vhvhb+teM31kOuBVU3H0HEfFSc+gybZ1T8jo0X/SiRAqnwCW7JKP
         XmFSU2DC+qZMj6i3BU7Pqd3bkwppmU4EPNUnFVp5WGlz/jq9lMS9rXYQVqZO5kmMqYzf
         TKviCvHyDrIhmDiHR8wN4dhu6PiHxV2fYawySq9lMvKhOFnh54p/ogH6B8qanSr6eMSK
         IEmRHPvbgQFMxwy8bSWRcKJvB/BCZBcZm3e5WJEn+zyrkJGsptIVHcJpLHWqTeQdgCkC
         3+iQ==
X-Gm-Message-State: AElRT7GW78XaRhE32Oq4NeFxPrpcNR6QvgDb2vMBsVpapPbV9MywhVEh
	oR3dom8Q616jt6B0uLCkmsKMFQ9kqh8=
X-Received: by 10.237.62.84 with SMTP id m20mr23939399qtf.283.1521546202893;
        Tue, 20 Mar 2018 04:43:22 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-VirtualBox (rrcs-24-103-222-2.nys.biz.rr.com. [24.103.222.2])
        by smtp.gmail.com with ESMTPSA id e36sm661378qtk.41.2018.03.20.04.43.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Mar 2018 04:43:22 -0700 (PDT)
Date: Tue, 20 Mar 2018 07:43:20 -0400
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: hamohammed.sa@gmail.com
Cc: Shawn Guo <shawnguo@kernel.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com,
	seanpaul@chromium.org, daniel.vetter@intel.com
Subject: [PATCH DRM] drm/zte: Replace include drmP.h with drm_print.h
Message-ID: <20180320114320.GA23062@haneen-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove drmP.h as it is not needed anymore since nothing it defines is
used in these files and use drm_print.h instead as these files are using
the debug macros defined there.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/gpu/drm/zte/zx_drm_drv.c | 2 +-
 drivers/gpu/drm/zte/zx_hdmi.c    | 2 +-
 drivers/gpu/drm/zte/zx_plane.c   | 2 +-
 drivers/gpu/drm/zte/zx_tvenc.c   | 2 +-
 drivers/gpu/drm/zte/zx_vga.c     | 2 +-
 drivers/gpu/drm/zte/zx_vou.c     | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/zte/zx_drm_drv.c b/drivers/gpu/drm/zte/zx_drm_drv.c
index 6f4205e8..f375cb0 100644
--- a/drivers/gpu/drm/zte/zx_drm_drv.c
+++ b/drivers/gpu/drm/zte/zx_drm_drv.c
@@ -24,7 +24,7 @@
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_of.h>
-#include <drm/drmP.h>
+#include <drm/drm_print.h>
 
 #include "zx_drm_drv.h"
 #include "zx_vou.h"
diff --git a/drivers/gpu/drm/zte/zx_hdmi.c b/drivers/gpu/drm/zte/zx_hdmi.c
index 13ea90f..4cc9ebd 100644
--- a/drivers/gpu/drm/zte/zx_hdmi.c
+++ b/drivers/gpu/drm/zte/zx_hdmi.c
@@ -23,7 +23,7 @@
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_of.h>
-#include <drm/drmP.h>
+#include <drm/drm_print.h>
 
 #include <sound/hdmi-codec.h>
 
diff --git a/drivers/gpu/drm/zte/zx_plane.c b/drivers/gpu/drm/zte/zx_plane.c
index 68fd2e2..eeeea99 100644
--- a/drivers/gpu/drm/zte/zx_plane.c
+++ b/drivers/gpu/drm/zte/zx_plane.c
@@ -14,7 +14,7 @@
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_plane_helper.h>
-#include <drm/drmP.h>
+#include <drm/drm_print.h>
 
 #include "zx_common_regs.h"
 #include "zx_drm_drv.h"
diff --git a/drivers/gpu/drm/zte/zx_tvenc.c b/drivers/gpu/drm/zte/zx_tvenc.c
index 0de1a71..355b7fb 100644
--- a/drivers/gpu/drm/zte/zx_tvenc.c
+++ b/drivers/gpu/drm/zte/zx_tvenc.c
@@ -15,7 +15,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc_helper.h>
-#include <drm/drmP.h>
+#include <drm/drm_print.h>
 
 #include "zx_drm_drv.h"
 #include "zx_tvenc_regs.h"
diff --git a/drivers/gpu/drm/zte/zx_vga.c b/drivers/gpu/drm/zte/zx_vga.c
index 3e7e33c..9d18e8a 100644
--- a/drivers/gpu/drm/zte/zx_vga.c
+++ b/drivers/gpu/drm/zte/zx_vga.c
@@ -14,7 +14,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc_helper.h>
-#include <drm/drmP.h>
+#include <drm/drm_print.h>
 
 #include "zx_drm_drv.h"
 #include "zx_vga_regs.h"
diff --git a/drivers/gpu/drm/zte/zx_vou.c b/drivers/gpu/drm/zte/zx_vou.c
index 7491813..7f49c1f 100644
--- a/drivers/gpu/drm/zte/zx_vou.c
+++ b/drivers/gpu/drm/zte/zx_vou.c
@@ -21,7 +21,7 @@
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_of.h>
 #include <drm/drm_plane_helper.h>
-#include <drm/drmP.h>
+#include <drm/drm_print.h>
 
 #include "zx_common_regs.h"
 #include "zx_drm_drv.h"
-- 
2.7.4


