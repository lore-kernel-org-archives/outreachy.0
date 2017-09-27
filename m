X-GM-THRID: 6470359344407904256
X-Received: by 10.107.134.32 with SMTP id i32mr228779iod.90.1506497930668;
        Wed, 27 Sep 2017 00:38:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.132.103 with SMTP id 94ls301684ple.9.gmail; Wed, 27 Sep
 2017 00:38:49 -0700 (PDT)
X-Received: by 10.99.61.12 with SMTP id k12mr244819pga.160.1506497929683;
        Wed, 27 Sep 2017 00:38:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506497929; cv=none;
        d=google.com; s=arc-20160816;
        b=GuqtSlCF4ovENh4wbnI4Pbhs2xKq1LQMzjwip2GOGOe9ASabAShlsdxwsiKWt6cjxC
         bjG5v+KZgQ/ethYQNiLT/CPhApflHsmIWizB7LOqeJ1KLPLKOt4KPdz/Kzz5GlaObqpU
         NJBKHEmqwiXhCeh93F71OrlzDZqUoZ7qTAhCokByy1rT/IOgTyFn1CJbbvuaxEHySxtg
         A/56z0NsPHnAXe+in+/o38mS5uRe/XH/9pmG+oDy+JeePknOA2okYXselQSRV/ppGf2H
         CHwyGk3acam4j1x2g+IJGWH0QP9prf3BV6MdCkTymZJdY7vr5KvNJRXG5P9dHRWBb0LJ
         N/kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=s+LLTxtSzEK9REu3Sp8KFa/VCZNOw/N65jztGgy/zTw=;
        b=u6Y4vW78AZDdDX20u0AsNhvyD5X4eQLWjEJlbepDrGqqJ8MrNSz6HW4JoiPBjeqelZ
         Vm4bcxHuDCitD8C3PgB2yOHgjLXb4iV631LKAGWMksPKq3VcCo0DQHEC+wvOpC3kXoAa
         E7SHHdks1x04VbdzMxXyJ+RprU/k6hLdxoCVXM4IodGeLLUsYc2q0qwVjwzBktFpQsSq
         InVL8+rZ+KwCrmklaDkCOC/UC/BRrEpGwqPTQoVVJewd+Tzb0NDfo9/NiEBxVBMfl/Bl
         TdmfaTO3OHCoOwEvE/PR98smMmLh+FCF5yhjB1O80qwzlF+Rat+CgeLT8xqGqK5bB5eN
         M+AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rXIs1TrI;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id w11si812581pfk.4.2017.09.27.00.38.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 00:38:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rXIs1TrI;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id m30so8258883pgn.5
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 00:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=s+LLTxtSzEK9REu3Sp8KFa/VCZNOw/N65jztGgy/zTw=;
        b=rXIs1TrIhFt9eBwKjgD6rp1Bgw61uz6R58lO53qcKmOUtPNM8NM2zWlLb6k7QISXJW
         mTGSMZ1+OY3HFAjnRIIPKlQiYBHz8hsgKG02QzdtqLtKIYPC0cazM4W3x+wyao94Qqpl
         MvnurLWl+GRVDy84+HcTyNGUTFoVaMmVv8C1tE/gzQ6BD1YkwLa+QavMy1JKbAQCCR8x
         ZAGOXt3rY4eWGWrsNey/Ylyg8LK3zfBad6J4wr7dGfVBuvQCV6Qgq8zb8mlvq7WJO1d1
         dx1MSXZiyfdaCrtMg7OF0QEshVfY/kHnSm0CC6NAM5ubUmVmRdKYmj1cWZ4n2yMgAG7U
         ArBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=s+LLTxtSzEK9REu3Sp8KFa/VCZNOw/N65jztGgy/zTw=;
        b=HQ3vGG7mr4rlMcpY2Eel0dJhQLWNFpFTL55DMlB/P5AM8wVS1RRTzIXn5A2aMcxDbd
         VzhCrmenJce2AT5xLFQgsClCezknvnUTQVKMGulpk7hCg2om0dtzO0uskk+FKIPjaoSx
         2X+NkbAxIeonvj+mtCAOiqR4ZOhPAahmAT/JqYxciNFJBZSp69HSmQMg09eqMOpEhyVm
         Wy1fDtgZPS8IMSwzhsifeL+6vPLbW+MKEV9v1o5WlrKo2DwThkXfcxkOsLip2t2n6Ycz
         6nOdy3cszAlgztmhL5e9o75x3GMldWAtz8a2tlQ/tODaHZpNVSLUwJLvDOHc1BvkgaQO
         VtsA==
X-Gm-Message-State: AHPjjUiM6BpGzxiajUAWrCtAXtpUuxpaNVruyIzw2JuIa1IsVUl7Rcvf
	wF5k3y2rQXqeUmu+kJRZRFU=
X-Google-Smtp-Source: AOwi7QDkvDKfRlGrn8ZTexTPmGgC03QfYr1NZMbGrV8z7/E6jwtxj2v/7qXPZthy4HAVmq+zLfmb1g==
X-Received: by 10.99.110.141 with SMTP id j135mr533922pgc.242.1506497929240;
        Wed, 27 Sep 2017 00:38:49 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id h1sm18307549pgp.37.2017.09.27.00.38.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 00:38:48 -0700 (PDT)
Date: Wed, 27 Sep 2017 01:38:46 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Russell King <linux@armlinux.org.uk>, David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH] drm/armada: Remove unused #include <drmP.h>
Message-ID: <20170927073846.GA14352@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove drmP.h as it is not needed anymore since nothing it
defines is used in these files.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/gpu/drm/armada/armada_510.c   | 1 -
 drivers/gpu/drm/armada/armada_drv.c   | 1 -
 drivers/gpu/drm/armada/armada_fb.c    | 1 -
 drivers/gpu/drm/armada/armada_fbdev.c | 1 -
 drivers/gpu/drm/armada/armada_gem.c   | 1 -
 5 files changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_510.c b/drivers/gpu/drm/armada/armada_510.c
index ad3d2eb..41a784f 100644
--- a/drivers/gpu/drm/armada/armada_510.c
+++ b/drivers/gpu/drm/armada/armada_510.c
@@ -9,7 +9,6 @@
  */
 #include <linux/clk.h>
 #include <linux/io.h>
-#include <drm/drmP.h>
 #include <drm/drm_crtc_helper.h>
 #include "armada_crtc.h"
 #include "armada_drm.h"
diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
index c993bcc..17bb675 100644
--- a/drivers/gpu/drm/armada/armada_drv.c
+++ b/drivers/gpu/drm/armada/armada_drv.c
@@ -9,7 +9,6 @@
 #include <linux/component.h>
 #include <linux/module.h>
 #include <linux/of_graph.h>
-#include <drm/drmP.h>
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_of.h>
 #include "armada_crtc.h"
diff --git a/drivers/gpu/drm/armada/armada_fb.c b/drivers/gpu/drm/armada/armada_fb.c
index 51839c1..a38d5a0 100644
--- a/drivers/gpu/drm/armada/armada_fb.c
+++ b/drivers/gpu/drm/armada/armada_fb.c
@@ -5,7 +5,6 @@
  * it under the terms of the GNU General Public License version 2 as
  * published by the Free Software Foundation.
  */
-#include <drm/drmP.h>
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_fb_helper.h>
 #include "armada_drm.h"
diff --git a/drivers/gpu/drm/armada/armada_fbdev.c b/drivers/gpu/drm/armada/armada_fbdev.c
index cf6bad1..a2ce83f 100644
--- a/drivers/gpu/drm/armada/armada_fbdev.c
+++ b/drivers/gpu/drm/armada/armada_fbdev.c
@@ -10,7 +10,6 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 
-#include <drm/drmP.h>
 #include <drm/drm_fb_helper.h>
 #include "armada_crtc.h"
 #include "armada_drm.h"
diff --git a/drivers/gpu/drm/armada/armada_gem.c b/drivers/gpu/drm/armada/armada_gem.c
index 49d40aa..190280e 100644
--- a/drivers/gpu/drm/armada/armada_gem.c
+++ b/drivers/gpu/drm/armada/armada_gem.c
@@ -8,7 +8,6 @@
 #include <linux/dma-buf.h>
 #include <linux/dma-mapping.h>
 #include <linux/shmem_fs.h>
-#include <drm/drmP.h>
 #include "armada_drm.h"
 #include "armada_gem.h"
 #include <drm/armada_drm.h>
-- 
2.7.4


