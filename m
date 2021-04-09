X-GM-THRID: 6949155933016555520
X-Received: by 2002:ac8:6606:: with SMTP id c6mr13969831qtp.76.1617987627684;
        Fri, 09 Apr 2021 10:00:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:4455:: with SMTP id w21ls5437169qkp.7.gmail; Fri,
 09 Apr 2021 10:00:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw70quAopCFA0kYnHWn5F8+F+LW8TyFb58kFvgRqh5sDPNIuoUkrUL8jqkg5mKUPngD7srS
X-Received: by 2002:a05:620a:6d7:: with SMTP id 23mr15250258qky.232.1617987626871;
        Fri, 09 Apr 2021 10:00:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617987626; cv=none;
        d=google.com; s=arc-20160816;
        b=rRNGVkXGFREyh3ghf8y+codx9c1vmHX6j0GnP0npMAi1XFRVmrrB42tzUEkAmKsOtB
         zRZAmAJKxcsV5kXcn+wqD6kezHBigLaTQDNSFzRCAGEQFSheA+KmxBVHYtiZe+qKn7UY
         GtQr8FwbBHQ6+oldVqoeigR4I9deUfA3HcOTj924P0N4djGxaIIFdeKyp5OCYToddBak
         lo2dVMoXcAqnoEN0QZqeaXw8D/wJfDFNYO1b4DAd+DZSY5TJvzgMc+3DU8LWGOGKWKuC
         QfMYm3sxUe2z4O86+hgLusxyb9c2GRn1DSX4+Mii33U/5PBVdG1/7z0WKvYseIoKuwWP
         goMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=EHJ5xH8b3drIKRi0K3TBNoofABYf4wlu7xRfP2aofl0=;
        b=WDH2XlBVEi5WV+dFUOkZ+Akf0HfkUIQD0MIXI5TRDL8q+vePQNfX7Szi2NWS70SQDb
         Al95WSll3W9o0VjfviZyNQzqjzRdmoFq3v/SrrBBW/VYu91eSWeZQLwqDNGLB9S4b5Qh
         O6VqwnacYNXGf9S5DcUZ3bgQUd4OcLmjv73Qx5tGT5txpL5HrCAxHcujrE5D/mVV/vDo
         IdK7M+eryA9EvXkf0auWMa1kETvcrXu90JxdH7FYjK4prbAaHkJPrHiVtecnGP/rvNpk
         /cPIYEIM2Hr6lVAzhUBy60Q62kp3Vyo5+C7haUIvdMhztyeQWekTmxtqSuXIA2eOd2eE
         LVmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eIbJ3KA+;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com. [2607:f8b0:4864:20::72c])
        by gmr-mx.google.com with ESMTPS id w1si155734qkp.4.2021.04.09.10.00.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 10:00:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) client-ip=2607:f8b0:4864:20::72c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eIbJ3KA+;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72c.google.com with SMTP id i9so6513898qka.2
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 10:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=EHJ5xH8b3drIKRi0K3TBNoofABYf4wlu7xRfP2aofl0=;
        b=eIbJ3KA+c7F12XU8RjHnMwvpR/Ho4F+KHqyVHHqJzhCGHelcpX4VTPO4skvvC9lkhm
         ndAv+axRJgTFIN857CMdzYCh3Zo86cWEeaAY4YGbvnnxVV4dHasP5Rt6nR/ZytrCfUtf
         IlmS5OsqZVmAQ/nfvvTZPbilJJ2aGltBC6SdCx28T1mGAYhPiKG5yPobw4IrUjCEGFz/
         xuP5Lon1EYJdNtc/ttSUpYqkOlAOsLQFckHsPnxV5tOcIeNaZQ0Iwu3F4LXdyqj6wdqe
         k3JLUSj3yAwv9q0DG6NcsQUTYro28z9S4Mje33DdLwlggYVRB1UZYLNEDh3lnM7ls5kx
         Zq+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=EHJ5xH8b3drIKRi0K3TBNoofABYf4wlu7xRfP2aofl0=;
        b=beSx9upCCkufs1oERoOlarlVy3ivK2tI1bQUvD3KvwQTXABe3CQ3p2rQbC30qdeuZU
         4tXvdn00an2qbR+uJQ82+qilJBMrcapvHq/kTJamn5102Qx+0yWExL02eip7n/bsjWqp
         7CTgx+pTv56hLtiI/Uj2EhJfFnmKlFGZi2NkQiAzo/ddy2Il2ovQGrnjOYhnDRIY0q1Y
         O1qo5WhoDKAjKmV5IYWiZrmVtypa7sfzXp+fx9Y+XfQ9o7+H4uH6cR5P21cTANKdbI5a
         w2hS3kx3qPzERoQzHuJ315u7/3+9vX2KReRm9Uc7GuM26bTQoZvQuv3W57ngc90jdQj3
         qSxw==
X-Gm-Message-State: AOAM530Bp+uuRMaiKJ6tBBLxJ5P/ZqLQYLFL8TDtZbk4TYASFawU5b/N
	uLuckvM5T/QgOVaBfKBz4PU=
X-Received: by 2002:a37:e315:: with SMTP id y21mr14808173qki.418.1617987626510;
        Fri, 09 Apr 2021 10:00:26 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from [192.168.100.7] ([177.220.174.147])
        by smtp.gmail.com with ESMTPSA id e14sm2076253qka.56.2021.04.09.10.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 10:00:26 -0700 (PDT)
Message-ID: <138794d79c42510d9b6ae744df20216904773032.camel@gmail.com>
Subject: Re: [Outreachy kernel][PATCH] staging: media: hantro: Rewrite macro
 function in lower case
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>, Philipp Zabel
	 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
	Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Fri, 09 Apr 2021 14:00:22 -0300
In-Reply-To: <9c09806cce4c7e5c5f0dc03e8c502cf29716f00f.camel@collabora.com>
References: <20210409135404.GA26172@focaruja>
	 <9c09806cce4c7e5c5f0dc03e8c502cf29716f00f.camel@collabora.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em sex, 2021-04-09 às 13:44 -0300, Ezequiel Garcia escreveu:
> Hi Aline,

Hi Ezequiel,
> 
> On Fri, 2021-04-09 at 10:54 -0300, Aline Santana Cordeiro wrote:
> > Rewrite macros resembling functions #define HANTRO_PP_REG_WRITE
> > and #define HANTRO_PP_RED_WRITE_S in lower case, according with
> > code style.
> > 
> 
> Where is this written in the Coding Style?

I found this in section 12, about Macros, Enums and RTL in both
references:
https://www.kernel.org/doc/html/latest/process/coding-style.html
https://elixir.bootlin.com/linux/latest/source/Documentation/process/coding-style.rst
> 
> Thanks!
> Ezequiel

Thank you!
Aline
> 
> > Signed-off-by: Aline Santana Cordeiro <  
> > alinesantanacordeiro@gmail.com>
> > ---
> >  drivers/staging/media/hantro/hantro_postproc.c | 34 +++++++++++++-
> > ------------
> >  1 file changed, 17 insertions(+), 17 deletions(-)
> > 
> > diff --git a/drivers/staging/media/hantro/hantro_postproc.c
> > b/drivers/staging/media/hantro/hantro_postproc.c
> > index 6d2a8f2a..06279c0 100644
> > --- a/drivers/staging/media/hantro/hantro_postproc.c
> > +++ b/drivers/staging/media/hantro/hantro_postproc.c
> > @@ -12,14 +12,14 @@
> >  #include "hantro_hw.h"
> >  #include "hantro_g1_regs.h"
> >  
> > -#define HANTRO_PP_REG_WRITE(vpu, reg_name, val) \
> > +#define hantro_pp_reg_write(vpu, reg_name, val) \
> >  { \
> >         hantro_reg_write(vpu, \
> >                          &(vpu)->variant->postproc_regs->reg_name,
> > \
> >                          val); \
> >  }
> >  
> > -#define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
> > +#define hantro_pp_reg_write_s(vpu, reg_name, val) \
> >  { \
> >         hantro_reg_write_s(vpu, \
> >                            &(vpu)->variant->postproc_regs-
> > >reg_name, \
> > @@ -61,7 +61,7 @@ void hantro_postproc_enable(struct hantro_ctx
> > *ctx)
> >                 return;
> >  
> >         /* Turn on pipeline mode. Must be done first. */
> > -       HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x1);
> > +       hantro_pp_reg_write_s(vpu, pipeline_en, 0x1);
> >  
> >         src_pp_fmt = VPU_PP_IN_NV12;
> >  
> > @@ -79,19 +79,19 @@ void hantro_postproc_enable(struct hantro_ctx
> > *ctx)
> >         dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> >         dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf,
> > 0);
> >  
> > -       HANTRO_PP_REG_WRITE(vpu, clk_gate, 0x1);
> > -       HANTRO_PP_REG_WRITE(vpu, out_endian, 0x1);
> > -       HANTRO_PP_REG_WRITE(vpu, out_swap32, 0x1);
> > -       HANTRO_PP_REG_WRITE(vpu, max_burst, 16);
> > -       HANTRO_PP_REG_WRITE(vpu, out_luma_base, dst_dma);
> > -       HANTRO_PP_REG_WRITE(vpu, input_width, MB_WIDTH(ctx-
> > >dst_fmt.width));
> > -       HANTRO_PP_REG_WRITE(vpu, input_height, MB_HEIGHT(ctx-
> > >dst_fmt.height));
> > -       HANTRO_PP_REG_WRITE(vpu, input_fmt, src_pp_fmt);
> > -       HANTRO_PP_REG_WRITE(vpu, output_fmt, dst_pp_fmt);
> > -       HANTRO_PP_REG_WRITE(vpu, output_width, ctx->dst_fmt.width);
> > -       HANTRO_PP_REG_WRITE(vpu, output_height, ctx-
> > >dst_fmt.height);
> > -       HANTRO_PP_REG_WRITE(vpu, orig_width, MB_WIDTH(ctx-
> > >dst_fmt.width));
> > -       HANTRO_PP_REG_WRITE(vpu, display_width, ctx-
> > >dst_fmt.width);
> > +       hantro_pp_reg_write(vpu, clk_gate, 0x1);
> > +       hantro_pp_reg_write(vpu, out_endian, 0x1);
> > +       hantro_pp_reg_write(vpu, out_swap32, 0x1);
> > +       hantro_pp_reg_write(vpu, max_burst, 16);
> > +       hantro_pp_reg_write(vpu, out_luma_base, dst_dma);
> > +       hantro_pp_reg_write(vpu, input_width, MB_WIDTH(ctx-
> > >dst_fmt.width));
> > +       hantro_pp_reg_write(vpu, input_height, MB_HEIGHT(ctx-
> > >dst_fmt.height));
> > +       hantro_pp_reg_write(vpu, input_fmt, src_pp_fmt);
> > +       hantro_pp_reg_write(vpu, output_fmt, dst_pp_fmt);
> > +       hantro_pp_reg_write(vpu, output_width, ctx->dst_fmt.width);
> > +       hantro_pp_reg_write(vpu, output_height, ctx-
> > >dst_fmt.height);
> > +       hantro_pp_reg_write(vpu, orig_width, MB_WIDTH(ctx-
> > >dst_fmt.width));
> > +       hantro_pp_reg_write(vpu, display_width, ctx-
> > >dst_fmt.width);
> >  }
> >  
> >  void hantro_postproc_free(struct hantro_ctx *ctx)
> > @@ -146,5 +146,5 @@ void hantro_postproc_disable(struct hantro_ctx
> > *ctx)
> >         if (!vpu->variant->postproc_regs)
> >                 return;
> >  
> > -       HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x0);
> > +       hantro_pp_reg_write_s(vpu, pipeline_en, 0x0);
> >  }
> 
> 



