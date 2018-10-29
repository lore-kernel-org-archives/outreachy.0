X-GM-THRID: 6615995606614671360
X-Received: by 2002:a17:906:1502:: with SMTP id b2-v6mr1137754ejd.16.1540806548142;
        Mon, 29 Oct 2018 02:49:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:35d1:: with SMTP id p17-v6ls1229414ejb.16.gmail;
 Mon, 29 Oct 2018 02:49:07 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dZD+yuNCC4pAd5/gwyM+ivp7rqlPE+gfw1l1F0L5DnR5WyX0icJGahBc2C9D9083UPcMjb
X-Received: by 2002:a17:906:2cd4:: with SMTP id r20-v6mr1597002ejr.5.1540806547384;
        Mon, 29 Oct 2018 02:49:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540806547; cv=none;
        d=google.com; s=arc-20160816;
        b=IcuZtGgxtAGLP8OpJuqrUCf1pXbf35hulmdT3jhsyX9a8rwbKIdvuHvUwHyTwLYM9W
         dEaMqTb+yVPy4sYOjmMRVnIOIm3MNVFyiZ+VvWSQYuuZzyXS5XOZL54yX5eODzrmJ8Oa
         PdTz3yxWEUZzUjpLBWJFLYlJVe70bD42psVxagZxZgX/2l1pBSM2+ivAHhnD4wY54CaX
         rUbsfHdh/6IKEHBZQ0e6jhZqNLw4Z9r8qe+z6pEfC8k8nOO0MRPg5xDj5HoFhPRRIu0B
         5knbqvTppmI4V2ODyx78OIljmL11feLVxC348olAbRSsXMxhT3XQ/Elry+lPfGVUKdlS
         1IMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=SmXVm6Bq7Mc5+BnvS1yNvsg49rpHaByD3JbEpYr/Ksg=;
        b=KB6GdvQ0jJuoExfdgt4LbRbdlprQd9UHze5DWvpWFfAeaL49SfEypaOjO15sNonw94
         CQXbm3OGstrZSeNDIizj6atNx/+qZnv01kXABXDTaYMyS8/PANh+RsS4LkwfMnulLaXg
         g20zXLKC8pfdavUxR7kQA2oG4CWldV1GcO/TIHcZAwES90lO4cYo2sUh46N+lHNNlTvX
         6EAPLW8DScni9Mhxk9rtG8+fr0RJFG2jMKpSoadV7zqX1HZs8Mmvrjj6jPfG7zqi+qqi
         45GA3LP6DKHWEINWx1tyXe0+UHDsxFeEt9+t4zAtDjHNfLDnJGd1dbg92o8KF37pRs4c
         XZZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.29 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb3-smtp-cloud8.xs4all.net (lb3-smtp-cloud8.xs4all.net. [194.109.24.29])
        by gmr-mx.google.com with ESMTPS id b37-v6si798243edd.5.2018.10.29.02.49.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 02:49:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.29 as permitted sender) client-ip=194.109.24.29;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.29 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [IPv6:2001:983:e9a7:1:5139:d121:18fb:2507] ([IPv6:2001:983:e9a7:1:5139:d121:18fb:2507])
	by smtp-cloud8.xs4all.net with ESMTPA
	id H4AUgGR5p0ZZEH4AVgquZV; Mon, 29 Oct 2018 10:49:07 +0100
Subject: Re: [PATCH 3/3] media: vicodec: Add support for 4 planes formats
To: Dafna Hirschfeld <dafna3@gmail.com>, mchehab@kernel.org,
 helen.koike@collabora.com
Cc: outreachy-kernel@googlegroups.com
References: <cover.1540404892.git.dafna3@gmail.com>
 <4a3a350e683aff5a6a917308745f15ee432c84fb.1540404892.git.dafna3@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <887cf943-1fe1-8f3a-3495-6a5671833925@xs4all.nl>
Date: Mon, 29 Oct 2018 10:49:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <4a3a350e683aff5a6a917308745f15ee432c84fb.1540404892.git.dafna3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfGj1a6o9ge3iICty5xZf8lCTJd4DHoTlrICOj+pRbBTWFHeQz7VQB/jzg+SmuVYW7mQCFUSESjW9fEarV9q18U2BhsQ9xSbGAcAfQ22o1rZ/Gd9SjEc/
 MAgqfJPQQsUk+HqHEOlr+gOvcm9ZBLRMY5kKfvvDgZ3tBjyELHfuw3sL+T0DJ+9mdQP9bRWmGaL3NuEqI6F6+HNfZFVTuRxktujDYSUgLG5M4NmEY/ElNAqj
 QN96HElSY4cEn/U8hK3xfN69s3qZdc8jKPoKqcRwNqt0DCNSrPIbhp5kHDdy0sRE13XqTzXaptFKk72x4ax2gWsJpag6WGRnmj2ly89vJ3FtLLI2XU/6aYca
 v98gfMyK+O9NX50rladeBpXl3zd+dA==

Hi Dafna,

Some comments below. Note that (at mentioned in the first patch) alpha_step can be
dropped and luma_step should be renamed to luma_alpha_step.

On 10/24/2018 08:41 PM, Dafna Hirschfeld wrote:
> Add support for formats with 4 planes: V4L2_PIX_FMT_ABGR32,
> V4L2_PIX_FMT_ARGB32.
> Also add alpha plane related flags to the header of the encoded file.
> 
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>  drivers/media/platform/vicodec/codec-fwht.c   | 17 +++++++++
>  drivers/media/platform/vicodec/codec-fwht.h   |  6 ++--
>  .../media/platform/vicodec/codec-v4l2-fwht.c  | 35 +++++++++++++++++++
>  drivers/media/platform/vicodec/vicodec-core.c | 12 ++++++-
>  4 files changed, 67 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/vicodec/codec-fwht.c b/drivers/media/platform/vicodec/codec-fwht.c
> index 91bfd1d9182b..36a08d81807b 100644
> --- a/drivers/media/platform/vicodec/codec-fwht.c
> +++ b/drivers/media/platform/vicodec/codec-fwht.c
> @@ -782,6 +782,17 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,
>  			encoding |= FWHT_CR_UNENCODED;
>  		encoding &= ~FWHT_FRAME_UNENCODED;
>  	}
> +
> +	if (frm->components_num == 4) {
> +		rlco_max = rlco + size / 2 - 256;
> +		encoding = encode_plane(frm->alpha, ref_frm->alpha, &rlco, rlco_max, cf,
> +				frm->height, frm->width,
> +				frm->alpha_step, is_intra, next_is_intra);
> +		if (encoding & FWHT_FRAME_UNENCODED)
> +			encoding |= FWHT_ALPHA_UNENCODED;
> +		encoding &= ~FWHT_FRAME_UNENCODED;
> +	}
> +
>  	cf->size = (rlco - cf->rlc_data) * sizeof(*rlco);
>  	return encoding;
>  }
> @@ -860,4 +871,10 @@ void fwht_decode_frame(struct fwht_cframe *cf, struct fwht_raw_frame *ref,
>  		decode_plane(cf, &rlco, ref->cr, h, w,
>  			hdr_flags & FWHT_FL_CR_IS_UNCOMPRESSED);
>  	}
> +
> +
> +	if (components_num == 4) {
> +		decode_plane(cf, &rlco, ref->alpha, cf->height, cf->width,
> +		     hdr_flags & FWHT_FL_ALPHA_IS_UNCOMPRESSED);
> +	}

No need for { }: checkpatch.pl --strict should have warned about this, I think.

>  }
> diff --git a/drivers/media/platform/vicodec/codec-fwht.h b/drivers/media/platform/vicodec/codec-fwht.h
> index 5e6813aeaa96..40ec137cfd4b 100644
> --- a/drivers/media/platform/vicodec/codec-fwht.h
> +++ b/drivers/media/platform/vicodec/codec-fwht.h
> @@ -73,8 +73,9 @@
>  #define FWHT_FL_LUMA_IS_UNCOMPRESSED	BIT(4)
>  #define FWHT_FL_CB_IS_UNCOMPRESSED	BIT(5)
>  #define FWHT_FL_CR_IS_UNCOMPRESSED	BIT(6)
> -#define FWHT_FL_CHROMA_FULL_HEIGHT	BIT(7)
> -#define FWHT_FL_CHROMA_FULL_WIDTH	BIT(8)
> +#define FWHT_FL_ALPHA_IS_UNCOMPRESSED	BIT(7)
> +#define FWHT_FL_CHROMA_FULL_HEIGHT	BIT(8)
> +#define FWHT_FL_CHROMA_FULL_WIDTH	BIT(9)

Don't change existing flags, just add the new flag at the end. Otherwise
you would have problems interpreting different versions of the same struct.

>  
>  struct fwht_cframe_hdr {
>  	u32 magic1;
> @@ -117,6 +118,7 @@ struct fwht_raw_frame {
>  #define FWHT_LUMA_UNENCODED	BIT(2)
>  #define FWHT_CB_UNENCODED	BIT(3)
>  #define FWHT_CR_UNENCODED	BIT(4)
> +#define FWHT_ALPHA_UNENCODED	BIT(5)
>  
>  u32 fwht_encode_frame(struct fwht_raw_frame *frm,
>  		      struct fwht_raw_frame *ref_frm,
> diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.c b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
> index cc9275f3c6cb..42e29a4343c2 100644
> --- a/drivers/media/platform/vicodec/codec-v4l2-fwht.c
> +++ b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
> @@ -33,6 +33,8 @@ static const struct v4l2_fwht_pixfmt_info v4l2_fwht_pixfmts[] = {
>  	{ V4L2_PIX_FMT_RGB32,   4, 4, 1, 4, 4, 1, 1, 3},
>  	{ V4L2_PIX_FMT_XRGB32,  4, 4, 1, 4, 4, 1, 1, 3},
>  	{ V4L2_PIX_FMT_HSV32,   4, 4, 1, 4, 4, 1, 1, 3},
> +	{ V4L2_PIX_FMT_ARGB32,  4, 4, 1, 4, 4, 1, 1, 4},
> +	{ V4L2_PIX_FMT_ABGR32,  4, 4, 1, 4, 4, 1, 1, 4},
>  
>  };
>  
> @@ -146,6 +148,20 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
>  		rf.cr = rf.cb + 2;
>  		rf.luma++;
>  		break;
> +	case V4L2_PIX_FMT_ABGR32:
> +		rf.cb = rf.luma;
> +		rf.cr = rf.cb + 2;
> +		rf.luma++;
> +		rf.alpha = rf.cr + 1;
> +		rf.alpha_step = rf.luma_step;
> +		break;
> +	case V4L2_PIX_FMT_ARGB32:
> +		rf.alpha = rf.luma;
> +		rf.cr = rf.luma + 1;
> +		rf.cb = rf.cr + 2;
> +		rf.luma += 2;
> +		rf.alpha_step = rf.luma_step;
> +		break;

Can you swap these two cases? In the RGB cases above this the RGB always comes
before the BGR, so let's keep this consistent.

>  	default:
>  		return -EINVAL;
>  	}
> @@ -177,6 +193,8 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
>  		flags |= FWHT_FL_CB_IS_UNCOMPRESSED;
>  	if (encoding & FWHT_CR_UNENCODED)
>  		flags |= FWHT_FL_CR_IS_UNCOMPRESSED;
> +	if (encoding & FWHT_ALPHA_UNENCODED)
> +		flags |= FWHT_FL_ALPHA_IS_UNCOMPRESSED;
>  	if (rf.height_div == 1)
>  		flags |= FWHT_FL_CHROMA_FULL_HEIGHT;
>  	if (rf.width_div == 1)
> @@ -339,6 +357,23 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
>  			*p++ = 0;
>  		}
>  		break;
> +	case V4L2_PIX_FMT_ABGR32:
> +		for (i = 0, p = p_out; i < size; i++) {
> +			*p++ = state->ref_frame.cb[i];
> +			*p++ = state->ref_frame.luma[i];
> +			*p++ = state->ref_frame.cr[i];
> +			*p++ = state->ref_frame.alpha[i];
> +		}
> +		break;
> +
> +	case V4L2_PIX_FMT_ARGB32:
> +		for (i = 0, p = p_out; i < size; i++) {
> +			*p++ = state->ref_frame.alpha[i];
> +			*p++ = state->ref_frame.cr[i];
> +			*p++ = state->ref_frame.luma[i];
> +			*p++ = state->ref_frame.cb[i];
> +		}
> +		break;

Ditto, please swap.

>  	default:
>  		return -EINVAL;
>  	}
> diff --git a/drivers/media/platform/vicodec/vicodec-core.c b/drivers/media/platform/vicodec/vicodec-core.c
> index 945b54efd4bd..2cfd3b85fa26 100644
> --- a/drivers/media/platform/vicodec/vicodec-core.c
> +++ b/drivers/media/platform/vicodec/vicodec-core.c
> @@ -995,7 +995,11 @@ static int vicodec_start_streaming(struct vb2_queue *q,
>  	unsigned int chroma_div = info->width_div * info->height_div;
>  	unsigned int total_planes_size;
>  
> -	if (info->components_num == 1)
> +	//we don't know ahead how many components are in the encoding type
> +	//V4L2_PIX_FMT_FWHT, so we will allocate space for 4 planes.

Use /* */ instead of //

Did you run checkpatch.pl --strict?

> +	if (info->id == V4L2_PIX_FMT_FWHT || info->components_num == 4)

I like this better than what you did in the previous patch.

Can you use this condition in the previous patch as well? Except == 4 becomes == 3 there.

> +		total_planes_size = 2 * size + 2 * (size / chroma_div);
> +	else if (info->components_num == 1)
>  		total_planes_size = size;
>  	else
>  		total_planes_size = size + 2 * (size / chroma_div);
> @@ -1024,6 +1028,12 @@ static int vicodec_start_streaming(struct vb2_queue *q,
>  		state->ref_frame.cb = NULL;
>  		state->ref_frame.cr = NULL;
>  	}
> +
> +	if (info->id == V4L2_PIX_FMT_FWHT || info->components_num == 4)
> +		state->ref_frame.alpha = state->ref_frame.cr + size / chroma_div;
> +	else
> +		state->ref_frame.alpha = NULL;
> +
>  	ctx->last_src_buf = NULL;
>  	ctx->last_dst_buf = NULL;
>  	state->gop_cnt = 0;
> 

Regards,

	Hans

