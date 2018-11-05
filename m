X-GM-THRID: 6618908371010453504
X-Received: by 2002:adf:f989:: with SMTP id f9-v6mr2200012wrr.0.1541419680236;
        Mon, 05 Nov 2018 04:08:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9645:: with SMTP id y66-v6ls1251328wmd.17.gmail; Mon, 05
 Nov 2018 04:07:59 -0800 (PST)
X-Google-Smtp-Source: AJdET5euX3p+vbwQOvKmzZzUwP9HvsMpyLW2iLm706HrJXt1TLXc1WDzPVv+SNm02qXJFBPRiW3x
X-Received: by 2002:a1c:496:: with SMTP id 144-v6mr184071wme.18.1541419679048;
        Mon, 05 Nov 2018 04:07:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541419679; cv=none;
        d=google.com; s=arc-20160816;
        b=aa3QSkyoX8gqvJiR1za9LU8XFdbDCdyw3E9XclKSjmwBrLadN5m7yP/cR8C0RcfMHP
         tDW1BfcwkahY9zC8SEZcDuO/E3acioeeBTc9MN8oFKxSQDBq+fh7Exv3SpgLwXbZOZtG
         P9Sm0fDglWc/MnrVO4/acjK/tSKCDYIfR6E8mTE/l3xkfSVmxQRxXX6qrVGbMtifCOyQ
         hstFTmvfMco2e5YXeMF2QxS8ndpCgbyRRs8mgtREuro6QDXcjyaby++mF2HWSWjQh/E/
         RcQv5NabJKGOuIK7aR5jF275f3HTlBvgeEv8rHUvMeV8JOvNXWwOFhoC6wGdwyZA66ws
         B7tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=1+aBRX2NiW90GpKV+HoJPgHG99YCXKtRLGRDn8aloQQ=;
        b=sZCt+6R7/lc27aD5VXbsgiVSKpBp7xlpt4bT3dHlzuHLHH6H+LMKGkssycKoIhWe6Q
         yT+lo2GKMAFqBRAB0ic57QHVgdyiyHFC7nSxfe/QHBMWsrpuWc8e5yLs8KX8pvlxGTbx
         lFtn8mdMEmEr+ldpgJCsm7kRfcyb7NFIO7TVyIl7u9lZQ54wgX5LjvWlZWcgDSeujwtP
         8xsUZ/sy0yBeqEgYgI1jPcBuG7LY296dpMo0LrdZJVIF5SJ9iqSvAdJMiMnYVYAlYd22
         +de/q+40+miKLFw4jNTyg0bBgEzezLBshtUQmxVrbXx/j3ot0nXQ2KtumyZXIiwfdzYA
         YEbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.30 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb3-smtp-cloud9.xs4all.net (lb3-smtp-cloud9.xs4all.net. [194.109.24.30])
        by gmr-mx.google.com with ESMTPS id v6-v6si1347528wrn.0.2018.11.05.04.07.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 04:07:59 -0800 (PST)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.30 as permitted sender) client-ip=194.109.24.30;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.30 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [IPv6:2001:983:e9a7:1:d0f:9589:6703:bc30] ([IPv6:2001:983:e9a7:1:d0f:9589:6703:bc30])
	by smtp-cloud9.xs4all.net with ESMTPA
	id Jdfhg7FfPSskCJdfigRqAg; Mon, 05 Nov 2018 13:07:58 +0100
Subject: Re: [PATCH vicodec v3 2/3] media: vicodec: Add support of greyscale
 format
To: Dafna Hirschfeld <dafna3@gmail.com>, helen.koike@collabora.com,
 mchehab@kernel.org
Cc: outreachy-kernel@googlegroups.com
References: <cover.1541277502.git.dafna3@gmail.com>
 <bcd2abe3aecda96a840e4010d86d080382859288.1541277502.git.dafna3@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <5e7c61fd-098c-2e2a-61b8-b05c518619fd@xs4all.nl>
Date: Mon, 5 Nov 2018 13:07:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <bcd2abe3aecda96a840e4010d86d080382859288.1541277502.git.dafna3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfI6+ieQIRlq/7QxOO94LgLE9zEtepyTejYQloSWcOhej5zsMA1BXLlFz80DQWyjQUvLUR3p6/aAPS6jDoI5eSR4vEC8RSysOhM776yKSe5ytA43H5aYs
 mDaEVLKubgVJsNTE23dyWiCSRc8NScUTBdTDHko1CfS20zLZ1lSMQDB/mUoCZ4elFq8o3W4FO+cSLp2Ck7GStsKhzLUU6UnXPaPQ/lkYqLIHIU1YrZUAEmJ4
 wkSb/5GvwbyrhWMVVBmwHzkQ4obx7MPEKuecIQ8eA7O6CgY2Qkb5LOloxL9n9VFKLbFkqgu1Z+L3Y/JbKcY9vcKA8GfDAJdKH/IqcdxaPx25JpoaPBj15aQz
 MVJsYq25vE20aJHRcAEaZjmaFlEjJw==

Hi Dafna,

This looks much better, but there is still room for a few improvements:

On 11/03/2018 09:50 PM, Dafna Hirschfeld wrote:
> Add support for single plane greyscale format V4L2_PIX_FMT_GREY.
> Also change the header of the encoded file to include the number
> of components.
> 
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>  drivers/media/platform/vicodec/codec-fwht.c   | 56 +++++++++++--------
>  drivers/media/platform/vicodec/codec-fwht.h   |  8 ++-
>  .../media/platform/vicodec/codec-v4l2-fwht.c  | 44 ++++++++++++---
>  drivers/media/platform/vicodec/vicodec-core.c | 21 +++++--
>  4 files changed, 89 insertions(+), 40 deletions(-)
> 

<snip>

> diff --git a/drivers/media/platform/vicodec/codec-fwht.h b/drivers/media/platform/vicodec/codec-fwht.h
> index 743d78e112f8..b1a9cc670311 100644
> --- a/drivers/media/platform/vicodec/codec-fwht.h
> +++ b/drivers/media/platform/vicodec/codec-fwht.h
> @@ -56,7 +56,7 @@
>  #define FWHT_MAGIC1 0x4f4f4f4f
>  #define FWHT_MAGIC2 0xffffffff
>  
> -#define FWHT_VERSION 1
> +#define FWHT_VERSION 2
>  
>  /* Set if this is an interlaced format */
>  #define FWHT_FL_IS_INTERLACED		BIT(0)
> @@ -76,6 +76,10 @@
>  #define FWHT_FL_CHROMA_FULL_HEIGHT	BIT(7)
>  #define FWHT_FL_CHROMA_FULL_WIDTH	BIT(8)
>  
> +/* A 4-values flag - the number of components - 1 */
> +#define FWHT_FL_COMPONENTS_NUM_BIT0	BIT(16)
> +#define FWHT_FL_COMPONENTS_NUM_BIT1	BIT(17)

This should be a proper mask. Use the GENMASK define (include/linux/bits.h) to
create a FWHT_FL_COMPONENTS_NUM_MSK define, and add a FWHT_FL_COMPONENTS_NUM_OFFSET
define that has the start bit of the mask.

Then you can do:

	components_num = 1 + (flags & FWHT_FL_COMPONENTS_NUM_MSK) <<
			 FWHT_FL_COMPONENTS_NUM_OFFSET;

instead of having to mess around with two flags.

> +
>  struct fwht_cframe_hdr {
>  	u32 magic1;
>  	u32 magic2;
> @@ -121,6 +125,6 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,
>  		      struct fwht_cframe *cf,
>  		      bool is_intra, bool next_is_intra);
>  void fwht_decode_frame(struct fwht_cframe *cf, struct fwht_raw_frame *ref,
> -		       u32 hdr_flags);
> +		       u32 hdr_flags, unsigned int components_num);
>  
>  #endif
> diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.c b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
> index b842636e71a9..65ac55e3a10f 100644
> --- a/drivers/media/platform/vicodec/codec-v4l2-fwht.c
> +++ b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
> @@ -11,6 +11,7 @@
>  #include "codec-v4l2-fwht.h"
>  
>  static const struct v4l2_fwht_pixfmt_info v4l2_fwht_pixfmts[] = {
> +	{ V4L2_PIX_FMT_GREY,    1, 1, 1, 1, 0, 1, 1, 1},
>  	{ V4L2_PIX_FMT_YUV420,  1, 3, 2, 1, 1, 2, 2, 3},
>  	{ V4L2_PIX_FMT_YVU420,  1, 3, 2, 1, 1, 2, 2, 3},
>  	{ V4L2_PIX_FMT_YUV422P, 1, 2, 1, 1, 1, 2, 1, 3},
> @@ -75,6 +76,10 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
>  	rf.components_num = info->components_num;
>  
>  	switch (info->id) {
> +	case V4L2_PIX_FMT_GREY:
> +		rf.cb = NULL;
> +		rf.cr = NULL;
> +		break;
>  	case V4L2_PIX_FMT_YUV420:
>  		rf.cb = rf.luma + size;
>  		rf.cr = rf.cb + size / 4;
> @@ -165,6 +170,10 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
>  	p_hdr->version = htonl(FWHT_VERSION);
>  	p_hdr->width = htonl(cf.width);
>  	p_hdr->height = htonl(cf.height);
> +	if (info->components_num % 2 == 0)
> +		flags |= FWHT_FL_COMPONENTS_NUM_BIT0;
> +	if (info->components_num >= 3)
> +		flags |= FWHT_FL_COMPONENTS_NUM_BIT1;
>  	if (encoding & FWHT_LUMA_UNENCODED)
>  		flags |= FWHT_FL_LUMA_IS_UNCOMPRESSED;
>  	if (encoding & FWHT_CB_UNENCODED)
> @@ -195,6 +204,8 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
>  	struct fwht_cframe_hdr *p_hdr;
>  	struct fwht_cframe cf;
>  	u8 *p;
> +	unsigned int components_num = 3;
> +	unsigned int version;
>  
>  	if (!state->info)
>  		return -EINVAL;
> @@ -202,16 +213,16 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
>  	p_hdr = (struct fwht_cframe_hdr *)p_in;
>  	cf.width = ntohl(p_hdr->width);
>  	cf.height = ntohl(p_hdr->height);
> -	flags = ntohl(p_hdr->flags);
> -	state->colorspace = ntohl(p_hdr->colorspace);
> -	state->xfer_func = ntohl(p_hdr->xfer_func);
> -	state->ycbcr_enc = ntohl(p_hdr->ycbcr_enc);
> -	state->quantization = ntohl(p_hdr->quantization);
> -	cf.rlc_data = (__be16 *)(p_in + sizeof(*p_hdr));
> +
> +	version = ntohl(p_hdr->version);
> +	if (!version || version > FWHT_VERSION) {
> +		pr_err("version %d is not supported, current version is %d\n",
> +				version, FWHT_VERSION);
> +		return -EINVAL;
> +	}
>  
>  	if (p_hdr->magic1 != FWHT_MAGIC1 ||
>  	    p_hdr->magic2 != FWHT_MAGIC2 ||
> -	    ntohl(p_hdr->version) != FWHT_VERSION ||
>  	    (cf.width & 7) || (cf.height & 7))
>  		return -EINVAL;
>  
> @@ -219,14 +230,31 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
>  	if (cf.width != state->width || cf.height != state->height)
>  		return -EINVAL;
>  
> +	flags = ntohl(p_hdr->flags);
> +
> +	if (version == FWHT_VERSION) {
> +		components_num = 1;
> +		components_num += flags & FWHT_FL_COMPONENTS_NUM_BIT0 ? 1 : 0;
> +		components_num += flags & FWHT_FL_COMPONENTS_NUM_BIT1 ? 2 : 0;
> +	}
> +
> +	state->colorspace = ntohl(p_hdr->colorspace);
> +	state->xfer_func = ntohl(p_hdr->xfer_func);
> +	state->ycbcr_enc = ntohl(p_hdr->ycbcr_enc);
> +	state->quantization = ntohl(p_hdr->quantization);
> +	cf.rlc_data = (__be16 *)(p_in + sizeof(*p_hdr));
> +
>  	if (!(flags & FWHT_FL_CHROMA_FULL_WIDTH))
>  		chroma_size /= 2;
>  	if (!(flags & FWHT_FL_CHROMA_FULL_HEIGHT))
>  		chroma_size /= 2;
>  
> -	fwht_decode_frame(&cf, &state->ref_frame, flags);
> +	fwht_decode_frame(&cf, &state->ref_frame, flags, components_num);
>  
>  	switch (state->info->id) {
> +	case V4L2_PIX_FMT_GREY:
> +		memcpy(p_out, state->ref_frame.luma, size);
> +		break;
>  	case V4L2_PIX_FMT_YUV420:
>  	case V4L2_PIX_FMT_YUV422P:
>  		memcpy(p_out, state->ref_frame.luma, size);

What is missing here is what to do if the compressed stream contains only luma,
but the decoded format is something other than GREY. Or for that matter, if the
compressed stream is for RGB, but you want GREY output. The luma plane contains
one of the R/G/B planes, so it's not really grey.

I think this needs to be checked against what the proposed stateful codec spec says
(if anything) about this situation. If I remember correctly, then you have to start
feeding the decoder with compressed data first until it knows what the format is of
the compressed data, and only then can you enumerate the possible raw formats that you
can use.

This is currently not implemented in vicodec and since implementing it is part of the
internship it's a bit silly to start working on that now.

But it is good to start thinking about it.

In the meantime, add a TODO comment.

> diff --git a/drivers/media/platform/vicodec/vicodec-core.c b/drivers/media/platform/vicodec/vicodec-core.c
> index fb6d5e9a06ab..ed6a46958546 100644
> --- a/drivers/media/platform/vicodec/vicodec-core.c
> +++ b/drivers/media/platform/vicodec/vicodec-core.c
> @@ -993,6 +993,12 @@ static int vicodec_start_streaming(struct vb2_queue *q,
>  	unsigned int size = q_data->width * q_data->height;
>  	const struct v4l2_fwht_pixfmt_info *info = q_data->info;
>  	unsigned int chroma_div = info->width_div * info->height_div;
> +	unsigned int total_planes_size;
> +
> +	if (info->components_num >= 3)

This should be:

	if (info->id == V4L2_PIX_FMT_FWHT || info->components_num >= 3)

(just as you do in the next patch). Also copy and adjust the comment from
patch 3/3.

Without this the total_planes_size will to too small for the FWHT format.

> +		total_planes_size = size + 2 * (size / chroma_div);
> +	else
> +		total_planes_size = size;
>  
>  	q_data->sequence = 0;
>  
> @@ -1002,10 +1008,8 @@ static int vicodec_start_streaming(struct vb2_queue *q,
>  	state->width = q_data->width;
>  	state->height = q_data->height;
>  	state->ref_frame.width = state->ref_frame.height = 0;
> -	state->ref_frame.luma = kvmalloc(size + 2 * size / chroma_div,
> -					 GFP_KERNEL);
> -	ctx->comp_max_size = size + 2 * size / chroma_div +
> -			     sizeof(struct fwht_cframe_hdr);
> +	state->ref_frame.luma = kvmalloc(total_planes_size, GFP_KERNEL);
> +	ctx->comp_max_size = total_planes_size + sizeof(struct fwht_cframe_hdr);
>  	state->compressed_frame = kvmalloc(ctx->comp_max_size, GFP_KERNEL);
>  	if (!state->ref_frame.luma || !state->compressed_frame) {
>  		kvfree(state->ref_frame.luma);
> @@ -1013,8 +1017,13 @@ static int vicodec_start_streaming(struct vb2_queue *q,
>  		vicodec_return_bufs(q, VB2_BUF_STATE_QUEUED);
>  		return -ENOMEM;
>  	}
> -	state->ref_frame.cb = state->ref_frame.luma + size;
> -	state->ref_frame.cr = state->ref_frame.cb + size / chroma_div;
> +	if (info->id == V4L2_PIX_FMT_FWHT || info->components_num >= 3) {
> +		state->ref_frame.cb = state->ref_frame.luma + size;
> +		state->ref_frame.cr = state->ref_frame.cb + size / chroma_div;
> +	} else {
> +		state->ref_frame.cb = NULL;
> +		state->ref_frame.cr = NULL;
> +	}
>  	ctx->last_src_buf = NULL;
>  	ctx->last_dst_buf = NULL;
>  	state->gop_cnt = 0;
> 

Regards,

	Hans

