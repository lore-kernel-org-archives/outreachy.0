X-GM-THRID: 6671020394532569088
X-Received: by 2002:a5d:6947:: with SMTP id r7mr4782867wrw.167.1553235827812;
        Thu, 21 Mar 2019 23:23:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4081:: with SMTP id o1ls1735387wrp.7.gmail; Thu, 21 Mar
 2019 23:23:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwbGqb/1pFDMlrQ+CsI8DdVqBPup56awgdla6zPEPFQwl3oPNNIag/OY1Af24/wP3N4J1NL
X-Received: by 2002:a5d:5192:: with SMTP id k18mr5172043wrv.171.1553235826972;
        Thu, 21 Mar 2019 23:23:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553235826; cv=none;
        d=google.com; s=arc-20160816;
        b=h1Sjz32GT3xMT3DnYUVZiOeqt1zsr96leOhQw+rz1x5tta25okkGjPDGFisOxLOHpH
         1L/D67luODsc73pUWoJlTd2lXEfvo5iMRCVZTEkvrsp6xX7gQaDw2CCGjjZvhENs7IWy
         WRaCKFPWiEoyPd7mKZU5LRBLvDaANXaByv5n1bHPrLw1m452fcU0RCCLJE8kYaSUHrkt
         JZH7HeJIFm1P9rcyRd2kGpZjMLSoqxZ5HT3Hk6liE7yFSdj8TFx0dzzCmNJiI8+7jDwt
         23hxXJtX2l6emCj4CZfcyMEG5KGptsy1WipMKpxlTBF0QvgjObH88BZLTqRWprCoZHGb
         8nQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=TemiNtIW32hbPrcONmF5pYsBSmkXwGpvFGdjKUcuK7Q=;
        b=Wr/I1y8UKPuczFXow4Ax4jbU3n24PobBMMw1PzoHVBjoW9HMYGgnsbcqPujGAr6sL+
         9uqbcjF3zxTjStyc1OmM5lqNbEB5FGVII5dyUawHC060Gkv4oe5pnFfKUpKZlEFASFTB
         kd8GYpoG3Kn7eg5NopfMrpYltr9whshcIa2VHpFcw54x7hOREuCJKy6e37spXG8wLFtg
         iq3qnvIMtvnu4ScB/izPQjvw2KNnlOwqT6GeEGBbaM+13gPXej8z/CPbdGvkv5ukishr
         4haHAC3Fhx4QtKk6KOnIyMD6xDpED7z57DZ8x9wtLd8OJOKGvacuhB0ooyamZtWk9df6
         1O3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m1si292937wrj.4.2019.03.21.23.23.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 23:23:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,255,1549926000"; 
   d="scan'208";a="375214906"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2019 07:23:46 +0100
Date: Fri, 22 Mar 2019 07:23:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: media: davinci_vpfe:
 Remove RESETBIT macro and use BIT macro
In-Reply-To: <a64c7dd0bf44cc3ac0270a382209e592c8a05987.1553217781.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903220704430.2621@hadrien>
References: <cover.1553217781.git.madhumithabiw@gmail.com> <a64c7dd0bf44cc3ac0270a382209e592c8a05987.1553217781.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 21 Mar 2019, Madhumitha Prabakaran wrote:

> Remove RESETBIT macro and use BIT(x) instead of (1 << x) to improve
> codebase.

These could be just one patch, since it is basically the same thing.

The reason offered is not very clear.  Probably all patches have the goal
of improving the codebase.

The original reason was that it is not very convenient to turn the macro
into a function.  You could, however, have just left it as a macro.  Or
you could have changed the macro to use BIT.  The proposed approach makes
it more apparent in the source code what is going on.  There are a lot of
occurrences of eg ... |= BIT(...) in the kernel, and there doesn't seem to
be an established macro for this, so the change is probably fine.

julia

>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 8 ++++----
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.h | 1 -
>  2 files changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> index 382d88bee5a7..4f18db127caf 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> @@ -296,14 +296,14 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
>  		case MEDIA_BUS_FMT_YUYV8_1X16:
>  		case MEDIA_BUS_FMT_UYVY8_2X8:
>  		case MEDIA_BUS_FMT_Y8_1X8:
> -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> +			val &= ~BIT(IPIPEIF_CFG2_YUV8_SHIFT);
>  			val |= BIT(IPIPEIF_CFG2_YUV16_SHIFT);
>  			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
>  			break;
>
>  		default:
> -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> -			RESETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> +			val &= ~BIT(IPIPEIF_CFG2_YUV8_SHIFT);
> +			val &= ~BIT(IPIPEIF_CFG2_YUV16_SHIFT);
>  			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
>  			break;
>  		}
> @@ -344,7 +344,7 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
>  		switch (isif_port_if) {
>  		case MEDIA_BUS_FMT_YUYV8_1X16:
>  		case MEDIA_BUS_FMT_YUYV10_1X20:
> -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> +			val &= ~BIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
>  			val |= BIT(IPIPEIF_CFG2_YUV16_SHIFT);
>  			break;
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> index 7bbe7a932b30..4d126fc871f3 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> @@ -166,7 +166,6 @@ struct vpfe_ipipeif_device {
>  #define IPIPEIF_RSZ_MIN			16
>  #define IPIPEIF_RSZ_MAX			112
>  #define IPIPEIF_RSZ_CONST		16
> -#define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
>
>  #define IPIPEIF_ADOFS_LSB_MASK		0x1ff
>  #define IPIPEIF_ADOFS_LSB_SHIFT		5
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a64c7dd0bf44cc3ac0270a382209e592c8a05987.1553217781.git.madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

