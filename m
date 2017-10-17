X-GM-THRID: 6476782191370043392
X-Received: by 10.107.148.194 with SMTP id w185mr9245869iod.133.1508246057687;
        Tue, 17 Oct 2017 06:14:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.56.67 with SMTP id f64ls317015ioa.17.gmail; Tue, 17 Oct
 2017 06:14:17 -0700 (PDT)
X-Received: by 10.107.172.6 with SMTP id v6mr9829310ioe.38.1508246056973;
        Tue, 17 Oct 2017 06:14:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508246056; cv=none;
        d=google.com; s=arc-20160816;
        b=n1eJqzA1li+R4CKvKMWcGNaQPxa8nZr2ipSCvfodwOGR/rJZDpibGqlmloSiriSzq2
         bM9pP5wgRbwYP5E9do2kS9DWFXZWzqWz/l/YpW60+JU78dgha4OTph7pngGzGO8gB1Eo
         sGMHLFGONVlqPCo0s3uRDujflGlGOGQI+GBT0vdjU66SlGzG0ciWlce4jXQeLgfzZLHt
         lGD+VCdaqoJTAQSxFERA3NllEwFz4x5c3JOWEbZ2b16wRTS/Pkyiq5RKkqC1OPEtewvG
         8iFigk5Vke0yKyD9tMSBsl5QgoBJhpYHcSjR8GCHrRZbMW22E1SCGwZClp4BS1MYf8jv
         4oLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=DV3dOdxJK1M0mQu+tHpAWYAbMkJK8d3L9WwoCaDWg58=;
        b=jFEBC6TBMHJXiNMDgWLsQLrZXAYY3wQXD02ZiAUpq4NpnHwPwqSL5hHV1GiG6M2JZ2
         4WkJpTTqfqA53GjBUEjTR231p4mvq1H3TiksEHJuNVNxcYx6urkuadD72CwRDqBjO602
         6mJKKQQffY6vHbmPehSVXv2UabSV3+lfXsptxu/CiKClTFlkPMcVfVKnmBtDt77o86pr
         rH+d4AhZJfp0H8PdKlMOQ/1SSlJGQvyoIoN7m1nJr4ePGMeUdXCHXZlry7jRZiY773mn
         SNmTkQuRyBqlAxFZoLGCUV9s/wfzIUv6gbc8Dlex3t4p9F8l+aZidO6b8EQxSVbcbZZl
         KOsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p5pjVGmI;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id q25si576792ioh.0.2017.10.17.06.14.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 06:14:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p5pjVGmI;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id g6so1392231pgn.6
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 06:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DV3dOdxJK1M0mQu+tHpAWYAbMkJK8d3L9WwoCaDWg58=;
        b=p5pjVGmItlqINRSLi2Et5P2e+8u9mrOC5/q+S6M9dHxwRUztjK3RaXr0Z+z7h2JMFf
         oNuuL+lOprzJBK/xU4j+01efe8kAgm+mtgqarXthmrvk868H/V/bTcXgMC6p/2qTkukj
         cGwT4RDv2S2Q9my+qT1leH6sVY3/uoJD0HsjBILB9rHJ0TQV17h0uFqbmdBLWkZPRKGP
         EgUq4E3aUDZTDLMI6SqadbACKdDt9sc69fsor3Fd0//sgz3S+XChMdbQYYZLf2b2l1rD
         o7/WxmOxVjt5LxvlieAuyd94fMBBY+AR5veEsLXl+yv4+U8H5RXISO7uX0cica+VjAjB
         VP7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DV3dOdxJK1M0mQu+tHpAWYAbMkJK8d3L9WwoCaDWg58=;
        b=Ob1gq6+N2YYC7aSibIrx2OZjVKcnzuvBfen1VLclys9qEzB9/XO2cYN3vCSx2/8K9F
         FyWe6KxypOtx31hF7ak/KSTuDyUobAVatM/4eH6mfckh71/uGtn97H8hL6poO/uZrJ0W
         /iZZxOW9Sp4E+bgYMzO0k37MktbWt4ZxXQiTE//RWcQpvuJlyfMteIfEFO3hp+UA3npf
         vnOBAXJCt0CTOEIHPXqjTJcX9vHNwlm1cy8yKg7HcqHZ5gpmRa9IN01BfZqoKHN0n8VS
         gIo1iAS1ABGhWGq2FgTTGTaIiuziSzTwniFVVMxym5Jcot4buur+aERhJFMCxrsyxr0t
         /0wA==
X-Gm-Message-State: AMCzsaWgPMkK23lGRa2qdM07xlq8QIf2gx+EuIrGG/RUXgJgxjQBuyCU
	CQ7Nhi14e0p/OE6spHicMr8=
X-Google-Smtp-Source: AOwi7QC/CtzQiPb9XP+j7sy6F68CL8E64ayXNHKHuhZL7Lx8a0l6vI1EX4yRxJzf75W3dc+iNQaADg==
X-Received: by 10.101.65.4 with SMTP id w4mr10575744pgp.74.1508246056312;
        Tue, 17 Oct 2017 06:14:16 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.14])
        by smtp.gmail.com with ESMTPSA id y84sm19619377pff.158.2017.10.17.06.14.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Oct 2017 06:14:15 -0700 (PDT)
Date: Tue, 17 Oct 2017 18:44:09 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Alan Cox <alan@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] staging: atomisp2: cleanup null check on memory
 allocation
Message-ID: <62a82faa57e1f600f68d788903d4d1bd96f00d16.1508245883.git.aishpant@gmail.com>
References: <cover.1508245883.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508245883.git.aishpant@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)

For memory allocation functions that fail with a NULL return value, it
is preferred to use the (!x) test in place of (x == NULL).

Changes in atomisp2/css2400/sh_css.c were done by hand.

Done with the help of the following cocci script:

@@
type T;
T* p;
statement s,s1;
@@

p =
  \(devm_kzalloc\|devm_ioremap\|usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\|
   kmalloc\|kmalloc_array\|kzalloc\|kcalloc\|kmem_cache_alloc\|kmem_cache_zalloc\|
   kmem_cache_alloc_node\|kmalloc_node\|kzalloc_node\|devm_kzalloc\)(...)
...when != p

if (
- p == NULL
+ !p
 ) s
 else s1

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
--
Changes in v3:
  Rebase changes over atomisp-next branch of the media tree

Changes in atomisp2/css2400/sh_css.c were done by hand, the above script
was not able to match the pattern if (a->b != null).
---
 .../media/atomisp/pci/atomisp2/css2400/sh_css.c    | 36 +++++++++++-----------
 .../atomisp/pci/atomisp2/css2400/sh_css_firmware.c |  7 ++---
 .../pci/atomisp2/css2400/sh_css_param_shading.c    |  2 +-
 3 files changed, 22 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
index bee30438e6fd..e61009faff27 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
@@ -5605,13 +5605,13 @@ static enum ia_css_err load_video_binaries(struct ia_css_pipe *pipe)
 		mycs->num_yuv_scaler = cas_scaler_descr.num_stage;
 		mycs->yuv_scaler_binary = kzalloc(cas_scaler_descr.num_stage *
 			sizeof(struct ia_css_binary), GFP_KERNEL);
-		if (mycs->yuv_scaler_binary == NULL) {
+		if (!mycs->yuv_scaler_binary) {
 			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 			return err;
 		}
 		mycs->is_output_stage = kzalloc(cas_scaler_descr.num_stage
 					* sizeof(bool), GFP_KERNEL);
-		if (mycs->is_output_stage == NULL) {
+		if (!mycs->is_output_stage) {
 			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 			return err;
 		}
@@ -6256,14 +6256,14 @@ static enum ia_css_err load_primary_binaries(
 		mycs->num_yuv_scaler = cas_scaler_descr.num_stage;
 		mycs->yuv_scaler_binary = kzalloc(cas_scaler_descr.num_stage *
 			sizeof(struct ia_css_binary), GFP_KERNEL);
-		if (mycs->yuv_scaler_binary == NULL) {
+		if (!mycs->yuv_scaler_binary) {
 			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
 		mycs->is_output_stage = kzalloc(cas_scaler_descr.num_stage *
 			sizeof(bool), GFP_KERNEL);
-		if (mycs->is_output_stage == NULL) {
+		if (!mycs->is_output_stage) {
 			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
@@ -6980,27 +6980,27 @@ static enum ia_css_err ia_css_pipe_create_cas_scaler_desc_single_output(
 	}
 
 	descr->in_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
-	if (descr->in_info == NULL) {
+	if (!descr->in_info) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		goto ERR;
 	}
 	descr->internal_out_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
-	if (descr->internal_out_info == NULL) {
+	if (!descr->internal_out_info) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		goto ERR;
 	}
 	descr->out_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
-	if (descr->out_info == NULL) {
+	if (!descr->out_info) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		goto ERR;
 	}
 	descr->vf_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
-	if (descr->vf_info == NULL) {
+	if (!descr->vf_info) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		goto ERR;
 	}
 	descr->is_output_stage = kmalloc(descr->num_stage * sizeof(bool), GFP_KERNEL);
-	if (descr->is_output_stage == NULL) {
+	if (!descr->is_output_stage) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		goto ERR;
 	}
@@ -7116,22 +7116,22 @@ static enum ia_css_err ia_css_pipe_create_cas_scaler_desc(struct ia_css_pipe *pi
 	descr->num_stage = num_stages;
 
 	descr->in_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
-	if (descr->in_info == NULL) {
+	if (!descr->in_info) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		goto ERR;
 	}
 	descr->internal_out_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
-	if (descr->internal_out_info == NULL) {
+	if (!descr->internal_out_info) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		goto ERR;
 	}
 	descr->out_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
-	if (descr->out_info == NULL) {
+	if (!descr->out_info) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		goto ERR;
 	}
 	descr->vf_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
-	if (descr->vf_info == NULL) {
+	if (!descr->vf_info) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		goto ERR;
 	}
@@ -7274,13 +7274,13 @@ load_yuvpp_binaries(struct ia_css_pipe *pipe)
 		mycs->num_yuv_scaler = cas_scaler_descr.num_stage;
 		mycs->yuv_scaler_binary = kzalloc(cas_scaler_descr.num_stage *
 			sizeof(struct ia_css_binary), GFP_KERNEL);
-		if (mycs->yuv_scaler_binary == NULL) {
+		if (!mycs->yuv_scaler_binary) {
 			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 			goto ERR;
 		}
 		mycs->is_output_stage = kzalloc(cas_scaler_descr.num_stage *
 			sizeof(bool), GFP_KERNEL);
-		if (mycs->is_output_stage == NULL) {
+		if (!mycs->is_output_stage) {
 			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 			goto ERR;
 		}
@@ -7381,7 +7381,7 @@ load_yuvpp_binaries(struct ia_css_pipe *pipe)
 	}
 	mycs->vf_pp_binary = kzalloc(mycs->num_vf_pp * sizeof(struct ia_css_binary),
 						GFP_KERNEL);
-	if (mycs->vf_pp_binary == NULL) {
+	if (!mycs->vf_pp_binary) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		goto ERR;
 	}
@@ -9443,7 +9443,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 
 	/* allocate the stream instance */
 	curr_stream = kmalloc(sizeof(struct ia_css_stream), GFP_KERNEL);
-	if (curr_stream == NULL) {
+	if (!curr_stream) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		IA_CSS_LEAVE_ERR(err);
 		return err;
@@ -9455,7 +9455,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 	/* allocate pipes */
 	curr_stream->num_pipes = num_pipes;
 	curr_stream->pipes = kzalloc(num_pipes * sizeof(struct ia_css_pipe *), GFP_KERNEL);
-	if (curr_stream->pipes == NULL) {
+	if (!curr_stream->pipes) {
 		curr_stream->num_pipes = 0;
 		kfree(curr_stream);
 		curr_stream = NULL;
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
index 5e45d5fe0b2a..383d236c010c 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
@@ -147,7 +147,7 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi, struct ia
 
 		char *parambuf = kmalloc(paramstruct_size + configstruct_size + statestruct_size,
 							GFP_KERNEL);
-		if (parambuf == NULL)
+		if (!parambuf)
 			return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 
 		bd->mem_offsets.array[IA_CSS_PARAM_CLASS_PARAM].ptr = NULL;
@@ -229,7 +229,7 @@ sh_css_load_firmware(const char *fw_data,
 		sh_css_blob_info = kmalloc(
 					(sh_css_num_binaries - NUM_OF_SPS) *
 					sizeof(*sh_css_blob_info), GFP_KERNEL);
-		if (sh_css_blob_info == NULL)
+		if (!sh_css_blob_info)
 			return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 	} else {
 		sh_css_blob_info = NULL;
@@ -237,8 +237,7 @@ sh_css_load_firmware(const char *fw_data,
 
 	fw_minibuffer = kcalloc(sh_css_num_binaries, sizeof(struct fw_param),
 				GFP_KERNEL);
-
-	if (fw_minibuffer == NULL)
+	if (!fw_minibuffer)
 		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 
 	for (i = 0; i < sh_css_num_binaries; i++) {
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_param_shading.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_param_shading.c
index eaf60e7b2dac..48e2e63c2336 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_param_shading.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_param_shading.c
@@ -365,7 +365,7 @@ ia_css_shading_table_alloc(
 	IA_CSS_ENTER("");
 
 	me = kmalloc(sizeof(*me), GFP_KERNEL);
-	if (me == NULL) {
+	if (!me) {
 		IA_CSS_ERROR("out of memory");
 		return me;
 	}
-- 
2.11.0


