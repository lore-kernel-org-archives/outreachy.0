X-GM-THRID: 6402938987058561024
X-Received: by 10.157.42.130 with SMTP id e2mr324195otb.39.1490800405556;
        Wed, 29 Mar 2017 08:13:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.9 with SMTP id h9ls5814611iod.49.gmail; Wed, 29 Mar
 2017 08:13:24 -0700 (PDT)
X-Received: by 10.99.110.194 with SMTP id j185mr314129pgc.155.1490800404544;
        Wed, 29 Mar 2017 08:13:24 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g82si1131737pfb.5.2017.03.29.08.13.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 08:13:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id p189so2211438pfp.0
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 08:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Vs/uufIBAjzBUHaHvYc+DrdQMWxrB4fpFjl92MIE4C0=;
        b=f92WqaMs+k2WUQAfbsZq6iBiSx3Vn35p48ezE9YbdSEIWXmTMnFT/mDJGhtc2y3yV5
         12vg0Ij3S3Y4GDttpHjYtcvwEaN17HgqdClXngGf0UFgBaEfwtH6+BmZ2zal1b9XgbDg
         593ktgmYmEYtpYB58jttpfmuSrHkoQR2SVSPs/A2DobC+jxL64nGB79/Dn47PiUWNllP
         yMxDy090sTwUM/cXbcjY5Q2Qf0T7gF9GwDGWpFrDq53tMrkTVfMKfKfUcOCAm4ot4xr0
         ZLHuErlvRMeqGLXEURmg7rUuEa5NZ8KcJqkyJzQkFf4EinauHbvH0gMm0DjmOyzUbEQ/
         4ETg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Vs/uufIBAjzBUHaHvYc+DrdQMWxrB4fpFjl92MIE4C0=;
        b=e1GFs4LMJ/oUuk7sdWBjWsF0YyF/0poFH5CBqSl7JXW2Tdj9KVTWsP2CBvOaKhrrL7
         jxTo3KjCg20jUSDoycjD+jjiqym+6gr+SGB/hqiAtsP8sIagHB1ihkzL5TIfeL9UE0Dx
         CRAS97Qtqq44aGmbvj7QT/LhcIPXRqEiHCidKjsqh7Ay6LaELFXhZkxoMfSaZsDZSLeg
         TiYWwZ61ZpSygy/W95t+IrvaAq9/CsG4ZlXjS8DMOe6C3pcEOa1E4J0Oi3LX5hdBscT1
         ICtiJvaIm/H8zSIS04FmGwNxRqAXa7ojfe+3uWtjpsvG1mJMFj9FCGLVioN8u1YKk92I
         U0Aw==
X-Gm-Message-State: AFeK/H3sSVA9oDnObmqfGSi/2c/2jswOzr1jqXNRuzQfqFYF5weraI1DjkGK//GjI6GutA==
X-Received: by 10.84.195.1 with SMTP id i1mr1127255pld.175.1490800404211;
        Wed, 29 Mar 2017 08:13:24 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n4sm14251874pfg.73.2017.03.29.08.13.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 08:13:22 -0700 (PDT)
Date: Wed, 29 Mar 2017 20:43:20 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: mchehab@kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH] staging: media: davinci_vpfe: Replace a bit shift
Message-ID: <20170329151320.GA4434@arushi-HP-Pavilion-Notebook>
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


