X-GM-THRID: 6401096907000643584
X-Received: by 10.99.23.95 with SMTP id 31mr3725611pgx.122.1490412218077;
        Fri, 24 Mar 2017 20:23:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls768036otb.38.gmail; Fri, 24 Mar
 2017 20:23:37 -0700 (PDT)
X-Received: by 10.129.70.138 with SMTP id t132mr3159076ywa.157.1490412217626;
        Fri, 24 Mar 2017 20:23:37 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 190si978371pfv.3.2017.03.24.20.23.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Mar 2017 20:23:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so1297580pgh.3
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Mar 2017 20:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HnDszxoAOmO4AUg1iLWxpFFV7Qn8mszqbbKMd5PXSLg=;
        b=O3CIbNqL+uaWAwZyBCzdJVpnObQVEp+XyycD3kZea8O53tqbsMcfUgPjQxnWaInWpe
         kQFe/0gf8ZJMwP6tPcUNP4N4QMYgiGcr4ePOOPP8t79qwotlQbQkkv6JJSbHC60TYv2d
         NIBSTsjEaYD6RudkaNtsX3/FiQQmBJiKeF/iQ8I8v93D2OEvC5BHVtdZ6zGIcUTrJS5U
         P9c19VfbW3gqsGAw4+PzgwXyxNc0HSGft1PCVLpfp5XnUBtWDbo1JuiPnUfK+GPBoDIf
         m89GhbRJ1/Y3XsEIXPvWOqg0U5ENrDCuXhccX0VU/3IhST7fTayT+VDiO+8+ph1T35ak
         1t6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HnDszxoAOmO4AUg1iLWxpFFV7Qn8mszqbbKMd5PXSLg=;
        b=Tlj6G6RgiQShKNDG4hnFZUHm7QhLtbtQDyN6NlooYwcAMRDS16hHUhRJdcxzBQFGZv
         JYOU3nP8uPbiKFDhf7Q6aa06+uVk/ph2Gawk3vgSHfrTWNx5KUPmJvlqChX4pGPhypns
         13sgmnBkv86Ac9LAgm7yfdDGx7gISUnb6q/h8vEVP/PUTLrsX04r3YYf0+pVMFCxsdPK
         AneCPFIsp194HBvPZM6Bve0Kxl89I7F4kxeD693Hq3KG9CUICJx30K/aa8MhtjKgJ+0a
         e+TXiL+QE5Gi5Tmtl+B/HM09gxlloH87q/fs/sLgkULIiWSaBAJzxA29ghsCjnQC4z1n
         0L3w==
X-Gm-Message-State: AFeK/H1VdxmwVS+IqSqoIz6rakjjjnt9tjxgot0n8kOpZH06UyMmpNbHloxRE0w3h+aibg==
X-Received: by 10.99.103.133 with SMTP id b127mr12727540pgc.29.1490412217233;
        Fri, 24 Mar 2017 20:23:37 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s64sm7143209pfe.10.2017.03.24.20.23.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Mar 2017 20:23:35 -0700 (PDT)
Date: Sat, 25 Mar 2017 08:53:30 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: mchehab@kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: media: davinci_vpfe: Replace a bit shift.
Message-ID: <20170325032329.GA18900@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces bit shifting on 1 with the BIT(x) macro.
This was done with coccinelle:
@@
constant c;
@@

-1 << c
+BIT(c)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v3
 - change the subject.
 - remove extra parenthesis.

 drivers/staging/media/davinci_vpfe/dm365_ipipe.c   |  2 +-
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c |  2 +-
 drivers/staging/media/davinci_vpfe/dm365_isif.c    | 10 +++++-----
 drivers/staging/media/davinci_vpfe/dm365_resizer.c |  6 +++---
 4 files changed, 10 insertions(+), 10 deletions(-)

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
index 569bcdc9ce2f..74b1247203b1 100644
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
+		val &= ~BIT(ISIF_DFCMEMCTL_DFCMARST_SHIFT);
 		val |= 1;
 		isif_write(isif->isif_cfg.base_addr, val, DFCMEMCTL);
 
@@ -1140,7 +1140,7 @@ static int isif_config_raw(struct v4l2_subdev *sd, int mode)
 	isif_write(isif->isif_cfg.base_addr, val, CGAMMAWD);
 	/* Configure DPCM compression settings */
 	if (params->v4l2_pix_fmt == V4L2_PIX_FMT_SGRBG10DPCM8) {
-		val =  1 << ISIF_DPCM_EN_SHIFT;
+		val =  BIT(ISIF_DPCM_EN_SHIFT);
 		val |= (params->dpcm_predictor &
 			ISIF_DPCM_PREDICTOR_MASK) << ISIF_DPCM_PREDICTOR_SHIFT;
 	}
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


