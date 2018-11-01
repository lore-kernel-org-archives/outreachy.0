X-GM-THRID: 6618973962329128960
X-Received: by 2002:a24:6c51:: with SMTP id w78-v6mr6290115itb.5.1541099967706;
        Thu, 01 Nov 2018 12:19:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:f80a:: with SMTP id o10-v6ls2122194ioh.2.gmail; Thu, 01
 Nov 2018 12:19:26 -0700 (PDT)
X-Google-Smtp-Source: AJdET5farxmzGWJ6VvgL5ngn1fWb8yzzEcZ40vMU07HX+4/70ASZMNNbQ4odvAGdvGqb4nNxheYl
X-Received: by 2002:a6b:cf17:: with SMTP id o23-v6mr2401110ioa.30.1541099966433;
        Thu, 01 Nov 2018 12:19:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541099966; cv=none;
        d=google.com; s=arc-20160816;
        b=iKBfg4PO2S10pAlGJy179SRgrz4lVhgSht4R1kqOwKvYb6qvEl1gujqBHgwZtqX+gm
         G5jGR4pkbp9UitgMzOcs37RVVRN+osBsYCRn+x7Qk3j586C5YZEuN3QNE+MX3mtNZoZ1
         GDiw40Vnwic2sirDGKDHUgr/aGFaQ2aX10e5PehtyoQa3bPnSZD++U3h8JnHylve6Ted
         caqur/nvZc+9nRdU4Q8GQ7XcRpAeh/REYVB1oxrtziItKzfqFk8XuLAHrC6AZUygFVfL
         i5aNqjOXqQTD8esFDdvFeQRfNpqmibSNxNKTo2ngGPcMy5stKAlWKZkhnnyyM8dCS8za
         Gskw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=GhnOslZicpjuujZ6LiBqUAp9Jy6f+iGlAvkP4Tu7yJk=;
        b=L/E0UurUmnDEi80TGnAnWi1s+CpFSeCwQtg6hyqBfp/SU2EClW7kaZGeQ5uw/ZVChN
         yvLhlBFQfnA6JuqXUhziPZNCJId6k9ueGOY1ObYM6OzEtWXGm551AzmhrowaGAVFNn0Z
         pKAgLisZGFaahf85a7bab/e2ktKNdIKv3tXgayFOBjIvdXKyz9uwZm2i9DNDRTw7HPux
         AYd21Yg7ji0I/eCvM4IqCM+LDIi/wMQmKLFQbPGkX7Rx3H2uO6pdgxPppJrvAmZwjor1
         CISVzGv2FpAbcFLHxqHDQeGox/xiRSM1StyqX1gCtzc/W4OHkMHPro3ODDFmgV7iUwFL
         baQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D0h+TlSp;
       spf=pass (google.com: domain of mdarcy137@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mdarcy137@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mdarcy137@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id 17-v6si120803itv.2.2018.11.01.12.19.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Nov 2018 12:19:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdarcy137@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D0h+TlSp;
       spf=pass (google.com: domain of mdarcy137@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mdarcy137@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id x6-v6so9418465pln.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Nov 2018 12:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GhnOslZicpjuujZ6LiBqUAp9Jy6f+iGlAvkP4Tu7yJk=;
        b=D0h+TlSpFCaYp8wiIC5+BGZ8lqZVaEJJtUc3yKY8wWtEtpfcBHraNWU3UVB73psakA
         THGefDGUPnNIwHAcIKMvXLDk1h6XjmlsLgvaPkgu1B5cO039LMUczctt2cn1E0+yMGgy
         UFNllqsJzN63Cp9jJpOMpwGuKQFPOOLTta068qAsmEQsDU6kJ+GVMbYZzkVK7WZAKoVa
         MpQTwP9ICOy33e5AWgKaJ+4pjBd+GtKYNqYUd4alk3QJSwXthshqgUQNLTZja74wJaeI
         Ovy61Q+cqoVCTbkYAAIbOKsT0q09nAqGaSNB6hrqywXybSqZrB4savhFY+meK2f/tasD
         YGLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GhnOslZicpjuujZ6LiBqUAp9Jy6f+iGlAvkP4Tu7yJk=;
        b=eIjFxd+ucvU3ehpSZfJt+5bUgXSlFDBw0vflySUjk5V8egrCWBnHgpDBwylXBnjh5n
         UB+DBCfG6kLQLuKYqytZGXX0yMCPKpvepz3TmAIXNOlVu93SmeGR1Ea9+IfI5QdAczu3
         77z9XaiWn1EaZVD5pChA/weOasjA6eMhHeuoyUQNOzgZKuCPu5NdE8dMU5w+6PkRG3lU
         q+pm5VVXAQ8jl10P2PXPTrF7cog8HbMGjyWA1LpAIgppoMxUn8wAZEklETQdh1W5V0Vm
         n6bmGUbxDEodjOULpIXxXXX8iKTb1JkUhSntWXOHBKQ+f2rV0C0mphH1wopx/XVA/Kvr
         ODeA==
X-Gm-Message-State: AGRZ1gKqNwOcbkgvGcYKAUlm7hmAqFFHtxMxi6otWZkmyTxqIndozaah
	cMfuFDAc+Qu+U37DojnOl7g=
X-Received: by 2002:a17:902:9698:: with SMTP id n24-v6mr9069166plp.9.1541099965480;
        Thu, 01 Nov 2018 12:19:25 -0700 (PDT)
Return-Path: <mdarcy137@gmail.com>
Received: from chrisyukine.localdomain (97-115-108-6.ptld.qwest.net. [97.115.108.6])
        by smtp.gmail.com with ESMTPSA id z79-v6sm14552258pfl.33.2018.11.01.12.19.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 01 Nov 2018 12:19:25 -0700 (PDT)
Date: Thu, 1 Nov 2018 12:19:23 -0700
From: Michelle Darcy <mdarcy137@gmail.com>
To: mchehab@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: davinci_vpfe: Align brackets to open parentheses
Message-ID: <20181101191923.GA21364@chrisyukine.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Fixes checkpatch.pl CHECK: Alignment should match open parenthesis

Signed-off-by: Michelle Darcy <mdarcy137@gmail.com>
---
 .../staging/media/davinci_vpfe/dm365_ipipe.c  | 62 +++++++++----------
 1 file changed, 31 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 4d09e8141fed..d6a42b8b7f7c 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -62,7 +62,7 @@ static int ipipe_validate_lutdpc_params(struct vpfe_ipipe_lutdpc *lutdpc)
 
 	for (i = 0; i < lutdpc->dpc_size; i++)
 		if (lutdpc->table[i].horz_pos > LUT_DPC_H_POS_MASK ||
-		   lutdpc->table[i].vert_pos > LUT_DPC_V_POS_MASK)
+		    lutdpc->table[i].vert_pos > LUT_DPC_V_POS_MASK)
 			return -EINVAL;
 
 	return 0;
@@ -102,7 +102,7 @@ static int ipipe_get_lutdpc_params(struct vpfe_ipipe_device *ipipe, void *param)
 	lut_param->repl_white = lutdpc->repl_white;
 	lut_param->dpc_size = lutdpc->dpc_size;
 	memcpy(&lut_param->table, &lutdpc->table,
-	   (lutdpc->dpc_size * sizeof(struct vpfe_ipipe_lutdpc_entry)));
+	       (lutdpc->dpc_size * sizeof(struct vpfe_ipipe_lutdpc_entry)));
 
 	return 0;
 }
@@ -491,7 +491,7 @@ ipipe_validate_rgb2rgb_params(struct vpfe_ipipe_rgb2rgb *rgb2rgb,
 }
 
 static int ipipe_set_rgb2rgb_params(struct vpfe_ipipe_device *ipipe,
-			      unsigned int id, void *param)
+				    unsigned int id, void *param)
 {
 	struct vpfe_ipipe_rgb2rgb *rgb2rgb = &ipipe->config.rgb2rgb1;
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
@@ -545,7 +545,7 @@ ipipe_set_rgb2rgb_2_params(struct vpfe_ipipe_device *ipipe, void *param)
 }
 
 static int ipipe_get_rgb2rgb_params(struct vpfe_ipipe_device *ipipe,
-			      unsigned int id, void *param)
+				    unsigned int id, void *param)
 {
 	struct vpfe_ipipe_rgb2rgb *rgb2rgb = &ipipe->config.rgb2rgb1;
 	struct vpfe_ipipe_rgb2rgb *rgb2rgb_param;
@@ -775,44 +775,44 @@ ipipe_set_3d_lut_params(struct vpfe_ipipe_device *ipipe, void *param)
 static int ipipe_validate_rgb2yuv_params(struct vpfe_ipipe_rgb2yuv *rgb2yuv)
 {
 	if (rgb2yuv->coef_ry.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_ry.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_ry.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_gy.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_gy.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_gy.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_by.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_by.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_by.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_rcb.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_rcb.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_rcb.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_gcb.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_gcb.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_gcb.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_bcb.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_bcb.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_bcb.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_rcr.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_rcr.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_rcr.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_gcr.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_gcr.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_gcr.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_bcr.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_bcr.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_bcr.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->out_ofst_y > RGB2YCBCR_OFST_MASK ||
-	   rgb2yuv->out_ofst_cb > RGB2YCBCR_OFST_MASK ||
-	   rgb2yuv->out_ofst_cr > RGB2YCBCR_OFST_MASK)
+	    rgb2yuv->out_ofst_cb > RGB2YCBCR_OFST_MASK ||
+	    rgb2yuv->out_ofst_cr > RGB2YCBCR_OFST_MASK)
 		return -EINVAL;
 
 	return 0;
@@ -918,7 +918,7 @@ static int ipipe_get_gbce_params(struct vpfe_ipipe_device *ipipe, void *param)
 	gbce_param->type = gbce->type;
 
 	memcpy(gbce_param->table, gbce->table,
-		(VPFE_IPIPE_MAX_SIZE_GBCE_LUT * sizeof(unsigned short)));
+	       (VPFE_IPIPE_MAX_SIZE_GBCE_LUT * sizeof(unsigned short)));
 
 	return 0;
 }
@@ -945,7 +945,7 @@ ipipe_set_yuv422_conv_params(struct vpfe_ipipe_device *ipipe, void *param)
 		yuv422_conv->chrom_pos = VPFE_IPIPE_YUV422_CHR_POS_COSITE;
 	} else {
 		memcpy(yuv422_conv, yuv422_conv_param,
-			sizeof(struct vpfe_ipipe_yuv422_conv));
+		       sizeof(struct vpfe_ipipe_yuv422_conv));
 		if (ipipe_validate_yuv422_conv_params(yuv422_conv) < 0) {
 			dev_err(dev, "Invalid yuv422 params\n");
 			return -EINVAL;
@@ -1382,7 +1382,7 @@ static int ipipe_set_stream(struct v4l2_subdev *sd, int enable)
 	struct vpfe_device *vpfe_dev = to_vpfe_device(ipipe);
 
 	if (enable && ipipe->input != IPIPE_INPUT_NONE &&
-		ipipe->output != IPIPE_OUTPUT_NONE) {
+	    ipipe->output != IPIPE_OUTPUT_NONE) {
 		if (config_ipipe_hw(ipipe) < 0)
 			return -EINVAL;
 	}
@@ -1402,8 +1402,8 @@ static int ipipe_set_stream(struct v4l2_subdev *sd, int enable)
  */
 static struct v4l2_mbus_framefmt *
 __ipipe_get_format(struct vpfe_ipipe_device *ipipe,
-		       struct v4l2_subdev_pad_config *cfg, unsigned int pad,
-		       enum v4l2_subdev_format_whence which)
+		   struct v4l2_subdev_pad_config *cfg, unsigned int pad,
+		   enum v4l2_subdev_format_whence which)
 {
 	if (which == V4L2_SUBDEV_FORMAT_TRY)
 		return v4l2_subdev_get_try_format(&ipipe->subdev, cfg, pad);
@@ -1421,9 +1421,9 @@ __ipipe_get_format(struct vpfe_ipipe_device *ipipe,
  */
 static void
 ipipe_try_format(struct vpfe_ipipe_device *ipipe,
-		   struct v4l2_subdev_pad_config *cfg, unsigned int pad,
-		   struct v4l2_mbus_framefmt *fmt,
-		   enum v4l2_subdev_format_whence which)
+		 struct v4l2_subdev_pad_config *cfg, unsigned int pad,
+		 struct v4l2_mbus_framefmt *fmt,
+		 enum v4l2_subdev_format_whence which)
 {
 	unsigned int max_out_height;
 	unsigned int max_out_width;
@@ -1463,7 +1463,7 @@ ipipe_try_format(struct vpfe_ipipe_device *ipipe,
  */
 static int
 ipipe_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
-		     struct v4l2_subdev_format *fmt)
+		 struct v4l2_subdev_format *fmt)
 {
 	struct vpfe_ipipe_device *ipipe = v4l2_get_subdevdata(sd);
 	struct v4l2_mbus_framefmt *format;
@@ -1479,11 +1479,11 @@ ipipe_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
 		return 0;
 
 	if (fmt->pad == IPIPE_PAD_SINK &&
-	   (ipipe->input == IPIPE_INPUT_CCDC ||
+	    (ipipe->input == IPIPE_INPUT_CCDC ||
 	    ipipe->input == IPIPE_INPUT_MEMORY))
 		ipipe->formats[fmt->pad] = fmt->format;
 	else if (fmt->pad == IPIPE_PAD_SOURCE &&
-		ipipe->output == IPIPE_OUTPUT_RESIZER)
+		 ipipe->output == IPIPE_OUTPUT_RESIZER)
 		ipipe->formats[fmt->pad] = fmt->format;
 	else
 		return -EINVAL;
@@ -1499,7 +1499,7 @@ ipipe_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
  */
 static int
 ipipe_get_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
-		     struct v4l2_subdev_format *fmt)
+		 struct v4l2_subdev_format *fmt)
 {
 	struct vpfe_ipipe_device *ipipe = v4l2_get_subdevdata(sd);
 
@@ -1519,8 +1519,8 @@ ipipe_get_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
  */
 static int
 ipipe_enum_frame_size(struct v4l2_subdev *sd,
-		       struct v4l2_subdev_pad_config *cfg,
-		       struct v4l2_subdev_frame_size_enum *fse)
+		      struct v4l2_subdev_pad_config *cfg,
+		      struct v4l2_subdev_frame_size_enum *fse)
 {
 	struct vpfe_ipipe_device *ipipe = v4l2_get_subdevdata(sd);
 	struct v4l2_mbus_framefmt format;
@@ -1687,7 +1687,7 @@ static const struct v4l2_subdev_ops ipipe_v4l2_ops = {
  */
 static int
 ipipe_link_setup(struct media_entity *entity, const struct media_pad *local,
-		     const struct media_pad *remote, u32 flags)
+		 const struct media_pad *remote, u32 flags)
 {
 	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 	struct vpfe_ipipe_device *ipipe = v4l2_get_subdevdata(sd);
@@ -1749,7 +1749,7 @@ void vpfe_ipipe_unregister_entities(struct vpfe_ipipe_device *vpfe_ipipe)
  */
 int
 vpfe_ipipe_register_entities(struct vpfe_ipipe_device *ipipe,
-				 struct v4l2_device *vdev)
+			     struct v4l2_device *vdev)
 {
 	int ret;
 
-- 
2.19.1


