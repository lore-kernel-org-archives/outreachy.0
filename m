X-GM-THRID: 7021139911434567680
X-Received: by 2002:a05:6512:259:: with SMTP id b25mr77585lfo.144.1634739410801;
        Wed, 20 Oct 2021 07:16:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:e85:: with SMTP id bi5ls1605119lfb.2.gmail; Wed, 20
 Oct 2021 07:16:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJytqShJUnAnveApRyAApNW12cr67nWBSLhtQV8cvNvzIy5xYezbIiEad+JkjF7q1l+cbbzW
X-Received: by 2002:a05:6512:33af:: with SMTP id i15mr70187lfg.260.1634739407634;
        Wed, 20 Oct 2021 07:16:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634739407; cv=none;
        d=google.com; s=arc-20160816;
        b=GO/ekiZeeTanbQpUVKELf6y2dABecNF8NHFHGy1EOoavE9tmjkua2JAOjBD4bpIUGE
         Zaj6IPXeitYwKcMTg/0YT2K87fXH8fszJ2WgLSa34qeY1fiIXw+RmwmVxengIQI/UfzG
         68kzNpnUxgEJfetVeOIqUzy9LuLrqiYUavvWO8ZaYeJVkIx74gkQAwCwivY3sYwIerGB
         segZa2Hv/PygOCx76hMc1UxCMHkU/RSWUMRDtQ5EWTDhnJGkC4OjWCu2sfp9nthH8Ywz
         DaIcikohx+DePTpTO3BZK/ILqgXwJtZc7hTNFjH+12dQJ+CuiRsx6T6lepX/suT5HKV9
         NGag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=X8rdaVPIJiD2rPtJOUO0tFDlDFq3sYJnyczuAB50+A0=;
        b=Kv9jIoscYg5Zy/2+/rjbJqRCTFJcuRprEwEHOp6fh8bF4Ru2GnHhi7wt2sHVUq4ZT8
         0fcyigY5ayXWxj2f6vk/9CLoQHHEL5lkuCF7QlDgAPHBMyrq6DFiNMn5RHMNvhjqRJT+
         Luv4ysQJSi49EubvuWVq4q/ieyrqvz8viESOkwtkQu86kpdMPUFJIodD/pam8awwtN7u
         RzYG/opMk5rRZcjy+ruDPVF1C/GnD1IZ7Y0woIZ/Z8o9LDaV8jTavgACf4Wmex0nZJc7
         C5aO/nrgaFMp1TGUiow1MrxGeU4FABjOkUPnsPn5ei0kDlhZdZwwfxBlW09xrdksFXoz
         GsAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v25si140939lfr.1.2021.10.20.07.16.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Oct 2021 07:16:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AHVsaF630E9OvsxVBhXdDqwqjBLUkLtp133Aq?=
 =?us-ascii?q?2lEZdPU1SL3/qynKpp536faaslcssR0b+exoQZPvfZq+z+8T3WByB8bGYOCOgg?=
 =?us-ascii?q?LBR72Ki7GSoAEIcxeTygc379YFT0ERMqyTMbCk5fyU3OHee+xQueW6zA=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="535002300"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Oct 2021 16:16:43 +0200
Date: Wed, 20 Oct 2021 16:16:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Karolina Drobnik <karolinadrobnik@gmail.com>, 
    outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: vt6655: Rename
 `dwAL2230InitTable` array
In-Reply-To: <157ee66fd0e3304c238e7ad8123277892e0d1132.camel@perches.com>
Message-ID: <alpine.DEB.2.22.394.2110201615590.2930@hadrien>
References: <20211020132811.417341-1-karolinadrobnik@gmail.com>  <16db455b46f130300b5c346160aa434616e4f6b4.camel@perches.com> <157ee66fd0e3304c238e7ad8123277892e0d1132.camel@perches.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Oct 2021, Joe Perches wrote:

> On Wed, 2021-10-20 at 06:44 -0700, Joe Perches wrote:
> > trivial suggestion:
> >
> > > diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> > []
> > > @@ -33,7 +33,7 @@
> > >  #define SWITCH_CHANNEL_DELAY_AL7230 200 /* us */
> > >  #define AL7230_PWR_IDX_LEN    64
> > >
> > > -static const unsigned long dwAL2230InitTable[CB_AL2230_INIT_SEQ] = {
> > > +static const unsigned long al2230_init_table[CB_AL2230_INIT_SEQ] = {
> > >  	0x03F79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
> > >  	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
> > >  	0x01A00200 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
> >
> > In this file there are more than 100 uses of
> >
> > 	(BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW
> >
> > Maybe add a define for it and substitute the uses for the define.
>
> Look at the code too.
>
> It looks as if every use of IFRFbWriteEmbedded() has this added to
> the 2nd argument and that the 2nd argument isn't used anywhere else.
>
> Maybe remove it altogether and add it to IFRFbWriteEmbedded().
>
> And it looks as if the + uses for these should logically be |
>
> Something like:
>
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index 0dae593c6944f..26803f6f9a27b 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -498,7 +498,8 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData)
>         unsigned short ww;
>         unsigned long dwValue;
>
> -       VNSvOutPortD(iobase + MAC_REG_IFREGCTL, dwData);
> +       VNSvOutPortD(iobase + MAC_REG_IFREGCTL,
> +                    dwData | (BY_AL2230_REG_LEN << 3) | IFREGCTL_REGW);
>
>         /* W_MAX_TIMEOUT is the timeout period */
>         for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {

Karolina,

If more than a hundred such changes are necessary, you may find Coccinelle
useful:  https://coccinelle.gitlabpages.inria.fr/website/

julia


>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/157ee66fd0e3304c238e7ad8123277892e0d1132.camel%40perches.com.
>

