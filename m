X-GM-THRID: 6474468235249975296
X-Received: by 10.101.73.198 with SMTP id t6mr574312pgs.181.1507454621757;
        Sun, 08 Oct 2017 02:23:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.54.65 with SMTP id d62ls590184pga.33.gmail; Sun, 08 Oct
 2017 02:23:41 -0700 (PDT)
X-Received: by 10.98.223.203 with SMTP id d72mr362289pfl.21.1507454621010;
        Sun, 08 Oct 2017 02:23:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507454620; cv=none;
        d=google.com; s=arc-20160816;
        b=I+xvQ3USqL6N2J6D4XViD+04FGctZBuLMOl8pfTwRuPOp7a3qdZ2s52Ztd9F75QrwY
         wxaY1aYXUat7bqBGDlGK/FIK6xzeepfJQFsDoFO3rKKGOTXVKkBAtRCWF+evFclzvgb0
         GNQU2E54N5RF/+Uf4+l0UAqVWFqKX2zWb4YeA7ROZ6RTuSmBqBBB3+a13mpIs35wr39N
         1VyScJEeZtT21EYYeFL2MxkcCiDTiV9XweMG/fXupo5gSS+KNMmZKGEtx0y83qzJ9SQr
         tJ5q0L0SB6qJwQWUbOsFrUZDTW4+kCl7rwL4OIi1Nvv1n2olJYHVPthb3Dzup8mmowks
         ByWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=AQ6JdEZrnnGlveBhObcDXPhr/+KPKTxMNs+/Ch293cY=;
        b=d7NMiIfrgxS0WTr3Zf0HaoQN2QAK5I2Ud0T91avnbNJBqA7MKEpa651tn4BSiz1IDk
         J3Va03KGEJGEkgZQX8/o8YE9mCmYyYAdACt/5jM9lHNwZz2D5fj2H/vIPZobUfV4z6ga
         lFRCD/23LuighGeNiJ8bShp3oJyGD3bos8p+Vd6P+4AwNisJiGvWVAZuEdgD1HJ1AetQ
         Q/O5x0yyzWlO3u+Ae3eBQr1uftxH/LfsCUB4C7b2I+zMxGQ0HLVOCfsMdDwHox27PJIR
         K/A4qzPLsWiWscLV4x0vH2E1VfLyOBMDm9GOF3Nxvg8FEr8kD9CO4cV/Pl+sN7oQb66G
         5LzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a+e0Sfla;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id f13si651797pfj.11.2017.10.08.02.23.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 02:23:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a+e0Sfla;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id z80so2666127pff.4
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Oct 2017 02:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AQ6JdEZrnnGlveBhObcDXPhr/+KPKTxMNs+/Ch293cY=;
        b=a+e0SflaLWLKvv6wJ12wOf77Akmh4R9nfQtAc8mvADrOzZyJeoSKBVBSL1d3IXxuC5
         BuZ0mUoEaW/U5Nx942nEHcqii2yzXr2PQngrqmq4DGNX5IYmmNsGNfcTBFWveocknXzT
         s2MBRTY44OLmq8myhWP5qkvYIYNAoCLTR8P0Fuq9WLgiFaa9yuq5mahc09npJxcV2u/o
         tZ71f/CAqF5IA71GInoqRO0eBQvHLDHfCoL6GxlQf4WbGCKFAooCUD/lV1BmzIgSw3+e
         1CQ5xOiilodhZT5xxdRlZAfgBPRlMb+c2OpaekA6XPDJq6V66RMxgXpT84Qic2K3/XRM
         VASw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AQ6JdEZrnnGlveBhObcDXPhr/+KPKTxMNs+/Ch293cY=;
        b=RBNIJ0lPj9yqlRMVF8hvDj20jRcXRSEWeA7iFihQNXv+Ih829oks3Jp3MRGKf4CXMZ
         rJrVSc6s+VUnSx1v7h8/f0c9rkUINOTlaSLjFcCzx0C3oosW6AC9TNY05j88hsm3/rSv
         NkBAqvLOT27LT3L+SspsamJGARrguKgKz6EFAKazLZrwz+Ch/0rJCHcSr63llw4Wwt7p
         tvBIIM2hozqfC8ThskmbWP4MjOcqgofUYYhcWL/M86P/LvhXQub2Z7Bf0TmdSbXUrC9q
         ZgkhCGNWHt7TnLr4mPgJa/wOLbDZUCMKzcMWXiXeS9mPzO/7EnjxuhE2sJzYbtd2v91F
         2/rw==
X-Gm-Message-State: AMCzsaUBv0FHAwhsj9DVWT82OKYaaaj6tYdF2y0Fn2np1hwicd+8JB3Q
	nnU/IgngSaLPabVfsBTE+y8=
X-Google-Smtp-Source: AOwi7QBXcqYxAj3DhzNwUGW+CM2Uyon0qNfRttPz8QUbCEM1lx1+3M7d6UeQozX1B7MHZTrqBFsQEQ==
X-Received: by 10.159.229.194 with SMTP id t2mr6403332plq.296.1507454620697;
        Sun, 08 Oct 2017 02:23:40 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([122.167.151.35])
        by smtp.gmail.com with ESMTPSA id a25sm10865848pfc.143.2017.10.08.02.23.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 08 Oct 2017 02:23:40 -0700 (PDT)
Date: Sun, 8 Oct 2017 14:53:34 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: atomisp2: cleanup null check on memory
 allocation
Message-ID: <35e972912620b2ac4bdbde17bb0e0e8cb40f4f70.1507454423.git.aishpant@gmail.com>
References: <cover.1507454423.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507454423.git.aishpant@gmail.com>
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


