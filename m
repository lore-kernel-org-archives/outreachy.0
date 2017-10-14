X-GM-THRID: 6476782191370043392
X-Received: by 10.223.154.112 with SMTP id z103mr417200wrb.0.1507994200448;
        Sat, 14 Oct 2017 08:16:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.218.73 with SMTP id r70ls689254wmg.2.gmail; Sat, 14 Oct
 2017 08:16:39 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RmKIypvVUqKAjhpZo48PZfEpjwjCx6WyNHI4jj9zXmLrIbU3ym6oshaasxRSmIuLst2SKo
X-Received: by 10.28.150.130 with SMTP id y124mr476635wmd.22.1507994199604;
        Sat, 14 Oct 2017 08:16:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507994199; cv=none;
        d=google.com; s=arc-20160816;
        b=0aumc5as7J58WW6ucuratuqEB7+a/hkTp9pO2qHT4GPtut4ZjY3lY0opoCQnMKB2jg
         HTdkeWgBdtpM8VqEb5HfZ+7MCHF6iMftBu7sxXYk09TkcSXGV2yCv2bC7kMygbENI/Ex
         xo2uK0rhnWDTSJ5w6d83IkaocyYICmQ8CpsBzSTzle7+02KbaaqJOjZZMYnpBAJPG3d7
         lMP4MCm2Uv5qQa6mwMScSUucTUp++bDOp1KvI54g/lOv3rWvG649DRRCW2OdOUyTcVFw
         1q9gJD9gtG81VaihpflcPXfDQfkEWV79KpiKeh4A89kXEtZ5VPN3HgGelVeTN/1HvUMg
         JW1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=KGnHTK/y8mmCgJ4CZ6MlwHSmQLtckJE95RowK5QmxOU=;
        b=WfvFOLapDWC6cRkxoqJHLs5TBrvGaDfmLrKSahcFIk3tiMQ2pQhj/mGpBthr6EkcH/
         6fm6oDZlTUxhC6jh/TS5Ur7lVz8ZvsDnVtVQaWiyRMFv3w90Z4AACcWFXlqMOmT6nDMK
         qluex+/QRwOyWBYCQS5cdW98PUw+zpaL9Ux85BcUJ01N1jvR6iYdURPU4CYYCrApeMy8
         zYlmQNC9Vhh/6pHHK1p0MWNi7FtmvwgDzp2/Q2uoEfvf6Mla1z5jpvZ65ITKyErcKEUZ
         30Cz9d40i7e6omrNFoW7PDcamUmdAONnYrRlu7MaerHZpn3lmNGHOv0ASvEv1G0fNL0X
         rpOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r15si214414wrc.1.2017.10.14.08.16.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 08:16:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,377,1503352800"; 
   d="scan'208";a="296204790"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Oct 2017 17:16:39 +0200
Date: Sat, 14 Oct 2017 17:16:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-media@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: atomisp2: cleanup
 null check on memory allocation
In-Reply-To: <94b66136d4007e3219fba5714c01eb934c833588.1507989088.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1710141715520.2034@hadrien>
References: <cover.1507989087.git.aishpant@gmail.com> <94b66136d4007e3219fba5714c01eb934c833588.1507989088.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 14 Oct 2017, Aishwarya Pant wrote:

> For memory allocation functions that fail with a NULL return value, it
> is preferred to use the (!x) test in place of (x == NULL).
>
> Changes in atomisp2/css2400/sh_css.c were done by hand.
>
> Done with the help of the following cocci script:
>
> @@
> type T;
> T* p;
> statement s,s1;
> @@
>
> p =
>   \(devm_kzalloc\|devm_ioremap\|usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\|
>    kmalloc\|kmalloc_array\|kzalloc\|kcalloc\|kmem_cache_alloc\|kmem_cache_zalloc\|
>    kmem_cache_alloc_node\|kmalloc_node\|kzalloc_node\|devm_kzalloc\)(...)
> ...when != p
>
> if (
> - p == NULL
> + !p
>  ) s
>  else s1
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

>
> --
> Changes in atomisp2/css2400/sh_css.c were done by hand, the above script
> was not able to match the pattern if (a->b != null).
>
> v2 changes:
> None, just rebase and re-send
> ---
>  .../media/atomisp/pci/atomisp2/css2400/sh_css.c    | 36 +++++++++++-----------
>  .../atomisp/pci/atomisp2/css2400/sh_css_firmware.c |  6 ++--
>  .../pci/atomisp2/css2400/sh_css_param_shading.c    |  2 +-
>  3 files changed, 22 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
> index e882b5596813..56de641d8848 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
> @@ -5607,13 +5607,13 @@ static enum ia_css_err load_video_binaries(struct ia_css_pipe *pipe)
>  		mycs->num_yuv_scaler = cas_scaler_descr.num_stage;
>  		mycs->yuv_scaler_binary = kzalloc(cas_scaler_descr.num_stage *
>  			sizeof(struct ia_css_binary), GFP_KERNEL);
> -		if (mycs->yuv_scaler_binary == NULL) {
> +		if (!mycs->yuv_scaler_binary) {
>  			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  			return err;
>  		}
>  		mycs->is_output_stage = kzalloc(cas_scaler_descr.num_stage
>  					* sizeof(bool), GFP_KERNEL);
> -		if (mycs->is_output_stage == NULL) {
> +		if (!mycs->is_output_stage) {
>  			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  			return err;
>  		}
> @@ -6258,14 +6258,14 @@ static enum ia_css_err load_primary_binaries(
>  		mycs->num_yuv_scaler = cas_scaler_descr.num_stage;
>  		mycs->yuv_scaler_binary = kzalloc(cas_scaler_descr.num_stage *
>  			sizeof(struct ia_css_binary), GFP_KERNEL);
> -		if (mycs->yuv_scaler_binary == NULL) {
> +		if (!mycs->yuv_scaler_binary) {
>  			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  			IA_CSS_LEAVE_ERR_PRIVATE(err);
>  			return err;
>  		}
>  		mycs->is_output_stage = kzalloc(cas_scaler_descr.num_stage *
>  			sizeof(bool), GFP_KERNEL);
> -		if (mycs->is_output_stage == NULL) {
> +		if (!mycs->is_output_stage) {
>  			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  			IA_CSS_LEAVE_ERR_PRIVATE(err);
>  			return err;
> @@ -6982,27 +6982,27 @@ static enum ia_css_err ia_css_pipe_create_cas_scaler_desc_single_output(
>  	}
>
>  	descr->in_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
> -	if (descr->in_info == NULL) {
> +	if (!descr->in_info) {
>  		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  		goto ERR;
>  	}
>  	descr->internal_out_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
> -	if (descr->internal_out_info == NULL) {
> +	if (!descr->internal_out_info) {
>  		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  		goto ERR;
>  	}
>  	descr->out_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
> -	if (descr->out_info == NULL) {
> +	if (!descr->out_info) {
>  		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  		goto ERR;
>  	}
>  	descr->vf_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
> -	if (descr->vf_info == NULL) {
> +	if (!descr->vf_info) {
>  		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  		goto ERR;
>  	}
>  	descr->is_output_stage = kmalloc(descr->num_stage * sizeof(bool), GFP_KERNEL);
> -	if (descr->is_output_stage == NULL) {
> +	if (!descr->is_output_stage) {
>  		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  		goto ERR;
>  	}
> @@ -7118,22 +7118,22 @@ static enum ia_css_err ia_css_pipe_create_cas_scaler_desc(struct ia_css_pipe *pi
>  	descr->num_stage = num_stages;
>
>  	descr->in_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
> -	if (descr->in_info == NULL) {
> +	if (!descr->in_info) {
>  		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  		goto ERR;
>  	}
>  	descr->internal_out_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
> -	if (descr->internal_out_info == NULL) {
> +	if (!descr->internal_out_info) {
>  		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  		goto ERR;
>  	}
>  	descr->out_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
> -	if (descr->out_info == NULL) {
> +	if (!descr->out_info) {
>  		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  		goto ERR;
>  	}
>  	descr->vf_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info), GFP_KERNEL);
> -	if (descr->vf_info == NULL) {
> +	if (!descr->vf_info) {
>  		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  		goto ERR;
>  	}
> @@ -7276,13 +7276,13 @@ load_yuvpp_binaries(struct ia_css_pipe *pipe)
>  		mycs->num_yuv_scaler = cas_scaler_descr.num_stage;
>  		mycs->yuv_scaler_binary = kzalloc(cas_scaler_descr.num_stage *
>  			sizeof(struct ia_css_binary), GFP_KERNEL);
> -		if (mycs->yuv_scaler_binary == NULL) {
> +		if (!mycs->yuv_scaler_binary) {
>  			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  			goto ERR;
>  		}
>  		mycs->is_output_stage = kzalloc(cas_scaler_descr.num_stage *
>  			sizeof(bool), GFP_KERNEL);
> -		if (mycs->is_output_stage == NULL) {
> +		if (!mycs->is_output_stage) {
>  			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  			goto ERR;
>  		}
> @@ -7383,7 +7383,7 @@ load_yuvpp_binaries(struct ia_css_pipe *pipe)
>  	}
>  	mycs->vf_pp_binary = kzalloc(mycs->num_vf_pp * sizeof(struct ia_css_binary),
>  						GFP_KERNEL);
> -	if (mycs->vf_pp_binary == NULL) {
> +	if (!mycs->vf_pp_binary) {
>  		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  		goto ERR;
>  	}
> @@ -9445,7 +9445,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
>
>  	/* allocate the stream instance */
>  	curr_stream = kmalloc(sizeof(struct ia_css_stream), GFP_KERNEL);
> -	if (curr_stream == NULL) {
> +	if (!curr_stream) {
>  		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  		IA_CSS_LEAVE_ERR(err);
>  		return err;
> @@ -9457,7 +9457,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
>  	/* allocate pipes */
>  	curr_stream->num_pipes = num_pipes;
>  	curr_stream->pipes = kzalloc(num_pipes * sizeof(struct ia_css_pipe *), GFP_KERNEL);
> -	if (curr_stream->pipes == NULL) {
> +	if (!curr_stream->pipes) {
>  		curr_stream->num_pipes = 0;
>  		kfree(curr_stream);
>  		curr_stream = NULL;
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
> index 53a7891111f9..ec026b8d6756 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
> @@ -147,7 +147,7 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi, struct ia
>
>  		char *parambuf = kmalloc(paramstruct_size + configstruct_size + statestruct_size,
>  					 GFP_KERNEL);
> -		if (parambuf == NULL)
> +		if (!parambuf)
>  			return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>
>  		bd->mem_offsets.array[IA_CSS_PARAM_CLASS_PARAM].ptr = NULL;
> @@ -229,14 +229,14 @@ sh_css_load_firmware(const char *fw_data,
>  		sh_css_blob_info = kmalloc(
>  					(sh_css_num_binaries - NUM_OF_SPS) *
>  					sizeof(*sh_css_blob_info), GFP_KERNEL);
> -		if (sh_css_blob_info == NULL)
> +		if (!sh_css_blob_info)
>  			return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>  	} else {
>  		sh_css_blob_info = NULL;
>  	}
>
>  	fw_minibuffer = kzalloc(sh_css_num_binaries * sizeof(struct fw_param), GFP_KERNEL);
> -	if (fw_minibuffer == NULL)
> +	if (!fw_minibuffer)
>  		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
>
>  	for (i = 0; i < sh_css_num_binaries; i++) {
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_param_shading.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_param_shading.c
> index eaf60e7b2dac..48e2e63c2336 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_param_shading.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_param_shading.c
> @@ -365,7 +365,7 @@ ia_css_shading_table_alloc(
>  	IA_CSS_ENTER("");
>
>  	me = kmalloc(sizeof(*me), GFP_KERNEL);
> -	if (me == NULL) {
> +	if (!me) {
>  		IA_CSS_ERROR("out of memory");
>  		return me;
>  	}
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/94b66136d4007e3219fba5714c01eb934c833588.1507989088.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

