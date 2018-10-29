X-GM-THRID: 6615995606614671360
X-Received: by 2002:a50:b67b:: with SMTP id c56-v6mr2200855ede.4.1540805022605;
        Mon, 29 Oct 2018 02:23:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:c7c5:: with SMTP id dc5-v6ls1238942ejb.7.gmail; Mon,
 29 Oct 2018 02:23:41 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eHi7eTdI67KeJ1Nb8BvNdNIDVShwYEnIIOr5mubRd0sfYl/LQNvppIwryqv2DaNFFBuTKx
X-Received: by 2002:a17:906:645:: with SMTP id t5-v6mr1576800ejb.3.1540805021403;
        Mon, 29 Oct 2018 02:23:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540805021; cv=none;
        d=google.com; s=arc-20160816;
        b=U3auy6WQoqkCcOogzbbgNiiWF5jrBAvhjv/5iXATccif9E3gOJbSfrBlOzogAHpgu7
         pIAaGoPpP55/EJxDn5JmfOFiJoPjUMqcuMgQq90/0p+TAvZbIzm+B5rSyC92+u7HH+Td
         FBug27XGDU9J+LQdEEUich1IsHqunGlzgActbxXVDSJq1qEkCoODIceXZPjHMMpuUFtv
         WQvzqlqb9j1L2DdqcjWbRHgcLYjTOWr16KN7mo8jA5owtc3puExF14JLu+hnRzPsRlS+
         mMb597p+ryQ3vXMs8EOccTaSCDWa6KptYqYj7jPwmIevZYZzRHVNRGhYHiXMaS6G+f+G
         5Qtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=rM4YbOmjCfHgnOryqZ64rImWO+xwozfk92gj9TW3jXs=;
        b=jvP042j3Z3qLlDt5/rWAnca5W0vE+5Z5HxU9ysy6hvjuQuS3e1nm8glghZL/Ya+lkG
         hUw49vd9CM8/mMwTbiLn/o5VaL3OqtCBaW6FNGOhTQS+X9h1mDI/9vWCKpEKqCCLXWv/
         kWqpEycRnHeeBuggEbr4BxAEEs2KvyMHF4okE3TW54ceinekxEomTSjhtVLewNiQyx9B
         MK9DP89NnIjXqTtNVuZ2km7pzFVJmLmQtF2w5+hdII2Zf76CTCSpYg3iHk4KKiMhYwaJ
         5mYqoi+uxVSOsZ7YmtOtiJlczO+R+yjhMeDsJ3VuVyZQy5VmbMiAZhsHPBFyirl/E8h3
         evwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb1-smtp-cloud8.xs4all.net (lb1-smtp-cloud8.xs4all.net. [194.109.24.21])
        by gmr-mx.google.com with ESMTPS id b37-v6si795989edd.5.2018.10.29.02.23.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 02:23:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) client-ip=194.109.24.21;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [IPv6:2001:983:e9a7:1:5139:d121:18fb:2507] ([IPv6:2001:983:e9a7:1:5139:d121:18fb:2507])
	by smtp-cloud8.xs4all.net with ESMTPA
	id H3lsgG9mt0ZZEH3ltgqmY9; Mon, 29 Oct 2018 10:23:41 +0100
Subject: Re: [PATCH 2/3] media: vicodec: Add support of greyscale format
To: Dafna Hirschfeld <dafna3@gmail.com>, mchehab@kernel.org,
 helen.koike@collabora.com
Cc: outreachy-kernel@googlegroups.com
References: <cover.1540404892.git.dafna3@gmail.com>
 <e88b75a1e6259c3dc0d0b36bcb9b0d50598f419d.1540404892.git.dafna3@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <374cdd3c-e15e-3e5f-6878-144d7e230d01@xs4all.nl>
Date: Mon, 29 Oct 2018 10:23:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <e88b75a1e6259c3dc0d0b36bcb9b0d50598f419d.1540404892.git.dafna3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfFIj6yMcSvXPurCRUk9GF3p921qwE514NpEfqAljqe+SiNnkn/hR1hD6r9vZJbv6DxkfbMVZFkFmU7Jh+achlA4qzIVoDp5coQyMuCUNXP9qrV5jHqVt
 HtafvqJhMCCfAB7MgEY0EJizXAClsC+fKfnNeMNzCcS6LfUltEHfPbKbH6sWytmVToGCvmFJ7bNddHjG2n8avG32SmgOgSXv+dygakRn0fjCbLd9NUj+Nvex
 YezmLK2p5qgPHGxn6cW0USw1oCt0OZ6Y2Hw5PaXJxwURe9kRriq5ZXD9zz10c/2es0NTgBv1FINak78LoQfWZfsiY642sgj6n7/dL0+NdHrRAUKHYxphFc13
 +hKOEvipOXLkAo8R2vtWaYqrk3FUDA==

Hi Dafna,

Looks good overall, but I do have some - mostly minor - comments:

On 10/24/2018 08:41 PM, Dafna Hirschfeld wrote:
> Add support for single plane greyscale format V4L2_PIX_FMT_GREY.
> Also change the header of the encoded file to include the number
> of components.
> 
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>  drivers/media/platform/vicodec/codec-fwht.c   | 56 +++++++++++--------
>  drivers/media/platform/vicodec/codec-fwht.h   |  5 +-
>  .../media/platform/vicodec/codec-v4l2-fwht.c  | 12 +++-
>  drivers/media/platform/vicodec/vicodec-core.c | 21 +++++--
>  4 files changed, 61 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/media/platform/vicodec/codec-fwht.c b/drivers/media/platform/vicodec/codec-fwht.c
> index 36656031b295..91bfd1d9182b 100644
> --- a/drivers/media/platform/vicodec/codec-fwht.c
> +++ b/drivers/media/platform/vicodec/codec-fwht.c
> @@ -753,9 +753,6 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,
>  	__be16 *rlco = cf->rlc_data;
>  	__be16 *rlco_max;
>  	u32 encoding;
> -	u32 chroma_h = frm->height / frm->height_div;
> -	u32 chroma_w = frm->width / frm->width_div;
> -	unsigned int chroma_size = chroma_h * chroma_w;
>  
>  	rlco_max = rlco + size / 2 - 256;
>  	encoding = encode_plane(frm->luma, ref_frm->luma, &rlco, rlco_max, cf,
> @@ -764,20 +761,27 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,
>  	if (encoding & FWHT_FRAME_UNENCODED)
>  		encoding |= FWHT_LUMA_UNENCODED;
>  	encoding &= ~FWHT_FRAME_UNENCODED;
> -	rlco_max = rlco + chroma_size / 2 - 256;
> -	encoding |= encode_plane(frm->cb, ref_frm->cb, &rlco, rlco_max, cf,
> +
> +	if (frm->components_num > 1) {

Just to be on the safe side, change this to:

	frm->components_num >= 3

since the code inside the if statements assumes that there are at least
three components and it would fail if components_num == 2.

> +		u32 chroma_h = frm->height / frm->height_div;
> +		u32 chroma_w = frm->width / frm->width_div;
> +		unsigned int chroma_size = chroma_h * chroma_w;
> +
> +		rlco_max = rlco + chroma_size / 2 - 256;
> +		encoding |= encode_plane(frm->cb, ref_frm->cb, &rlco, rlco_max, cf,
>  				 chroma_h, chroma_w,
>  				 frm->chroma_step, is_intra, next_is_intra);
> -	if (encoding & FWHT_FRAME_UNENCODED)
> -		encoding |= FWHT_CB_UNENCODED;
> -	encoding &= ~FWHT_FRAME_UNENCODED;
> -	rlco_max = rlco + chroma_size / 2 - 256;
> -	encoding |= encode_plane(frm->cr, ref_frm->cr, &rlco, rlco_max, cf,
> +		if (encoding & FWHT_FRAME_UNENCODED)
> +			encoding |= FWHT_CB_UNENCODED;
> +		encoding &= ~FWHT_FRAME_UNENCODED;
> +		rlco_max = rlco + chroma_size / 2 - 256;
> +		encoding |= encode_plane(frm->cr, ref_frm->cr, &rlco, rlco_max, cf,
>  				 chroma_h, chroma_w,
>  				 frm->chroma_step, is_intra, next_is_intra);
> -	if (encoding & FWHT_FRAME_UNENCODED)
> -		encoding |= FWHT_CR_UNENCODED;
> -	encoding &= ~FWHT_FRAME_UNENCODED;
> +		if (encoding & FWHT_FRAME_UNENCODED)
> +			encoding |= FWHT_CR_UNENCODED;
> +		encoding &= ~FWHT_FRAME_UNENCODED;
> +	}
>  	cf->size = (rlco - cf->rlc_data) * sizeof(*rlco);
>  	return encoding;
>  }
> @@ -836,20 +840,24 @@ static void decode_plane(struct fwht_cframe *cf, const __be16 **rlco, u8 *ref,
>  }
>  
>  void fwht_decode_frame(struct fwht_cframe *cf, struct fwht_raw_frame *ref,
> -		       u32 hdr_flags)
> +		       u32 hdr_flags, unsigned int components_num)
>  {
>  	const __be16 *rlco = cf->rlc_data;
> -	u32 h = cf->height / 2;
> -	u32 w = cf->width / 2;
>  
> -	if (hdr_flags & FWHT_FL_CHROMA_FULL_HEIGHT)
> -		h *= 2;
> -	if (hdr_flags & FWHT_FL_CHROMA_FULL_WIDTH)
> -		w *= 2;
>  	decode_plane(cf, &rlco, ref->luma, cf->height, cf->width,
>  		     hdr_flags & FWHT_FL_LUMA_IS_UNCOMPRESSED);
> -	decode_plane(cf, &rlco, ref->cb, h, w,
> -		     hdr_flags & FWHT_FL_CB_IS_UNCOMPRESSED);
> -	decode_plane(cf, &rlco, ref->cr, h, w,
> -		     hdr_flags & FWHT_FL_CR_IS_UNCOMPRESSED);
> +
> +	if (components_num > 1) {

Ditto: >= 3

> +		u32 h = cf->height;
> +		u32 w = cf->width;
> +
> +		if (!(hdr_flags & FWHT_FL_CHROMA_FULL_HEIGHT))
> +			h /= 2;
> +		if (!(hdr_flags & FWHT_FL_CHROMA_FULL_WIDTH))
> +			w /= 2;
> +		decode_plane(cf, &rlco, ref->cb, h, w,
> +			hdr_flags & FWHT_FL_CB_IS_UNCOMPRESSED);
> +		decode_plane(cf, &rlco, ref->cr, h, w,
> +			hdr_flags & FWHT_FL_CR_IS_UNCOMPRESSED);
> +	}
>  }
> diff --git a/drivers/media/platform/vicodec/codec-fwht.h b/drivers/media/platform/vicodec/codec-fwht.h
> index 5750e21f16ac..5e6813aeaa96 100644
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
> @@ -81,6 +81,7 @@ struct fwht_cframe_hdr {
>  	u32 magic2;
>  	__be32 version;
>  	__be32 width, height;
> +	u8 components_num;

Rather than adding a new field, I prefer that it is encoded in the flags field.
Take two bits (say bits 16 and 17) where you store the number of components - 1.

This simplifies decoders since they don't have to deal with different structure
sizes.

>  	__be32 flags;
>  	__be32 colorspace;
>  	__be32 xfer_func;
> @@ -122,6 +123,6 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,
>  		      struct fwht_cframe *cf,
>  		      bool is_intra, bool next_is_intra);
>  void fwht_decode_frame(struct fwht_cframe *cf, struct fwht_raw_frame *ref,
> -		       u32 hdr_flags);
> +		       u32 hdr_flags, unsigned int components_num);
>  
>  #endif
> diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.c b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
> index 64ad01e99bad..cc9275f3c6cb 100644
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
> @@ -76,6 +77,9 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
>  	rf.components_num = info->components_num;
>  
>  	switch (info->id) {
> +	case V4L2_PIX_FMT_GREY:
> +		rf.cb = rf.cr = NULL;
> +		break;
>  	case V4L2_PIX_FMT_YUV420:
>  		rf.cb = rf.luma + size;
>  		rf.cr = rf.cb + size / 4;
> @@ -166,6 +170,7 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
>  	p_hdr->version = htonl(FWHT_VERSION);
>  	p_hdr->width = htonl(cf.width);
>  	p_hdr->height = htonl(cf.height);
> +	p_hdr->components_num = info->components_num;
>  	if (encoding & FWHT_LUMA_UNENCODED)
>  		flags |= FWHT_FL_LUMA_IS_UNCOMPRESSED;
>  	if (encoding & FWHT_CB_UNENCODED)
> @@ -196,6 +201,7 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
>  	struct fwht_cframe_hdr *p_hdr;
>  	struct fwht_cframe cf;
>  	u8 *p;
> +	unsigned int components_num;

This should default to 3.

>  
>  	if (!state->info)
>  		return -EINVAL;
> @@ -204,6 +210,7 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
>  	cf.width = ntohl(p_hdr->width);
>  	cf.height = ntohl(p_hdr->height);
>  	flags = ntohl(p_hdr->flags);
> +	components_num = p_hdr->components_num;

Only read this if the version is 2. If the version is 1, then it defaults to 3.
And of course it should read the flags for the number of components as mentioned
above.

>  	state->colorspace = ntohl(p_hdr->colorspace);
>  	state->xfer_func = ntohl(p_hdr->xfer_func);
>  	state->ycbcr_enc = ntohl(p_hdr->ycbcr_enc);
> @@ -225,9 +232,12 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
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
> diff --git a/drivers/media/platform/vicodec/vicodec-core.c b/drivers/media/platform/vicodec/vicodec-core.c
> index fb6d5e9a06ab..945b54efd4bd 100644
> --- a/drivers/media/platform/vicodec/vicodec-core.c
> +++ b/drivers/media/platform/vicodec/vicodec-core.c
> @@ -993,6 +993,12 @@ static int vicodec_start_streaming(struct vb2_queue *q,
>  	unsigned int size = q_data->width * q_data->height;
>  	const struct v4l2_fwht_pixfmt_info *info = q_data->info;
>  	unsigned int chroma_div = info->width_div * info->height_div;
> +	unsigned int total_planes_size;
> +
> +	if (info->components_num == 1)

Use < 3

> +		total_planes_size = size;
> +	else
> +		total_planes_size = size + 2 * (size / chroma_div);
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
> +	if (info->id == V4L2_PIX_FMT_FWHT || info->components_num > 1) {

>= 3

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

