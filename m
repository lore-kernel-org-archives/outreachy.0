X-GM-THRID: 6399180141017169920
X-Received: by 10.129.88.85 with SMTP id m82mr11875788ywb.97.1489926959061;
        Sun, 19 Mar 2017 05:35:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.105.8 with SMTP id e8ls1557260itc.3.canary-gmail; Sun, 19
 Mar 2017 05:35:58 -0700 (PDT)
X-Received: by 10.99.116.72 with SMTP id e8mr12150465pgn.92.1489926958375;
        Sun, 19 Mar 2017 05:35:58 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id g82si2111780pfb.5.2017.03.19.05.35.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:35:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n11so2422597pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 05:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=k0aKMVMM0CgvqpDl5Hcql2F70MPxmVmWgh+rOTpgZr4=;
        b=DDgGQxYMWaOeRDlNWAdwjESCesRR+vbpDeM8GllV7CPaQBTGfZ8IIOKreJgcwB7L6m
         DBGp8eNDQ1LBN1VPWzf2jiuPWUOOlZmY0za9t+uDsfAM/gsFPvfdKwifEr+K0Cd+2SHE
         jH3eqPvzCMPEoJD2ybs0uCBTyTN07RRo0nJzf3v3fGRCq3jEdcQuAqPTY1i4QQeU1vjc
         odLLApsuIYcMAS5xOuJvkyirb4uFm5kNA+VchJzI3qfSjvI+DkeBQ1F6t47X+ibWdB/X
         jAuXIxw2PqBtW8V6FGG1MY/TFTXWWspJ8iniekiO0xUfrQXWg4/i0tEKoD7oASbjVkov
         pYMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=k0aKMVMM0CgvqpDl5Hcql2F70MPxmVmWgh+rOTpgZr4=;
        b=m+bmoENP4o8KgW1F6/vbki3TetxrUNHLSG/lCgDatTkDXcOsnLc+nW1QKfs0hounqk
         ei6mEuDhetIGeRDhCzg2x8US/lKQ6A11fbh8zjI4WnCnCXP5/RM6bThkcFCGeq2cx6PT
         3ttFuUJmGfKke2K1CW85KwFBrJuzC/EDDrzFeY6Fp7mEsxBxuDt7Hm4sqZ+WkARb6nwt
         Vq8pJlmV3dKa1LVYbNQaKYJZSJ2eMYTeA6zHB5pflATWWYKGKxNroWgWmSmIaphE2fnK
         EGgcGs9ikaZv4Sm0VzLarrURq7u7EGnCa6ntUxrTqH9wpaaLPTAlm6K9C2sdbUpLTVdx
         EOKg==
X-Gm-Message-State: AFeK/H2oCICof07u3sngVlcYNf/rUeoO0d0VGrC35SwyTvbcUGatSEKxI7aq+8D1evWzTA==
X-Received: by 10.84.210.228 with SMTP id a91mr32746815pli.120.1489926957991;
        Sun, 19 Mar 2017 05:35:57 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([157.49.2.152])
        by smtp.gmail.com with ESMTPSA id 9sm5175pfn.108.2017.03.19.05.35.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 05:35:57 -0700 (PDT)
Message-ID: <58ce7b2d.890d620a.f76a.0012@mx.google.com>
X-Google-Original-Message-ID: <20170319123313.GA8564@<rvarsha016@gmail.com>>
Date: Sun, 19 Mar 2017 18:03:13 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: media: atomisp: Remove unnecessary blank lines.
References: <cover.1489925957.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489925957.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Remove multiple blank lines, which are not required. This patch fixes
the following check patch issue:

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


