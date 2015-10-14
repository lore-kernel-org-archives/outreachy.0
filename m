X-GM-THRID: 6205587481887244288
X-Received: by 10.50.41.7 with SMTP id b7mr23583407igl.12.1444850963336;
        Wed, 14 Oct 2015 12:29:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.50.168 with SMTP id d8ls172306obo.60.gmail; Wed, 14 Oct
 2015 12:29:23 -0700 (PDT)
X-Received: by 10.182.29.41 with SMTP id g9mr4077843obh.27.1444850962997;
        Wed, 14 Oct 2015 12:29:22 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id ce6si477854pad.0.2015.10.14.12.29.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:29:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabrc13 with SMTP id rc13so62539972pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=KBZf9fWc0HbfsYMR2oUDyImyckax/6AndxGxKMZr/hM=;
        b=j9elvdK7Eo+0OxSgQl2gg1GGhaWSwGKhUk8+zGg4rLzHIKyL4EGcwTzdKI/iByDdah
         lwQS9nI7nCRteS2Jpu1p+l9N1dc9JP52ImTqcOHCKY8I6rzGbukC1PYYluApJZP6QAca
         NoWGE/gvQ8wuogpfFaUyAxiMnk/Eho83erJz6exxlF9Qpm91V4zkGYojzCYaat/eBjBS
         ViIgDEP94YSrSVczWe3Xew29UguiEYeXq6yyYamfJnL0PCjYm5JDT73Tpepeml4dL7Oe
         x278XGqWQXi+WyI4N6SVnXT6bzVzvgKVH7W2ZbBHFdnxSl4S5x/p11V+sY02oGLERP6V
         xyqw==
X-Received: by 10.68.57.137 with SMTP id i9mr5231573pbq.101.1444850962854;
        Wed, 14 Oct 2015 12:29:22 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id aw5sm11106380pbc.13.2015.10.14.12.29.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 12:29:22 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 12/12] Staging: media: Remove unnecessary cast on void pointer
Date: Thu, 15 Oct 2015 00:58:30 +0530
Message-Id: <1444850910-11408-13-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
References: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561EAD11.008B,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

void pointers do not need to be cast to other pointer types.

The semantic patch used to find this:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 60 ++++++++++++------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 1bbb90c..b1dfa2c 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -79,7 +79,7 @@ static int ipipe_set_lutdpc_params(struct vpfe_ipipe_device *ipipe, void *param)
 	}
 
 	dev = ipipe->subdev.v4l2_dev->dev;
-	dpc_param = (struct vpfe_ipipe_lutdpc *)param;
+	dpc_param = param;
 	lutdpc->en = dpc_param->en;
 	lutdpc->repl_white = dpc_param->repl_white;
 	lutdpc->dpc_size = dpc_param->dpc_size;
@@ -96,7 +96,7 @@ success:
 
 static int ipipe_get_lutdpc_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_lutdpc *lut_param = (struct vpfe_ipipe_lutdpc *)param;
+	struct vpfe_ipipe_lutdpc *lut_param = param;
 	struct vpfe_ipipe_lutdpc *lutdpc = &ipipe->config.lutdpc;
 
 	lut_param->en = lutdpc->en;
@@ -171,7 +171,7 @@ static int ipipe_validate_otfdpc_params(struct vpfe_ipipe_otfdpc *dpc_param)
 
 static int ipipe_set_otfdpc_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_otfdpc *dpc_param = (struct vpfe_ipipe_otfdpc *)param;
+	struct vpfe_ipipe_otfdpc *dpc_param = param;
 	struct vpfe_ipipe_otfdpc *otfdpc = &ipipe->config.otfdpc;
 	struct device *dev;
 
@@ -194,7 +194,7 @@ success:
 
 static int ipipe_get_otfdpc_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_otfdpc *dpc_param = (struct vpfe_ipipe_otfdpc *)param;
+	struct vpfe_ipipe_otfdpc *dpc_param = param;
 	struct vpfe_ipipe_otfdpc *otfdpc = &ipipe->config.otfdpc;
 
 	memcpy(dpc_param, otfdpc, sizeof(struct vpfe_ipipe_otfdpc));
@@ -226,7 +226,7 @@ static int ipipe_validate_nf_params(struct vpfe_ipipe_nf *nf_param)
 static int ipipe_set_nf_params(struct vpfe_ipipe_device *ipipe,
 			       unsigned int id, void *param)
 {
-	struct vpfe_ipipe_nf *nf_param = (struct vpfe_ipipe_nf *)param;
+	struct vpfe_ipipe_nf *nf_param = param;
 	struct vpfe_ipipe_nf *nf = &ipipe->config.nf1;
 	struct device *dev;
 
@@ -264,7 +264,7 @@ static int ipipe_set_nf2_params(struct vpfe_ipipe_device *ipipe, void *param)
 static int ipipe_get_nf_params(struct vpfe_ipipe_device *ipipe,
 			       unsigned int id, void *param)
 {
-	struct vpfe_ipipe_nf *nf_param = (struct vpfe_ipipe_nf *)param;
+	struct vpfe_ipipe_nf *nf_param = param;
 	struct vpfe_ipipe_nf *nf = &ipipe->config.nf1;
 
 	if (id == IPIPE_D2F_2ND)
@@ -299,7 +299,7 @@ static int ipipe_validate_gic_params(struct vpfe_ipipe_gic *gic)
 
 static int ipipe_set_gic_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_gic *gic_param = (struct vpfe_ipipe_gic *)param;
+	struct vpfe_ipipe_gic *gic_param = param;
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
 	struct vpfe_ipipe_gic *gic = &ipipe->config.gic;
 
@@ -322,7 +322,7 @@ success:
 
 static int ipipe_get_gic_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_gic *gic_param = (struct vpfe_ipipe_gic *)param;
+	struct vpfe_ipipe_gic *gic_param = param;
 	struct vpfe_ipipe_gic *gic = &ipipe->config.gic;
 
 	memcpy(gic_param, gic, sizeof(struct vpfe_ipipe_gic));
@@ -351,7 +351,7 @@ static int ipipe_validate_wb_params(struct vpfe_ipipe_wb *wbal)
 
 static int ipipe_set_wb_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_wb *wb_param = (struct vpfe_ipipe_wb *)param;
+	struct vpfe_ipipe_wb *wb_param = param;
 	struct vpfe_ipipe_wb *wbal = &ipipe->config.wbal;
 
 	if (!wb_param) {
@@ -377,7 +377,7 @@ success:
 
 static int ipipe_get_wb_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_wb *wb_param = (struct vpfe_ipipe_wb *)param;
+	struct vpfe_ipipe_wb *wb_param = param;
 	struct vpfe_ipipe_wb *wbal = &ipipe->config.wbal;
 
 	memcpy(wb_param, wbal, sizeof(struct vpfe_ipipe_wb));
@@ -407,7 +407,7 @@ static int ipipe_validate_cfa_params(struct vpfe_ipipe_cfa *cfa)
 
 static int ipipe_set_cfa_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_cfa *cfa_param = (struct vpfe_ipipe_cfa *)param;
+	struct vpfe_ipipe_cfa *cfa_param = param;
 	struct vpfe_ipipe_cfa *cfa = &ipipe->config.cfa;
 
 	if (!cfa_param) {
@@ -428,7 +428,7 @@ success:
 
 static int ipipe_get_cfa_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_cfa *cfa_param = (struct vpfe_ipipe_cfa *)param;
+	struct vpfe_ipipe_cfa *cfa_param = param;
 	struct vpfe_ipipe_cfa *cfa = &ipipe->config.cfa;
 
 	memcpy(cfa_param, cfa, sizeof(struct vpfe_ipipe_cfa));
@@ -498,7 +498,7 @@ static int ipipe_set_rgb2rgb_params(struct vpfe_ipipe_device *ipipe,
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
 	struct vpfe_ipipe_rgb2rgb *rgb2rgb_param;
 
-	rgb2rgb_param = (struct vpfe_ipipe_rgb2rgb *)param;
+	rgb2rgb_param = param;
 
 	if (id == IPIPE_RGB2RGB_2)
 		rgb2rgb = &ipipe->config.rgb2rgb2;
@@ -551,7 +551,7 @@ static int ipipe_get_rgb2rgb_params(struct vpfe_ipipe_device *ipipe,
 	struct vpfe_ipipe_rgb2rgb *rgb2rgb = &ipipe->config.rgb2rgb1;
 	struct vpfe_ipipe_rgb2rgb *rgb2rgb_param;
 
-	rgb2rgb_param = (struct vpfe_ipipe_rgb2rgb *)param;
+	rgb2rgb_param = param;
 
 	if (id == IPIPE_RGB2RGB_2)
 		rgb2rgb = &ipipe->config.rgb2rgb2;
@@ -634,7 +634,7 @@ ipipe_validate_gamma_params(struct vpfe_ipipe_gamma *gamma, struct device *dev)
 static int
 ipipe_set_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_gamma *gamma_param = (struct vpfe_ipipe_gamma *)param;
+	struct vpfe_ipipe_gamma *gamma_param = param;
 	struct vpfe_ipipe_gamma *gamma = &ipipe->config.gamma;
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
 	int table_size;
@@ -678,7 +678,7 @@ success:
 
 static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_gamma *gamma_param = (struct vpfe_ipipe_gamma *)param;
+	struct vpfe_ipipe_gamma *gamma_param = param;
 	struct vpfe_ipipe_gamma *gamma = &ipipe->config.gamma;
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
 	int table_size;
@@ -737,7 +737,7 @@ static int ipipe_validate_3d_lut_params(struct vpfe_ipipe_3d_lut *lut)
 
 static int ipipe_get_3d_lut_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_3d_lut *lut_param = (struct vpfe_ipipe_3d_lut *)param;
+	struct vpfe_ipipe_3d_lut *lut_param = param;
 	struct vpfe_ipipe_3d_lut *lut = &ipipe->config.lut;
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
 
@@ -757,7 +757,7 @@ static int ipipe_get_3d_lut_params(struct vpfe_ipipe_device *ipipe, void *param)
 static int
 ipipe_set_3d_lut_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_3d_lut *lut_param = (struct vpfe_ipipe_3d_lut *)param;
+	struct vpfe_ipipe_3d_lut *lut_param = param;
 	struct vpfe_ipipe_3d_lut *lut = &ipipe->config.lut;
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
 
@@ -831,7 +831,7 @@ ipipe_set_rgb2yuv_params(struct vpfe_ipipe_device *ipipe, void *param)
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
 	struct vpfe_ipipe_rgb2yuv *rgb2yuv_param;
 
-	rgb2yuv_param = (struct vpfe_ipipe_rgb2yuv *)param;
+	rgb2yuv_param = param;
 	if (!rgb2yuv_param) {
 		/* Defaults for rgb2yuv conversion */
 		const struct vpfe_ipipe_rgb2yuv rgb2yuv_defaults = {
@@ -871,7 +871,7 @@ ipipe_get_rgb2yuv_params(struct vpfe_ipipe_device *ipipe, void *param)
 	struct vpfe_ipipe_rgb2yuv *rgb2yuv = &ipipe->config.rgb2yuv;
 	struct vpfe_ipipe_rgb2yuv *rgb2yuv_param;
 
-	rgb2yuv_param = (struct vpfe_ipipe_rgb2yuv *)param;
+	rgb2yuv_param = param;
 	memcpy(rgb2yuv_param, rgb2yuv, sizeof(struct vpfe_ipipe_rgb2yuv));
 	return 0;
 }
@@ -896,7 +896,7 @@ static int ipipe_validate_gbce_params(struct vpfe_ipipe_gbce *gbce)
 
 static int ipipe_set_gbce_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_gbce *gbce_param = (struct vpfe_ipipe_gbce *)param;
+	struct vpfe_ipipe_gbce *gbce_param = param;
 	struct vpfe_ipipe_gbce *gbce = &ipipe->config.gbce;
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
 
@@ -917,7 +917,7 @@ static int ipipe_set_gbce_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 static int ipipe_get_gbce_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_gbce *gbce_param = (struct vpfe_ipipe_gbce *)param;
+	struct vpfe_ipipe_gbce *gbce_param = param;
 	struct vpfe_ipipe_gbce *gbce = &ipipe->config.gbce;
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
 
@@ -950,7 +950,7 @@ ipipe_set_yuv422_conv_params(struct vpfe_ipipe_device *ipipe, void *param)
 	struct vpfe_ipipe_yuv422_conv *yuv422_conv_param;
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
 
-	yuv422_conv_param = (struct vpfe_ipipe_yuv422_conv *)param;
+	yuv422_conv_param = param;
 	if (!yuv422_conv_param) {
 		memset(yuv422_conv, 0, sizeof(struct vpfe_ipipe_yuv422_conv));
 		yuv422_conv->chrom_pos = VPFE_IPIPE_YUV422_CHR_POS_COSITE;
@@ -974,7 +974,7 @@ ipipe_get_yuv422_conv_params(struct vpfe_ipipe_device *ipipe, void *param)
 	struct vpfe_ipipe_yuv422_conv *yuv422_conv = &ipipe->config.yuv422_conv;
 	struct vpfe_ipipe_yuv422_conv *yuv422_conv_param;
 
-	yuv422_conv_param = (struct vpfe_ipipe_yuv422_conv *)param;
+	yuv422_conv_param = param;
 	memcpy(yuv422_conv_param, yuv422_conv,
 	       sizeof(struct vpfe_ipipe_yuv422_conv));
 
@@ -1018,7 +1018,7 @@ static int ipipe_validate_yee_params(struct vpfe_ipipe_yee *yee)
 
 static int ipipe_set_yee_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_yee *yee_param = (struct vpfe_ipipe_yee *)param;
+	struct vpfe_ipipe_yee *yee_param = param;
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
 	struct vpfe_ipipe_yee *yee = &ipipe->config.yee;
 
@@ -1039,7 +1039,7 @@ static int ipipe_set_yee_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 static int ipipe_get_yee_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_yee *yee_param = (struct vpfe_ipipe_yee *)param;
+	struct vpfe_ipipe_yee *yee_param = param;
 	struct vpfe_ipipe_yee *yee = &ipipe->config.yee;
 
 	yee_param->en = yee->en;
@@ -1081,7 +1081,7 @@ static int ipipe_validate_car_params(struct vpfe_ipipe_car *car)
 
 static int ipipe_set_car_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_car *car_param = (struct vpfe_ipipe_car *)param;
+	struct vpfe_ipipe_car *car_param = param;
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
 	struct vpfe_ipipe_car *car = &ipipe->config.car;
 
@@ -1102,7 +1102,7 @@ static int ipipe_set_car_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 static int ipipe_get_car_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_car *car_param = (struct vpfe_ipipe_car *)param;
+	struct vpfe_ipipe_car *car_param = param;
 	struct vpfe_ipipe_car *car = &ipipe->config.car;
 
 	memcpy(car_param, car, sizeof(struct vpfe_ipipe_car));
@@ -1119,7 +1119,7 @@ static int ipipe_validate_cgs_params(struct vpfe_ipipe_cgs *cgs)
 
 static int ipipe_set_cgs_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_cgs *cgs_param = (struct vpfe_ipipe_cgs *)param;
+	struct vpfe_ipipe_cgs *cgs_param = param;
 	struct device *dev = ipipe->subdev.v4l2_dev->dev;
 	struct vpfe_ipipe_cgs *cgs = &ipipe->config.cgs;
 
@@ -1140,7 +1140,7 @@ static int ipipe_set_cgs_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 static int ipipe_get_cgs_params(struct vpfe_ipipe_device *ipipe, void *param)
 {
-	struct vpfe_ipipe_cgs *cgs_param = (struct vpfe_ipipe_cgs *)param;
+	struct vpfe_ipipe_cgs *cgs_param = param;
 	struct vpfe_ipipe_cgs *cgs = &ipipe->config.cgs;
 
 	memcpy(cgs_param, cgs, sizeof(struct vpfe_ipipe_cgs));
-- 
2.1.4


