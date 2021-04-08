X-GM-THRID: 6948889025177452544
X-Received: by 2002:a05:622a:14d4:: with SMTP id u20mr9998679qtx.185.1617923733400;
        Thu, 08 Apr 2021 16:15:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:f20e:: with SMTP id m14ls4091407qkg.8.gmail; Thu, 08 Apr
 2021 16:15:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyR56WHat1IqJp5bbH1k3O06CR9F/xymrdXo5MAkFvCorUoqyaQm65ESij9x6IKyJRPlFxC
X-Received: by 2002:a37:42cb:: with SMTP id p194mr10491841qka.213.1617923732578;
        Thu, 08 Apr 2021 16:15:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617923732; cv=none;
        d=google.com; s=arc-20160816;
        b=UHBs4QsC5eT4C7Q7bfDWXak4AwnMnzLx1p7cwlxI3ki9Gi8o+W3XO1HSj609HLoI/+
         6NueLFfUVc4RJGhuqyCmgTjUsquPI3yJIBCYlzTsVzBCRphCDYRAVNaGFXNHRv22iJtU
         LhRu/3q/HgdoXX8UFQckm9JsWRt597ojezbTXNDVMVtWxMcBjvirlyTMHJcd8MkL6g64
         m15/cDenJu9dzIzosQGH/Ou2JlfN/6EOzOmFjhOR2XNQx8Xbuk2uhYVQ82HstyK817oG
         sAoUHF/2f0YOKlKAYMamrKZO4/sfdiqpMUbtz9AkCGOox08gzlV4/Hh0fhFBxv5Iwsw7
         xCrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7F1NrpzVcU5GSSnL4Q5tRkk/0OTLWPdILVCrXDKlrcU=;
        b=uHEvren/oGp9q0PzXoeI59GPd4b/a9dYDU2p6mDG1xeb3fkbRO1qbVV3adZhAYcQfq
         WY2tj1xQAZWaBkwoXWnoR3P78l/joxhcelsX2L28venltuOhXGCcaMR4dZioQjXUKajD
         CqhL9UoGyvuroNyZVRrQ/6EQe9wvV9A/qBggtrc+3owcKk6bBjDqsIuJTvQbcOVeaWNq
         6OmagYMOTmnszuAhr+VGWLyRSTatRRYOAGgZUhAP7hy1Ibz5uncEdMa//dPfyMaVvrjP
         OtDSQdqWW7yvraaOqv9evNIoGyo3cq2+X4+eTsZv55qZK4NMV1Ss6hgvUn4xuZywWoi+
         pIPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KmY6O8cm;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id b201si68897qkg.6.2021.04.08.16.15.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 16:15:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KmY6O8cm;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62c.google.com with SMTP id u7so9591plr.6
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 16:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=7F1NrpzVcU5GSSnL4Q5tRkk/0OTLWPdILVCrXDKlrcU=;
        b=KmY6O8cmvy4x6bVD2N6lN+Kq4m6736F9Xq4qXpte+Gh/F0Zggdei+qWR0z2LjuxUg6
         LzVjq1FJi87en+NkdZj6veNyK4V/ej67b83CBB1qxaap8BFYlzzuhW7bCdY3RGo5vGvX
         Yo5FWT4cnE9EbwLQZaIVWRGVZCufZWkJfOps1z4Q9b71qj3w4zeliCJf84QGQabNYsIl
         EfDF4wUeaCBjp0X18K4e48TBgASYE3Pv484VS3YJOZdoOxMd5ZQz/M/N57MxmS5h5XQZ
         WqQuQ7iyWRPLlbFOiCuy91eCMxSQhyC3LZy+CPlBdKMDL5buTv/khV5lbaTVVpZJqVg0
         hULA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=7F1NrpzVcU5GSSnL4Q5tRkk/0OTLWPdILVCrXDKlrcU=;
        b=bzyEiVfjMg7B7+OjyhmDSYNyPzN4JNYGIbYU+IYx5wXpJPWTBWnYAH3pay3ippa7P8
         aWm6uTMq4s6a52de1W1XIhfGXxat5jwbm6llnFQylRHyuUYSmcbCaQYLYoP868jyoBXj
         T7W9ngWRQDG6GNZWqmJhdjiEBxR5zGNyvMxoGFvTxiotpvjJOntufrOR4rZkV0Xjh5XZ
         rFnYvssH+/ljoSurVqs9nIYBDwlqgn77IITNkekY+lIcT2TFaz7eHxsYi+SLdbcCRD5c
         x8ag32xthg1+KPbj6UYOs3TZGqHkSviZCWz7v+VgP1xKeSLD+H/fSScxJo6Lia1sk6CM
         1Z0A==
X-Gm-Message-State: AOAM532/MinJYWz21wB4GY0SuWQdAdWbshlMEjAI/rSMydgBb6bPaTQT
	em31WUUJLKzflYh4Yl6NCio=
X-Received: by 2002:a17:90b:3704:: with SMTP id mg4mr10706833pjb.156.1617923731545;
        Thu, 08 Apr 2021 16:15:31 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.243.224])
        by smtp.gmail.com with ESMTPSA id i9sm425178pjh.9.2021.04.08.16.15.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 16:15:31 -0700 (PDT)
Date: Fri, 9 Apr 2021 04:45:21 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH 2/2] media: zoran: replace bit shifts
 by BIT() macro
Message-ID: <YG+OibRNRmILe8nQ@kali>
References: <cover.1617912177.git.mitaliborkar810@gmail.com>
 <ac8ec2b70ac2cc7c541c05a1d9a8db1fe79df793.1617912177.git.mitaliborkar810@gmail.com>
 <alpine.DEB.2.22.394.2104082314090.21785@hadrien>
 <YG95l9b++d+RFrDa@kali>
 <alpine.DEB.2.22.394.2104090009220.21785@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2104090009220.21785@hadrien>

On Fri, Apr 09, 2021 at 12:10:06AM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 9 Apr 2021, Mitali Borkar wrote:
> 
> > On Thu, Apr 08, 2021 at 11:15:07PM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Fri, 9 Apr 2021, Mitali Borkar wrote:
> > >
> > > > Added #include <linux/bitops.h> and replaced bit shifts by BIT() macro.
> > > > This BIT() macro from linux/bitops.h is used to define ZR36057_VFESPFR_* bitmasks.
> > > > Use of macro is better and neater. It maintains consistency.
> > > > Reported by checkpatch.
> > > >
> > > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > > ---
> > > >  drivers/staging/media/zoran/zr36057.h | 10 ++++++----
> > > >  1 file changed, 6 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
> > > > index a2a75fd9f535..93075459f910 100644
> > > > --- a/drivers/staging/media/zoran/zr36057.h
> > > > +++ b/drivers/staging/media/zoran/zr36057.h
> > > > @@ -8,6 +8,8 @@
> > > >  #ifndef _ZR36057_H_
> > > >  #define _ZR36057_H_
> > > >
> > > > +#include <linux/bitops.h>
> > > > +
> > > >  /* Zoran ZR36057 registers */
> > > >
> > > >  #define ZR36057_VFEHCR          0x000	/* Video Front End, Horizontal Configuration Register */
> > > > @@ -31,12 +33,12 @@
> > > >  #define ZR36057_VFESPFR_VER_DCM          8
> > > >  #define ZR36057_VFESPFR_DISP_MODE        6
> > > >  #define ZR36057_VFESPFR_YUV422          (0 << 3)
> > > > -#define ZR36057_VFESPFR_RGB888          (1 << 3)
> > > > +#define ZR36057_VFESPFR_RGB888          BIT(3)
> > >
> > > Uniformity is generally considered to be more important than using BIT.
> > > Having only a few constants defined using BIT is a bit strange.
> > >
> > Okay Ma'am. Can you please tell me on how to proceed now? I am not sure
> > how to proceed.
> 
> I think that this code should just be left as is.
> 
> Checkpatch makes suggestions.  Its suggestions are not always appropriate
> for the context.
>
Okay Ma'am. This means I should not do any changes now. Do I need to do
something in this patch now? Or move onto next one?

> julia
> 
> >
> > > julia
> > >
> > > >  #define ZR36057_VFESPFR_RGB565          (2 << 3)
> > > >  #define ZR36057_VFESPFR_RGB555          (3 << 3)
> > > > -#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
> > > > -#define ZR36057_VFESPFR_PACK24          (1 << 1)
> > > > -#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)
> > > > +#define ZR36057_VFESPFR_ERR_DIF          BIT(2)
> > > > +#define ZR36057_VFESPFR_PACK24          BIT(1)
> > > > +#define ZR36057_VFESPFR_LITTLE_ENDIAN    BIT(0)
> > > >
> > > >  #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
> > > >
> > > > --
> > > > 2.30.2
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ac8ec2b70ac2cc7c541c05a1d9a8db1fe79df793.1617912177.git.mitaliborkar810%40gmail.com.
> > > >
> >

