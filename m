X-GM-THRID: 6393354577148641280
X-Received: by 10.13.226.145 with SMTP id l139mr1666277ywe.95.1488568861729;
        Fri, 03 Mar 2017 11:21:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.240 with SMTP id g103ls10535041otg.39.gmail; Fri, 03
 Mar 2017 11:21:01 -0800 (PST)
X-Received: by 10.129.71.9 with SMTP id u9mr1650230ywa.142.1488568861366;
        Fri, 03 Mar 2017 11:21:01 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 207si206286pfu.8.2017.03.03.11.21.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 11:21:01 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x66so10619673pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 11:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iBUfVSo12l6jHM6bav8IRAX4W0B8+/KeLL68/jBZkK0=;
        b=Onabj+6EHVuE7AXVsHR8SExX6VmcUcKs+4DiWQUmJkNRcIvMeuI940JcVlNedBz+3o
         ebs91WtS5dEzsf22gg8hLxMbgoeuKglm2wSZ85umqvwKLMqHvSziCT+2neMoQC0mtD0F
         tgO7KIPSi7Pba+WWQwWZr2zzTURMiSoKLJrfTLHIH0biwP/jdXWOy5JG5BJ6/k3KGbcU
         YU0CHMeDpMKCtTrqqS85VBc0zTqnwqGskuBdqMpF1EejNuTAvoZMa15wAHbTPmBl1xY5
         61bYi4FGrlIjePw46mgrnCyKKhQy98hb4K4e2OWcS94uKRIw+LdjireoZaHKhlKbjeIk
         AlYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iBUfVSo12l6jHM6bav8IRAX4W0B8+/KeLL68/jBZkK0=;
        b=slAEW04ivWINhzy0kU4Bdd7U84IBPN61Jdn3w+zHpeDcGKjCtayHSJpBd+bhKZjpKz
         cO/F0727ZbASKlCaS35+oHZwNCk2pKLgjtW6K3JvV27Rx1d1pl1mx7UzGU+6Z7ICjw+L
         ohA28UNQYcr2FXBEX5t6P5sbG16BrN6gNpHH2LkTKr3iOXnvywNHzapJXmzSMIyYOcYx
         j8jtyTsXZ3JQ/HewBQddPDo4lojQHi6TipXW3tIsOHUjHwgxXA8kI7aQGo7q3SMuKzPm
         7GOGgJNIMexNG2yJEOE8YHL9+Jgm+1Uglju3DroJigSMh82RolCP5iEPxC3d+IjpzZs5
         Z9fA==
X-Gm-Message-State: AMke39nXZ1p5D6fB1xbaEYMMRgd8hOIgYbOK4KeAU+d5AQ9j7WT5YSLxLC3odS55rQQO7A==
X-Received: by 10.99.127.71 with SMTP id p7mr5290645pgn.125.1488568861008;
        Fri, 03 Mar 2017 11:21:01 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5508:2b2:841b:c6f4:fb42:37b7])
        by smtp.gmail.com with ESMTPSA id c22sm25091659pgn.43.2017.03.03.11.20.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 11:21:00 -0800 (PST)
Message-ID: <58b9c21c.5672630a.70b1.32eb@mx.google.com>
X-Google-Original-Message-ID: <20170303192056.GA19927@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 00:50:56 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/9] staging: media: atomisp: Removed unnecessary parentheses.
References: <cover.1488567772.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488567772.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Removed parentheses on the right hand side of assignment, as they are
not required. The following coccinelle script is used to fix this issue:

@@
binary operator op = {<<,>>,+,/};
local idexpression id;
expression e1, e2;
@@

id =
-(
e1 op e2
-)

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc0310.c             |  4 ++--
 drivers/staging/media/atomisp/i2c/gc2235.c             |  4 ++--
 drivers/staging/media/atomisp/i2c/ov2680.c             |  4 ++--
 drivers/staging/media/atomisp/i2c/ov2722.c             |  4 ++--
 drivers/staging/media/atomisp/i2c/ov5693/ov5693.c      |  2 +-
 drivers/staging/media/atomisp/i2c/ov8858.c             |  2 +-
 .../css2400/isp/kernels/bnlm/ia_css_bnlm.host.c        |  2 +-
 .../isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c     |  2 +-
 .../css2400/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.c  |  2 +-
 .../media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c   | 18 +++++++++---------
 10 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc0310.c b/drivers/staging/media/atomisp/i2c/gc0310.c
index ee1fd59..b4e9a8d 100644
--- a/drivers/staging/media/atomisp/i2c/gc0310.c
+++ b/drivers/staging/media/atomisp/i2c/gc0310.c
@@ -904,13 +904,13 @@ static int gc0310_s_power(struct v4l2_subdev *sd, int on)
 #define LARGEST_ALLOWED_RATIO_MISMATCH 800
 static int distance(struct gc0310_resolution *res, u32 w, u32 h)
 {
-	unsigned int w_ratio = ((res->width << 13)/w);
+	unsigned int w_ratio = (res->width << 13)/w;
 	unsigned int h_ratio;
 	int match;
 
 	if (h == 0)
 		return -1;
-	h_ratio = ((res->height << 13) / h);
+	h_ratio = (res->height << 13) / h;
 	if (h_ratio == 0)
 		return -1;
 	match   = abs(((w_ratio << 13) / h_ratio) - ((int)8192));
diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 3dd5e7f..eb68f44 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -697,13 +697,13 @@ static int gc2235_s_power(struct v4l2_subdev *sd, int on)
 #define LARGEST_ALLOWED_RATIO_MISMATCH 800
 static int distance(struct gc2235_resolution *res, u32 w, u32 h)
 {
-	unsigned int w_ratio = ((res->width << 13)/w);
+	unsigned int w_ratio = (res->width << 13)/w;
 	unsigned int h_ratio;
 	int match;
 
 	if (h == 0)
 		return -1;
-	h_ratio = ((res->height << 13) / h);
+	h_ratio = (res->height << 13) / h;
 	if (h_ratio == 0)
 		return -1;
 	match   = abs(((w_ratio << 13) / h_ratio) - ((int)8192));
diff --git a/drivers/staging/media/atomisp/i2c/ov2680.c b/drivers/staging/media/atomisp/i2c/ov2680.c
index 3f1495e..434b6f8 100644
--- a/drivers/staging/media/atomisp/i2c/ov2680.c
+++ b/drivers/staging/media/atomisp/i2c/ov2680.c
@@ -1005,13 +1005,13 @@ static int ov2680_s_power(struct v4l2_subdev *sd, int on)
 #define LARGEST_ALLOWED_RATIO_MISMATCH 600
 static int distance(struct ov2680_resolution *res, u32 w, u32 h)
 {
-	unsigned int w_ratio = ((res->width << 13)/w);
+	unsigned int w_ratio = (res->width << 13)/w;
 	unsigned int h_ratio;
 	int match;
 
 	if (h == 0)
 		return -1;
-	h_ratio = ((res->height << 13) / h);
+	h_ratio = (res->height << 13) / h;
 	if (h_ratio == 0)
 		return -1;
 	match   = abs(((w_ratio << 13) / h_ratio) - ((int)8192));
diff --git a/drivers/staging/media/atomisp/i2c/ov2722.c b/drivers/staging/media/atomisp/i2c/ov2722.c
index ec4938d..566157c 100644
--- a/drivers/staging/media/atomisp/i2c/ov2722.c
+++ b/drivers/staging/media/atomisp/i2c/ov2722.c
@@ -801,13 +801,13 @@ static int ov2722_s_power(struct v4l2_subdev *sd, int on)
 #define LARGEST_ALLOWED_RATIO_MISMATCH 800
 static int distance(struct ov2722_resolution *res, u32 w, u32 h)
 {
-	unsigned int w_ratio = ((res->width << 13)/w);
+	unsigned int w_ratio = (res->width << 13)/w;
 	unsigned int h_ratio;
 	int match;
 
 	if (h == 0)
 		return -1;
-	h_ratio = ((res->height << 13) / h);
+	h_ratio = (res->height << 13) / h;
 	if (h_ratio == 0)
 		return -1;
 	match   = abs(((w_ratio << 13) / h_ratio) - ((int)8192));
diff --git a/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c b/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c
index 790b881..30c3cea 100644
--- a/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c
+++ b/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c
@@ -1506,7 +1506,7 @@ static int distance(struct ov5693_resolution *res, u32 w, u32 h)
 	    res->width < w || res->height < h)
 		return -1;
 
-	ratio = (res->width << 13);
+	ratio = res->width << 13;
 	ratio /= w;
 	ratio *= h;
 	ratio /= res->height;
diff --git a/drivers/staging/media/atomisp/i2c/ov8858.c b/drivers/staging/media/atomisp/i2c/ov8858.c
index eccb4a3..054de8b 100644
--- a/drivers/staging/media/atomisp/i2c/ov8858.c
+++ b/drivers/staging/media/atomisp/i2c/ov8858.c
@@ -1250,7 +1250,7 @@ static int distance(struct ov8858_resolution const *res, const u32 w,
 		res->width < w || res->height < h)
 		return -1;
 
-	ratio = (res->width << 13);
+	ratio = res->width << 13;
 	ratio /= w;
 	ratio *= h;
 	ratio /= res->height;
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
index 3af107d..5ff2529 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
@@ -45,7 +45,7 @@ bnlm_lut_encode(struct bnlm_lut *lut, const int32_t *lut_thr, const int32_t *lut
 {
 	uint32_t blk, i;
 	const uint32_t block_size = 16;
-	const uint32_t total_blocks = (ISP_VEC_NELEMS / block_size);
+	const uint32_t total_blocks = ISP_VEC_NELEMS / block_size;
 
 	/* Create VMEM LUTs from the threshold and value arrays.
 	 *
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
index 836a3b9..96c81ad 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c
@@ -50,7 +50,7 @@ ia_css_macc1_5_vmem_encode(
 
 	for (k = 0; k < 4; k++)
 		for (i = 0; i < IA_CSS_MACC_NUM_AXES; i++) {
-			idx = (idx_map[i] + (k*IA_CSS_MACC_NUM_AXES));
+			idx = idx_map[i] + (k*IA_CSS_MACC_NUM_AXES);
 			j   = 4*i;
 
 			params->data[0][(idx)] = from->data[j];
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.c
index 39de369..8ef6c54 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.c
@@ -350,7 +350,7 @@ ia_css_s3a_vmem_decode(
 	hi = isp_stats_hi;
 	lo = isp_stats_lo;
 
-	chunk = (ISP_VEC_NELEMS >> host_stats->grid.deci_factor_log2);
+	chunk = ISP_VEC_NELEMS >> host_stats->grid.deci_factor_log2;
 	chunk = max(chunk, 1);
 
 	for (y = 0; y < out_height; y++) {
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
index 1210c21..ee91f83 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
@@ -210,18 +210,18 @@ ia_css_mipi_frame_calculate_size(const unsigned int width,
 	*/
 
 
-	words_per_odd_line	 = ((odd_line_bytes   + 3) >> 2);	/* ceil(odd_line_bytes/4); word = 4 bytes */
-	words_per_even_line  = ((even_line_bytes  + 3) >> 2);
+	words_per_odd_line	 = (odd_line_bytes   + 3) >> 2;	/* ceil(odd_line_bytes/4); word = 4 bytes */
+	words_per_even_line  = (even_line_bytes  + 3) >> 2;
 	words_for_first_line = words_per_odd_line + 2 + (hasSOLandEOL ? 1 : 0);
 		/* + SOF +packet header + optionally (SOL), but (EOL) is not in the first line */
 	words_per_odd_line	+= (1 + (hasSOLandEOL ? 2 : 0));
 		/* each non-first line has format header, and optionally (SOL) and (EOL). */
 	words_per_even_line += (1 + (hasSOLandEOL ? 2 : 0));
 
-	mem_words_per_odd_line	 = ((words_per_odd_line + 7) >> 3);
+	mem_words_per_odd_line	 = (words_per_odd_line + 7) >> 3;
 		/* ceil(words_per_odd_line/8); mem_word = 32 bytes, 8 words */
-	mem_words_for_first_line = ((words_for_first_line + 7) >> 3);
-	mem_words_per_even_line  = ((words_per_even_line + 7) >> 3);
+	mem_words_for_first_line = (words_for_first_line + 7) >> 3;
+	mem_words_per_even_line  = (words_per_even_line + 7) >> 3;
 	mem_words_for_EOF        = 1; /* last line consisit of the optional (EOL) and EOF */
 
 	mem_words = ((embedded_data_size_words + 7) >> 3) +
@@ -364,13 +364,13 @@ calculate_mipi_buff_size(
 		even_line_bytes = odd_line_bytes;
 	}
 
-	words_per_odd_line	 = ((odd_line_bytes   + 3) >> 2);
+	words_per_odd_line	 = (odd_line_bytes   + 3) >> 2;
 		/* ceil(odd_line_bytes/4); word = 4 bytes */
-	words_per_even_line  = ((even_line_bytes  + 3) >> 2);
+	words_per_even_line  = (even_line_bytes  + 3) >> 2;
 
-	mem_words_per_odd_line	 = ((words_per_odd_line + 7) >> 3);
+	mem_words_per_odd_line	 = (words_per_odd_line + 7) >> 3;
 		/* ceil(words_per_odd_line/8); mem_word = 32 bytes, 8 words */
-	mem_words_per_even_line  = ((words_per_even_line + 7) >> 3);
+	mem_words_per_even_line  = (words_per_even_line + 7) >> 3;
 
 	mem_words_per_buff_line =
 		(mem_words_per_odd_line > mem_words_per_even_line) ? mem_words_per_odd_line : mem_words_per_even_line;
-- 
2.9.3


