X-GM-THRID: 6476782191370043392
X-Received: by 10.36.86.143 with SMTP id o137mr3864802itb.52.1507993420298;
        Sat, 14 Oct 2017 08:03:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.34.21 with SMTP id o21ls783534ito.7.gmail; Sat, 14 Oct 2017
 08:03:39 -0700 (PDT)
X-Received: by 10.107.97.26 with SMTP id v26mr870621iob.108.1507993419511;
        Sat, 14 Oct 2017 08:03:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507993419; cv=none;
        d=google.com; s=arc-20160816;
        b=V2jUiOHGCmqHdmdWKAcMSbzzLCTZL+ejyIW0A00Q4WbMwae3ywYG5bYH8CQYwLiwe5
         2VruAdTO3oSRUnF60PvrlLEY+okwF/svmXQerF1X3ljnLBhjQ9Q4P1Y4IsiA92y1Lm8m
         wjHbx8oNdedF+nQROTS+kL0T2rkdmztJ6n6fq5JsVvok5GzX2lysmJrf3SlaW2mmQWCz
         sWdlJpIDmiqpWN/+gX7jI2f4H1f92n+0XC+Zr8v1hva4ICYPkCr9mcydFA2SAAtURuEG
         xntuhNaWrADpihGtCAbhcTXg1KdHkQtz6LqH/a4POFaM5Ai5hEpKxkHvaHx+NRCdkkkn
         In2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=W+Kyw8bNJQgA1D+CJkyUwIdzf+EBt4el+1VSLXAB5UI=;
        b=Bw/C9nk6Zk8XDhYC6ABM05ApadOVnDxdW9SQK/LYy08awG1vdm9dYctMtL/UY4ZO2C
         Q8LRUUA/jQm0CEWwfAFzkO4w/7xSJ6T1ibUKiqnJ6raErxXZYuFIfP7JfqHF7k5yoPEq
         /ltVIxK+JxO3MZ3dHQUaW5LrfSnoHFeLCgu9KHbqyMM39BCKaH55tvKK8p54uaRQA+us
         6AqQRg532a3KGgUp0euX2jN+QIfcGn2nfzibzDvPG6EiEp+8DGAOmcoprHIk0OuD742N
         sXUcNJoFqW+Xdg0NndU/sWI8lBAxInwuL0adja534+86eZS9/UwMYaY1fM47xQCYDeXo
         W94Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n88tCLEb;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 72si309767iti.2.2017.10.14.08.03.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 08:03:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n88tCLEb;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s75so2601488pgs.0
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 08:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=W+Kyw8bNJQgA1D+CJkyUwIdzf+EBt4el+1VSLXAB5UI=;
        b=n88tCLEb2ZISewy5rSlBBVkuMNEr81eGV+8BZPQOuMUcvcvFj4DBCnBwtEiQG1WiP6
         XyknxjfUVRfjRAsck08cBFD5qsQtsv01BYWq9lCaLPac/5pD9qIX4Zp8CWdh4mak2R4T
         X0KXfE5LB1DVbAtMkyZepf2T4ZF0EwhaBq53ahiaqTFv5UnVGsupVUCbNNWA8hEOHANH
         vZr7/dwwtstCtUKlzsFNTbEEoeHuErkBlOdlKOaQgqOyjXyphjC15xnQjjOrxJqLbgsJ
         T5D8Y0mX9Jq6PP9a9PQaicFfAWKpg/WFYwEUg+fUOBj4gH4ldoWCa9s3FV122cdwwoIn
         Pi4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=W+Kyw8bNJQgA1D+CJkyUwIdzf+EBt4el+1VSLXAB5UI=;
        b=fyw2/GqROdGHvrRstFJBml8+bo08+2In8E5rNMbxOEQjs5sVP/MtPiZtAiNDibTN3i
         5nIvKiErj0IrG9tKJHHBQpmmaPcnaixofPEXCpL0eIf+xe6uA9bS3ZCXiL4iVVe00fpd
         HkFAPpSHt/GH9/JjJFqw1VaXntrrZ/O+dfcNkRspedMRlAhlmOQs4fBLVWebb21/mgS6
         DN6jPJse84uO2C+mA1zF9Y7XUqTryg7Uwiu9rJcsE8+B6x9IYbAKRzzJFYGcb8jAO9Rc
         yax2JcrVcX4LfmcIVEnejJ3z+UhlAxJZhz+H34dZExRRzhNxaInyah5gf3YQk0wntx+O
         /6Hg==
X-Gm-Message-State: AMCzsaWb9wXzyStjxaFAXDECrfkg/JTaIRmqlJmlDrxHJnT+VBIsVG5x
	+k6V5tpW5iGTwa+GlFxwID0=
X-Google-Smtp-Source: AOwi7QAlIrP44+3Eyd+85klkzTpW5AKZHkq7kQT/hjOyp2//CH6EBYJASxIb60EqC4sE5uoVysJFwA==
X-Received: by 10.159.233.133 with SMTP id bh5mr4145807plb.28.1507993419098;
        Sat, 14 Oct 2017 08:03:39 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([27.59.102.186])
        by smtp.gmail.com with ESMTPSA id 68sm8354363pfx.105.2017.10.14.08.03.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Oct 2017 08:03:38 -0700 (PDT)
Date: Sat, 14 Oct 2017 19:24:55 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: atomisp2: cleanup null check on memory
 allocation
Message-ID: <94b66136d4007e3219fba5714c01eb934c833588.1507989088.git.aishpant@gmail.com>
References: <cover.1507989087.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507989087.git.aishpant@gmail.com>
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

--
Changes in atomisp2/css2400/sh_css.c were done by hand, the above script
was not able to match the pattern if (a->b != null).

v2 changes:
None, just rebase and re-send
---
 .../media/atomisp/pci/atomisp2/css2400/sh_css.c    | 36 +++++++++++-----------
 .../atomisp/pci/atomisp2/css2400/sh_css_firmware.c |  6 ++--
 .../pci/atomisp2/css2400/sh_css_param_shading.c    |  2 +-
 3 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
index e882b5596813..56de641d8848 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
@@ -5607,13 +5607,13 @@ static enum ia_css_err load_video_binaries(struct ia_css_pipe *pipe)
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
@@ -6258,14 +6258,14 @@ static enum ia_css_err load_primary_binaries(
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
@@ -6982,27 +6982,27 @@ static enum ia_css_err ia_css_pipe_create_cas_scaler_desc_single_output(
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
@@ -7118,22 +7118,22 @@ static enum ia_css_err ia_css_pipe_create_cas_scaler_desc(struct ia_css_pipe *pi
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
@@ -7276,13 +7276,13 @@ load_yuvpp_binaries(struct ia_css_pipe *pipe)
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
@@ -7383,7 +7383,7 @@ load_yuvpp_binaries(struct ia_css_pipe *pipe)
 	}
 	mycs->vf_pp_binary = kzalloc(mycs->num_vf_pp * sizeof(struct ia_css_binary),
 						GFP_KERNEL);
-	if (mycs->vf_pp_binary == NULL) {
+	if (!mycs->vf_pp_binary) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		goto ERR;
 	}
@@ -9445,7 +9445,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 
 	/* allocate the stream instance */
 	curr_stream = kmalloc(sizeof(struct ia_css_stream), GFP_KERNEL);
-	if (curr_stream == NULL) {
+	if (!curr_stream) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		IA_CSS_LEAVE_ERR(err);
 		return err;
@@ -9457,7 +9457,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 	/* allocate pipes */
 	curr_stream->num_pipes = num_pipes;
 	curr_stream->pipes = kzalloc(num_pipes * sizeof(struct ia_css_pipe *), GFP_KERNEL);
-	if (curr_stream->pipes == NULL) {
+	if (!curr_stream->pipes) {
 		curr_stream->num_pipes = 0;
 		kfree(curr_stream);
 		curr_stream = NULL;
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
index 53a7891111f9..ec026b8d6756 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
@@ -147,7 +147,7 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi, struct ia
 
 		char *parambuf = kmalloc(paramstruct_size + configstruct_size + statestruct_size,
 					 GFP_KERNEL);
-		if (parambuf == NULL)
+		if (!parambuf)
 			return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 
 		bd->mem_offsets.array[IA_CSS_PARAM_CLASS_PARAM].ptr = NULL;
@@ -229,14 +229,14 @@ sh_css_load_firmware(const char *fw_data,
 		sh_css_blob_info = kmalloc(
 					(sh_css_num_binaries - NUM_OF_SPS) *
 					sizeof(*sh_css_blob_info), GFP_KERNEL);
-		if (sh_css_blob_info == NULL)
+		if (!sh_css_blob_info)
 			return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 	} else {
 		sh_css_blob_info = NULL;
 	}
 
 	fw_minibuffer = kzalloc(sh_css_num_binaries * sizeof(struct fw_param), GFP_KERNEL);
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


