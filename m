X-GM-THRID: 6948889025177452544
X-Received: by 2002:a05:6512:110d:: with SMTP id l13mr683558lfg.612.1617951651272;
        Fri, 09 Apr 2021 00:00:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a409:: with SMTP id p9ls1893471ljn.0.gmail; Fri, 09 Apr
 2021 00:00:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz2ODR8kX73MV2eOCx0Nv46FqDCcbtf4tHeToxsiXBYFCHS1J2bwc5P+AV7+dSPIJm+iPw0
X-Received: by 2002:a2e:978b:: with SMTP id y11mr8267116lji.452.1617951649354;
        Fri, 09 Apr 2021 00:00:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617951649; cv=none;
        d=google.com; s=arc-20160816;
        b=F5cXzmGDP6FU8TxPEavbP5HY0vZkrYboyLR5Oz8n+qdbI1DLIGaxVHPRPvTftoKkoG
         J7SP9WQVEFb5RD4Ya6wQv654HowD3JM82WyyaS3u1DevAYrBCRl2L+zbhzd1bEbpub8h
         cZF4sA+ExRfoc2xJn2GrHDN4EOhcdeGJ4aoKNJghZarvUscph7eXkMbJ3RsHCfYAi0Su
         mNPsVjVJMz/3GVWr1do6GgLu1BcM6at0X+jTQenSMxst4VVhsSJpuEmXPPY3VwfDNDIa
         41cLiJypU3soOeK8T0+lpjN93jlfzAZRFaxGWrpoT+zvSuk1imBy8AXdN8AD4MCyZTsc
         wIng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=86RgmL+k2f+oAmuXlaMKH0v99LxbS7lgmtJweUgAkF0=;
        b=uWQMkCtQrUEeOSPt3uQpUux8+SnEhdFxGbIJeDVYUsikY3/z8swtgFZLrFEA+Qiq+p
         Ql9HNvwxUsyuSk0v5VE3Ypg4VIwlfuibhcSVDUFNWmCPYM3TiP5nVm0SEyFFPHyh9xvP
         k44dHiYs8u7gyWKIl1yfOMklD4DFovo0atOvqnqvHKcx/iyphlzLF4h7h9tL6Fs99tIb
         5ZEWwTI15lWXHrp3gwRF7rdSXpR81P77QbKiirqVetWCgvkma/UEvd809XX012NgyorF
         lDG4kE37SxGzoka5F0PA4JMJy/rnoBZlHTvh/IFA4uTftgAROMhasf4d9XETMa1KD25b
         8euQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z2si118153ljm.0.2021.04.09.00.00.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Apr 2021 00:00:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AaZky869hf89ZhSeqzB1uk+A3I+orLtY04lQ7?=
 =?us-ascii?q?vn1ZYxpTb8CeioSKlPMUyRf7hF8qKRQdsPqHP7SNRm6ZyI5t7eAqTNWfdSTvpW?=
 =?us-ascii?q?fAFu9fxKT4xTmIIUHD385bkZxtaq1vTOD3ZGIK7vrSxCmdP5IezMKc8Kau7N2/?=
 =?us-ascii?q?815IQRtxY69tqydVYzz1LmRMSANLBYU0GfOnj6J6jgGtdngNYsOwCmNtZYX+ju?=
 =?us-ascii?q?fWn5HrawNuPXUawTSJ5AnD1JfHCRSCmj8RXzRTqI1CzVT4?=
X-IronPort-AV: E=Sophos;i="5.82,208,1613430000"; 
   d="scan'208";a="502341671"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Apr 2021 09:00:48 +0200
Date: Fri, 9 Apr 2021 09:00:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH 2/2] media: zoran: replace bit shifts
 by BIT() macro
In-Reply-To: <YG+OibRNRmILe8nQ@kali>
Message-ID: <alpine.DEB.2.22.394.2104090900350.2852@hadrien>
References: <cover.1617912177.git.mitaliborkar810@gmail.com> <ac8ec2b70ac2cc7c541c05a1d9a8db1fe79df793.1617912177.git.mitaliborkar810@gmail.com> <alpine.DEB.2.22.394.2104082314090.21785@hadrien> <YG95l9b++d+RFrDa@kali> <alpine.DEB.2.22.394.2104090009220.21785@hadrien>
 <YG+OibRNRmILe8nQ@kali>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 9 Apr 2021, Mitali Borkar wrote:

> On Fri, Apr 09, 2021 at 12:10:06AM +0200, Julia Lawall wrote:
> >
> >
> > On Fri, 9 Apr 2021, Mitali Borkar wrote:
> >
> > > On Thu, Apr 08, 2021 at 11:15:07PM +0200, Julia Lawall wrote:
> > > >
> > > >
> > > > On Fri, 9 Apr 2021, Mitali Borkar wrote:
> > > >
> > > > > Added #include <linux/bitops.h> and replaced bit shifts by BIT() macro.
> > > > > This BIT() macro from linux/bitops.h is used to define ZR36057_VFESPFR_* bitmasks.
> > > > > Use of macro is better and neater. It maintains consistency.
> > > > > Reported by checkpatch.
> > > > >
> > > > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > > > ---
> > > > >  drivers/staging/media/zoran/zr36057.h | 10 ++++++----
> > > > >  1 file changed, 6 insertions(+), 4 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
> > > > > index a2a75fd9f535..93075459f910 100644
> > > > > --- a/drivers/staging/media/zoran/zr36057.h
> > > > > +++ b/drivers/staging/media/zoran/zr36057.h
> > > > > @@ -8,6 +8,8 @@
> > > > >  #ifndef _ZR36057_H_
> > > > >  #define _ZR36057_H_
> > > > >
> > > > > +#include <linux/bitops.h>
> > > > > +
> > > > >  /* Zoran ZR36057 registers */
> > > > >
> > > > >  #define ZR36057_VFEHCR          0x000	/* Video Front End, Horizontal Configuration Register */
> > > > > @@ -31,12 +33,12 @@
> > > > >  #define ZR36057_VFESPFR_VER_DCM          8
> > > > >  #define ZR36057_VFESPFR_DISP_MODE        6
> > > > >  #define ZR36057_VFESPFR_YUV422          (0 << 3)
> > > > > -#define ZR36057_VFESPFR_RGB888          (1 << 3)
> > > > > +#define ZR36057_VFESPFR_RGB888          BIT(3)
> > > >
> > > > Uniformity is generally considered to be more important than using BIT.
> > > > Having only a few constants defined using BIT is a bit strange.
> > > >
> > > Okay Ma'am. Can you please tell me on how to proceed now? I am not sure
> > > how to proceed.
> >
> > I think that this code should just be left as is.
> >
> > Checkpatch makes suggestions.  Its suggestions are not always appropriate
> > for the context.
> >
> Okay Ma'am. This means I should not do any changes now. Do I need to do
> something in this patch now? Or move onto next one?

You can move on.

julia

>
> > julia
> >
> > >
> > > > julia
> > > >
> > > > >  #define ZR36057_VFESPFR_RGB565          (2 << 3)
> > > > >  #define ZR36057_VFESPFR_RGB555          (3 << 3)
> > > > > -#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
> > > > > -#define ZR36057_VFESPFR_PACK24          (1 << 1)
> > > > > -#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)
> > > > > +#define ZR36057_VFESPFR_ERR_DIF          BIT(2)
> > > > > +#define ZR36057_VFESPFR_PACK24          BIT(1)
> > > > > +#define ZR36057_VFESPFR_LITTLE_ENDIAN    BIT(0)
> > > > >
> > > > >  #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
> > > > >
> > > > > --
> > > > > 2.30.2
> > > > >
> > > > > --
> > > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ac8ec2b70ac2cc7c541c05a1d9a8db1fe79df793.1617912177.git.mitaliborkar810%40gmail.com.
> > > > >
> > >
>

