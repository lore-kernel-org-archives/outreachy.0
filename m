X-GM-THRID: 6615995606614671360
X-Received: by 2002:a81:ae18:: with SMTP id m24-v6mr1613637ywh.15.1540914749405;
        Tue, 30 Oct 2018 08:52:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:1d05:: with SMTP id d5-v6ls6425326ywd.5.gmail; Tue, 30
 Oct 2018 08:52:28 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cLGiqLSScWrGp+a4Xgko8U4DxNGFSmGWnFTY3VnuUElIBmmaj501zRzrCFA/HcbSStk+wC
X-Received: by 2002:a0d:ed84:: with SMTP id w126-v6mr1611772ywe.25.1540914748379;
        Tue, 30 Oct 2018 08:52:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540914748; cv=none;
        d=google.com; s=arc-20160816;
        b=a291l1bNt5vTeO3eokwSJ3uJ2K/cG9Bhi+QRhGtuTZWApbfw0ZIdbn1VX+ir1V3m9H
         GtfEuMA7Dqki57l7SwXofrSb45/5kU1qJP/hiMX3Zq9fhwDAep92iqsiF6UpA2YXfTS2
         Cr8cY632cRmlNJIIch9ttKMWl+9syhrxmhQ/sPrZ8FMw/y8PjtsYAs4BEVpYBJGPvwf6
         Q6aMPqnC0iRo4iLJy2GyCR1RjZ78hgNh+iTfWSKqKNMPOJL7pbEidzK3eJY0R+6Avr+3
         b7yIJwwFRySFshpelCoUk/dhYVsc80YAT8Tgsbobe9xbfiLz7Hy40uUegQkxNNcGHRYi
         UspQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DjntrdkbLiZ8fcQ2NTs9/IB98wZe+BHu6k/kBdsAJq0=;
        b=THaI5s5Dzmq9GC4XskExxa7KXOIQEqSKDb4APX+y3nlIkd5mju0AIoiqI9WHBHckwn
         AxWHQ0Hdwi+fkv8OilJZ8PVdHXyQ+JFkJCFwQBvWQTuwGuW/bxErSpprXCdyTI52SwHM
         9GqfN76rs56hmZpNSakRZsNdVjmUc8BVVRw6cCbrdsnGCVgjfSCI541snVq5zi5CzS3d
         7sI8yi9lr6TBT5h3fPpQfjMcFh0iHX0QWZ0s4xifG9hXbN+FhPCnQXZ+h2aPiptgHU7C
         XTgO3RNwJMSKD+7FbH5bCjF2tJTLffci0XkhazDmOIsicdSlyzP8GFTWFM+HU8akf6zT
         Kt6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lQ4XBYrH;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id t186-v6si931347ywc.2.2018.10.30.08.52.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 08:52:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lQ4XBYrH;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x944.google.com with SMTP id g10so4664213uak.5
        for <outreachy-kernel@googlegroups.com>; Tue, 30 Oct 2018 08:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DjntrdkbLiZ8fcQ2NTs9/IB98wZe+BHu6k/kBdsAJq0=;
        b=lQ4XBYrHxW54LGxrJ4WSa1hLPBkUogzRcc72T+2ohiArfhnIhyt9Vh9ArtJ4D/J2W5
         fKbvKEPefpuRZH8fCOxyvuOYeRHtyiGCa2d+SZsl88pg3SbtgWmR10MBpmnpQatWCaGZ
         K3/erclQq3JADCyxb9eD9qonWtL/Hy9TrrpLSMgBvYJw4j+Gt1La3CUZasuiFA64Dl2n
         C3D5Dq1JzJSzRzwoCr0MRrdFxv85yPZuTzk45Wjj+mQIE9DQ4JjaFX1YX0DsxB+/R6ZS
         2SIWxdCRYke3uRiM9kE1qVU2m5q8U0V3pGyJC4tvUwrvx4tGY9foO+nxz5o01RzIE4HP
         v4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DjntrdkbLiZ8fcQ2NTs9/IB98wZe+BHu6k/kBdsAJq0=;
        b=t5VgsG0nj2AJpqi6fNPN/SVYnKNUgfV/rQ9PQPwT+JBP9dS619AvpnNZihATXjweoh
         1IrBXJD0MDYc3ltgQ8d1zTYy5lIVDMqUz2s7jeGVCXs97AEVTgDtlAbTLn2/r8XqMBcP
         Lq5xmTjGJ2DZlRCc4vKoKqAP2FKRQji5UjYU7Cz4Ud0Solee2MTF3XoanfDaA/PA9DhR
         IlYe3Yx1sHv7NTtYvHT8rToQtI5Io6Yfr44orLL1MqsvbZcnzb3MGr4T+hlEKYdHVVC/
         vk7gqMrZIp0G18yUGMjXlG7gw3rR9iQPgqDnhF1m/e6fJSZ8OOBtMo8DpA7Re6n6nDU0
         re9Q==
X-Gm-Message-State: AGRZ1gL2vhIVK6MqcoNe560cNjRLT960gbUSjmb430NgTimfzA+WU/Hk
	yBPI6abX7teLshmjSqeH9eQjqdRE9/tUHXVYlLE0JjRp
X-Received: by 2002:ab0:4812:: with SMTP id b18mr8768686uad.30.1540914747309;
 Tue, 30 Oct 2018 08:52:27 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1540404892.git.dafna3@gmail.com> <e88b75a1e6259c3dc0d0b36bcb9b0d50598f419d.1540404892.git.dafna3@gmail.com>
 <374cdd3c-e15e-3e5f-6878-144d7e230d01@xs4all.nl>
In-Reply-To: <374cdd3c-e15e-3e5f-6878-144d7e230d01@xs4all.nl>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Tue, 30 Oct 2018 17:52:15 +0200
Message-ID: <CAJ1myNQMF1uAFYykFM1D-4Xy-Cu88+eHnDbJemPFksCLw2aKVg@mail.gmail.com>
Subject: Re: [PATCH 2/3] media: vicodec: Add support of greyscale format
To: hverkuil@xs4all.nl
Cc: mchehab@kernel.org, helen.koike@collabora.com, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000024882c0579742cf8"

--00000000000024882c0579742cf8
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 29, 2018 at 11:23 AM Hans Verkuil <hverkuil@xs4all.nl> wrote:

> Hi Dafna,
>
> Looks good overall, but I do have some - mostly minor - comments:
>
> On 10/24/2018 08:41 PM, Dafna Hirschfeld wrote:
> > Add support for single plane greyscale format V4L2_PIX_FMT_GREY.
> > Also change the header of the encoded file to include the number
> > of components.
> >
> > Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> > ---
> >  drivers/media/platform/vicodec/codec-fwht.c   | 56 +++++++++++--------
> >  drivers/media/platform/vicodec/codec-fwht.h   |  5 +-
> >  .../media/platform/vicodec/codec-v4l2-fwht.c  | 12 +++-
> >  drivers/media/platform/vicodec/vicodec-core.c | 21 +++++--
> >  4 files changed, 61 insertions(+), 33 deletions(-)
> >
> > diff --git a/drivers/media/platform/vicodec/codec-fwht.c
> b/drivers/media/platform/vicodec/codec-fwht.c
> > index 36656031b295..91bfd1d9182b 100644
> > --- a/drivers/media/platform/vicodec/codec-fwht.c
> > +++ b/drivers/media/platform/vicodec/codec-fwht.c
> > @@ -753,9 +753,6 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,
> >       __be16 *rlco = cf->rlc_data;
> >       __be16 *rlco_max;
> >       u32 encoding;
> > -     u32 chroma_h = frm->height / frm->height_div;
> > -     u32 chroma_w = frm->width / frm->width_div;
> > -     unsigned int chroma_size = chroma_h * chroma_w;
> >
> >       rlco_max = rlco + size / 2 - 256;
> >       encoding = encode_plane(frm->luma, ref_frm->luma, &rlco, rlco_max,
> cf,
> > @@ -764,20 +761,27 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,
> >       if (encoding & FWHT_FRAME_UNENCODED)
> >               encoding |= FWHT_LUMA_UNENCODED;
> >       encoding &= ~FWHT_FRAME_UNENCODED;
> > -     rlco_max = rlco + chroma_size / 2 - 256;
> > -     encoding |= encode_plane(frm->cb, ref_frm->cb, &rlco, rlco_max, cf,
> > +
> > +     if (frm->components_num > 1) {
>
> Just to be on the safe side, change this to:
>
>         frm->components_num >= 3
>
> since the code inside the if statements assumes that there are at least
> three components and it would fail if components_num == 2.
>
> > +             u32 chroma_h = frm->height / frm->height_div;
> > +             u32 chroma_w = frm->width / frm->width_div;
> > +             unsigned int chroma_size = chroma_h * chroma_w;
> > +
> > +             rlco_max = rlco + chroma_size / 2 - 256;
> > +             encoding |= encode_plane(frm->cb, ref_frm->cb, &rlco,
> rlco_max, cf,
> >                                chroma_h, chroma_w,
> >                                frm->chroma_step, is_intra,
> next_is_intra);
> > -     if (encoding & FWHT_FRAME_UNENCODED)
> > -             encoding |= FWHT_CB_UNENCODED;
> > -     encoding &= ~FWHT_FRAME_UNENCODED;
> > -     rlco_max = rlco + chroma_size / 2 - 256;
> > -     encoding |= encode_plane(frm->cr, ref_frm->cr, &rlco, rlco_max, cf,
> > +             if (encoding & FWHT_FRAME_UNENCODED)
> > +                     encoding |= FWHT_CB_UNENCODED;
> > +             encoding &= ~FWHT_FRAME_UNENCODED;
> > +             rlco_max = rlco + chroma_size / 2 - 256;
> > +             encoding |= encode_plane(frm->cr, ref_frm->cr, &rlco,
> rlco_max, cf,
> >                                chroma_h, chroma_w,
> >                                frm->chroma_step, is_intra,
> next_is_intra);
> > -     if (encoding & FWHT_FRAME_UNENCODED)
> > -             encoding |= FWHT_CR_UNENCODED;
> > -     encoding &= ~FWHT_FRAME_UNENCODED;
> > +             if (encoding & FWHT_FRAME_UNENCODED)
> > +                     encoding |= FWHT_CR_UNENCODED;
> > +             encoding &= ~FWHT_FRAME_UNENCODED;
> > +     }
> >       cf->size = (rlco - cf->rlc_data) * sizeof(*rlco);
> >       return encoding;
> >  }
> > @@ -836,20 +840,24 @@ static void decode_plane(struct fwht_cframe *cf,
> const __be16 **rlco, u8 *ref,
> >  }
> >
> >  void fwht_decode_frame(struct fwht_cframe *cf, struct fwht_raw_frame
> *ref,
> > -                    u32 hdr_flags)
> > +                    u32 hdr_flags, unsigned int components_num)
> >  {
> >       const __be16 *rlco = cf->rlc_data;
> > -     u32 h = cf->height / 2;
> > -     u32 w = cf->width / 2;
> >
> > -     if (hdr_flags & FWHT_FL_CHROMA_FULL_HEIGHT)
> > -             h *= 2;
> > -     if (hdr_flags & FWHT_FL_CHROMA_FULL_WIDTH)
> > -             w *= 2;
> >       decode_plane(cf, &rlco, ref->luma, cf->height, cf->width,
> >                    hdr_flags & FWHT_FL_LUMA_IS_UNCOMPRESSED);
> > -     decode_plane(cf, &rlco, ref->cb, h, w,
> > -                  hdr_flags & FWHT_FL_CB_IS_UNCOMPRESSED);
> > -     decode_plane(cf, &rlco, ref->cr, h, w,
> > -                  hdr_flags & FWHT_FL_CR_IS_UNCOMPRESSED);
> > +
> > +     if (components_num > 1) {
>
> Ditto: >= 3
>
> > +             u32 h = cf->height;
> > +             u32 w = cf->width;
> > +
> > +             if (!(hdr_flags & FWHT_FL_CHROMA_FULL_HEIGHT))
> > +                     h /= 2;
> > +             if (!(hdr_flags & FWHT_FL_CHROMA_FULL_WIDTH))
> > +                     w /= 2;
> > +             decode_plane(cf, &rlco, ref->cb, h, w,
> > +                     hdr_flags & FWHT_FL_CB_IS_UNCOMPRESSED);
> > +             decode_plane(cf, &rlco, ref->cr, h, w,
> > +                     hdr_flags & FWHT_FL_CR_IS_UNCOMPRESSED);
> > +     }
> >  }
> > diff --git a/drivers/media/platform/vicodec/codec-fwht.h
> b/drivers/media/platform/vicodec/codec-fwht.h
> > index 5750e21f16ac..5e6813aeaa96 100644
> > --- a/drivers/media/platform/vicodec/codec-fwht.h
> > +++ b/drivers/media/platform/vicodec/codec-fwht.h
> > @@ -56,7 +56,7 @@
> >  #define FWHT_MAGIC1 0x4f4f4f4f
> >  #define FWHT_MAGIC2 0xffffffff
> >
> > -#define FWHT_VERSION 1
> > +#define FWHT_VERSION 2
> >
> >  /* Set if this is an interlaced format */
> >  #define FWHT_FL_IS_INTERLACED                BIT(0)
> > @@ -81,6 +81,7 @@ struct fwht_cframe_hdr {
> >       u32 magic2;
> >       __be32 version;
> >       __be32 width, height;
> > +     u8 components_num;
>
> Rather than adding a new field, I prefer that it is encoded in the flags
> field.
> Take two bits (say bits 16 and 17) where you store the number of
> components - 1.
>
> This simplifies decoders since they don't have to deal with different
> structure
> sizes.
>
> >       __be32 flags;
> >       __be32 colorspace;
> >       __be32 xfer_func;
> > @@ -122,6 +123,6 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,
> >                     struct fwht_cframe *cf,
> >                     bool is_intra, bool next_is_intra);
> >  void fwht_decode_frame(struct fwht_cframe *cf, struct fwht_raw_frame
> *ref,
> > -                    u32 hdr_flags);
> > +                    u32 hdr_flags, unsigned int components_num);
> >
> >  #endif
> > diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.c
> b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
> > index 64ad01e99bad..cc9275f3c6cb 100644
> > --- a/drivers/media/platform/vicodec/codec-v4l2-fwht.c
> > +++ b/drivers/media/platform/vicodec/codec-v4l2-fwht.c
> > @@ -11,6 +11,7 @@
> >  #include "codec-v4l2-fwht.h"
> >
> >  static const struct v4l2_fwht_pixfmt_info v4l2_fwht_pixfmts[] = {
> > +     { V4L2_PIX_FMT_GREY,    1, 1, 1, 1, 0, 1, 1, 1},
> >       { V4L2_PIX_FMT_YUV420,  1, 3, 2, 1, 1, 2, 2, 3},
> >       { V4L2_PIX_FMT_YVU420,  1, 3, 2, 1, 1, 2, 2, 3},
> >       { V4L2_PIX_FMT_YUV422P, 1, 2, 1, 1, 1, 2, 1, 3},
> > @@ -76,6 +77,9 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, u8
> *p_in, u8 *p_out)
> >       rf.components_num = info->components_num;
> >
> >       switch (info->id) {
> > +     case V4L2_PIX_FMT_GREY:
> > +             rf.cb = rf.cr = NULL;
> > +             break;
> >       case V4L2_PIX_FMT_YUV420:
> >               rf.cb = rf.luma + size;
> >               rf.cr = rf.cb + size / 4;
> > @@ -166,6 +170,7 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state,
> u8 *p_in, u8 *p_out)
> >       p_hdr->version = htonl(FWHT_VERSION);
> >       p_hdr->width = htonl(cf.width);
> >       p_hdr->height = htonl(cf.height);
> > +     p_hdr->components_num = info->components_num;
> >       if (encoding & FWHT_LUMA_UNENCODED)
> >               flags |= FWHT_FL_LUMA_IS_UNCOMPRESSED;
> >       if (encoding & FWHT_CB_UNENCODED)
> > @@ -196,6 +201,7 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state,
> u8 *p_in, u8 *p_out)
> >       struct fwht_cframe_hdr *p_hdr;
> >       struct fwht_cframe cf;
> >       u8 *p;
> > +     unsigned int components_num;
>
> This should default to 3.
>
> >
> >       if (!state->info)
> >               return -EINVAL;
> > @@ -204,6 +210,7 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state,
> u8 *p_in, u8 *p_out)
> >       cf.width = ntohl(p_hdr->width);
> >       cf.height = ntohl(p_hdr->height);
> >       flags = ntohl(p_hdr->flags);
> > +     components_num = p_hdr->components_num;
>
> Only read this if the version is 2. If the version is 1, then it defaults
> to 3.
> And of course it should read the flags for the number of components as
> mentioned
> above.
>
> >       state->colorspace = ntohl(p_hdr->colorspace);
> >       state->xfer_func = ntohl(p_hdr->xfer_func);
> >       state->ycbcr_enc = ntohl(p_hdr->ycbcr_enc);
> > @@ -225,9 +232,12 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state,
> u8 *p_in, u8 *p_out)
> >       if (!(flags & FWHT_FL_CHROMA_FULL_HEIGHT))
> >               chroma_size /= 2;
> >
> > -     fwht_decode_frame(&cf, &state->ref_frame, flags);
> > +     fwht_decode_frame(&cf, &state->ref_frame, flags, components_num);
> >
> >       switch (state->info->id) {
> > +     case V4L2_PIX_FMT_GREY:
> > +             memcpy(p_out, state->ref_frame.luma, size);
> > +             break;
> >       case V4L2_PIX_FMT_YUV420:
> >       case V4L2_PIX_FMT_YUV422P:
> >               memcpy(p_out, state->ref_frame.luma, size);
> > diff --git a/drivers/media/platform/vicodec/vicodec-core.c
> b/drivers/media/platform/vicodec/vicodec-core.c
> > index fb6d5e9a06ab..945b54efd4bd 100644
> > --- a/drivers/media/platform/vicodec/vicodec-core.c
> > +++ b/drivers/media/platform/vicodec/vicodec-core.c
> > @@ -993,6 +993,12 @@ static int vicodec_start_streaming(struct vb2_queue
> *q,
> >       unsigned int size = q_data->width * q_data->height;
> >       const struct v4l2_fwht_pixfmt_info *info = q_data->info;
> >       unsigned int chroma_div = info->width_div * info->height_div;
> > +     unsigned int total_planes_size;
> > +
> > +     if (info->components_num == 1)
>
> Use < 3
>

Hi,
But this case handles the specific case where the number of components is 1.


> > +             total_planes_size = size;
> > +     else
> > +             total_planes_size = size + 2 * (size / chroma_div);
> >
> >       q_data->sequence = 0;
> >
> > @@ -1002,10 +1008,8 @@ static int vicodec_start_streaming(struct
> vb2_queue *q,
> >       state->width = q_data->width;
> >       state->height = q_data->height;
> >       state->ref_frame.width = state->ref_frame.height = 0;
> > -     state->ref_frame.luma = kvmalloc(size + 2 * size / chroma_div,
> > -                                      GFP_KERNEL);
> > -     ctx->comp_max_size = size + 2 * size / chroma_div +
> > -                          sizeof(struct fwht_cframe_hdr);
> > +     state->ref_frame.luma = kvmalloc(total_planes_size, GFP_KERNEL);
> > +     ctx->comp_max_size = total_planes_size + sizeof(struct
> fwht_cframe_hdr);
> >       state->compressed_frame = kvmalloc(ctx->comp_max_size, GFP_KERNEL);
> >       if (!state->ref_frame.luma || !state->compressed_frame) {
> >               kvfree(state->ref_frame.luma);
> > @@ -1013,8 +1017,13 @@ static int vicodec_start_streaming(struct
> vb2_queue *q,
> >               vicodec_return_bufs(q, VB2_BUF_STATE_QUEUED);
> >               return -ENOMEM;
> >       }
> > -     state->ref_frame.cb = state->ref_frame.luma + size;
> > -     state->ref_frame.cr = state->ref_frame.cb + size / chroma_div;
> > +     if (info->id == V4L2_PIX_FMT_FWHT || info->components_num > 1) {
>
> >= 3
>
> > +             state->ref_frame.cb = state->ref_frame.luma + size;
> > +             state->ref_frame.cr = state->ref_frame.cb + size /
> chroma_div;
> > +     } else {
> > +             state->ref_frame.cb = NULL;
> > +             state->ref_frame.cr = NULL;
> > +     }
> >       ctx->last_src_buf = NULL;
> >       ctx->last_dst_buf = NULL;
> >       state->gop_cnt = 0;
> >
>
> Regards,
>
>         Hans
>

--00000000000024882c0579742cf8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon=
, Oct 29, 2018 at 11:23 AM Hans Verkuil &lt;<a href=3D"mailto:hverkuil@xs4a=
ll.nl">hverkuil@xs4all.nl</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">Hi Dafna,<br>
<br>
Looks good overall, but I do have some - mostly minor - comments:<br>
<br>
On 10/24/2018 08:41 PM, Dafna Hirschfeld wrote:<br>
&gt; Add support for single plane greyscale format V4L2_PIX_FMT_GREY.<br>
&gt; Also change the header of the encoded file to include the number<br>
&gt; of components.<br>
&gt; <br>
&gt; Signed-off-by: Dafna Hirschfeld &lt;<a href=3D"mailto:dafna3@gmail.com=
" target=3D"_blank">dafna3@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/media/platform/vicodec/codec-fwht.c=C2=A0 =C2=A0| 56 +++=
++++++++--------<br>
&gt;=C2=A0 drivers/media/platform/vicodec/codec-fwht.h=C2=A0 =C2=A0|=C2=A0 =
5 +-<br>
&gt;=C2=A0 .../media/platform/vicodec/codec-v4l2-fwht.c=C2=A0 | 12 +++-<br>
&gt;=C2=A0 drivers/media/platform/vicodec/vicodec-core.c | 21 +++++--<br>
&gt;=C2=A0 4 files changed, 61 insertions(+), 33 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/media/platform/vicodec/codec-fwht.c b/drivers/med=
ia/platform/vicodec/codec-fwht.c<br>
&gt; index 36656031b295..91bfd1d9182b 100644<br>
&gt; --- a/drivers/media/platform/vicodec/codec-fwht.c<br>
&gt; +++ b/drivers/media/platform/vicodec/codec-fwht.c<br>
&gt; @@ -753,9 +753,6 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0__be16 *rlco =3D cf-&gt;rlc_data;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0__be16 *rlco_max;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 encoding;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0u32 chroma_h =3D frm-&gt;height / frm-&gt;height_=
div;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0u32 chroma_w =3D frm-&gt;width / frm-&gt;width_di=
v;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0unsigned int chroma_size =3D chroma_h * chroma_w;=
<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rlco_max =3D rlco + size / 2 - 256;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0encoding =3D encode_plane(frm-&gt;luma, ref_=
frm-&gt;luma, &amp;rlco, rlco_max, cf,<br>
&gt; @@ -764,20 +761,27 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (encoding &amp; FWHT_FRAME_UNENCODED)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0encoding |=3D FW=
HT_LUMA_UNENCODED;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0encoding &amp;=3D ~FWHT_FRAME_UNENCODED;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0rlco_max =3D rlco + chroma_size / 2 - 256;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0encoding |=3D encode_plane(frm-&gt;cb, ref_frm-&g=
t;cb, &amp;rlco, rlco_max, cf,<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (frm-&gt;components_num &gt; 1) {<br>
<br>
Just to be on the safe side, change this to:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 frm-&gt;components_num &gt;=3D 3<br>
<br>
since the code inside the if statements assumes that there are at least<br>
three components and it would fail if components_num =3D=3D 2.<br>
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 chroma_h =3D frm-=
&gt;height / frm-&gt;height_div;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 chroma_w =3D frm-=
&gt;width / frm-&gt;width_div;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int chroma_s=
ize =3D chroma_h * chroma_w;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rlco_max =3D rlco + c=
hroma_size / 2 - 256;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0encoding |=3D encode_=
plane(frm-&gt;cb, ref_frm-&gt;cb, &amp;rlco, rlco_max, cf,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 chroma_h, chroma_w,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 frm-&gt;chroma_step, is_intra, ne=
xt_is_intra);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (encoding &amp; FWHT_FRAME_UNENCODED)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0encoding |=3D FWHT_CB=
_UNENCODED;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0encoding &amp;=3D ~FWHT_FRAME_UNENCODED;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0rlco_max =3D rlco + chroma_size / 2 - 256;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0encoding |=3D encode_plane(frm-&gt;cr, ref_frm-&g=
t;cr, &amp;rlco, rlco_max, cf,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (encoding &amp; FW=
HT_FRAME_UNENCODED)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0encoding |=3D FWHT_CB_UNENCODED;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0encoding &amp;=3D ~FW=
HT_FRAME_UNENCODED;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rlco_max =3D rlco + c=
hroma_size / 2 - 256;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0encoding |=3D encode_=
plane(frm-&gt;cr, ref_frm-&gt;cr, &amp;rlco, rlco_max, cf,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 chroma_h, chroma_w,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 frm-&gt;chroma_step, is_intra, ne=
xt_is_intra);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (encoding &amp; FWHT_FRAME_UNENCODED)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0encoding |=3D FWHT_CR=
_UNENCODED;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0encoding &amp;=3D ~FWHT_FRAME_UNENCODED;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (encoding &amp; FW=
HT_FRAME_UNENCODED)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0encoding |=3D FWHT_CR_UNENCODED;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0encoding &amp;=3D ~FW=
HT_FRAME_UNENCODED;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cf-&gt;size =3D (rlco - cf-&gt;rlc_data) * s=
izeof(*rlco);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return encoding;<br>
&gt;=C2=A0 }<br>
&gt; @@ -836,20 +840,24 @@ static void decode_plane(struct fwht_cframe *cf,=
 const __be16 **rlco, u8 *ref,<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 void fwht_decode_frame(struct fwht_cframe *cf, struct fwht_raw_f=
rame *ref,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 u32 hdr_flags)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 u32 hdr_flags, unsigned int components_num)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0const __be16 *rlco =3D cf-&gt;rlc_data;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0u32 h =3D cf-&gt;height / 2;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0u32 w =3D cf-&gt;width / 2;<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (hdr_flags &amp; FWHT_FL_CHROMA_FULL_HEIGHT)<b=
r>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0h *=3D 2;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (hdr_flags &amp; FWHT_FL_CHROMA_FULL_WIDTH)<br=
>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0w *=3D 2;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0decode_plane(cf, &amp;rlco, ref-&gt;luma, cf=
-&gt;height, cf-&gt;width,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 h=
dr_flags &amp; FWHT_FL_LUMA_IS_UNCOMPRESSED);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0decode_plane(cf, &amp;rlco, ref-&gt;cb, h, w,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdr_fl=
ags &amp; FWHT_FL_CB_IS_UNCOMPRESSED);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0decode_plane(cf, &amp;rlco, ref-&gt;cr, h, w,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdr_fl=
ags &amp; FWHT_FL_CR_IS_UNCOMPRESSED);<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (components_num &gt; 1) {<br>
<br>
Ditto: &gt;=3D 3<br>
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 h =3D cf-&gt;heig=
ht;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 w =3D cf-&gt;widt=
h;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(hdr_flags &amp;=
 FWHT_FL_CHROMA_FULL_HEIGHT))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0h /=3D 2;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(hdr_flags &amp;=
 FWHT_FL_CHROMA_FULL_WIDTH))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0w /=3D 2;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0decode_plane(cf, &amp=
;rlco, ref-&gt;cb, h, w,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0hdr_flags &amp; FWHT_FL_CB_IS_UNCOMPRESSED);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0decode_plane(cf, &amp=
;rlco, ref-&gt;cr, h, w,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0hdr_flags &amp; FWHT_FL_CR_IS_UNCOMPRESSED);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 }<br>
&gt; diff --git a/drivers/media/platform/vicodec/codec-fwht.h b/drivers/med=
ia/platform/vicodec/codec-fwht.h<br>
&gt; index 5750e21f16ac..5e6813aeaa96 100644<br>
&gt; --- a/drivers/media/platform/vicodec/codec-fwht.h<br>
&gt; +++ b/drivers/media/platform/vicodec/codec-fwht.h<br>
&gt; @@ -56,7 +56,7 @@<br>
&gt;=C2=A0 #define FWHT_MAGIC1 0x4f4f4f4f<br>
&gt;=C2=A0 #define FWHT_MAGIC2 0xffffffff<br>
&gt;=C2=A0 <br>
&gt; -#define FWHT_VERSION 1<br>
&gt; +#define FWHT_VERSION 2<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 /* Set if this is an interlaced format */<br>
&gt;=C2=A0 #define FWHT_FL_IS_INTERLACED=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 BIT(0)<br>
&gt; @@ -81,6 +81,7 @@ struct fwht_cframe_hdr {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 magic2;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0__be32 version;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0__be32 width, height;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0u8 components_num;<br>
<br>
Rather than adding a new field, I prefer that it is encoded in the flags fi=
eld.<br>
Take two bits (say bits 16 and 17) where you store the number of components=
 - 1.<br>
<br>
This simplifies decoders since they don&#39;t have to deal with different s=
tructure<br>
sizes.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0__be32 flags;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0__be32 colorspace;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0__be32 xfer_func;<br>
&gt; @@ -122,6 +123,6 @@ u32 fwht_encode_frame(struct fwht_raw_frame *frm,<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0struct fwht_cframe *cf,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0bool is_intra, bool next_is_intra);<br>
&gt;=C2=A0 void fwht_decode_frame(struct fwht_cframe *cf, struct fwht_raw_f=
rame *ref,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 u32 hdr_flags);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 u32 hdr_flags, unsigned int components_num);<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 #endif<br>
&gt; diff --git a/drivers/media/platform/vicodec/codec-v4l2-fwht.c b/driver=
s/media/platform/vicodec/codec-v4l2-fwht.c<br>
&gt; index 64ad01e99bad..cc9275f3c6cb 100644<br>
&gt; --- a/drivers/media/platform/vicodec/codec-v4l2-fwht.c<br>
&gt; +++ b/drivers/media/platform/vicodec/codec-v4l2-fwht.c<br>
&gt; @@ -11,6 +11,7 @@<br>
&gt;=C2=A0 #include &quot;codec-v4l2-fwht.h&quot;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 static const struct v4l2_fwht_pixfmt_info v4l2_fwht_pixfmts[] =
=3D {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{ V4L2_PIX_FMT_GREY,=C2=A0 =C2=A0 1, 1, 1, 1, 0, =
1, 1, 1},<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0{ V4L2_PIX_FMT_YUV420,=C2=A0 1, 3, 2, 1, 1, =
2, 2, 3},<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0{ V4L2_PIX_FMT_YVU420,=C2=A0 1, 3, 2, 1, 1, =
2, 2, 3},<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0{ V4L2_PIX_FMT_YUV422P, 1, 2, 1, 1, 1, 2, 1,=
 3},<br>
&gt; @@ -76,6 +77,9 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state, =
u8 *p_in, u8 *p_out)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rf.components_num =3D info-&gt;components_nu=
m;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (info-&gt;id) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0case V4L2_PIX_FMT_GREY:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf.cb =3D <a href=3D"=
http://rf.cr" rel=3D"noreferrer" target=3D"_blank">rf.cr</a> =3D NULL;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case V4L2_PIX_FMT_YUV420:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf.cb =3D rf.lum=
a + size;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http:=
//rf.cr" rel=3D"noreferrer" target=3D"_blank">rf.cr</a> =3D rf.cb + size / =
4;<br>
&gt; @@ -166,6 +170,7 @@ int v4l2_fwht_encode(struct v4l2_fwht_state *state=
, u8 *p_in, u8 *p_out)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0p_hdr-&gt;version =3D htonl(FWHT_VERSION);<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0p_hdr-&gt;width =3D htonl(cf.width);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0p_hdr-&gt;height =3D htonl(cf.height);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0p_hdr-&gt;components_num =3D info-&gt;components_=
num;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (encoding &amp; FWHT_LUMA_UNENCODED)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0flags |=3D FWHT_=
FL_LUMA_IS_UNCOMPRESSED;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (encoding &amp; FWHT_CB_UNENCODED)<br>
&gt; @@ -196,6 +201,7 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state=
, u8 *p_in, u8 *p_out)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct fwht_cframe_hdr *p_hdr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct fwht_cframe cf;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 *p;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0unsigned int components_num;<br>
<br>
This should default to 3.<br>
<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!state-&gt;info)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt; @@ -204,6 +210,7 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *state=
, u8 *p_in, u8 *p_out)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cf.width =3D ntohl(p_hdr-&gt;width);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cf.height =3D ntohl(p_hdr-&gt;height);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0flags =3D ntohl(p_hdr-&gt;flags);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0components_num =3D p_hdr-&gt;components_num;<br>
<br>
Only read this if the version is 2. If the version is 1, then it defaults t=
o 3.<br>
And of course it should read the flags for the number of components as ment=
ioned<br>
above.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0state-&gt;colorspace =3D ntohl(p_hdr-&gt;col=
orspace);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0state-&gt;xfer_func =3D ntohl(p_hdr-&gt;xfer=
_func);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0state-&gt;ycbcr_enc =3D ntohl(p_hdr-&gt;ycbc=
r_enc);<br>
&gt; @@ -225,9 +232,12 @@ int v4l2_fwht_decode(struct v4l2_fwht_state *stat=
e, u8 *p_in, u8 *p_out)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(flags &amp; FWHT_FL_CHROMA_FULL_HEIGHT=
))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0chroma_size /=3D=
 2;<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0fwht_decode_frame(&amp;cf, &amp;state-&gt;ref_fra=
me, flags);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0fwht_decode_frame(&amp;cf, &amp;state-&gt;ref_fra=
me, flags, components_num);<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (state-&gt;info-&gt;id) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0case V4L2_PIX_FMT_GREY:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(p_out, state-&=
gt;ref_frame.luma, size);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case V4L2_PIX_FMT_YUV420:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case V4L2_PIX_FMT_YUV422P:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(p_out, st=
ate-&gt;ref_frame.luma, size);<br>
&gt; diff --git a/drivers/media/platform/vicodec/vicodec-core.c b/drivers/m=
edia/platform/vicodec/vicodec-core.c<br>
&gt; index fb6d5e9a06ab..945b54efd4bd 100644<br>
&gt; --- a/drivers/media/platform/vicodec/vicodec-core.c<br>
&gt; +++ b/drivers/media/platform/vicodec/vicodec-core.c<br>
&gt; @@ -993,6 +993,12 @@ static int vicodec_start_streaming(struct vb2_que=
ue *q,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int size =3D q_data-&gt;width * q_d=
ata-&gt;height;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0const struct v4l2_fwht_pixfmt_info *info =3D=
 q_data-&gt;info;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int chroma_div =3D info-&gt;width_d=
iv * info-&gt;height_div;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0unsigned int total_planes_size;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (info-&gt;components_num =3D=3D 1)<br>
<br>
Use &lt; 3<br></blockquote><div><br></div><div>Hi,</div><div>But this case =
handles the specific case where the number of components is 1.</div><div><b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0total_planes_size =3D=
 size;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0else<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0total_planes_size =3D=
 size + 2 * (size / chroma_div);<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0q_data-&gt;sequence =3D 0;<br>
&gt;=C2=A0 <br>
&gt; @@ -1002,10 +1008,8 @@ static int vicodec_start_streaming(struct vb2_q=
ueue *q,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0state-&gt;width =3D q_data-&gt;width;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0state-&gt;height =3D q_data-&gt;height;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0state-&gt;ref_frame.width =3D state-&gt;ref_=
frame.height =3D 0;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0state-&gt;ref_frame.luma =3D kvmalloc(size + 2 * =
size / chroma_div,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 GFP_KERNEL)=
;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0ctx-&gt;comp_max_size =3D size + 2 * size / chrom=
a_div +<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 sizeof(struct fwht_cframe_hdr);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0state-&gt;ref_frame.luma =3D kvmalloc(total_plane=
s_size, GFP_KERNEL);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ctx-&gt;comp_max_size =3D total_planes_size + siz=
eof(struct fwht_cframe_hdr);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0state-&gt;compressed_frame =3D kvmalloc(ctx-=
&gt;comp_max_size, GFP_KERNEL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!state-&gt;ref_frame.luma || !state-&gt;=
compressed_frame) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kvfree(state-&gt=
;ref_frame.luma);<br>
&gt; @@ -1013,8 +1017,13 @@ static int vicodec_start_streaming(struct vb2_q=
ueue *q,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vicodec_return_b=
ufs(q, VB2_BUF_STATE_QUEUED);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENOMEM;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -=C2=A0 =C2=A0 =C2=A0state-&gt;ref_frame.cb =3D state-&gt;ref_frame.lu=
ma + size;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0state-&gt;<a href=3D"http://ref_frame.cr" rel=3D"=
noreferrer" target=3D"_blank">ref_frame.cr</a> =3D state-&gt;ref_frame.cb +=
 size / chroma_div;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (info-&gt;id =3D=3D V4L2_PIX_FMT_FWHT || info-=
&gt;components_num &gt; 1) {<br>
<br>
&gt;=3D 3<br>
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0state-&gt;ref_frame.c=
b =3D state-&gt;ref_frame.luma + size;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0state-&gt;<a href=3D"=
http://ref_frame.cr" rel=3D"noreferrer" target=3D"_blank">ref_frame.cr</a> =
=3D state-&gt;ref_frame.cb + size / chroma_div;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0state-&gt;ref_frame.c=
b =3D NULL;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0state-&gt;<a href=3D"=
http://ref_frame.cr" rel=3D"noreferrer" target=3D"_blank">ref_frame.cr</a> =
=3D NULL;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ctx-&gt;last_src_buf =3D NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ctx-&gt;last_dst_buf =3D NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0state-&gt;gop_cnt =3D 0;<br>
&gt; <br>
<br>
Regards,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Hans<br>
</blockquote></div></div>

--00000000000024882c0579742cf8--

