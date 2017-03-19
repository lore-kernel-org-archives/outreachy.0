X-GM-THRID: 6399180144826646528
X-Received: by 10.13.212.195 with SMTP id w186mr13185920ywd.105.1489926763462;
        Sun, 19 Mar 2017 05:32:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.95.9 with SMTP id r9ls1515078itb.14.gmail; Sun, 19 Mar 2017
 05:32:42 -0700 (PDT)
X-Received: by 10.99.139.194 with SMTP id j185mr10655674pge.117.1489926762739;
        Sun, 19 Mar 2017 05:32:42 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si2213005pfx.8.2017.03.19.05.32.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:32:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so13760810pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 05:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/UnXuj3e4KZsKTYq9HVo19w8ijo+2pu4vI0zrD+B7J4=;
        b=SeLig8NCSeTjQ4s8XCwrs4ufjB2zGNFe9dfUGH2iplvEA9LYrTa/9SZsy+jw3HcebM
         Rcpm1Dahw6SbhUvYf32VOCml9dUEGkis3IKd1vr7c4UcX3s9V57pScn3+VMYwLjzjH98
         yR1wp+6ROrfBh/puf33vmf5rTgp5nPPeG/ELTOh07Gx0ffN+jKwvFIlXCjenUOUEQkQ0
         HeGcW1HNeSjQYcDAWfdl0lZaz3GsSPS830QJYOUGlq17PbO272sXNbKHzkg3A4argFoj
         od5aOCUucfOJgF2l5mS4fVMjFe8BCBzUW3hdSliVNZaYr+BdOWtEUXviCIYpB8SQr3AH
         Hkog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/UnXuj3e4KZsKTYq9HVo19w8ijo+2pu4vI0zrD+B7J4=;
        b=DaXVLz9M4luEqRySZOkosNbAfcmhWovMapc0u9Tve8C65I3QplHCprrpsgb4hT6JVE
         xScXeb1bBJWq4SNGHJMPZ8bKHgNHtulPD8eeCUrpMqI1Yl/QG5AkqYmffk/kq2q4h0XV
         oUMStLznh8wtYNynR5qU0SxZr6Z3VWn36DiikZJ+k/jtddnjAitRGHCnuNH6ImUL9bXg
         ViIzmWlHpDnkRrP7ZHERfRr5dWhP/z+X/EV1DeQ3otej/eE5hq9DTFBokpTiUdBIQbUl
         cavoy+/4PHBqdSy+9q49ZWmzC+cWYWWA/sCkz8a20VWAD5ITW0M4IhCZ39RrTFUET/rO
         54mg==
X-Gm-Message-State: AFeK/H1lLuaE89JoEuvaP4d77kC/CTG9aPaMlOjeDT3MIkwGG3Vn7exSJ66K14UoEKnqyg==
X-Received: by 10.84.128.100 with SMTP id 91mr32681392pla.94.1489926762506;
        Sun, 19 Mar 2017 05:32:42 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([157.49.4.219])
        by smtp.gmail.com with ESMTPSA id w29sm27160100pfi.131.2017.03.19.05.32.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 05:32:41 -0700 (PDT)
Message-ID: <58ce7a69.1d0e620a.4fb5d.6391@mx.google.com>
X-Google-Original-Message-ID: <20170319123004.GA8507@<rvarsha016@gmail.com>>
Date: Sun, 19 Mar 2017 18:00:04 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: media: atomisp: Fix block comments warning.
References: <cover.1489925957.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489925957.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Use kernel preferred block commenting style, to fix the checkpatch
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


