X-GM-THRID: 6471138099019644928
X-Received: by 10.98.103.26 with SMTP id b26mr602767pfc.46.1506679248029;
        Fri, 29 Sep 2017 03:00:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.216.152 with SMTP id s24ls1879720plp.5.gmail; Fri, 29 Sep
 2017 03:00:47 -0700 (PDT)
X-Received: by 10.98.79.157 with SMTP id f29mr599694pfj.13.1506679247040;
        Fri, 29 Sep 2017 03:00:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506679247; cv=none;
        d=google.com; s=arc-20160816;
        b=go801vJ+dCVgiI6ar9LDdCrzlDKg881dbCfFpHI2y0RR3CLcRwAx4K+sqmYUoeR1Dh
         wYC0yMAGaFwyYi9V7pD4iXmiXSWOWuuC3Q2fr/xPcqqbsV3uLB1WTq32zUg7Ahm3buTG
         bBahKXmDFBsPazxpqkTSCJ8Qpmx+FUCMwqta6v0q8z0KhddP9tDm2INB/cbd/TTbopF1
         6AvGYkOYsM3iAVPYitFToPBctTd56koL1lum5FGuONYzBObMXIxFGqU2kIZ8dkIg8408
         c0K5z/EefPvFdCFPCO5KmOpCi6QqnXtezfXPhIvm+nqCggsLQl7Cfvjux7ZSeuRGHecg
         05gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=d3lToHBP0OtPcU0pOJ3XB5YJSEWiDGQkDp2kIEQlQtk=;
        b=xuOnWu48LtEOWndMdriaAAn3/U9N40TtNWzeUP0JpXfEW9O4dnplFAIGxKNt2OvHC4
         U/BuUS/yMqWvNHIvwQTSFPHNCrrLQWSNSe5y2D9ewnBAZufU7CXpGxclbDdpuNnTZ+Hi
         IKnju7NkRgwdv5WsDl4AuetrJTWTFof+IdNPXioJxGK1eTfuQjNv9lGqLhbHpoR05+96
         MzcTunVtb069ugjCXPD0qR4Gp9WZYFl7ogp5qV2IylXZzwDiyKN+qWN1Kdm/tXz6oqQB
         2XuiHcVklWJEnoNa+6zV3wPxAZgIFVVm1hjxbAU/S0NUcEqP+n23vEvG0zCDpbAkpxKW
         WUzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DyAtU3iH;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z74si499262pfj.21.2017.09.29.03.00.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 03:00:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DyAtU3iH;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i23so1021440pfi.2
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 03:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=d3lToHBP0OtPcU0pOJ3XB5YJSEWiDGQkDp2kIEQlQtk=;
        b=DyAtU3iHwq5A+4U1kJdmsEDSX/a0zjVogrJoU3kQeOH2lP9k7k9g9kONAZFyH0YqGU
         c8cDPkF7ZAmRQdsg0uRcBTD5J07uzDAEdBWxj1F7774tQMgpXo9FuxbgQO2Abca2Sm/W
         pUJdYhggtzbT9f2cCIAmZF8xeCH1l2yDIyErhTyXUSzhIfudaGYL5T5kVt+mEf23SQmM
         QzqSa49MjnX5bvxs9dGdVTPMEX6+0+EI3k+lM7b/fq4mQMEwOnvaqPqzrZtg9N7ea2HE
         n+Nh43yeDssaiZJUviMxzDpbPjvvyIE2OzlESO/xHN+BHHxJbyA2b9wiFuKQVrm5u6Ro
         VOHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=d3lToHBP0OtPcU0pOJ3XB5YJSEWiDGQkDp2kIEQlQtk=;
        b=HlXtoXHTgM9ieaqn0AZmSqe5xHNj4fBwYiNsuGUFCytLdrIQlZjzyrMTHqrY8wV+oF
         2uhJolZMQLmSZBCmN/qXYFuJHn0dmiYbdwRUlh+BmYp72zRJfK5DymIysIT1Hf5iYutH
         4qxeiSWkP5p0PBXHDRs/YETNn+QyCePFxt04r0ftCCEowJOwNVFhfp5+wXn2ph51m9ZC
         FpjnTxh+bGxEIcDnsJEd6/AKQWuiBQa65Xe2JXbq3x6WtdAWxXqeEwwfNqlN1knm5LRB
         NDzEDj4bC9rfO08i5JC5PgJNWtvP+wSGcj/cUsl2quF2YirZ60sGqI5EJ7cejm7M2c8C
         WLog==
X-Gm-Message-State: AHPjjUi+UIzHeQBEXBV99CIdvwFm3hZn2ursgW+2OmdGSR1DnzKvBbis
	eP98uGzpnX4NqFXd2Az2t0Y=
X-Google-Smtp-Source: AOwi7QCbmiS4j0lIrh2p/lBnKOaHnijT/7Lw/GM38CH8bg94YDtYDtHuFlHSFnjywYOl3AoP2pg3KA==
X-Received: by 10.84.131.103 with SMTP id 94mr6418050pld.302.1506679246761;
        Fri, 29 Sep 2017 03:00:46 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.175.215.134])
        by smtp.gmail.com with ESMTPSA id 77sm6587421pfi.103.2017.09.29.03.00.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Sep 2017 03:00:46 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: daniel.vetter@ffwll.ch
Cc: seanpaul@chromium.org,
	liviu.dudau@arm.com,
	brian.starkey@arm.com,
	malidp@foss.arm.com,
	airlied@linux.ie,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] drm/arm: Replace instances of drm_dev_unref with drm_dev_put.
Date: Fri, 29 Sep 2017 15:30:40 +0530
Message-Id: <1506679240-7061-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace drm_dev_unref with drm_dev_put as it is more consistent
with kernel coding style. Done using the following semantic
patch by coccinelle.

@r@
expression e;
@@

-drm_dev_unref();
+drm_dev_put();

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/gpu/drm/arm/hdlcd_drv.c  | 4 ++--
 drivers/gpu/drm/arm/malidp_drv.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/arm/hdlcd_drv.c b/drivers/gpu/drm/arm/hdlcd_drv.c
index f9bda7b..1a96462 100644
--- a/drivers/gpu/drm/arm/hdlcd_drv.c
+++ b/drivers/gpu/drm/arm/hdlcd_drv.c
@@ -353,7 +353,7 @@ static int hdlcd_drm_bind(struct device *dev)
 err_free:
 	drm_mode_config_cleanup(drm);
 	dev_set_drvdata(dev, NULL);
-	drm_dev_unref(drm);
+	drm_dev_put(drm);
 
 	return ret;
 }
@@ -378,7 +378,7 @@ static void hdlcd_drm_unbind(struct device *dev)
 	pm_runtime_disable(drm->dev);
 	of_reserved_mem_device_release(drm->dev);
 	drm_mode_config_cleanup(drm);
-	drm_dev_unref(drm);
+	drm_dev_put(drm);
 	drm->dev_private = NULL;
 	dev_set_drvdata(dev, NULL);
 }
diff --git a/drivers/gpu/drm/arm/malidp_drv.c b/drivers/gpu/drm/arm/malidp_drv.c
index 7ae94a1..1b92f41 100644
--- a/drivers/gpu/drm/arm/malidp_drv.c
+++ b/drivers/gpu/drm/arm/malidp_drv.c
@@ -665,7 +665,7 @@ static int malidp_bind(struct device *dev)
 		malidp_runtime_pm_suspend(dev);
 	drm->dev_private = NULL;
 	dev_set_drvdata(dev, NULL);
-	drm_dev_unref(drm);
+	drm_dev_put(drm);
 alloc_fail:
 	of_reserved_mem_device_release(dev);
 
@@ -698,7 +698,7 @@ static void malidp_unbind(struct device *dev)
 		malidp_runtime_pm_suspend(dev);
 	drm->dev_private = NULL;
 	dev_set_drvdata(dev, NULL);
-	drm_dev_unref(drm);
+	drm_dev_put(drm);
 	of_reserved_mem_device_release(dev);
 }
 
-- 
2.7.4


