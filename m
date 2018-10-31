X-GM-THRID: 6618532112309944320
X-Received: by 2002:a5b:949:: with SMTP id x9-v6mr1568257ybq.44.1540997091664;
        Wed, 31 Oct 2018 07:44:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:b5ca:: with SMTP id d10-v6ls6425271ybg.15.gmail; Wed, 31
 Oct 2018 07:44:50 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cuwPGiEbnMZsLm+jxQQrewCuQ3OVNEUPI/0ak0iFcSgs8eGd0PZp+vL9La5+/r53CJdc4m
X-Received: by 2002:a25:b809:: with SMTP id v9-v6mr1633329ybj.2.1540997090722;
        Wed, 31 Oct 2018 07:44:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540997090; cv=none;
        d=google.com; s=arc-20160816;
        b=rbJxciOTZLfI6NeL4b1a9wal1cCl2CssSXrwNzaNhIlq1lBysROR23T1ovi/fu88SM
         nB+UyyOd5Z2IvuBfWaWt42z90q4k2rEn4oaSxVQ09ZomjZicmMhOHdBpWq4QS7Sq8q6c
         YoA0ZtDwViFbtHR5KbOMGIVVdeD601esWGIhnWzvZVlHJwnaQ6fxmECoCuh0JLeMAYun
         2BRmiGnKvx3KDO5cErFZ+TvWwrMzpgYfWCEHiO7AvrhfvXQlS3swOO0+ZJoT8QZ0H7Wj
         XVfOhsC/WRy8vh3NcYJcTvFCzQGfIvRzRNB18aCYFNJ8dDPIVVNimx/nxzygpz/682Sy
         cKjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=DzQ95udb3n4k7li4ukgA9aHDB5NmQ3yb/l+IWXqV4/8=;
        b=D2wu4JCEaIb0j1K2VzN6aOlMKNKSZdp8PuZqyO/9/NJjGcD8aomYdqlLgBejX6vzQd
         OVBWpB07Rb3sk4RhehRTVptLn+EL38Xf1OxFaDck9AAPlHrCLoKCK2QdTUYnzQFcwwC1
         omCp3wnpCdRgGwmjSPY/0G+wrDZZvSJYk8nV2Q2tCv4QWp+fVmhXSF0vnzej+kqlwew7
         4W9zBCkDChP7AXjURf8EF5tcI57/ZJ3bFP+A6iB7TBErY0DaoSTHJwIY4ZvLP6QB7nvi
         aqKa+AC44c41poxvQ7AvQKn459hPuEsv3bQoWSwX3mVu+tuZrFAZsJYJDGMFBFzQ1G4S
         QRIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pjbNUFog;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id 192-v6si1021981ybv.0.2018.10.31.07.44.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 07:44:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pjbNUFog;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x741.google.com with SMTP id p3-v6so9819520qkb.5
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 07:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DzQ95udb3n4k7li4ukgA9aHDB5NmQ3yb/l+IWXqV4/8=;
        b=pjbNUFogSJrmo6ELDcd5kP6gO0PUTlOyUr0i9bb5n+Apec/EfdEZN5mtcXV9vaFpeX
         R7d/BUBXHkV/yXWvaB3oRuCWrf1HRbkNyvqPwzFnKDNcMWDS8QMAnsjO46/ogAaXbwQV
         Jjevnw78GHsNS0UM2gpc6N4cxFqEyumHHKXXPpydeK4t5VJzpwbsed35k4QcFcrZ43Li
         nsTJD+ARHce5clxuR65UMHb1b7Xm+nMWVwGWTMUFDULr5xDsxqTs/rtl4oBrwzJtTHsh
         D/kigeadt9WtytjhUSMOI01cs6m5t5041OqKTfLGPrKvjkimJi6XqMgSje6Prei6hUg0
         vKPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DzQ95udb3n4k7li4ukgA9aHDB5NmQ3yb/l+IWXqV4/8=;
        b=Ifa8JXaniedHa6CKP52MpfW3ZpVNzmXDdjpCjLAncStQoE110LArX2jbCW4N57onFV
         rlVgn0VwdJmYjLjuebo1MnglfZ7flj3t+hiLOiy0pxHFdCrHiEi/EgWB5RXht9wDHYY9
         GIaFkbCZg41hZ6qBL1FWejWi79KAjxd1jI+8g5BlojGZBa43+4mcnIh5HRDtjHq/Mrqe
         4kzM6lIKY/44veFyB/HIjvlM3GWO6GFQK3qBw7wWo7zAN/ATWJS1f424etejWVhtgCCo
         2n/HHroIjTK5Tp4st9j8UKzsnKnIaMobkkWH/NtdRhwg1Nw0F9zLbQ6l0ojL9HrN4mcN
         6WiQ==
X-Gm-Message-State: AGRZ1gIEMcKHJXkRxvURyK/BgKVFxXrdC21rG9mLXTf7yFDActSBXD12
	7CRqYdBLikH1JH1NKHFFOlE=
X-Received: by 2002:aed:3024:: with SMTP id 33-v6mr2955485qte.29.1540997090322;
        Wed, 31 Oct 2018 07:44:50 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id j128-v6sm6298409qkd.5.2018.10.31.07.44.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 07:44:49 -0700 (PDT)
Date: Wed, 31 Oct 2018 11:44:45 -0300
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] drm: Remove 80-column line in drm_mode_object.c
Message-ID: <20181031144445.vrdngzj3jclforta@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

Add a new variable to make the drm_mode_object comparison before
idr_alloc and decrease line size.

Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
---
 drivers/gpu/drm/drm_mode_object.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_mode_object.c b/drivers/gpu/drm/drm_mode_object.c
index be8b754eaf60..4b9eafddb409 100644
--- a/drivers/gpu/drm/drm_mode_object.c
+++ b/drivers/gpu/drm/drm_mode_object.c
@@ -36,9 +36,10 @@ int __drm_mode_object_add(struct drm_device *dev, struct drm_mode_object *obj,
 			  void (*obj_free_cb)(struct kref *kref))
 {
 	int ret;
+	struct drm_mode_object *obj_tmp = register_obj ? obj : NULL;
 
 	mutex_lock(&dev->mode_config.idr_mutex);
-	ret = idr_alloc(&dev->mode_config.crtc_idr, register_obj ? obj : NULL, 1, 0, GFP_KERNEL);
+	ret = idr_alloc(&dev->mode_config.crtc_idr, obj_tmp, 1, 0, GFP_KERNEL);
 	if (ret >= 0) {
 		/*
 		 * Set up the object linking under the protection of the idr
-- 
2.19.1


