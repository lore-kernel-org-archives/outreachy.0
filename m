X-GM-THRID: 6399179032135467008
X-Received: by 10.99.143.91 with SMTP id r27mr12483509pgn.132.1489926595270;
        Sun, 19 Mar 2017 05:29:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.173 with SMTP id r42ls12041017otb.26.gmail; Sun, 19 Mar
 2017 05:29:54 -0700 (PDT)
X-Received: by 10.13.226.145 with SMTP id l139mr12444218ywe.95.1489926594804;
        Sun, 19 Mar 2017 05:29:54 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si2144657pfb.7.2017.03.19.05.29.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:29:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 81so7841056pgh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 05:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4Pizo0wYooDxPNJUPtx+4v++cYzAr4TWpWZokxonmbE=;
        b=tUB21BAZ2Jr604shTF2Zf97GWqrMfwIcKnyDnov6XLPzGzSgkndOuth8QSQD3mPqMs
         0weAn8V0bKxSnbMWQszC0+BQyP5tI8QqX2I4n56dHd7/GMzmvpPWtHdW1j4I1r/3jkYY
         YmFystMrdYU9/O+abXH9BrWCKic+NBMqH6qvIIsFGiYg/Za4eqAmehQAjJeLUqT+LEIh
         XNNw850q+XzYlc9o03JtphWw4mfaMEsXHPw/eqt0/pX+LcLUdYhvbA7X7+u07NM+ct+K
         gmX3u0Et1xbJ/qOmVj2VQhBfA7ssGZ4ae+Cahi0iuv6QeGboeJYTtHd8n3m04FdCB6FO
         PeLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4Pizo0wYooDxPNJUPtx+4v++cYzAr4TWpWZokxonmbE=;
        b=m46JMl77478F8qK9pmlG+2uhu/ECKjfnJs2sym1WKE3fyOf5RU+9ticILhP4mY8mTn
         fBX7cKZNiAjv05QIPQTz7/cg2Ixu0LEbdou+Te3GVEl8GwV4Y6mBBfQ4Zr/8nkPieIli
         CdaEzTH7mr0e3Pf39XfktuPzONOBC6U8r/tduw4ikyAgaNZicJ25pLZ2cewDR1KldFGa
         R8c9tUA0EFVWeqPI/NMpcldBlYLaH0y1VDlmb0CqoS8kKaTBdWA68KvBZ2L+k1pI0HYn
         XA/KpHr4OYuNSasd5rDNWAhoX69G00QAiU8A+p6gBh85cdUi+QhVBJKwyel5vls7gORs
         /DLw==
X-Gm-Message-State: AFeK/H3+huCw8A5wAJv6AAg7svo8kIpfa5A4WbPDwzzv1jF1+525n+g5hIP0Mu6hKEPQQQ==
X-Received: by 10.98.34.211 with SMTP id p80mr27717577pfj.174.1489926594479;
        Sun, 19 Mar 2017 05:29:54 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([157.49.2.152])
        by smtp.gmail.com with ESMTPSA id r13sm27198931pfg.55.2017.03.19.05.29.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 05:29:53 -0700 (PDT)
Message-ID: <58ce79c1.0dd6620a.57cda.6b16@mx.google.com>
X-Google-Original-Message-ID: <20170319122721.GA8460@<rvarsha016@gmail.com>>
Date: Sun, 19 Mar 2017 17:57:21 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: media: atomisp: Added spaces around arithmetic
 operators.
References: <cover.1489925957.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489925957.git.rvarsha016@gmail.com>
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


