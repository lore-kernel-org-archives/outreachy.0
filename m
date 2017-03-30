X-GM-THRID: 6403243531754799104
X-Received: by 10.46.15.10 with SMTP id 10mr712470ljp.31.1490871312743;
        Thu, 30 Mar 2017 03:55:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.156 with SMTP id f28ls318574lji.30.gmail; Thu, 30 Mar
 2017 03:55:11 -0700 (PDT)
X-Received: by 10.25.216.154 with SMTP id r26mr700411lfi.7.1490871311501;
        Thu, 30 Mar 2017 03:55:11 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id x188si152562wmx.0.2017.03.30.03.55.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 03:55:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id k6so9683930wre.3
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 03:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=z9JLI9yjrTiD00jZEdUwq8X08LN1DeS7LxAfBT8WDD8=;
        b=l2Lak8AiG1Z6huug015acab4BM80QR7a78Py+efv6wO4GPtc/IIA0xP7m+4/yDab0y
         f4XWkQQzexx4+FUzNKGvFMxXgIXQ8FC+vlvcb3tpS7SvKQTlbszQ90sX+TTzfxdT6fC4
         q7/8LpW2ti1rsucHZb+inblXz4guy5mu9sG4hdtom7/83rRLLSQt0YF+rcx0UI/XvyWV
         3rT22x2XTMWGoiZXOaihSAxJlWy+jOgNnDgf8lYZFnVdqMaCS0MCtXBnsasA6ugcDK+Y
         nYd8M9NvFoCOjhOx/t4ksrMFVpR9MypvuZkcjPVwf8RLeeg0FlbKQpAG3lrTVqhJgB1X
         2GrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=z9JLI9yjrTiD00jZEdUwq8X08LN1DeS7LxAfBT8WDD8=;
        b=tx5PusLUW8IkZ/mmuJK13rJQjbAbBriwHTnsUFmrydm7NU/c6X8ddwZY8jXZg3Ku1F
         m/TrBJByesiu7Hb6obYcyFrXF2SZx2ai2nLA0ZU154Lv76tCfTKw7WaZ6udUh9u5qb6/
         QI4ilrQHxf0gz7oQrdx9AuqOj0+WuQXVHQhxMurjp+cs9LK6iSAijKmAKhEh/vDzXY09
         TcPKwP/TF1x6iMHN5uYOig6I5iJcdaz0dEvS+q8MrhcDAMVOAMCykeNf+7NBExpgnyv9
         EpZT/gnxxbegetLNMKIBxintr9ac2+T4SYQTOHbuec1sAPRMrC8OH2J1h5RdU6w2E1u5
         ta4A==
X-Gm-Message-State: AFeK/H0N8M/7ZaqZZ5YcVY93qPL+vVmsKqiK8ukeVBQtt345BKLEgtKtgID9YdMlmngMvA==
X-Received: by 10.223.180.86 with SMTP id v22mr5082340wrd.169.1490871311228;
        Thu, 30 Mar 2017 03:55:11 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8160:a9a:c8b7:dd2d:d45b:b444])
        by smtp.gmail.com with ESMTPSA id 127sm2772722wmt.20.2017.03.30.03.55.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Mar 2017 03:55:10 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: daniel.vetter@intel.com,
	jani.nikula@linux.intel.com,
	seanpaul@chromium.org,
	airlied@linux.ie,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	corbet@lwn.net
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] drivers: gpu: drm: dr_fb_cma_helper: Fix kerneldoc comments
Date: Thu, 30 Mar 2017 13:55:07 +0300
Message-Id: <20170330105507.6090-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Remove the description for the non-existing 'num_crtc' to fix the
build warning: ./drivers/gpu/drm/drm_fb_cma_helper.c:557: warning:
Excess function parameter 'num_crtc' description in
'drm_fbdev_cma_init'.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/gpu/drm/drm_fb_cma_helper.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_fb_cma_helper.c b/drivers/gpu/drm/drm_fb_cma_helper.c
index 596fabf..72aa32b 100644
--- a/drivers/gpu/drm/drm_fb_cma_helper.c
+++ b/drivers/gpu/drm/drm_fb_cma_helper.c
@@ -547,7 +547,6 @@ EXPORT_SYMBOL_GPL(drm_fbdev_cma_init_with_funcs);
  * drm_fbdev_cma_init() - Allocate and initializes a drm_fbdev_cma struct
  * @dev: DRM device
  * @preferred_bpp: Preferred bits per pixel for the device
- * @num_crtc: Number of CRTCs
  * @max_conn_count: Maximum number of connectors
  *
  * Returns a newly allocated drm_fbdev_cma struct or a ERR_PTR.
-- 
2.9.3


