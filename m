X-GM-THRID: 6949155933016555520
X-Received: by 2002:a05:620a:22b4:: with SMTP id p20mr1023769qkh.14.1617989723457;
        Fri, 09 Apr 2021 10:35:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:e752:: with SMTP id g18ls2752297qvn.6.gmail; Fri, 09 Apr
 2021 10:35:22 -0700 (PDT)
X-Received: by 2002:a0c:dd14:: with SMTP id u20mr15654415qvk.13.1617989722714;
        Fri, 09 Apr 2021 10:35:22 -0700 (PDT)
Received: by 2002:a37:6804:0:b029:271:7689:a001 with SMTP id d4-20020a3768040000b02902717689a001msqkc;
        Fri, 9 Apr 2021 09:45:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxnqWt8Ph5liATnM7NYRq5shQzg0oAszONlfNZ6YfZ4amzYfoYGkN1wQFmObzY6emHciZsK
X-Received: by 2002:a05:6214:240a:: with SMTP id fv10mr14854983qvb.10.1617986704412;
        Fri, 09 Apr 2021 09:45:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617986704; cv=none;
        d=google.com; s=arc-20160816;
        b=ldxEbC91jZ4ePoWlRtKyO7YVBJKXgc6BcXYaZunb1NClFh92+qLDaCTiQyA15EBEj4
         h5vzwxj2wwamYAtK3zOg4ZodsrpLnZ6I6upKeFW6Nu9lVegxRoc/3Fa3u3uW0dRFcRlV
         SUrns0D6J7WFQOU379Dul+FAHNaAexQdRZgEzXu8ZOTwA3Ftf3sxht+tDu+tl7gdYdW1
         qX7N/cRgr9FjAUD/9GU6AXTzEwFXGx7ubsm24HWw8X7E/YH3uKj3kklsxrU7oQqqG455
         1Ot5qhVH+v3mPLG6XikBz+CWh8A9tLb58kaj+40mboQg3ugDr7bz6YAnWA+PIBJxt8eT
         8wkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:organization
         :references:in-reply-to:date:cc:to:from:subject:message-id;
        bh=F7ynRjc4JgjnqrvP2d0Kh6gqh7A8p2l/nntjEfuW42c=;
        b=y0OEAAXxt2emaWuIOJZLNJteIrjy5DOzUUnHv1s/5f3xqne6jHvDw0qXmNqj1wjbuA
         Y06G1M2/2t7uOH/5yMWI5vkBmDIwVExbEUd8rgnSq1o8yR7PAWYKfuRugQsIqIhcBjKV
         mTLi5CjgZMXye0U1jEweIiwBax3lMvrFTzFcZHI8vmR5w/jYg4r4bcDkFUQlX6O/Z/h0
         8Q6BAbGHKjmuV8gtxKETUV5g0vBA6x7gEvBtLiTqvvNvsywCZw9EGuyy0aUNZ5+tdb5a
         duHK6RsSbXdZpkmAdkWC2dH5caq0OYP+PklslEeC7Sjcaw0h1Hr1mftk2Xd2W5eS9XIz
         dzgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ezequiel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=ezequiel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Return-Path: <ezequiel@collabora.com>
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id r24si373607qtp.1.2021.04.09.09.45.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 09 Apr 2021 09:45:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ezequiel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ezequiel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=ezequiel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: ezequiel)
	with ESMTPSA id 395CD1F4677C
Message-ID: <9c09806cce4c7e5c5f0dc03e8c502cf29716f00f.camel@collabora.com>
Subject: Re: [Outreachy kernel][PATCH] staging: media: hantro: Rewrite macro
 function in lower case
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>, Philipp Zabel
	 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
	Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Fri, 09 Apr 2021 13:44:55 -0300
In-Reply-To: <20210409135404.GA26172@focaruja>
References: <20210409135404.GA26172@focaruja>
Organization: Collabora
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Aline,

On Fri, 2021-04-09 at 10:54 -0300, Aline Santana Cordeiro wrote:
> Rewrite macros resembling functions #define HANTRO_PP_REG_WRITE
> and #define HANTRO_PP_RED_WRITE_S in lower case, according with
> code style.
> 

Where is this written in the Coding Style?

Thanks!
Ezequiel

> Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
> ---
>  drivers/staging/media/hantro/hantro_postproc.c | 34 +++++++++++++-------------
>  1 file changed, 17 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
> index 6d2a8f2a..06279c0 100644
> --- a/drivers/staging/media/hantro/hantro_postproc.c
> +++ b/drivers/staging/media/hantro/hantro_postproc.c
> @@ -12,14 +12,14 @@
>  #include "hantro_hw.h"
>  #include "hantro_g1_regs.h"
>  
> -#define HANTRO_PP_REG_WRITE(vpu, reg_name, val) \
> +#define hantro_pp_reg_write(vpu, reg_name, val) \
>  { \
>         hantro_reg_write(vpu, \
>                          &(vpu)->variant->postproc_regs->reg_name, \
>                          val); \
>  }
>  
> -#define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
> +#define hantro_pp_reg_write_s(vpu, reg_name, val) \
>  { \
>         hantro_reg_write_s(vpu, \
>                            &(vpu)->variant->postproc_regs->reg_name, \
> @@ -61,7 +61,7 @@ void hantro_postproc_enable(struct hantro_ctx *ctx)
>                 return;
>  
>         /* Turn on pipeline mode. Must be done first. */
> -       HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x1);
> +       hantro_pp_reg_write_s(vpu, pipeline_en, 0x1);
>  
>         src_pp_fmt = VPU_PP_IN_NV12;
>  
> @@ -79,19 +79,19 @@ void hantro_postproc_enable(struct hantro_ctx *ctx)
>         dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
>         dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
>  
> -       HANTRO_PP_REG_WRITE(vpu, clk_gate, 0x1);
> -       HANTRO_PP_REG_WRITE(vpu, out_endian, 0x1);
> -       HANTRO_PP_REG_WRITE(vpu, out_swap32, 0x1);
> -       HANTRO_PP_REG_WRITE(vpu, max_burst, 16);
> -       HANTRO_PP_REG_WRITE(vpu, out_luma_base, dst_dma);
> -       HANTRO_PP_REG_WRITE(vpu, input_width, MB_WIDTH(ctx->dst_fmt.width));
> -       HANTRO_PP_REG_WRITE(vpu, input_height, MB_HEIGHT(ctx->dst_fmt.height));
> -       HANTRO_PP_REG_WRITE(vpu, input_fmt, src_pp_fmt);
> -       HANTRO_PP_REG_WRITE(vpu, output_fmt, dst_pp_fmt);
> -       HANTRO_PP_REG_WRITE(vpu, output_width, ctx->dst_fmt.width);
> -       HANTRO_PP_REG_WRITE(vpu, output_height, ctx->dst_fmt.height);
> -       HANTRO_PP_REG_WRITE(vpu, orig_width, MB_WIDTH(ctx->dst_fmt.width));
> -       HANTRO_PP_REG_WRITE(vpu, display_width, ctx->dst_fmt.width);
> +       hantro_pp_reg_write(vpu, clk_gate, 0x1);
> +       hantro_pp_reg_write(vpu, out_endian, 0x1);
> +       hantro_pp_reg_write(vpu, out_swap32, 0x1);
> +       hantro_pp_reg_write(vpu, max_burst, 16);
> +       hantro_pp_reg_write(vpu, out_luma_base, dst_dma);
> +       hantro_pp_reg_write(vpu, input_width, MB_WIDTH(ctx->dst_fmt.width));
> +       hantro_pp_reg_write(vpu, input_height, MB_HEIGHT(ctx->dst_fmt.height));
> +       hantro_pp_reg_write(vpu, input_fmt, src_pp_fmt);
> +       hantro_pp_reg_write(vpu, output_fmt, dst_pp_fmt);
> +       hantro_pp_reg_write(vpu, output_width, ctx->dst_fmt.width);
> +       hantro_pp_reg_write(vpu, output_height, ctx->dst_fmt.height);
> +       hantro_pp_reg_write(vpu, orig_width, MB_WIDTH(ctx->dst_fmt.width));
> +       hantro_pp_reg_write(vpu, display_width, ctx->dst_fmt.width);
>  }
>  
>  void hantro_postproc_free(struct hantro_ctx *ctx)
> @@ -146,5 +146,5 @@ void hantro_postproc_disable(struct hantro_ctx *ctx)
>         if (!vpu->variant->postproc_regs)
>                 return;
>  
> -       HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x0);
> +       hantro_pp_reg_write_s(vpu, pipeline_en, 0x0);
>  }



