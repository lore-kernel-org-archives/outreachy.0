X-GM-THRID: 6476152782824931328
X-Received: by 10.13.226.5 with SMTP id l5mr251073ywe.44.1507880402621;
        Fri, 13 Oct 2017 00:40:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.41.135 with SMTP id p129ls403553ywp.13.gmail; Fri, 13 Oct
 2017 00:40:01 -0700 (PDT)
X-Received: by 10.13.197.68 with SMTP id h65mr277994ywd.54.1507880401865;
        Fri, 13 Oct 2017 00:40:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507880401; cv=none;
        d=google.com; s=arc-20160816;
        b=e4zqHLpo544sdUKB59Ayd0Bkt6mM9E2erL18GbdGcrMyTzrYbJd9alz8o++9xuxMia
         mL/AISKymb7ci7Vb+T8eWHL9r5YvIKQElFqETZVnuHer73PHOSaW9qiDDQiiEzZM/Oqa
         bOnjKesQ+e/LbhMOasqneaSUIk3GwmU6fJE9qtEJ6ZYJeQCJzZ3MhIJZxU1xzrA55MVJ
         ctVs3D/If/yCPdHeSOkcFMC75cGUKxdoHdHEcFY6qAkJOKyPSzF9lqVmRY6bqfXIe+ew
         d7FMXWw6Xk9PP8RuYdC9gc7bfEjKxbBRZC7AiBSoAEw8yh8B8lrxByYdoXnCvLW4Y47m
         gWYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=bJVinvkuYiOdjd715UOyM9cZibnNBKMYXFPuFZg90Mk=;
        b=GwX6k0HX4wFs56GEiXZGIuYeIN2zgW3RdiIus1X1E3zB41uxAp6QpvrlHnTy+z9Wd9
         uBq4uDK2ftB1XScctLOjbnDYiVnVVh8eZaH0mTGveeCHgtAD6v8hD836hA3RQ8lfMels
         8DiAgGStO624Y2lh4Rq8M2IeU6rxscQouZtq8ElBtks2WjTNKhVFo0xBa/YwzgZqUVtc
         Pb34kVcyU3TBfGnYqd8H5Yu2k4Viv7eB63AhP7Vv1qXPJpHMNIrW83InvCgNRe4WuQua
         HOWlWY9fiXTJbkJAXDY51+DEY19y1aIQZ2ycff2BzHVswyHT/18e90DuLyB3TImTf/IH
         HBpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ug7Z2/C3;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a4si14370ywb.5.2017.10.13.00.40.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 00:40:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ug7Z2/C3;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id b85so8870356pfj.13
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 00:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=bJVinvkuYiOdjd715UOyM9cZibnNBKMYXFPuFZg90Mk=;
        b=Ug7Z2/C3cDo8pSTer4EaxBCryrMt22W2zRu0QZvQ+hJCz3u1TaEbyP8qin3QZ5PdVx
         eMP0p04qQ1i6t/XSGzQ17IfGDlCaqdymj9K0B6G48vNFOo9e2W9CZ5W3N4EJmdLhmAud
         H/4JP39nBm6M7ZT2c6H9+XSD4pSiDNAGp2s/irEP1UQzOx2lkpIV2jrmsxAAYY28Pfu9
         b8Cs9fbUtbCr4jlrkKRNyi+lG6RI61ewQJz6vyKi0rCNJeAWSMYemzkdjYYBYILUVTi4
         wFY/p5nvWiZ/N2GqcaBmNeMPiKrsQJW80wl2l1gHgz/uui2Y1jegmLbEbXomYPgOP7b8
         RTBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bJVinvkuYiOdjd715UOyM9cZibnNBKMYXFPuFZg90Mk=;
        b=oGQWA8oOcF5fzb8MpZHkH+xo7MN8f5UGyKYivtlv3LYGAMwWLiVNQXg57ApY0Wn6y/
         FImecG6roVlNnRmbx7N/ip7+ssUWD+fU/L8vWzq5FCEenfloUlDlVw/ftaV0isCb5OfG
         wsM4Pm1QmfGIgiUJgrYf3ccJVk4QbyvDId6mlGrzoSH6V68X3rYCpFuWu/HJJQ3j6RAL
         8A5i8IjSnyNWNCoF5tktqO3EOzGLQ0WlsSSwbmKiwPIAy+gf9IES/GAn14mc32ilygcl
         r38DVctfp7u3QIxkEm8He9dMO3isRtaqElkl+++B2Xfvbyf8gcGRguvAjUSu6rn81n1R
         GIng==
X-Gm-Message-State: AMCzsaWY3fVmN/ZEAWiuajq90nofZJx6MTHlQcVF73y/8q3Bmbw2AOi1
	qj87vjKQsQEN+xwzMd/elWbbCQLK
X-Google-Smtp-Source: AOwi7QArSqJaoE1CG7D2S6XfXa3ULQVdPPc/CDXeMVdvNRmgljNLdyatRQxyd321saJbtAfvsob0/Q==
X-Received: by 10.99.115.5 with SMTP id o5mr579615pgc.225.1507880401541;
        Fri, 13 Oct 2017 00:40:01 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id y83sm1203276pfa.31.2017.10.13.00.39.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 00:40:00 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: daniel.vetter@ffwll.ch,
	seanpaul@chromium.org,
	jani.nikula@linux.intel.com
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v2] drm: Replace kzalloc with kcalloc
Date: Fri, 13 Oct 2017 13:07:47 +0530
Message-Id: <20171013073747.29877-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Prefer kcalloc over kzalloc to allocate an array.
This patch fixes checkcpatch issue.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v2:
 -kcalloc will take 3 arguments

 drivers/gpu/drm/drm_crtc_helper.c  | 4 ++--
 drivers/gpu/drm/drm_fb_helper.c    | 2 +-
 drivers/gpu/drm/drm_plane_helper.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_crtc_helper.c b/drivers/gpu/drm/drm_crtc_helper.c
index eab36a460638..5a84c3bc915d 100644
--- a/drivers/gpu/drm/drm_crtc_helper.c
+++ b/drivers/gpu/drm/drm_crtc_helper.c
@@ -562,12 +562,12 @@ int drm_crtc_helper_set_config(struct drm_mode_set *set,
 	 * Allocate space for the backup of all (non-pointer) encoder and
 	 * connector data.
 	 */
-	save_encoder_crtcs = kzalloc(dev->mode_config.num_encoder *
+	save_encoder_crtcs = kcalloc(dev->mode_config.num_encoder,
 				sizeof(struct drm_crtc *), GFP_KERNEL);
 	if (!save_encoder_crtcs)
 		return -ENOMEM;
 
-	save_connector_encoders = kzalloc(dev->mode_config.num_connector *
+	save_connector_encoders = kcalloc(dev->mode_config.num_connector,
 				sizeof(struct drm_encoder *), GFP_KERNEL);
 	if (!save_connector_encoders) {
 		kfree(save_encoder_crtcs);
diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
index 1b8f013ffa65..de31e52ab9cb 100644
--- a/drivers/gpu/drm/drm_fb_helper.c
+++ b/drivers/gpu/drm/drm_fb_helper.c
@@ -2266,7 +2266,7 @@ static int drm_pick_crtcs(struct drm_fb_helper *fb_helper,
 	if (modes[n] == NULL)
 		return best_score;
 
-	crtcs = kzalloc(fb_helper->connector_count *
+	crtcs = kcalloc(fb_helper->connector_count,
 			sizeof(struct drm_fb_helper_crtc *), GFP_KERNEL);
 	if (!crtcs)
 		return best_score;
diff --git a/drivers/gpu/drm/drm_plane_helper.c b/drivers/gpu/drm/drm_plane_helper.c
index 06aee1741e96..759ed93f4ba8 100644
--- a/drivers/gpu/drm/drm_plane_helper.c
+++ b/drivers/gpu/drm/drm_plane_helper.c
@@ -354,7 +354,7 @@ int drm_primary_helper_update(struct drm_plane *plane, struct drm_crtc *crtc,
 	/* Find current connectors for CRTC */
 	num_connectors = get_connectors_for_crtc(crtc, NULL, 0);
 	BUG_ON(num_connectors == 0);
-	connector_list = kzalloc(num_connectors * sizeof(*connector_list),
+	connector_list = kcalloc(num_connectors, sizeof(*connector_list),
 				 GFP_KERNEL);
 	if (!connector_list)
 		return -ENOMEM;
-- 
2.11.0


