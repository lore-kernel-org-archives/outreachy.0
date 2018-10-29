X-GM-THRID: 6615995606614671360
X-Received: by 2002:a2e:988f:: with SMTP id b15-v6mr1193867ljj.14.1540804263581;
        Mon, 29 Oct 2018 02:11:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:d819:: with SMTP id p25-v6ls566436lfg.19.gmail; Mon, 29
 Oct 2018 02:11:02 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eHPp+wo2woFcQEOkHZYmkAI9FeeE7EAI+Sr7fcTX281UoNPMKhENjYmjH8mowdD2ieopBl
X-Received: by 2002:a19:519a:: with SMTP id g26-v6mr1052321lfl.2.1540804262310;
        Mon, 29 Oct 2018 02:11:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540804262; cv=none;
        d=google.com; s=arc-20160816;
        b=kt/kgTZLogyouR3gi/zBqMMXn+gD8IYVBRIP4TlS3nIbPleG1CqksLlq9Tk39wBO4c
         HPmy/GXlxLiEr9P37UnrUhGLq+ckaa+5DLRQYQ3cHtlAotsItT4TZ2Vy7I1bDhDxgfuN
         htICwV6deWoeDRK/7cibSEhDFPD3cxKcBx3T7DFky4N5SSN2F0azJbcI883gIT1m2IeP
         rV5DkxkLpgG/m999zfTdKkSKvzZmFS+hdinKqN11AmZMDxLLZhcCmgjg8jckcHXzH4Uk
         yRkPqcsw/tMPhi1s/2QUpnEFJ0oJfaGoqGlcXKpJTxP5LoPd2+NFr0hz66zZzaUZe5sX
         rNlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=gNpOveRoZbigjD1vlqtAiyHm51UwUcyxly7Q1YF45uA=;
        b=NyxZElWC4QYBw6bR3bGFJNRzJklCnlwsm6leH4r/tS67WZ6bDuoaH2MfxDE9OoMn6R
         3F7Vb1H/IvcGsDKJcK4F6QJC9/KI6ON3RsF6fnVzmMPg8n7tGqDCoB08sAgy8dJU7l+7
         V/HnBX8jkBa32cCc9x/46x+bpiotMo3+QTMKhtByJYe2PPsR8W2nl1L6qXkN87V5PkHv
         DSaedTukB3rnAkGGliBuAydsvD8mBxc0uuBytZUSc0epmduRpy2O8q+N6LlEDr8rOWvf
         KK/fJvJNlLi6B450upfKVh7rhL+8GQJ2KabRlLmTEMMnLVH6OBSsHgvUz4JOSLSVs5SI
         xlfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.25 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud8.xs4all.net (lb2-smtp-cloud8.xs4all.net. [194.109.24.25])
        by gmr-mx.google.com with ESMTPS id u142-v6si376568lja.2.2018.10.29.02.11.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 02:11:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.25 as permitted sender) client-ip=194.109.24.25;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.25 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [IPv6:2001:983:e9a7:1:5139:d121:18fb:2507] ([IPv6:2001:983:e9a7:1:5139:d121:18fb:2507])
	by smtp-cloud8.xs4all.net with ESMTPA
	id H3ZbgG1jf0ZZEH3ZcgqjCw; Mon, 29 Oct 2018 10:11:01 +0100
Subject: Re: [PATCH 1/3] media: vicodec: prepare support for various number of
 planes
To: Dafna Hirschfeld <dafna3@gmail.com>, mchehab@kernel.org,
 helen.koike@collabora.com
Cc: outreachy-kernel@googlegroups.com
References: <cover.1540404892.git.dafna3@gmail.com>
 <309c1efee547255a6e28347704415d46196ca5dd.1540404892.git.dafna3@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <7f69f480-cf39-c3b2-7201-7f5e7e32beef@xs4all.nl>
Date: Mon, 29 Oct 2018 10:10:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <309c1efee547255a6e28347704415d46196ca5dd.1540404892.git.dafna3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfKMXgHONOIhXGH3kNa8kL2bsXiVANFbVMLLmAMQDBYG6/2UQZQsIiQvxYdBZ/PHD+YfpVxZdhMMZbhu3HVoLI4KjhgmDxsFPIoCYATeFkNzWeqZ1tcmm
 iSc60+Mtuizojj0xqA91CjoYWYSE0pkXHRWp8XrB68vvkgmRyLQD3LRyT5dVXmNcxrKZZdOQ+TihY/wVv0RqT+aSKH5YC4w3rOGj1ckC1Z9kFHOfiQwFKiJf
 31jWfM4bc8tfHMlWR+S2hM7m2PdMFoTH9csm/o8xjE16JGSO+OQ+z+8syISAAmoVX/2VKn0cKOhLLO8ysBi0cC15k7+wz8D/+iJtNmQJxXx23N+u4FWvZnfN
 W3EpyMmp+CPPnSObt9qco1i/Ni36Bw==

Hi Dafna,

Here is a quick review:

On 10/24/2018 08:41 PM, Dafna Hirschfeld wrote:
> Add fields to the structs `fwht_raw_frame`, `v4l2_fwht_pixfmts`
> to support various number of planes - formats
> with alpha channel that have 4 planes and greyscale formats
> that have 1 plane.
> 
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>  drivers/media/platform/vicodec/codec-fwht.h   |  4 +-
>  .../media/platform/vicodec/codec-v4l2-fwht.c  | 46 ++++++++++---------
>  .../media/platform/vicodec/codec-v4l2-fwht.h  |  1 +
>  drivers/media/platform/vicodec/vicodec-core.c |  2 +-
>  4 files changed, 30 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/media/platform/vicodec/codec-fwht.h b/drivers/media/platform/vicodec/codec-fwht.h
> index 3e9391fec5fe..5750e21f16ac 100644
> --- a/drivers/media/platform/vicodec/codec-fwht.h
> +++ b/drivers/media/platform/vicodec/codec-fwht.h
> @@ -106,7 +106,9 @@ struct fwht_raw_frame {
>  	unsigned int height_div;
>  	unsigned int luma_step;
>  	unsigned int chroma_step;
> -	u8 *luma, *cb, *cr;
> +	unsigned int alpha_step;

You can drop alpha_step: it will always be the same as luma_step.

You can, however, rename luma_step to luma_alpha_step. That would make
sense.

> +	unsigned int components_num;
> +	u8 *luma, *cb, *cr, *alpha;
>  };
>  
>  #define FWHT_FRAME_PCODED	BIT(0)
> diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.c b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
> index e5b68fb38aac..64ad01e99bad 100644
> --- a/drivers/media/platform/vicodec/codec-v4l2-fwht.c
> +++ b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
> @@ -11,27 +11,28 @@
>  #include "codec-v4l2-fwht.h"
>  
>  static const struct v4l2_fwht_pixfmt_info v4l2_fwht_pixfmts[] = {
> -	{ V4L2_PIX_FMT_YUV420,  1, 3, 2, 1, 1, 2, 2 },
> -	{ V4L2_PIX_FMT_YVU420,  1, 3, 2, 1, 1, 2, 2 },
> -	{ V4L2_PIX_FMT_YUV422P, 1, 2, 1, 1, 1, 2, 1 },
> -	{ V4L2_PIX_FMT_NV12,    1, 3, 2, 1, 2, 2, 2 },
> -	{ V4L2_PIX_FMT_NV21,    1, 3, 2, 1, 2, 2, 2 },
> -	{ V4L2_PIX_FMT_NV16,    1, 2, 1, 1, 2, 2, 1 },
> -	{ V4L2_PIX_FMT_NV61,    1, 2, 1, 1, 2, 2, 1 },
> -	{ V4L2_PIX_FMT_NV24,    1, 3, 1, 1, 2, 1, 1 },
> -	{ V4L2_PIX_FMT_NV42,    1, 3, 1, 1, 2, 1, 1 },
> -	{ V4L2_PIX_FMT_YUYV,    2, 2, 1, 2, 4, 2, 1 },
> -	{ V4L2_PIX_FMT_YVYU,    2, 2, 1, 2, 4, 2, 1 },
> -	{ V4L2_PIX_FMT_UYVY,    2, 2, 1, 2, 4, 2, 1 },
> -	{ V4L2_PIX_FMT_VYUY,    2, 2, 1, 2, 4, 2, 1 },
> -	{ V4L2_PIX_FMT_BGR24,   3, 3, 1, 3, 3, 1, 1 },
> -	{ V4L2_PIX_FMT_RGB24,   3, 3, 1, 3, 3, 1, 1 },
> -	{ V4L2_PIX_FMT_HSV24,   3, 3, 1, 3, 3, 1, 1 },
> -	{ V4L2_PIX_FMT_BGR32,   4, 4, 1, 4, 4, 1, 1 },
> -	{ V4L2_PIX_FMT_XBGR32,  4, 4, 1, 4, 4, 1, 1 },
> -	{ V4L2_PIX_FMT_RGB32,   4, 4, 1, 4, 4, 1, 1 },
> -	{ V4L2_PIX_FMT_XRGB32,  4, 4, 1, 4, 4, 1, 1 },
> -	{ V4L2_PIX_FMT_HSV32,   4, 4, 1, 4, 4, 1, 1 },
> +	{ V4L2_PIX_FMT_YUV420,  1, 3, 2, 1, 1, 2, 2, 3},
> +	{ V4L2_PIX_FMT_YVU420,  1, 3, 2, 1, 1, 2, 2, 3},
> +	{ V4L2_PIX_FMT_YUV422P, 1, 2, 1, 1, 1, 2, 1, 3},
> +	{ V4L2_PIX_FMT_NV12,    1, 3, 2, 1, 2, 2, 2, 3},
> +	{ V4L2_PIX_FMT_NV21,    1, 3, 2, 1, 2, 2, 2, 3},
> +	{ V4L2_PIX_FMT_NV16,    1, 2, 1, 1, 2, 2, 1, 3},
> +	{ V4L2_PIX_FMT_NV61,    1, 2, 1, 1, 2, 2, 1, 3},
> +	{ V4L2_PIX_FMT_NV24,    1, 3, 1, 1, 2, 1, 1, 3},
> +	{ V4L2_PIX_FMT_NV42,    1, 3, 1, 1, 2, 1, 1, 3},
> +	{ V4L2_PIX_FMT_YUYV,    2, 2, 1, 2, 4, 2, 1, 3},
> +	{ V4L2_PIX_FMT_YVYU,    2, 2, 1, 2, 4, 2, 1, 3},
> +	{ V4L2_PIX_FMT_UYVY,    2, 2, 1, 2, 4, 2, 1, 3},
> +	{ V4L2_PIX_FMT_VYUY,    2, 2, 1, 2, 4, 2, 1, 3},
> +	{ V4L2_PIX_FMT_BGR24,   3, 3, 1, 3, 3, 1, 1, 3},
> +	{ V4L2_PIX_FMT_RGB24,   3, 3, 1, 3, 3, 1, 1, 3},
> +	{ V4L2_PIX_FMT_HSV24,   3, 3, 1, 3, 3, 1, 1, 3},
> +	{ V4L2_PIX_FMT_BGR32,   4, 4, 1, 4, 4, 1, 1, 3},
> +	{ V4L2_PIX_FMT_XBGR32,  4, 4, 1, 4, 4, 1, 1, 3},
> +	{ V4L2_PIX_FMT_RGB32,   4, 4, 1, 4, 4, 1, 1, 3},
> +	{ V4L2_PIX_FMT_XRGB32,  4, 4, 1, 4, 4, 1, 1, 3},
> +	{ V4L2_PIX_FMT_HSV32,   4, 4, 1, 4, 4, 1, 1, 3},
> +
>  };
>  
>  const struct v4l2_fwht_pixfmt_info *v4l2_fwht_find_pixfmt(u32 pixelformat)
> @@ -70,6 +71,9 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8 *p_in, u8 *p_out)
>  	rf.height_div = info->height_div;
>  	rf.luma_step = info->luma_step;
>  	rf.chroma_step = info->chroma_step;
> +	rf.alpha_step = 0;
> +	rf.alpha = NULL;
> +	rf.components_num = info->components_num;
>  
>  	switch (info->id) {
>  	case V4L2_PIX_FMT_YUV420:
> diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.h b/drivers/media/platform/vicodec/codec-v4l2-fwht.h
> index 162465b78067..aa73d18d69dd 100644
> --- a/drivers/media/platform/vicodec/codec-v4l2-fwht.h
> +++ b/drivers/media/platform/vicodec/codec-v4l2-fwht.h
> @@ -18,6 +18,7 @@ struct v4l2_fwht_pixfmt_info {
>  	/* Chroma plane subsampling */
>  	unsigned int width_div;
>  	unsigned int height_div;
> +	unsigned int components_num;
>  };
>  
>  struct v4l2_fwht_state {
> diff --git a/drivers/media/platform/vicodec/vicodec-core.c b/drivers/media/platform/vicodec/vicodec-core.c
> index 1eb9132bfc85..fb6d5e9a06ab 100644
> --- a/drivers/media/platform/vicodec/vicodec-core.c
> +++ b/drivers/media/platform/vicodec/vicodec-core.c
> @@ -61,7 +61,7 @@ struct pixfmt_info {
>  };
>  
>  static const struct v4l2_fwht_pixfmt_info pixfmt_fwht = {
> -	V4L2_PIX_FMT_FWHT, 0, 3, 1, 1, 1, 1, 1
> +	V4L2_PIX_FMT_FWHT, 0, 3, 1, 1, 1, 1, 1, 0
>  };
>  
>  static void vicodec_dev_release(struct device *dev)
> 

Regards,

	Hans

