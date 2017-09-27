X-GM-THRID: 6470525432105009152
X-Received: by 10.99.61.12 with SMTP id k12mr405175pga.160.1506536601800;
        Wed, 27 Sep 2017 11:23:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.236.65 with SMTP id h1ls662836pln.13.gmail; Wed, 27 Sep
 2017 11:23:20 -0700 (PDT)
X-Received: by 10.101.69.194 with SMTP id m2mr415050pgr.7.1506536600829;
        Wed, 27 Sep 2017 11:23:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506536600; cv=none;
        d=google.com; s=arc-20160816;
        b=PczvYMZ4r5uRRuNlcLaIGxmP+jnrd47GCThvBZGYerMld1LAHizmhq8mEpgYcxc0y5
         qdKW5Rh/ItQR4EKr6eMALoGldDViXeomII2WHI29dyipfuYfLUb/uObMDto8I7k3sWUV
         X6HHU0sUpqS4fpm6FVRik/mkNaYXN0DqKYvcEiT9PIXXjaF1V5F8GsxW3wD9PPA0Jtdo
         fP4mJkXxMm3FgPdF31w4DquWia6gA6AcvYPntQlsmmG5sDToSkP/3p6gCG+CI9AYKAtN
         Xp6dpIpMh+lRAmUWXO7vIN00E+/Kde6yYeNXsG4kziKdnsrTrYLcdb+EijQaMmrC7fAx
         4V1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=ZxeBLEsSgRmDwV3m+riZNTqsg6QJWvSBo3EsY6cCF6w=;
        b=ezNWQOGde52qSoTQ7USaDP7b7zNjFhbbj5u2mbwbNtxtxejW+dPERWy+G6GUYyM5+L
         k7P6/3+Eondr8GcEm2XrQJYnG09t5KNANXsywrTnS9/ByjgYwNspVhxpZDvmq31z1Baf
         UGxilWmiYoeZhcdt7saXd/sIlqaQ41wTdfwrtDO2h4TDODIPOveIjkDNKrtbsNvl7wfC
         Z/0MiHCotde57AnmJhAi15Cd5nHSVamII2zY4OC5FPMnjWvLk2kN+WZYYf8T2nGspWaX
         WHwwivQ6aNwK4U0rYmuA8/1aIvqhrNKJwScYRE1O6lqsTxyMT+qQQtX/kNOQnChaxHin
         8sQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OAuAH/KA;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id e2si1020748pfm.12.2017.09.27.11.23.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 11:23:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OAuAH/KA;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id a7so7430323pfj.5
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 11:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZxeBLEsSgRmDwV3m+riZNTqsg6QJWvSBo3EsY6cCF6w=;
        b=OAuAH/KAEjuZ1zHBwdOm7aHnEt60mla/41lJeSqVwbawn6wZpziQo9CWbLdp8pb5fl
         hZLVPyCs821ghd9SwhJ3pTbXTqFucQf0K+arY0LOO2mIXDpeFqMJIjBcrFOKOv+wxVqv
         FhOiWLk4GJJM45Isfw6q7utrkHPb8Yj3uWo62bFmytjVBjH6OlnOTW2MjdG9iqkN5dAd
         YYAG7+eCA0pJ02eUyyrzURxaD8EWH3ErmY2/uurjz3krBusLHLpV6NOlzP6GxFexqXFA
         VOM8AwHZWUoRaOsGF5zMLMi8hZcFDvWWog3gsAMQH54h5MW4Xd+3o0H7knJkyBHRxpxa
         WShg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZxeBLEsSgRmDwV3m+riZNTqsg6QJWvSBo3EsY6cCF6w=;
        b=FXiHSEfHGAAwDaShr4O9IFvpqb+8R1vhCsppJM1YTAvS9QyGCz1I9NtugmwMAzHBF2
         dQxqVcfQmldcUlG75CSqOLqLXdfZ98N30mv10Z+ORRgoHZgFnEs71+OR5gixZqQcdMgd
         57XuW6VWdm8rb5gRaO55WRpaGkO6vwZILmkAkCAZK58YLSIl80giUxomFCcd7zQjZZgI
         Z7t3lbFlZEdS3A3jRiCnZ2SRWlOXJcgI1FjGlOngpiu7FoJVeIoOE+QiGa6IBazGJQpz
         ZE+J0qkAQPkg0lQ/iFXqit9ElJAUmgrBvzXUDT7lXo/kZcm6X1Zmp2gFsYg03ytwNc2b
         ulxQ==
X-Gm-Message-State: AHPjjUg4dX4Jdm6HJLFLPU4KmLddIgrXU0ghFEuqvijHrN2O1EuhIFF6
	C1m0TD1U9j46FQnmXaWNLfI=
X-Google-Smtp-Source: AOwi7QD5L15uuBan2Xmp6VYwXlB/0pb4S84zDlA1xxAmIUGosRCeky+Opp2VWE7MvugOe1rqpqEbTg==
X-Received: by 10.101.76.6 with SMTP id u6mr1300407pgq.93.1506536600592;
        Wed, 27 Sep 2017 11:23:20 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id d23sm15810663pfe.115.2017.09.27.11.23.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 11:23:20 -0700 (PDT)
Date: Wed, 27 Sep 2017 12:23:17 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>,
	Heiko Stuebner <heiko@sntech.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
	Sean Paul <seanpaul@chromium.org>
Subject: [PATCH] drm/rockchip: Rely on the default best_encoder() behavior
Message-ID: <20170927182317.GA8249@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Since the output has 1:1 relationship between connectors and encoders,
and the driver is relying on the atomic helpers, remove the custom
best_encoder() and let the core call drm_atomic_helper_best_encoder().

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index a57da05..275844d 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -287,14 +287,6 @@ static int cdn_dp_connector_get_modes(struct drm_connector *connector)
 	return ret;
 }
 
-static struct drm_encoder *
-cdn_dp_connector_best_encoder(struct drm_connector *connector)
-{
-	struct cdn_dp_device *dp = connector_to_dp(connector);
-
-	return &dp->encoder;
-}
-
 static int cdn_dp_connector_mode_valid(struct drm_connector *connector,
 				       struct drm_display_mode *mode)
 {
@@ -346,7 +338,6 @@ static int cdn_dp_connector_mode_valid(struct drm_connector *connector,
 
 static struct drm_connector_helper_funcs cdn_dp_connector_helper_funcs = {
 	.get_modes = cdn_dp_connector_get_modes,
-	.best_encoder = cdn_dp_connector_best_encoder,
 	.mode_valid = cdn_dp_connector_mode_valid,
 };
 
-- 
2.7.4


