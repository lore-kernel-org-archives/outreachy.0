X-GM-THRID: 6394469036665602048
X-Received: by 10.25.40.17 with SMTP id o17mr2090459lfo.25.1488828341327;
        Mon, 06 Mar 2017 11:25:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.65 with SMTP id 1ls1520084ljv.35.gmail; Mon, 06 Mar 2017
 11:25:40 -0800 (PST)
X-Received: by 10.46.7.10 with SMTP id 10mr2560513ljh.1.1488828340664;
        Mon, 06 Mar 2017 11:25:40 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id h198si90398wmg.1.2017.03.06.11.25.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:25:40 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id z63so13192690wmg.2
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 11:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=LwK2PX8TikPolrdZ/9jRdYdLo5G0nJWENavojVPBJpo=;
        b=vNtZuj6IDO4+AOi8Yny80ybRLotUohMRR7IyiQv0yQBX7oq6cU2IbKpWV9pF9SpzPo
         a6SjIeUWmy1QbCHBp7C9mUrYOlJbKlUgstGbT+qxIDhNqXzK5xQL4IlAcFmDKm6iuhDv
         coLvyFUawMRKDJwZqVdHD/jIJly435RAwzlxjI6ttFCZAcmrdPmVOx+NCwkjHhWVaZa8
         CX1cgEtLg6M/L1tDAu1IcInomxftdLGAVi7n1r0HNz8a0vD3Jwn8EqPQ/jKKAMRZJFRl
         X2Rp+LCRN7KDZVHEVCtJpE8S/BaKQVH71B2nJU1M/PAjz7+121rzqaAnfrErS2GqSlZm
         09+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=LwK2PX8TikPolrdZ/9jRdYdLo5G0nJWENavojVPBJpo=;
        b=oFM3fsbvdra9yzRSrUjAR3UQhDCgbnk1MEYEuKcc/3fzbUxrGjcFhAkViTO04+KyrV
         qrhppDiHfeReGSjZeLgGutaDfF89GjxGhdcAKKlvmKZAErZdOecJfKUSf+vFJi2Gh80K
         PyxrG18bLlH7gbO9DELHfkct+bmahRJrih/6p/XJOzGlIOROc2lGaJUNue8n/4Aqwkau
         BwioBTGkMvHbFYGjkBsklSlxWyjeZJhNo6D3kfi8olg6BdJbt0oVv3JuBIsbEIfhyGph
         AJ12BXuH7QlWJJ1r+fLt2TZgwRCbsLMBjJINF/bGUHNAhwI9LWvwGXRelaO75SpRweOS
         sN3A==
X-Gm-Message-State: AMke39mmXrJJTbAkGNRS7OI72gsxHzFVdZqc48bIm+afsZ9phlzb2fjkVZIOSRIZFmk3aA==
X-Received: by 10.28.145.130 with SMTP id t124mr5923781wmd.39.1488828340420;
        Mon, 06 Mar 2017 11:25:40 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id v18sm28162172wrc.41.2017.03.06.11.25.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 11:25:39 -0800 (PST)
Date: Mon, 6 Mar 2017 21:25:38 +0200
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH] media:atomisp:pci Remove unnecessary variable
Message-ID: <20170306192538.GA5241@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove the local variable "ret" because its initial
value does not change during the function execution.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c           | 5 ++---
 .../media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c  | 4 +---
 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c     | 4 +---
 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c       | 3 +--
 4 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c
index 0a0652a..bc09914 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c
@@ -557,8 +557,6 @@ const struct atomisp_format_bridge *atomisp_get_format_bridge_from_mbus(u32
 static int atomisp_querycap(struct file *file, void *fh,
 			    struct v4l2_capability *cap)
 {
-	int ret = 0;
-
 	memset(cap, 0, sizeof(struct v4l2_capability));
 
 	WARN_ON(sizeof(DRIVER) > sizeof(cap->driver) ||
@@ -574,7 +572,8 @@ static int atomisp_querycap(struct file *file, void *fh,
 	cap->device_caps = V4L2_CAP_VIDEO_CAPTURE |
 	    V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_OUTPUT;
 	cap->capabilities = cap->device_caps | V4L2_CAP_DEVICE_CAPS;
-	return ret;
+
+	return 0;
 }
 
 /*
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c
index 239ef31..2ed5162 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c
@@ -105,8 +105,6 @@ input_system_error_t ia_css_isys_init(void)
 #elif defined(USE_INPUT_SYSTEM_VERSION_2401)
 input_system_error_t ia_css_isys_init(void)
 {
-	input_system_error_t error = INPUT_SYSTEM_ERR_NO_ERROR;
-
 	ia_css_isys_csi_rx_lut_rmgr_init();
 	ia_css_isys_ibuf_rmgr_init();
 	ia_css_isys_dma_channel_rmgr_init();
@@ -120,7 +118,7 @@ input_system_error_t ia_css_isys_init(void)
 	isys_irqc_status_enable(ISYS_IRQ1_ID);
 	isys_irqc_status_enable(ISYS_IRQ2_ID);
 
-	return error;
+	return INPUT_SYSTEM_ERR_NO_ERROR;
 }
 #endif
 
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
index 1210c21..bc4b623 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
@@ -37,12 +37,10 @@ enum ia_css_err
 ia_css_mipi_frame_specify(const unsigned int size_mem_words,
 				const bool contiguous)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
-
 	my_css.size_mem_words = size_mem_words;
 	(void)contiguous;
 
-	return err;
+	return IA_CSS_SUCCESS;
 }
 
 #ifdef ISP2401
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
index 00b2d16..9caf0b6 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
@@ -825,7 +825,6 @@ configure_isp_from_args(
 	bool two_ppc,
 	bool deinterleaved)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
 #ifdef ISP2401
 	struct ia_css_pipe *pipe = find_pipe_by_num(pipeline->pipe_num);
 	const struct ia_css_resolution *res;
@@ -853,7 +852,7 @@ configure_isp_from_args(
 	/* Remove support for TNR2 once TNR3 fully integrated */
 	ia_css_tnr3_configure(binary, (const struct ia_css_frame **)args->tnr_frames);
 #endif
-	return err;
+	return IA_CSS_SUCCESS;
 }
 
 static void
-- 
2.7.4


