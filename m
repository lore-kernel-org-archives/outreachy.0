X-GM-THRID: 6393356023703273472
X-Received: by 10.99.166.2 with SMTP id t2mr3129686pge.127.1488638271461;
        Sat, 04 Mar 2017 06:37:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls8164938otd.11.gmail; Sat, 04 Mar
 2017 06:37:51 -0800 (PST)
X-Received: by 10.159.33.131 with SMTP id 3mr1106285uac.22.1488638271054;
        Sat, 04 Mar 2017 06:37:51 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id c123si536319pfa.4.2017.03.04.06.37.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 06:37:50 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so2722892pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 06:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:from:date:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PCYd4iVZHjoh2DpO7thQ9+c0TulgDxr2+hUi3LeDNck=;
        b=Udr4KhpsFXaAHCfZTQzVse29+r+Tfpko52KhNhK3QFUKbgeMys+mC//LfVUtrsRGHj
         +5ECUYPT43rZ14/tdoOxUndgw9Df61ePRwzFaAEB1XjR924kJyG7HDgqWe/f268dbBeb
         vcb/XlkUkrwi9tMYKp6U0hhGnMjrDN0eIObMQi1PgwqZ3K1w+aklC2wJr1fSZqeUn2ic
         fkMBHTYG7nJd50lYUInFnIDVLybgfDK+0pohJYSmDHqK31CSuzLb6+0rKGhR9dUIngW+
         MruvBSdBeOjcVT7mbfXykKnC3XWnVNwUOytDtNOlrCETZrOu7BJEqQ2oIlBgvjWN2brm
         hjqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:from:date:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PCYd4iVZHjoh2DpO7thQ9+c0TulgDxr2+hUi3LeDNck=;
        b=It6RR0q8eSwrKBzx+cMTV43Fi5doxwZTAr4wfVNb1EwpREfv6u7IMgETt0Nb7VEE1S
         ZTdcyzM5ZJ6bFrYU+WpdHZffFRE5b0o4NntPgkwuFSoEAILmcYihhPVAgN6GlSgnS+0Z
         iPVwxD+2rbEhF9phOo8LNf8pbf0yKFfC3Ew4NhjuG5nuQOiMYmA4QoxKM3urQMsZSZ7m
         17vzhljiS2OdMZszEARfAtdqMHDrkcB7WyuHqYzjHjbr3wwKzV5htCxoXwhBjr8/+iFv
         uCFawlnj9K/eGZWA1NvFuFJVScAkuNB7tFMghfJOeUGdbZlEgmCe7O5EnXqPi8sULBXf
         HcLA==
X-Gm-Message-State: AMke39mjOz6isEsjUtQlowbWcLsOJ96fhIaIhme7GbzHTcnKRhIGlFwR4zIGyRzNq657LA==
X-Received: by 10.98.87.216 with SMTP id i85mr404413pfj.151.1488638270736;
        Sat, 04 Mar 2017 06:37:50 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.27])
        by smtp.gmail.com with ESMTPSA id h3sm29702315pfc.82.2017.03.04.06.37.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 06:37:50 -0800 (PST)
Message-ID: <58bad13e.036c620a.f861b.c346@mx.google.com>
X-Google-Original-Message-ID: <20170304143747.GA4469@<rvarsha016@gmail.com>>
From: Varsha Rao <rvarsha016@gmail.com>
X-Google-Original-From: Varsha Rao <varshar186@gmail.com>
Date: Sat, 4 Mar 2017 20:07:47 +0530
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 3/9] staging: media: atomisp: Added spaces around
 arithmetic and bitwise operators.
References: <cover.1488636852.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488636852.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Added spaces around arithmetic operators (/, *, +) and bitwise operators
(<<, >>), to fix the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
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


