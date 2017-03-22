X-GM-THRID: 6400174624352501760
X-Received: by 10.129.73.1 with SMTP id w1mr20774820ywa.106.1490156788040;
        Tue, 21 Mar 2017 21:26:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.139.211 with SMTP id n202ls341399iod.42.gmail; Tue, 21 Mar
 2017 21:26:27 -0700 (PDT)
X-Received: by 10.107.18.135 with SMTP id 7mr10467098ios.74.1490156787429;
        Tue, 21 Mar 2017 21:26:27 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a3si42288pfb.2.2017.03.21.21.26.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 21:26:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so28378064pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 21:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vbi3cw4vsfbw5STaPSAY0DnAzVX1ezMSUfJ2c7iHBLQ=;
        b=sUG3DvdI/HuhhZLeKjKb4B+LvaNupHSjzI19VsS2jxZmtu3K0LENzwixJcWQNUlgC3
         uDTT+KM1J8f+HcLPv3a0lEJBo21gLYtp56UyBNqyp/QFRNDuW3hwZHABeE2aBP+0NAai
         PVi7XR4ydzfdnbvcb4RTY11fFYARs0UtJeZWCN1JhPViBmsf+c+96OBunNAksHFtE+ya
         SD5hcNoOxCB8uq18qF1hIH+YHOq1vKYa0LsfX/pM8JiPzQsavQYqcHuJIxPYiwuSc44p
         X/xGBauC6zLsVHP+z/DNkFfIvWk/36m4MjBt6SSrhGsTJ9kDVs8yB+P4G+lCMFVdIKlN
         VV3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=vbi3cw4vsfbw5STaPSAY0DnAzVX1ezMSUfJ2c7iHBLQ=;
        b=efeBNOQcP0WCDhAltlxR4E3oOxWrSz7yN1/oW/YFtOQxUJvliMdy77Q9mcTuvd2HSR
         FbSyn7MRPFnZyl+xEfUwHdggDfrRVgPLV3kMgvDanQ40S1RoZTmFcw3edxTnc0d5gMo/
         8qffh1PYKZjvTeI5t34xgBBEZehpaNTpTwnpoXuVR1OdoLIcA6pAv7oRuhU5WkvVdFLy
         wpHpzbkOtF/XTHZGd8Pb1n9rUXX6ZwaeKHmvn+eWxdWhiSGVILDkgLfZmgsPT9NKGzLX
         CDfwQTCQA9wCfwHsy/ZYAh7kZCwt99aTb7Njp8W8/dfPrFhBppBnXQkFMNBHPPXGxtAB
         EScQ==
X-Gm-Message-State: AFeK/H1pe2nUeP3CS/ccUo2WQ8A4t/tmE+bb4cxdMrBv6XtEuqsaOzHL4wJj5rWj1IJXJA==
X-Received: by 10.99.155.17 with SMTP id r17mr6958901pgd.193.1490156787105;
        Tue, 21 Mar 2017 21:26:27 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x21sm397213pfa.71.2017.03.21.21.26.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 21:26:26 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-media@vger.kernel.org,
	gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 2/3] staging: media: davinci_vpfe: Replace a bit shift by a use of BIT.
Date: Wed, 22 Mar 2017 09:56:08 +0530
Message-Id: <20170322042609.23525-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170322042609.23525-1-arushisinghal19971997@gmail.com>
References: <20170322042609.23525-1-arushisinghal19971997@gmail.com>

This patch replaces bit shifting on 1 with the BIT(x) macro.
This was done with coccinelle:
@@
constant c;
@@

-1 << c
+BIT(c)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c   |  2 +-
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c |  2 +-
 drivers/staging/media/davinci_vpfe/dm365_isif.c    | 26 +++++++++++-----------
 drivers/staging/media/davinci_vpfe/dm365_resizer.c |  6 ++---
 4 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 6a3434cebd79..7eeb53217168 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1815,7 +1815,7 @@ vpfe_ipipe_init(struct vpfe_ipipe_device *ipipe, struct platform_device *pdev)
 	v4l2_subdev_init(sd, &ipipe_v4l2_ops);
 	sd->internal_ops = &ipipe_v4l2_internal_ops;
 	strlcpy(sd->name, "DAVINCI IPIPE", sizeof(sd->name));
-	sd->grp_id = 1 << 16;	/* group ID for davinci subdevs */
+	sd->grp_id = BIT(16);	/* group ID for davinci subdevs */
 	v4l2_set_subdevdata(sd, ipipe);
 	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 46fd2c7f69c3..c07f028dd6be 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -1021,7 +1021,7 @@ int vpfe_ipipeif_init(struct vpfe_ipipeif_device *ipipeif,
 
 	sd->internal_ops = &ipipeif_v4l2_internal_ops;
 	strlcpy(sd->name, "DAVINCI IPIPEIF", sizeof(sd->name));
-	sd->grp_id = 1 << 16;	/* group ID for davinci subdevs */
+	sd->grp_id = BIT(16);	/* group ID for davinci subdevs */
 
 	v4l2_set_subdevdata(sd, ipipeif);
 
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 569bcdc9ce2f..0d160c1257d2 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -821,7 +821,7 @@ isif_config_dfc(struct vpfe_isif_device *isif, struct vpfe_isif_dfc *vdfc)
 
 	/* Correct whole line or partial */
 	if (vdfc->corr_whole_line)
-		val |= 1 << ISIF_VDFC_CORR_WHOLE_LN_SHIFT;
+		val |= BIT(ISIF_VDFC_CORR_WHOLE_LN_SHIFT);
 
 	/* level shift value */
 	val |= (vdfc->def_level_shift & ISIF_VDFC_LEVEL_SHFT_MASK) <<
@@ -849,7 +849,7 @@ isif_config_dfc(struct vpfe_isif_device *isif, struct vpfe_isif_dfc *vdfc)
 
 	val = isif_read(isif->isif_cfg.base_addr, DFCMEMCTL);
 	/* set DFCMARST and set DFCMWR */
-	val |= 1 << ISIF_DFCMEMCTL_DFCMARST_SHIFT;
+	val |= BIT(ISIF_DFCMEMCTL_DFCMARST_SHIFT);
 	val |= 1;
 	isif_write(isif->isif_cfg.base_addr, val, DFCMEMCTL);
 
@@ -880,7 +880,7 @@ isif_config_dfc(struct vpfe_isif_device *isif, struct vpfe_isif_dfc *vdfc)
 		}
 		val = isif_read(isif->isif_cfg.base_addr, DFCMEMCTL);
 		/* clear DFCMARST and set DFCMWR */
-		val &= ~(1 << ISIF_DFCMEMCTL_DFCMARST_SHIFT);
+		val &= ~(BIT(ISIF_DFCMEMCTL_DFCMARST_SHIFT));
 		val |= 1;
 		isif_write(isif->isif_cfg.base_addr, val, DFCMEMCTL);
 
@@ -904,10 +904,10 @@ isif_config_dfc(struct vpfe_isif_device *isif, struct vpfe_isif_dfc *vdfc)
 			   DM365_ISIF_DFCMWR_MEMORY_WRITE, DFCMEMCTL);
 	}
 	/* enable VDFC */
-	isif_merge(isif->isif_cfg.base_addr, (1 << ISIF_VDFC_EN_SHIFT),
-		   (1 << ISIF_VDFC_EN_SHIFT), DFCCTL);
+	isif_merge(isif->isif_cfg.base_addr, (BIT(ISIF_VDFC_EN_SHIFT)),
+		   (BIT(ISIF_VDFC_EN_SHIFT)), DFCCTL);
 
-	isif_merge(isif->isif_cfg.base_addr, (1 << ISIF_VDFC_EN_SHIFT),
+	isif_merge(isif->isif_cfg.base_addr, (BIT(ISIF_VDFC_EN_SHIFT)),
 		   (0 << ISIF_VDFC_EN_SHIFT), DFCCTL);
 
 	isif_write(isif->isif_cfg.base_addr, 0x6, DFCMEMCTL);
@@ -1140,7 +1140,7 @@ static int isif_config_raw(struct v4l2_subdev *sd, int mode)
 	isif_write(isif->isif_cfg.base_addr, val, CGAMMAWD);
 	/* Configure DPCM compression settings */
 	if (params->v4l2_pix_fmt == V4L2_PIX_FMT_SGRBG10DPCM8) {
-		val =  1 << ISIF_DPCM_EN_SHIFT;
+		val =  BIT(ISIF_DPCM_EN_SHIFT);
 		val |= (params->dpcm_predictor &
 			ISIF_DPCM_PREDICTOR_MASK) << ISIF_DPCM_PREDICTOR_SHIFT;
 	}
@@ -1893,7 +1893,7 @@ static const struct v4l2_ctrl_config vpfe_isif_crgain = {
 	.name = "CRGAIN",
 	.type = V4L2_CTRL_TYPE_INTEGER,
 	.min = 0,
-	.max = (1 << 12) - 1,
+	.max = (BIT(12)) - 1,
 	.step = 1,
 	.def = 0,
 };
@@ -1904,7 +1904,7 @@ static const struct v4l2_ctrl_config vpfe_isif_cgrgain = {
 	.name = "CGRGAIN",
 	.type = V4L2_CTRL_TYPE_INTEGER,
 	.min = 0,
-	.max = (1 << 12) - 1,
+	.max = (BIT(12)) - 1,
 	.step = 1,
 	.def = 0,
 };
@@ -1915,7 +1915,7 @@ static const struct v4l2_ctrl_config vpfe_isif_cgbgain = {
 	.name = "CGBGAIN",
 	.type = V4L2_CTRL_TYPE_INTEGER,
 	.min = 0,
-	.max = (1 << 12) - 1,
+	.max = (BIT(12)) - 1,
 	.step = 1,
 	.def = 0,
 };
@@ -1926,7 +1926,7 @@ static const struct v4l2_ctrl_config vpfe_isif_cbgain = {
 	.name = "CBGAIN",
 	.type = V4L2_CTRL_TYPE_INTEGER,
 	.min = 0,
-	.max = (1 << 12) - 1,
+	.max = (BIT(12)) - 1,
 	.step = 1,
 	.def = 0,
 };
@@ -1937,7 +1937,7 @@ static const struct v4l2_ctrl_config vpfe_isif_gain_offset = {
 	.name = "Gain Offset",
 	.type = V4L2_CTRL_TYPE_INTEGER,
 	.min = 0,
-	.max = (1 << 12) - 1,
+	.max = (BIT(12)) - 1,
 	.step = 1,
 	.def = 0,
 };
@@ -2044,7 +2044,7 @@ int vpfe_isif_init(struct vpfe_isif_device *isif, struct platform_device *pdev)
 	v4l2_subdev_init(sd, &isif_v4l2_ops);
 	sd->internal_ops = &isif_v4l2_internal_ops;
 	strlcpy(sd->name, "DAVINCI ISIF", sizeof(sd->name));
-	sd->grp_id = 1 << 16;	/* group ID for davinci subdevs */
+	sd->grp_id = BIT(16);	/* group ID for davinci subdevs */
 	v4l2_set_subdevdata(sd, isif);
 	sd->flags |= V4L2_SUBDEV_FL_HAS_EVENTS | V4L2_SUBDEV_FL_HAS_DEVNODE;
 	pads[ISIF_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 857b0e847c5e..3b3469adaf91 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -1903,7 +1903,7 @@ int vpfe_resizer_init(struct vpfe_resizer_device *vpfe_rsz,
 	v4l2_subdev_init(sd, &resizer_v4l2_ops);
 	sd->internal_ops = &resizer_v4l2_internal_ops;
 	strlcpy(sd->name, "DAVINCI RESIZER CROP", sizeof(sd->name));
-	sd->grp_id = 1 << 16;	/* group ID for davinci subdevs */
+	sd->grp_id = BIT(16);	/* group ID for davinci subdevs */
 	v4l2_set_subdevdata(sd, vpfe_rsz);
 	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 
@@ -1927,7 +1927,7 @@ int vpfe_resizer_init(struct vpfe_resizer_device *vpfe_rsz,
 	v4l2_subdev_init(sd, &resizer_v4l2_ops);
 	sd->internal_ops = &resizer_v4l2_internal_ops;
 	strlcpy(sd->name, "DAVINCI RESIZER A", sizeof(sd->name));
-	sd->grp_id = 1 << 16;	/* group ID for davinci subdevs */
+	sd->grp_id = BIT(16);	/* group ID for davinci subdevs */
 	v4l2_set_subdevdata(sd, vpfe_rsz);
 	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 
@@ -1949,7 +1949,7 @@ int vpfe_resizer_init(struct vpfe_resizer_device *vpfe_rsz,
 	v4l2_subdev_init(sd, &resizer_v4l2_ops);
 	sd->internal_ops = &resizer_v4l2_internal_ops;
 	strlcpy(sd->name, "DAVINCI RESIZER B", sizeof(sd->name));
-	sd->grp_id = 1 << 16;	/* group ID for davinci subdevs */
+	sd->grp_id = BIT(16);	/* group ID for davinci subdevs */
 	v4l2_set_subdevdata(sd, vpfe_rsz);
 	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 
-- 
2.11.0


