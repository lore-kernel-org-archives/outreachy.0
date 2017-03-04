X-GM-THRID: 6393356023703273472
X-Received: by 10.129.48.147 with SMTP id w141mr3345654yww.47.1488647528115;
        Sat, 04 Mar 2017 09:12:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.105 with SMTP id r38ls13728760otd.15.gmail; Sat, 04 Mar
 2017 09:12:07 -0800 (PST)
X-Received: by 10.157.41.240 with SMTP id g45mr2688997otd.94.1488647527733;
        Sat, 04 Mar 2017 09:12:07 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id g82si585559pfb.5.2017.03.04.09.12.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:12:07 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 77so2960614pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 09:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hU70NI5eL9BGH/Ue6ElB/dp5QXPcAFVGq4bpz2AMdNM=;
        b=I2qV3kjKTigcAqBJ5TJmFlLPWjpXE788xKGbN44y06wb+YMUS0A9X0ZNuZsM7ZJHTW
         +Vpkzid+jNlvc/r/hPbRHJ7T4zFohTcunP/GeafT/AECfTqn0I/QnFvDDSujxmOKdOmt
         Oxyp3n9KVKlLDHSGues2/R8OMRdWHp7yTIiJi/To0lZCL2GpI5LeVff0KklFxVriqUMw
         tSSZfF+ppBxPvH1uKsxP5RHYgEMbdGjgLBYKdplzNcykCNDR0I1a6/0rw5LPLgxvkiwF
         B2Z+DimyO9oAEjdQ9uq7zmNDYle8z5gTkGIaAzC0AydyVwaQV/y7ZxtXJ+no9rnFQXI7
         7G2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hU70NI5eL9BGH/Ue6ElB/dp5QXPcAFVGq4bpz2AMdNM=;
        b=cUjYCwEBo2cU8g/unV/qIyLUc1+mK0gXx6pa6VFTNSe+gX5kz0foxY20MREo4i5f0m
         OtsJdcYhZu7Q6sd4+KYGRgNz+cD8c3i4gFeqyUGrN5HVD5L+FbGmTtvDoF0jr/uCH72z
         GMCzdJ3KkVin+2UeaaYB0rUchckp6cotHIYeAyqEsq+foTnoK6Q+Lm9qFEDdcp3dBJO/
         gRgA/5MZdlScvjNKA87gwX2N6o4Ah/llk7IM59Hm4e6Dv2DtZqdh9V1oI+Y+AAFYEmGS
         aLV85m7eoqJvj49eQj5LtYJqIzdq711ZjtHwAeBsEDNs7zhLSaQQ1bunS64l3IHz7Lv6
         pTfg==
X-Gm-Message-State: AMke39n2bmjKiTUZseevqSV1Vm5C4QyvGuWcEkNvHfuB5rUEpjguPafRVVeOP/ZoHGhMoA==
X-Received: by 10.84.231.200 with SMTP id g8mr13357085pln.100.1488647527457;
        Sat, 04 Mar 2017 09:12:07 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.75])
        by smtp.gmail.com with ESMTPSA id x2sm30247701pfb.49.2017.03.04.09.12.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 09:12:06 -0800 (PST)
Message-ID: <58baf566.0263620a.f811a.c6fb@mx.google.com>
X-Google-Original-Message-ID: <20170304171158.GA5548@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 22:41:58 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 3/9] staging: media: atomisp: Added spaces around
 arithmetic and bitwise operators.
References: <cover.1488642821.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488642821.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Added spaces around arithmetic operators (/, *, +) and bitwise operators
(<<, >>), to fix the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- No changes.

Changes in v3:
- Added change log message for previous version.

 drivers/staging/media/atomisp/i2c/gc0310.c                     |  2 +-
 drivers/staging/media/atomisp/i2c/gc2235.c                     |  4 ++--
 drivers/staging/media/atomisp/i2c/ov2680.c                     |  6 +++---
 drivers/staging/media/atomisp/i2c/ov2722.c                     |  6 +++---
 .../css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c     | 10 +++++-----
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc0310.c b/drivers/staging/media/atomisp/i2c/gc0310.c
index b4e9a8d..bae55d3 100644
--- a/drivers/staging/media/atomisp/i2c/gc0310.c
+++ b/drivers/staging/media/atomisp/i2c/gc0310.c
@@ -904,7 +904,7 @@ static int gc0310_s_power(struct v4l2_subdev *sd, int on)
 #define LARGEST_ALLOWED_RATIO_MISMATCH 800
 static int distance(struct gc0310_resolution *res, u32 w, u32 h)
 {
-	unsigned int w_ratio = (res->width << 13)/w;
+	unsigned int w_ratio = (res->width << 13) / w;
 	unsigned int h_ratio;
 	int match;
 
diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index eb68f44..c04dcfb 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -359,7 +359,7 @@ static long __gc2235_set_exposure(struct v4l2_subdev *sd, int coarse_itg,
 	u16 coarse_integration = (u16)coarse_itg;
 	int ret = 0;
 	u16 expo_coarse_h, expo_coarse_l, gain_val = 0xF0, gain_val2 = 0xF0;
-	expo_coarse_h = coarse_integration>>8;
+	expo_coarse_h = coarse_integration >> 8;
 	expo_coarse_l = coarse_integration & 0xff;
 
 	ret = gc2235_write_reg(client, GC2235_8BIT,
@@ -697,7 +697,7 @@ static int gc2235_s_power(struct v4l2_subdev *sd, int on)
 #define LARGEST_ALLOWED_RATIO_MISMATCH 800
 static int distance(struct gc2235_resolution *res, u32 w, u32 h)
 {
-	unsigned int w_ratio = (res->width << 13)/w;
+	unsigned int w_ratio = (res->width << 13) / w;
 	unsigned int h_ratio;
 	int match;
 
diff --git a/drivers/staging/media/atomisp/i2c/ov2680.c b/drivers/staging/media/atomisp/i2c/ov2680.c
index 434b6f8..5730fe5 100644
--- a/drivers/staging/media/atomisp/i2c/ov2680.c
+++ b/drivers/staging/media/atomisp/i2c/ov2680.c
@@ -389,9 +389,9 @@ static int ov2680_get_intg_factor(struct i2c_client *client,
 	buf->output_height = reg_val;
 
 	buf->binning_factor_x = res->bin_factor_x ?
-					(res->bin_factor_x*2) : 1;
+					(res->bin_factor_x * 2) : 1;
 	buf->binning_factor_y = res->bin_factor_y ?
-					(res->bin_factor_y*2) : 1;
+					(res->bin_factor_y * 2) : 1;
 	return 0;
 }
 
@@ -1005,7 +1005,7 @@ static int ov2680_s_power(struct v4l2_subdev *sd, int on)
 #define LARGEST_ALLOWED_RATIO_MISMATCH 600
 static int distance(struct ov2680_resolution *res, u32 w, u32 h)
 {
-	unsigned int w_ratio = (res->width << 13)/w;
+	unsigned int w_ratio = (res->width << 13) / w;
 	unsigned int h_ratio;
 	int match;
 
diff --git a/drivers/staging/media/atomisp/i2c/ov2722.c b/drivers/staging/media/atomisp/i2c/ov2722.c
index 566157c..cfcf14b 100644
--- a/drivers/staging/media/atomisp/i2c/ov2722.c
+++ b/drivers/staging/media/atomisp/i2c/ov2722.c
@@ -328,7 +328,7 @@ static int ov2722_get_intg_factor(struct i2c_client *client,
 	pll_multiplier = pll_multiplier & 0x7f;
 	op_pix_clk_div = op_pix_clk_div & 0x03;
 	pix_clk_freq_hz = ext_clk_freq_hz / pre_pll_clk_div * pll_multiplier
-				* op_pix_clk_div/pll_invariant_div;
+				* op_pix_clk_div / pll_invariant_div;
 
 	dev->vt_pix_clk_freq_mhz = pix_clk_freq_hz;
 	buf->vt_pix_clk_freq_mhz = pix_clk_freq_hz;
@@ -801,7 +801,7 @@ static int ov2722_s_power(struct v4l2_subdev *sd, int on)
 #define LARGEST_ALLOWED_RATIO_MISMATCH 800
 static int distance(struct ov2722_resolution *res, u32 w, u32 h)
 {
-	unsigned int w_ratio = (res->width << 13)/w;
+	unsigned int w_ratio = (res->width << 13) / w;
 	unsigned int h_ratio;
 	int match;
 
@@ -933,7 +933,7 @@ static int ov2722_set_fmt(struct v4l2_subdev *sd,
 		for (i = 0; i < OV2722_POWER_UP_RETRY_NUM; i++) {
 			dev_err(&client->dev,
 				"ov2722 retry to power up %d/%d times, result: ",
-				i+1, OV2722_POWER_UP_RETRY_NUM);
+				i + 1, OV2722_POWER_UP_RETRY_NUM);
 			power_down(sd);
 			ret = power_up(sd);
 			if (ret) {
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
index 96c81ad..e8fab37 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
@@ -50,13 +50,13 @@ ia_css_macc1_5_vmem_encode(
 
 	for (k = 0; k < 4; k++)
 		for (i = 0; i < IA_CSS_MACC_NUM_AXES; i++) {
-			idx = idx_map[i] + (k*IA_CSS_MACC_NUM_AXES);
-			j   = 4*i;
+			idx = idx_map[i] + (k * IA_CSS_MACC_NUM_AXES);
+			j   = 4 * i;
 
 			params->data[0][(idx)] = from->data[j];
-			params->data[1][(idx)] = from->data[j+1];
-			params->data[2][(idx)] = from->data[j+2];
-			params->data[3][(idx)] = from->data[j+3];
+			params->data[1][(idx)] = from->data[j + 1];
+			params->data[2][(idx)] = from->data[j + 2];
+			params->data[3][(idx)] = from->data[j + 3];
 		}
 
 }
-- 
2.9.3


