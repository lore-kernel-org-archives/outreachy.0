X-GM-THRID: 6399180141017169920
X-Received: by 10.99.56.5 with SMTP id f5mr13605624pga.75.1489925231212;
        Sun, 19 Mar 2017 05:07:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.39.17 with SMTP id g17ls1502051ita.21.canary-gmail; Sun, 19
 Mar 2017 05:07:10 -0700 (PDT)
X-Received: by 10.99.36.131 with SMTP id k125mr12623841pgk.25.1489925230500;
        Sun, 19 Mar 2017 05:07:10 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y203si2196047pfb.0.2017.03.19.05.07.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:07:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so15876638pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 05:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=37cI2McdC2vAu74i8wdIYXayMJkmwi5/Y7zeu9F/tf8=;
        b=bsGnG8hKDIKOIdZh2hepjSvn01UAk6kQYeZxQxjnK9HNNi2dVPtq+0tm6x/4aO4e9+
         lTvE1PPC9AFOq/zY/VzqJKIU7lxUZQ7BGvGWkX6oNcD1YSKEI855O4CpbyNcPH+xMmji
         Ki/n2vZLWKDAmEdt7b8InrtzcOSVx5Dbxd7QP05/5NJ7gEohc29uPgC2rY2i5N7VfX2N
         uG+OVfqrr/tTNJvqzSYJmXcG/ve+RoiJy36SNj+zaiovaygbTJT4w7UXmrf+H+nnEi0s
         qfsLaxv5tU3B7Mb+1cEa/Uqm44nQwWsNrSB3YOi/rKmKyg30aeIt9rHDp7vOv2muQe2O
         Uz5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=37cI2McdC2vAu74i8wdIYXayMJkmwi5/Y7zeu9F/tf8=;
        b=bi17MY9WRLxcSybwoIu0zdaSnmsHMakQrVX7XwJthZP4e/O9+oAbru7sZ8RbH/JYPi
         F/soRcWu4NHlwFtD7HhA8VimEj1FID1f8TsP8JbjXXt5BF/b04Git+iPD/AegFdjz+ip
         HZi17H3m6DSGRHUMz+qZEzsUl5DOT10TgEj6TZl3zQXbber+4TVW0OMMx5dKibVcv8gA
         J6j8SEs/0pXTcYDbvuzNDhHPCNvI+NFR2idgDeremfGDhuZyCFmTCIqt5EJqpdQoAQzi
         eNPx9UVK5fk1H00ODp0Hy/W8vOktdUFfAPZ0E6rdFm9uHW2mPs4haoCuhaYwRI/dLekx
         g8Pw==
X-Gm-Message-State: AFeK/H0drj+jC/j+WJEjgJCGKZtSOECiL5vyULTPHR7WQpO3Gt29Jb3qlCoLZ1KSYp6uTw==
X-Received: by 10.98.166.132 with SMTP id r4mr26361752pfl.191.1489925229987;
        Sun, 19 Mar 2017 05:07:09 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.38])
        by smtp.gmail.com with ESMTPSA id s87sm27110130pfa.29.2017.03.19.05.07.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 05:07:09 -0700 (PDT)
Message-ID: <58ce746d.5a45620a.b5ba.69a4@mx.google.com>
X-Google-Original-Message-ID: <20170319120645.GA8185@<rvarsha016@gmail.com>>
Date: Sun, 19 Mar 2017 17:36:45 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: media: atomisp: Remove unnecessary blank lines.
References: <cover.1489924542.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489924542.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Remove multiple blank lines, which are not required. This patch fixes
the following check patch issues:

CHECK: Please don't use multiple blank lines

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 .../pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c     | 2 --
 .../pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c  | 5 -----
 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c     | 2 --
 .../staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c | 2 --
 4 files changed, 11 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
index c96340d..5d58dc1 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
@@ -29,8 +29,6 @@ const struct ia_css_ctc2_config default_ctc2_config = {
 	BASIC_VAL * 8, INEFFECTIVE_VAL, INEFFECTIVE_VAL,
 	BASIC_VAL >> 1, BASIC_VAL};
 
-
-
 /* (dydx) = ctc2_slope(y1, y0, x1, x0)
  * -----------------------------------------------
  * Calculation of the Slope of a Line = ((y1 - y0) >> 8)/(x1 - x0)
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
index 9355b44..f61bfab 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
@@ -51,7 +51,6 @@ static const int16_t b[XNR3_LOOK_UP_TABLE_POINTS] = {
 static const int16_t c[XNR3_LOOK_UP_TABLE_POINTS] = {
 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
 
-
 /*
 #endif
  * Default kernel parameters. In general, default is bypass mode or as close
@@ -224,7 +223,6 @@ ia_css_xnr3_vmem_encode(
 		to->c[0][i] = 0;
 	}
 
-
 	/* Constraints on "x":
 	 * - values should be greater or equal to 0.
 	 * - values should be ascending.
@@ -237,7 +235,6 @@ ia_css_xnr3_vmem_encode(
 
 	}
 
-
 	/* The implementation of the calulating 1/x is based on the availability
 	 * of the OP_vec_shuffle16 operation.
 	 * A 64 element vector is split up in 4 blocks of 16 element. Each array is copied to
@@ -257,8 +254,6 @@ ia_css_xnr3_vmem_encode(
 	}
 }
 
-
-
 #endif
 /* Dummy Function added as the tool expects it*/
 void
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
index fdbb96a..8bc1ca0 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
@@ -209,7 +209,6 @@ ia_css_mipi_frame_calculate_size(const unsigned int width,
 	*  payload lines.
 	*/
 
-
 	words_per_odd_line = (odd_line_bytes + 3) >> 2;
 		/* ceil(odd_line_bytes/4); word = 4 bytes */
 	words_per_even_line  = (even_line_bytes  + 3) >> 2;
@@ -251,7 +250,6 @@ ia_css_mipi_frame_enable_check_on_size(const enum ia_css_csi2_port port,
 	OP___assert(port < N_CSI_PORTS);
 	OP___assert(size_mem_words != 0);
 
-
 	for (idx = 0; idx < IA_CSS_MIPI_SIZE_CHECK_MAX_NOF_ENTRIES_PER_PORT &&
 		my_css.mipi_sizes_for_check[port][idx] != 0;
 		idx++) { /* do nothing */
diff --git a/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
index 8165154..5b4506a 100644
--- a/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
@@ -29,7 +29,6 @@
 #define ELDO2_1P8V	0x16
 #define ELDO2_CTRL_SHIFT 0x01
 
-
 struct gmin_subdev {
 	struct v4l2_subdev *subdev;
 	int clock_num;
@@ -489,7 +488,6 @@ int gmin_v1p8_ctrl(struct v4l2_subdev *subdev, int on)
 			return regulator_disable(gs->v1p8_reg);
 	}
 
-
 	return -EINVAL;
 }
 
-- 
2.9.3


