X-GM-THRID: 6399180144826646528
X-Received: by 10.99.116.17 with SMTP id p17mr3253484pgc.111.1489925231279;
        Sun, 19 Mar 2017 05:07:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.72 with SMTP id z69ls3157736iod.16.gmail; Sun, 19 Mar
 2017 05:07:10 -0700 (PDT)
X-Received: by 10.99.52.78 with SMTP id b75mr12441364pga.118.1489925230816;
        Sun, 19 Mar 2017 05:07:10 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 190si736521pfv.3.2017.03.19.05.07.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:07:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so7148944pgf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 05:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=H9ZMYc3ooRgolL1CNRi+90otuOdTqt/9k/s3hi1/5Ys=;
        b=hNPBwh1UXzHBTlo6mtjsj3DKNADDxfeTlQjYOcMAxlp8kHh69prkbQSBOMWphF4vLk
         VlIzwiz9UidfBCR4l/VBarfOKK4oXlvq8BkY4mJXseXTjy4ZIB5+LUQJfFNMNt1kEiVu
         M61i5SB6z2r8I3NLKoolFvzjF2DighlOlotdEc9ko7Y7sREbG1N+ZoJ65XnP7IJQlvY4
         7bR29Xf3WS/y+ONs4M+2+AjTUHAwJRP7EWo9tVskAgXxi5aqET2DfPyrEVmvG5pCoKJR
         oXuOzUlaETiaTUE04URYVGhP/oBGjsN8WWAPQ84xYEYD9Vm5nLsfa0wusBlXyXpDHfkp
         opMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=H9ZMYc3ooRgolL1CNRi+90otuOdTqt/9k/s3hi1/5Ys=;
        b=Co20Pb5oOJHw4P9GMpEgIoqiCWjoAmPceyHoK52gtWaKHtdFvKTW3PtBkJXnIm2h1S
         UjXt8sSki741HsE3DxO7TyS17N1EbSCq2SmDK9PYLaFX2WipX/mHSWYc1pUgwd1at2DW
         pL/55MmP3W81YTtx0VYVYd94oyumm2cAj3qlGi5g6nVmGn0B66kCoVXvK+EUlyFowbph
         ABzmny0VtZTACdg9MwAiEiaFfYJ/qcsCX1zlAloxTDoDwJbK27vRe06EBLvaxNmo50wT
         MYzj0Xd7aRtMzvg/o4JKM7JVs3i/OujsemCcShz/AxfBIoo91Go29SATL/WLZ6ypaO3z
         nQAw==
X-Gm-Message-State: AFeK/H3SHy2wc4y9uxcS/TSXSl1hEYmp0m923bK/2GV9tFkM7QXcv8BlegAlRfVxUmI7AA==
X-Received: by 10.98.194.88 with SMTP id l85mr26186512pfg.55.1489925230575;
        Sun, 19 Mar 2017 05:07:10 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.38])
        by smtp.gmail.com with ESMTPSA id u29sm21028527pfa.123.2017.03.19.05.07.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 05:07:10 -0700 (PDT)
Message-ID: <58ce746e.1d47620a.f0d72.7346@mx.google.com>
X-Google-Original-Message-ID: <20170319120620.GA8183@<rvarsha016@gmail.com>>
Date: Sun, 19 Mar 2017 17:36:20 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: media: atomisp: Fix block comments warning.
References: <cover.1489924542.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489924542.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Use kernel preferred block commenting style, to the fix checkpatch
issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 .../css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c   | 19 +++++++++----------
 .../isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c        |  9 ++++++---
 2 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
index 992b31e..c96340d 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
@@ -21,8 +21,7 @@
 #define INEFFECTIVE_VAL 4096
 #define BASIC_VAL 819
 
-/*Default configuration of parameters for Ctc2
-*/
+/*Default configuration of parameters for Ctc2*/
 const struct ia_css_ctc2_config default_ctc2_config = {
 	INEFFECTIVE_VAL, INEFFECTIVE_VAL, INEFFECTIVE_VAL,
 	INEFFECTIVE_VAL, INEFFECTIVE_VAL, INEFFECTIVE_VAL,
@@ -104,14 +103,14 @@ void ia_css_ctc2_vmem_encode(struct ia_css_isp_ctc2_vmem_params *to,
 			    SH_CSS_BAYER_MAXVAL, from->y_x4);
 
 	/*Fill 3 arrays with:
-	* - Luma input gain values y_y0, y_y1, y_y2, y_3, y_y4
-	* - Luma kneepoints 0, y_x1, y_x2, y_x3, y_x4
-	* - Calculated slopes dydx0, dyxd1, dydx2, dydx3, dydx4
-	*
-	* - Each 64-element array is divided in blocks of 16 elements:
-	*   the 5 parameters + zeros in the remaining 11 positions
-	* - All blocks of the same array will contain the same data
-	*/
+	 * - Luma input gain values y_y0, y_y1, y_y2, y_3, y_y4
+	 * - Luma kneepoints 0, y_x1, y_x2, y_x3, y_x4
+	 * - Calculated slopes dydx0, dyxd1, dydx2, dydx3, dydx4
+	 *
+	 * - Each 64-element array is divided in blocks of 16 elements:
+	 *   the 5 parameters + zeros in the remaining 11 positions
+	 * - All blocks of the same array will contain the same data
+	 */
 	for (i = 0; i < shffl_blck; i++) {
 		to->y_x[0][(i << shffl_blck)]     = 0;
 		to->y_x[0][(i << shffl_blck) + 1] = from->y_x1;
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
index fa97224..9355b44 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
@@ -25,7 +25,8 @@
 #define XNR_MAX_ALPHA  ((1 << (ISP_VEC_ELEMBITS - 1)) - 1)
 
 /* Minimum value for sigma on host interface. Lower values translate to
- * max_alpha. */
+ * max_alpha.
+ */
 #define XNR_MIN_SIGMA  (IA_CSS_XNR3_SIGMA_SCALE / 100)
 
 /*
@@ -118,7 +119,8 @@ compute_coring(int coring)
 	int32_t offset = host_scale / 2; /* fixed-point 0.5 */
 
 	/* Convert from public host-side scale factor to isp-side scale
-	 * factor. Clip to [0, isp_scale-1). */
+	 * factor. Clip to [0, isp_scale-1).
+	 */
 	isp_coring = ((coring * isp_scale) + offset) / host_scale;
 	return min(max(isp_coring, 0), isp_scale - 1);
 }
@@ -138,7 +140,8 @@ compute_blending(int strength)
 	/* Convert from public host-side scale factor to isp-side scale
 	 * factor. The blending factor is positive on the host side, but
 	 * negative on the ISP side because +1.0 cannot be represented
-	 * exactly as s0.11 fixed point, but -1.0 can. */
+	 * exactly as s0.11 fixed point, but -1.0 can.
+	 */
 	isp_strength = -(((strength * isp_scale) + offset) / host_scale);
 	return max(min(isp_strength, 0), -XNR_BLENDING_SCALE_FACTOR);
 }
-- 
2.9.3


