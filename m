X-GM-THRID: 6948889025177452544
X-Received: by 2002:a05:6512:31c2:: with SMTP id j2mr8897433lfe.77.1617919840232;
        Thu, 08 Apr 2021 15:10:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3d16:: with SMTP id d22ls6518466lfv.1.gmail; Thu,
 08 Apr 2021 15:10:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxPk31tCrsmc66gBHUXVPL3wB82In2aosOdeeF9A5EPizTPT8UgMYIipzQmo10aaVZ4f8jb
X-Received: by 2002:a05:6512:320a:: with SMTP id d10mr8345055lfe.587.1617919838378;
        Thu, 08 Apr 2021 15:10:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617919838; cv=none;
        d=google.com; s=arc-20160816;
        b=uv2nih4DztQ6oojXHHL6D+n8ooKc20gMzNNeHVMUfdSLetR/tyVgNxYECMO8WdYJu7
         vaS5B1p9Gy4fmYWZn3MbJkvdD08GM8npnSoeG/ZfGkVusgSIbHY+SuWR4QGAtWHHUnP7
         GjfsRNHwV2Z3an06sc6a3qS6NmyM8c6vxyzUvCLpXlSB4BmTfGgxVOZfD5apO32UCaBI
         l0zwpDfiQVjgWrhe8L0nzOqRRp+qPriBdlZsrRnfaqdphqKvJXSJ2NAby1PMEUkNQcph
         ibz38B49zohqouKR2ylGAXV+1nbS80r4tVaId1NgOC5ROF2GPNDuBlyJr8jhJH0Btsou
         USyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=8loKpHwAXKbgrJl5Am7KzsCvuvGpjhIPZufaWFg8iiU=;
        b=xAJ4Yya2ig55rFkyvUd9MDTfLP1rnENSrBhAM3Q29ua9MwLlPAGIP5Tw3nBlrTO4PL
         uL0Op9cA9ZlAJdNRYUg0dChZVfM3Yhk/oXcilWHIRWkQEPrh4S76nNq+WRIT4JKh2VXI
         RjfXr030JOQJexKX25nqyVaamqsQ2fPcb7tldx8OrXSZDMxUAZRWewC5lU80rGsx7ETR
         iWkkWGs9UimFthwuAOe0E3Nrcg2bdf1ttI6EPGUoDO3gdHU1Vyzh8e8upJizNkxsblmb
         681BbSXIvi49mp+95OWpJWTAapl8c0DuSMN6WjKQ0B5ObqikKgsitDJBCZfflDE7vriL
         gjMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b12si47985lfv.7.2021.04.08.15.10.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 15:10:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AdNCeYKmHYVYKa97vmccqIKCzYUPpDfLN3DAb?=
 =?us-ascii?q?vn1ZSRFFG/GwvcaogfgdyFvImC8cMUtQ/eyoFaGcTRrnnqJdzpIWOd6ZNjXOmG?=
 =?us-ascii?q?ztF4166Jun/juIIUzD38p88YslTKRkEt33CjFB/KPHyS21CcwpztXC0I3Av4fj?=
 =?us-ascii?q?5kxgRw1rdK1shj0RYjqzKUF4SBJLApA0DvOnl6l6jgC9cncaZNnTPBc4dtXEzu?=
 =?us-ascii?q?emqLvbexIcQzYo5A6S5AnYioLSIlyomi0TVD5C2t4ZnFTtmQaR3Mqej80=3D?=
X-IronPort-AV: E=Sophos;i="5.82,207,1613430000"; 
   d="scan'208";a="502299129"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Apr 2021 00:10:06 +0200
Date: Fri, 9 Apr 2021 00:10:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH 2/2] media: zoran: replace bit shifts
 by BIT() macro
In-Reply-To: <YG95l9b++d+RFrDa@kali>
Message-ID: <alpine.DEB.2.22.394.2104090009220.21785@hadrien>
References: <cover.1617912177.git.mitaliborkar810@gmail.com> <ac8ec2b70ac2cc7c541c05a1d9a8db1fe79df793.1617912177.git.mitaliborkar810@gmail.com> <alpine.DEB.2.22.394.2104082314090.21785@hadrien> <YG95l9b++d+RFrDa@kali>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 9 Apr 2021, Mitali Borkar wrote:

> On Thu, Apr 08, 2021 at 11:15:07PM +0200, Julia Lawall wrote:
> >
> >
> > On Fri, 9 Apr 2021, Mitali Borkar wrote:
> >
> > > Added #include <linux/bitops.h> and replaced bit shifts by BIT() macro.
> > > This BIT() macro from linux/bitops.h is used to define ZR36057_VFESPFR_* bitmasks.
> > > Use of macro is better and neater. It maintains consistency.
> > > Reported by checkpatch.
> > >
> > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > ---
> > >  drivers/staging/media/zoran/zr36057.h | 10 ++++++----
> > >  1 file changed, 6 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
> > > index a2a75fd9f535..93075459f910 100644
> > > --- a/drivers/staging/media/zoran/zr36057.h
> > > +++ b/drivers/staging/media/zoran/zr36057.h
> > > @@ -8,6 +8,8 @@
> > >  #ifndef _ZR36057_H_
> > >  #define _ZR36057_H_
> > >
> > > +#include <linux/bitops.h>
> > > +
> > >  /* Zoran ZR36057 registers */
> > >
> > >  #define ZR36057_VFEHCR          0x000	/* Video Front End, Horizontal Configuration Register */
> > > @@ -31,12 +33,12 @@
> > >  #define ZR36057_VFESPFR_VER_DCM          8
> > >  #define ZR36057_VFESPFR_DISP_MODE        6
> > >  #define ZR36057_VFESPFR_YUV422          (0 << 3)
> > > -#define ZR36057_VFESPFR_RGB888          (1 << 3)
> > > +#define ZR36057_VFESPFR_RGB888          BIT(3)
> >
> > Uniformity is generally considered to be more important than using BIT.
> > Having only a few constants defined using BIT is a bit strange.
> >
> Okay Ma'am. Can you please tell me on how to proceed now? I am not sure
> how to proceed.

I think that this code should just be left as is.

Checkpatch makes suggestions.  Its suggestions are not always appropriate
for the context.

julia

>
> > julia
> >
> > >  #define ZR36057_VFESPFR_RGB565          (2 << 3)
> > >  #define ZR36057_VFESPFR_RGB555          (3 << 3)
> > > -#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
> > > -#define ZR36057_VFESPFR_PACK24          (1 << 1)
> > > -#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)
> > > +#define ZR36057_VFESPFR_ERR_DIF          BIT(2)
> > > +#define ZR36057_VFESPFR_PACK24          BIT(1)
> > > +#define ZR36057_VFESPFR_LITTLE_ENDIAN    BIT(0)
> > >
> > >  #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
> > >
> > > --
> > > 2.30.2
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ac8ec2b70ac2cc7c541c05a1d9a8db1fe79df793.1617912177.git.mitaliborkar810%40gmail.com.
> > >
>

