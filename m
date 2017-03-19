X-GM-THRID: 6399179032135467008
X-Received: by 10.200.35.250 with SMTP id r55mr2768882qtr.39.1489924972848;
        Sun, 19 Mar 2017 05:02:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.137 with SMTP id f131ls1528399ita.7.gmail; Sun, 19 Mar
 2017 05:02:52 -0700 (PDT)
X-Received: by 10.99.177.78 with SMTP id g14mr11959285pgp.67.1489924972266;
        Sun, 19 Mar 2017 05:02:52 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y90si2181501pfa.6.2017.03.19.05.02.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:02:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so7142441pgf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 05:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4Pizo0wYooDxPNJUPtx+4v++cYzAr4TWpWZokxonmbE=;
        b=jzH/7/03ZDa1dmkJptEqo6HPqLt9JlKJrhA8pkjzo17m+GQfx5VTQfSDcQMqS+ohl0
         Awvw2UV1zrpYBPGIQpMiMbacUGRjBJSY38UBBwnECrwU7A5Bfeip/XWfC+hN4PyGZKhS
         MBcmGeAPVe0t4GC4DKB4XiQ97m5MGznB3FT1KqnMt3NE0y3XgXLdg89hMYUuXULQ92J1
         I5yDgYM9D3IU7icdjcOLFCL19GcjNNPYa2/aCTNtm/1zU3U6PqVK3UAiz0cecxiqZP/H
         s2uoT/3Hk2pmE/mLaTWNl5pCT80GzWHBuE3HJs+5kywn/inJ9JEMlLDZXggHoBItOd4U
         2cjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4Pizo0wYooDxPNJUPtx+4v++cYzAr4TWpWZokxonmbE=;
        b=ALP/9HPGPF5466UuBdYLxUGT+5lqIl9cXiXbyalvABPLlvbDchEWKDnZPyC0uaacqb
         zbvzNkQMaOB8r9p4SjU/7FcfqcaGawfeSEaBt1sL6hcCm6h1ld1j1fJRCX6P4LyTMn2s
         xD/NJxXR6w+ULuR3/D60UNu4tFEbT51BcDRDu81kOUhBj56WdgnPs8BL6OJmMKvUJYPm
         HdwkkhW8h3jgOTls6WsnO463c77soRFSh8myswBf4CHitTB4SKfn3uumcdzwYmco2owT
         ZvXC87aL52lReKPjSmZImH6v1rxYiP7+jsT4K1CgTRAM+C58EGe/wgIyer+knjXSPsRY
         AZZg==
X-Gm-Message-State: AFeK/H20cbVgCdJshsz6bbpVuVLzUMm7zcsLZpOJ5tPeHLESgdAbZYTq/q9pA7F9LCniiA==
X-Received: by 10.99.130.193 with SMTP id w184mr18032354pgd.157.1489924971994;
        Sun, 19 Mar 2017 05:02:51 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.38])
        by smtp.gmail.com with ESMTPSA id d2sm27274447pgf.35.2017.03.19.05.02.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 05:02:51 -0700 (PDT)
Message-ID: <58ce736b.02a7630a.e7f61.6bfb@mx.google.com>
X-Google-Original-Message-ID: <20170319120227.GA8126@<rvarsha016@gmail.com>>
Date: Sun, 19 Mar 2017 17:32:27 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: media: atomisp: Added spaces around arithmetic
 operators.
References: <cover.1489924542.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489924542.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Add spaces around arithmetic operators (/, +, -), to fix the checkpatch
issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 .../css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c        | 14 +++++++-------
 .../css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c     |  6 +++---
 .../atomisp/platform/intel-mid/atomisp_gmin_platform.c     |  6 +++---
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
index 1890d59..992b31e 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
@@ -44,7 +44,7 @@ static int ctc2_slope(int y1, int y0, int x1, int x0)
 	const int max_slope = (1 << IA_CSS_CTC_COEF_SHIFT) - 1;
 	int dy = y1 - y0;
 	int dx = x1 - x0;
-	int rounding = (dx+1) >> 1;
+	int rounding = (dx + 1) >> 1;
 	int dy_shift = dy << shift_val;
 	int slope, dydx;
 
@@ -126,14 +126,14 @@ void ia_css_ctc2_vmem_encode(struct ia_css_isp_ctc2_vmem_params *to,
 		to->y_y[0][(i << shffl_blck) + 4] = from->y_y4;
 
 		to->e_y_slope[0][(i << shffl_blck)]    = dydx0;
-		to->e_y_slope[0][(i << shffl_blck) +1] = dydx1;
-		to->e_y_slope[0][(i << shffl_blck) +2] = dydx2;
-		to->e_y_slope[0][(i << shffl_blck) +3] = dydx3;
-		to->e_y_slope[0][(i << shffl_blck) +4] = dydx4;
+		to->e_y_slope[0][(i << shffl_blck) + 1] = dydx1;
+		to->e_y_slope[0][(i << shffl_blck) + 2] = dydx2;
+		to->e_y_slope[0][(i << shffl_blck) + 3] = dydx3;
+		to->e_y_slope[0][(i << shffl_blck) + 4] = dydx4;
 
 		for (j = 0; j < lenght_zeros; j++) {
-			to->y_x[0][(i << shffl_blck)+ 5 + j] = 0;
-			to->y_y[0][(i << shffl_blck)+ 5 + j] = 0;
+			to->y_x[0][(i << shffl_blck) + 5 + j] = 0;
+			to->y_y[0][(i << shffl_blck) + 5 + j] = 0;
 			to->e_y_slope[0][(i << shffl_blck)+ 5 + j] = 0;
 		}
 	}
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
index 1a8b852..fa97224 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
@@ -22,7 +22,7 @@
 #include "ia_css_xnr3.host.h"
 
 /* Maximum value for alpha on ISP interface */
-#define XNR_MAX_ALPHA  ((1 << (ISP_VEC_ELEMBITS-1)) - 1)
+#define XNR_MAX_ALPHA  ((1 << (ISP_VEC_ELEMBITS - 1)) - 1)
 
 /* Minimum value for sigma on host interface. Lower values translate to
  * max_alpha. */
@@ -78,7 +78,7 @@ compute_alpha(int sigma)
 #if defined(XNR_ATE_ROUNDING_BUG)
 	int32_t alpha_unscaled;
 #else
-	int offset = sigma/2;
+	int offset = sigma / 2;
 #endif
 	if (sigma < XNR_MIN_SIGMA) {
 		alpha = XNR_MAX_ALPHA;
@@ -230,7 +230,7 @@ ia_css_xnr3_vmem_encode(
 
 	for (j = 1; j < XNR3_LOOK_UP_TABLE_POINTS; j++) {
 		assert(x[j] >= 0);
-		assert(x[j] > x[j-1]);
+		assert(x[j] > x[j - 1]);
 
 	}
 
diff --git a/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
index add0093..8165154 100644
--- a/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
@@ -56,7 +56,7 @@ static enum { PMIC_UNSET = 0, PMIC_REGULATOR, PMIC_AXP, PMIC_TI ,
 	PMIC_CRYSTALCOVE } pmic_id;
 
 /* The atomisp uses type==0 for the end-of-list marker, so leave space. */
-static struct intel_v4l2_subdev_table pdata_subdevs[MAX_SUBDEVS+1];
+static struct intel_v4l2_subdev_table pdata_subdevs[MAX_SUBDEVS + 1];
 
 static const struct atomisp_platform_data pdata = {
 	.subdevs = pdata_subdevs,
@@ -637,7 +637,7 @@ int gmin_get_config_var(struct device *dev, const char *var, char *out, size_t *
         else
                 ret = snprintf(var8, sizeof(var8), "gmin_%s", var);
 
-	if (ret < 0 || ret >= sizeof(var8)-1)
+	if (ret < 0 || ret >= sizeof(var8) - 1)
 		return -EINVAL;
 
 	/* First check a hard-coded list of board-specific variables.
@@ -654,7 +654,7 @@ int gmin_get_config_var(struct device *dev, const char *var, char *out, size_t *
 
 				if (strcmp(var8, gv->name))
 					continue;
-				if (vl > *out_len-1)
+				if (vl > *out_len - 1)
 					return -ENOSPC;
 
 				memcpy(out, gv->val, min(*out_len, vl+1));
-- 
2.9.3


