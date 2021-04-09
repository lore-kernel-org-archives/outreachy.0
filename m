X-GM-THRID: 6948889025177452544
X-Received: by 2002:adf:df8b:: with SMTP id z11mr18125296wrl.133.1617982179990;
        Fri, 09 Apr 2021 08:29:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cc94:: with SMTP id p20ls4439242wma.0.gmail; Fri, 09 Apr
 2021 08:29:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzKZVRFtMaAWiGNdcuIon8z0j7OcHau7tjPRVcb86Uf/qzahxN6Dv67uWYbYfBEELmK1vir
X-Received: by 2002:a1c:6489:: with SMTP id y131mr1384453wmb.0.1617982178502;
        Fri, 09 Apr 2021 08:29:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617982178; cv=none;
        d=google.com; s=arc-20160816;
        b=qKj9U9IknHhnuieA1KoLyedbWHZg2DtN3bZAzf6fYG8PCpPkJbNAzLBAKIJHRECcp7
         fqsFPJTVh+v78UKPb1RwsO8ekXuw64fRi36smCMq4J1mqdGfalaw062eQDCmYZAEDLbL
         OGDk6SOlrMAUz8Q1EbFPzKN04Ga8K+2Jfb3syWzOAg8yqAmEYWBlInpxE4X7B5ixLPWo
         uYfNGEDxcO5AFvSLdfdUIhxppTL95bYtdVb/BZib1Mv8OtQ0zalN91ALRf+zTiEMd5Qc
         uVUgwn/a9VC9pKMPNHEtwep0mNsuJNrnaYB5+Dhymo0Tw3FqO1VA20CdzEwSa2rwTEub
         2LcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=NvUR7oi87XlL+985w0Fj33KwdpNdtAONUBPCLRisXmc=;
        b=v2xgX1X/jfoGrHU4B0zkCcIGmWBskdnxDgReIoOBAN/7hD6KyVZ6ealoyfGKxOpIXb
         qE0dq4h70nq9VRRNli4JRh/UOUIJM/xKU5ZL3gEPJBx7qgTwQMERygAJmVcD/rybMx5L
         1ooo3pJd3Jpoad9dtS59AgYHBXTTBBB0rFoROiIy0fMYDvz6DHWZ5x0MecmAY6YZLuyk
         PWe28+oXRgaV1vILohtIfG+YF9BAydYGHY1AYsvOuSd3abb/k33WZQxIL4o7nx29n1sE
         8lsWVH9y4RNIZ2B0z/+xSObAA97dNW3nMb2oixxlvDR9VOOFAR090ansxWfxTwizKLSJ
         o9Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t124si775536wmb.3.2021.04.09.08.29.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Apr 2021 08:29:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AvN0Vi643PBWk+UYPHQPXwHbXdLJzesId70hD?=
 =?us-ascii?q?6mlaTxtJfsuE0/20lPMA2hPuzBoXUncsmdePUZPgfVr385lp7Y4NeYqzRQWOgg?=
 =?us-ascii?q?WVBaxr8IeK+UyFJwTQ7ehYvJ0NT4FbKPndSWd3ltz75g7QKbYd6f2K6rqhi+ub?=
 =?us-ascii?q?71oFd3AJV4ha4w10ChmWHyRNLWEsb6YRL5aA+tFB4wOpZHV/VLXZOlA+Q+PBq9?=
 =?us-ascii?q?fX/aiKXTc6AXcchzWmvHeHzPrBHxKFxRcCQ1p0sNEf2FmAtRf46KWlu/SS0QTd?=
 =?us-ascii?q?yGfX0pRTlLLau75+Lf3Jt+xQEBLQsEKTQLlZMofy2wwInA=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,209,1613430000"; 
   d="scan'208";a="378232684"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Apr 2021 17:29:37 +0200
Date: Fri, 9 Apr 2021 17:29:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: Hans Verkuil <hverkuil@xs4all.nl>, clabbe@baylibre.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org, linux-media@vger.kernel.org, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] media: zoran: add spaces
 around '<<'
In-Reply-To: <YHBukmdxSiRc+K6I@kali>
Message-ID: <alpine.DEB.2.22.394.2104091729080.13602@hadrien>
References: <cover.1617912177.git.mitaliborkar810@gmail.com> <8e8ac690d97478f7cbb9b91d46ef7a95e4444e5f.1617912177.git.mitaliborkar810@gmail.com> <f196d8ff-e8bf-360e-ee7b-cd2dcafd9742@xs4all.nl> <YHBukmdxSiRc+K6I@kali>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 9 Apr 2021, Mitali Borkar wrote:

> On Fri, Apr 09, 2021 at 09:23:22AM +0200, Hans Verkuil wrote:
> > Hi Mitali,
> >
> > On 08/04/2021 22:38, Mitali Borkar wrote:
> > > Added spaces around '<<' operator to improve readability and meet linux
> > > kernel coding style.
> > > Reported by checkpatch
> > >
> > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > ---
> > >  drivers/staging/media/zoran/zr36057.h | 14 +++++++-------
> > >  1 file changed, 7 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
> > > index 71b651add35a..a2a75fd9f535 100644
> > > --- a/drivers/staging/media/zoran/zr36057.h
> > > +++ b/drivers/staging/media/zoran/zr36057.h
> > > @@ -30,13 +30,13 @@
> > >  #define ZR36057_VFESPFR_HOR_DCM          14
> > >  #define ZR36057_VFESPFR_VER_DCM          8
> > >  #define ZR36057_VFESPFR_DISP_MODE        6
> > > -#define ZR36057_VFESPFR_YUV422          (0<<3)
> > > -#define ZR36057_VFESPFR_RGB888          (1<<3)
> > > -#define ZR36057_VFESPFR_RGB565          (2<<3)
> > > -#define ZR36057_VFESPFR_RGB555          (3<<3)
> > > -#define ZR36057_VFESPFR_ERR_DIF          (1<<2)
> > > -#define ZR36057_VFESPFR_PACK24          (1<<1)
> > > -#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1<<0)
> > > +#define ZR36057_VFESPFR_YUV422          (0 << 3)
> > > +#define ZR36057_VFESPFR_RGB888          (1 << 3)
> > > +#define ZR36057_VFESPFR_RGB565          (2 << 3)
> > > +#define ZR36057_VFESPFR_RGB555          (3 << 3)
> > > +#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
> > > +#define ZR36057_VFESPFR_PACK24          (1 << 1)
> > > +#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)
> > >
> > >  #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
> > >
> > >
> >
> > I looked at that header and it is very messy.
> >
> > Can you make two new patches? The first aligns every nicely, e.g. this:
> >
> > #define ZR36057_VFEHCR          0x000   /* Video Front End, Horizontal Configuration Register */
> > #define ZR36057_VFEHCR_HS_POL             BIT(30)
> > #define ZR36057_VFEHCR_H_START           10
> > #define ZR36057_VFEHCR_H_END            0
> > #define ZR36057_VFEHCR_HMASK            0x3ff
> >
> > should become:
> >
> > /* Video Front End, Horizontal Configuration Register */
> > #define ZR36057_VFEHCR			0x000
> > #define ZR36057_VFEHCR_HS_POL		BIT(30)
> > #define ZR36057_VFEHCR_H_START		10
> > #define ZR36057_VFEHCR_H_END		0
> > #define ZR36057_VFEHCR_HMASK		0x3ff
> >
> > Same for all the other register blocks. Use tabs to do the alignment
> > instead of spaces, as is currently the case.
> >
> Okay Sir, will do this.
>
> > The second patch can replace the (0<<3) etc. to BIT(0).
> >
> Sir may I know how to write (2<<3) in BIT() form? Like I am still
> learning and not sure how to convert this. Should it be BIT(2)? But this
> is only possible for (1<<nr), PLease help me out.

I think that you are correct.  BIT is not usable her.

julia

>
> Thanks.
>
> > That would be a nice cleanup of this rather messy header.
> >
> > Thanks!
> >
> > 	Hans
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YHBukmdxSiRc%2BK6I%40kali.
>

