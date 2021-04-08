X-GM-THRID: 6948889025177452544
X-Received: by 2002:a5b:307:: with SMTP id j7mr13003168ybp.481.1617918371510;
        Thu, 08 Apr 2021 14:46:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:19c4:: with SMTP id 187ls3114454ybz.7.gmail; Thu, 08 Apr
 2021 14:46:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyrCofV63/MfQMa/eguZJx5JF9Q/OwrvaQczR+PZHBHrUkFsAbKlb2f5ky2I7kH5C0VKxHA
X-Received: by 2002:a25:c543:: with SMTP id v64mr14070531ybe.349.1617918370506;
        Thu, 08 Apr 2021 14:46:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617918370; cv=none;
        d=google.com; s=arc-20160816;
        b=wP6CIGLIgHwie+KXXTWN0HA+lILBRsErfIgHUyL4i/RPd7OFPfolH/64YykkEGEUbE
         Hq5YR/J9SZ6ihUeiBFO6OHCF4VJSkgCOrUhU86UoSjG8+ziOR0uoNoXTmIe60ffZmElD
         hr11lr2/GbkWRiDZ/cqZHFbI20n7Zec10EAwlYt1gJGbGOgjmsTKWxtfIQSVFtGftohF
         uaqGOg99awAib7Qrj1wuSGZ9yJlZ10qVMp9iyluVQTC8XT/S89q/x4z/t5HMzT+cEifG
         kKFe2NAWdgSbb8o2l0R1WP9KTyGXmHLVfbkTbJ33nzA+48apH/alemXO9wyzBIwgI1aS
         semw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zdYrRG+l2GoEvS5VtKq2sFMzwk0/c7v4k7SjxU8/nlI=;
        b=HqcOTEVelpzMY6LWoK32PoAMJe2fNdZmzUeR3qBZ6NYl6LS9gJPjQoQerVRFovbmbt
         KeS/ObSPMT1rdIgquStJqu3jilJ5xRwVb1lylmcV6BMaYWMpWJtJNvOivPlc9QxeXPPK
         fn7fd/aP1RkLFvlRbUy80NjEo8tdug0G6pqpWGfjYKJ5PITCg9pjbzgRaDeRtDPgClEX
         Na2NGuVTBfc8DBHVuC8vYHuDztRKoNU9GQgrybVzL0HiYEVQb4Ar/OhCZhfJJGNE/Shs
         3dhb9ImCfsWzvgNnJsyxTbQqKOA8LyHltazdF+XNqhvGxw5gcqIOelYYFr2Pi+X8TB5r
         11vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pGvoxtmi;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id i10si38091ybj.3.2021.04.08.14.46.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 14:46:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pGvoxtmi;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x434.google.com with SMTP id a12so2826629pfc.7
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 14:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=zdYrRG+l2GoEvS5VtKq2sFMzwk0/c7v4k7SjxU8/nlI=;
        b=pGvoxtmiv0oLqbjD93870KWrjw47K88SjDBibeVYxxIXuawIzHhxFYP1zA278oET1S
         PODbKJTQCZx3gHNcDk/vOIHnsYSuTreJ2iEZHTo7INLdqHp/H+NBM9qOJrRGxACNDnaC
         kw42jgirCc9Npswcxhyr9BAw9H/tK6cGNxHvrsFD36m6I1HSwnTMx2re17qp+6h9c3BA
         ifknR1qtAehdZd9qhLxbuMVmHK6IjfD00k2jMAdkZp5YP/JDiPdTAKFmyyWuq2X0szKJ
         vlWqFVo2ArCOi71EQUDQfIFeop0BXYivPzrK/MPvFykk/i8/mnUCUA6rxKF5lRlX3OYa
         y0Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zdYrRG+l2GoEvS5VtKq2sFMzwk0/c7v4k7SjxU8/nlI=;
        b=SfQOVOqFcRGrTx9g7PxaZwome1Jvo7euGgBMFzdftQyNA6YYlPJkn25iS7eBK8Irmt
         MixCBreP6XyalaamDxmWbRbWqhZknnRuCgI6tzP/iNNf7Ez23EwlsZQUNyEyrqGoOswF
         ibP77oi5fSFB4DxzeMAcp8yUgcjCRi8MXgxpWia4M45KP4gByfvUrLpd0BvTxuC+KGyx
         qRCpSDMOZl2cD5PDydKbCE6VDpLN4lwK2t7ybx2kg0U9Rba1Ss8LDirwpuUEsFTkoqel
         7cF6BMxPuWN3QYsCStCneKi/ju1t8H9KMURO/xKXeMGeP5judFX0ERnQmrkvigq2gMIP
         RCGw==
X-Gm-Message-State: AOAM533QBWPbJPjuVtKE3j8Wf688lrLkWQIuQnKtVoVF3M3kXRH642b/
	LzJMq3I8C4ClbIxCk6sGd6s=
X-Received: by 2002:a62:2b03:0:b029:241:d147:2a79 with SMTP id r3-20020a622b030000b0290241d1472a79mr9301490pfr.53.1617918369651;
        Thu, 08 Apr 2021 14:46:09 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.243.224])
        by smtp.gmail.com with ESMTPSA id t24sm290089pgi.30.2021.04.08.14.46.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 14:46:09 -0700 (PDT)
Date: Fri, 9 Apr 2021 03:15:59 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH 2/2] media: zoran: replace bit shifts
 by BIT() macro
Message-ID: <YG95l9b++d+RFrDa@kali>
References: <cover.1617912177.git.mitaliborkar810@gmail.com>
 <ac8ec2b70ac2cc7c541c05a1d9a8db1fe79df793.1617912177.git.mitaliborkar810@gmail.com>
 <alpine.DEB.2.22.394.2104082314090.21785@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2104082314090.21785@hadrien>

On Thu, Apr 08, 2021 at 11:15:07PM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 9 Apr 2021, Mitali Borkar wrote:
> 
> > Added #include <linux/bitops.h> and replaced bit shifts by BIT() macro.
> > This BIT() macro from linux/bitops.h is used to define ZR36057_VFESPFR_* bitmasks.
> > Use of macro is better and neater. It maintains consistency.
> > Reported by checkpatch.
> >
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> >  drivers/staging/media/zoran/zr36057.h | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
> > index a2a75fd9f535..93075459f910 100644
> > --- a/drivers/staging/media/zoran/zr36057.h
> > +++ b/drivers/staging/media/zoran/zr36057.h
> > @@ -8,6 +8,8 @@
> >  #ifndef _ZR36057_H_
> >  #define _ZR36057_H_
> >
> > +#include <linux/bitops.h>
> > +
> >  /* Zoran ZR36057 registers */
> >
> >  #define ZR36057_VFEHCR          0x000	/* Video Front End, Horizontal Configuration Register */
> > @@ -31,12 +33,12 @@
> >  #define ZR36057_VFESPFR_VER_DCM          8
> >  #define ZR36057_VFESPFR_DISP_MODE        6
> >  #define ZR36057_VFESPFR_YUV422          (0 << 3)
> > -#define ZR36057_VFESPFR_RGB888          (1 << 3)
> > +#define ZR36057_VFESPFR_RGB888          BIT(3)
> 
> Uniformity is generally considered to be more important than using BIT.
> Having only a few constants defined using BIT is a bit strange.
>
Okay Ma'am. Can you please tell me on how to proceed now? I am not sure
how to proceed.

> julia
> 
> >  #define ZR36057_VFESPFR_RGB565          (2 << 3)
> >  #define ZR36057_VFESPFR_RGB555          (3 << 3)
> > -#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
> > -#define ZR36057_VFESPFR_PACK24          (1 << 1)
> > -#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)
> > +#define ZR36057_VFESPFR_ERR_DIF          BIT(2)
> > +#define ZR36057_VFESPFR_PACK24          BIT(1)
> > +#define ZR36057_VFESPFR_LITTLE_ENDIAN    BIT(0)
> >
> >  #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
> >
> > --
> > 2.30.2
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ac8ec2b70ac2cc7c541c05a1d9a8db1fe79df793.1617912177.git.mitaliborkar810%40gmail.com.
> >

