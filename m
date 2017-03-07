X-GM-THRID: 6394891696717430784
X-Received: by 10.46.1.12 with SMTP id 12mr632959ljb.30.1488926749444;
        Tue, 07 Mar 2017 14:45:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.10 with SMTP id 10ls184683ljt.24.gmail; Tue, 07 Mar 2017
 14:45:49 -0800 (PST)
X-Received: by 10.46.83.7 with SMTP id h7mr621855ljb.24.1488926749072;
        Tue, 07 Mar 2017 14:45:49 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id 82si196303wmg.3.2017.03.07.14.45.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 14:45:49 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id v190so3336844wme.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 14:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NvUHL4MoUe5KBlB8CwrJRKBVwg8MwAvWjdOcHlqv5Pw=;
        b=DoVxC0QM3JqOS3jEwDAF0ogBFx40wLWre16bgLUHIAyr/fH6tdTJxkaTNuSYjkp4QK
         KLoy/iLurTSuY95U45KPKuTzXLMINmMzpwHcC2eXbkrjzj6lhMooxBGNmVd2LXp7B72H
         nZv/0yz8weq8zwl6RQJZh86x5uqBXy9fWHM9iHLjAgKH+GT2lAQY06nJsbfA0euFrKhr
         KZYawMHK1LKO10+wRajrhmFrKX804paP22SkMTtrujCga5sDHd7umhuDqlQtGy0NfZJk
         viVscIQMSySDchWdkxqek77MsbHXbzQEmdG9488gUzT+LXmunZUGuddGxk8MQVpz26pQ
         v8GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NvUHL4MoUe5KBlB8CwrJRKBVwg8MwAvWjdOcHlqv5Pw=;
        b=a22aI6OeLTkeM+e8/t/TmFdHl5Km62exnzCxhI7P1qpjO3/VwGek/zBrpVW4upHkzC
         d7U7/lfKnFb4sZVACAimySrtDs7285wL3MifjlPCYgElO1k5McloeTH2vDtWmEdUInm2
         xOF9crmrgWahmRNmX4RtuaKHm4bbX2LUcFybKfiE13abeXU+eizVY002HjXzAg0+8k9r
         qwBZFwUNRuFEEHvAHaqP9fslZwt+/E1LXoVDBrQbG5T4Z65ggFdFAd/v8czThx97dV64
         QGkOXwu0DzL63ww9pJYWdm+XQKjH2YLGRWI0PGqc6ed249vTWQYlFR8ExXKhuGn0i6Yx
         M9IQ==
X-Gm-Message-State: AMke39m2t6FmZPbHHRRRkhf5wi8f6rOysvW7v79hiodDDFHJbFr228L0MjPiSrmAeRJ0bA==
X-Received: by 10.28.45.212 with SMTP id t203mr19393453wmt.37.1488926748850;
        Tue, 07 Mar 2017 14:45:48 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id 5sm1638270wrd.58.2017.03.07.14.45.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 14:45:48 -0800 (PST)
Date: Wed, 8 Mar 2017 00:45:47 +0200
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: media: atomisp: pci: Remove unnecessary variable
 used to store return value
Message-ID: <20170307224547.GA14835@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove the local variables used to store the return value because
their initial value does not change during the function execution.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 .../media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c   | 4 +---
 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c      | 4 +---
 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c        | 3 +--
 3 files changed, 3 insertions(+), 8 deletions(-)

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
index b251ba4..4a7a603 100644
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


