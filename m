X-GM-THRID: 6671334644654276608
X-Received: by 2002:a50:a325:: with SMTP id 34mr7482317edn.286.1553292794239;
        Fri, 22 Mar 2019 15:13:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4942:: with SMTP id f2ls1892961ejt.8.gmail; Fri, 22
 Mar 2019 15:13:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx9mZEGEBGzp0ZCYWTcIjRPKiM4XDyM/FNM1xe4FHJO0wlSm8jxWslMMtqMyzhQpXi2vSsv
X-Received: by 2002:a17:906:af84:: with SMTP id mj4mr6851757ejb.32.1553292793366;
        Fri, 22 Mar 2019 15:13:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553292793; cv=none;
        d=google.com; s=arc-20160816;
        b=eZuV9+mS1aolAmTA8jLCWSM8Z2pDryG8wFZjGj0iD6m/OirTgbGXH9YU92s5kCkSEx
         5481wNGP7Sl8lS9VS5+VM4wjqELeB99ffXIljwYtDL8yRaIOpVXEXz6VDOlqFJj/kfPW
         7QNra4tOvUj1+dsJ3U18GGdlVox+FJiAtXmdI+sxVIHLhgonvTe8Pfan+G/3rf0gY2+G
         eYyesRkKOsOrHCzKQtN1FFsXWxtM8IKhJ2TCslf3evTFJ+odgPRA6zE4IrWGlQladqFM
         xoI1umYBorQEqtL4N19mlyStgSAv1H2QWaaD+0Bqt0S5cM4RRpd6czPe84t4AxxVZOtO
         09Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JKtnl2HqsvHCpzNv7bi5znYsJoDulb3FZqXNFUYSdJM=;
        b=BSSmjYBzYHbDDcb/SyvZgrpuDvphWm0LSXJEWXIgK/PgsK9P6VH/mL30Mi2QvL7cg3
         uSDzNX121K5egd5xKkCTm0lDikFcGn8UHDLrCGqG5jcAJUYn64mwNv1PcFK8+QRHmczd
         OJdRMSCjDFPiktZiWeSbJUM+ubRAz1zs1ualNXyDUSCNxhlHpQ9opfqn1cYRdkyV3uG6
         e620mEhZyaRklSGfIlk3UEb8Icp5dw6a1G1yQ1/7ldeioUDIgB5F+rDY0WEgqVfYv2KM
         aXbRugj2xckj4sI2rbpYZAjdYsRy9D8VhMpcj/ZNKsjZJNdY4aADu7Bj8ihRV3giVAeh
         J8mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p25si492630eju.1.2019.03.22.15.13.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 15:13:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300447372"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2019 23:13:12 +0100
Date: Fri, 22 Mar 2019 23:13:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: media: davinci_vpfe: Drop
 macros
In-Reply-To: <20190322214534.24852-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903222307510.2433@hadrien>
References: <20190322214534.24852-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Mar 2019, Madhumitha Prabakaran wrote:

> Drop macros instead use functions set_bit() and clear_bit directly.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
>
> ---
> Changes in v3:
> - Drop inline functions and use functions
>
> Changes in v2:
> - Convert macros into inline functions
> ---
>  .../staging/media/davinci_vpfe/dm365_ipipeif.c   | 16 ++++++++--------
>  .../staging/media/davinci_vpfe/dm365_ipipeif.h   |  2 --
>  2 files changed, 8 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> index 4380e0a8e6dc..81010bc19f0e 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> @@ -296,14 +296,14 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
>  		case MEDIA_BUS_FMT_YUYV8_1X16:
>  		case MEDIA_BUS_FMT_UYVY8_2X8:
>  		case MEDIA_BUS_FMT_Y8_1X8:
> -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> +			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> +			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);

I don't think that the arguments are in the right order.  And one of the
arguments does not have the right type.  When I try to compile the result
of applying this patch, it gives a lot of errors.  You should ensure that
a patch doesn't give errors or warnings before submitting it.

julia

>  			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
>  			break;
>
>  		default:
> -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> -			RESETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> +			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> +			clear_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
>  			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
>  			break;
>  		}
> @@ -344,16 +344,16 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
>  		switch (isif_port_if) {
>  		case MEDIA_BUS_FMT_YUYV8_1X16:
>  		case MEDIA_BUS_FMT_YUYV10_1X20:
> -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> +			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> +			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
>  			break;
>
>  		case MEDIA_BUS_FMT_YUYV8_2X8:
>  		case MEDIA_BUS_FMT_UYVY8_2X8:
>  		case MEDIA_BUS_FMT_Y8_1X8:
>  		case MEDIA_BUS_FMT_YUYV10_2X10:
> -			SETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> +			set_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> +			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
>  			val |= IPIPEIF_CBCR_Y << IPIPEIF_CFG2_YUV8P_SHIFT;
>  			break;
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> index 4685d64016de..4d126fc871f3 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> @@ -166,8 +166,6 @@ struct vpfe_ipipeif_device {
>  #define IPIPEIF_RSZ_MIN			16
>  #define IPIPEIF_RSZ_MAX			112
>  #define IPIPEIF_RSZ_CONST		16
> -#define SETBIT(reg, bit)   (reg = ((reg) | ((0x00000001)<<(bit))))
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190322214534.24852-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

