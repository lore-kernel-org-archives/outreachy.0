X-GM-THRID: 6670949781191262208
X-Received: by 2002:adf:ee50:: with SMTP id w16mr3903678wro.293.1553202133385;
        Thu, 21 Mar 2019 14:02:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:49cd:: with SMTP id t13ls1526151wrs.6.gmail; Thu, 21 Mar
 2019 14:02:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyWi49XpAvI2heApa/j1OTEsw4HKxDWBE8Wgf5LKdU0CYCQRk81YzaLKB6zKk6GY5opnHDM
X-Received: by 2002:a5d:6246:: with SMTP id m6mr4124655wrv.184.1553202132619;
        Thu, 21 Mar 2019 14:02:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553202132; cv=none;
        d=google.com; s=arc-20160816;
        b=Lr4S9n6yoEutv6VhVT5FCaliB9B1cqzkxAit9kwm1RAsNxtogDxPcxxQqugZMMaDLS
         +22biouR051xaRHxtsJUKRqifKwhz6pE5bOlea4DeNjWGzouB/ObsRq67ZONbFv4dKdl
         NNLg7iuG7dbw4tCCSdSRiytJFlv+aDL/6Bc9IJ/ZXv9Ot58rmjU//HemomoQhUJpn+wo
         Z5T1LNkhxSWi2iMsYzDYz6bgVw73VTZJ58f8jI9QHXgrifjIPb806Sd5+d9WjvGjePrT
         Nyeic5+56cAAXqyfUh4ao8q5TMwmGUylUBeK0vVTcAcPnOG7GdHrvP9wJStoi0T3kXwk
         1O0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=rVOedg5XcVuw0+psusPvBEjS+1xVpASZByOEBLiMmto=;
        b=ThiOQojNwh4qz3Ovab7kY0jEqkZFyrho1DlO8cAKHy/tZ2qVnU7EeKriGq3ACiYP6T
         bDWykLzGsDGE/2dSV06S4FtwcyVPd8T574iKwRYWAkwf1fYRcumsInIRF7gIo46HSSjG
         e75FgS7ZiSGx0Pd2gWlv4zjayKzB9Gmt0iHwaM99xutMl4w0/9S65yMJh0yHu9OLNsVD
         y7VFRYl4c72Fn2Us3AnY9d/T1YJid+Ub6pKrEyLBEXWABnUdrYAS3AAFkeZc0AK1itzc
         yp+Y1wtaasmrnJQCRaXTIPfQmnvaAWB041G0/3jFmGxuWrkBzUT8kHKLFbFg0K/0ibvd
         EskA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 2si311734wma.3.2019.03.21.14.02.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 14:02:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,254,1549926000"; 
   d="scan'208";a="375170525"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2019 22:02:12 +0100
Date: Thu, 21 Mar 2019 22:02:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Convert macro into
 an inline function
In-Reply-To: <20190321205206.21875-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903212155350.4720@hadrien>
References: <20190321205206.21875-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 21 Mar 2019, Madhumitha Prabakaran wrote:

> Convert macro into an inline function to maintain Linux kernel coding
> style. In addition to that change the function names in respective call
> sites.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 8 ++++----
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.h | 5 ++++-
>  2 files changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> index 4380e0a8e6dc..7d750e14253c 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> @@ -297,7 +297,7 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
>  		case MEDIA_BUS_FMT_UYVY8_2X8:
>  		case MEDIA_BUS_FMT_Y8_1X8:
>  			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> +			setbit(val, IPIPEIF_CFG2_YUV16_SHIFT);
>  			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
>  			break;
>
> @@ -345,15 +345,15 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
>  		case MEDIA_BUS_FMT_YUYV8_1X16:
>  		case MEDIA_BUS_FMT_YUYV10_1X20:
>  			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> +			setbit(val, IPIPEIF_CFG2_YUV16_SHIFT);
>  			break;
>
>  		case MEDIA_BUS_FMT_YUYV8_2X8:
>  		case MEDIA_BUS_FMT_UYVY8_2X8:
>  		case MEDIA_BUS_FMT_Y8_1X8:
>  		case MEDIA_BUS_FMT_YUYV10_2X10:
> -			SETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> +			setbit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> +			setbit(val, IPIPEIF_CFG2_YUV16_SHIFT);
>  			val |= IPIPEIF_CBCR_Y << IPIPEIF_CFG2_YUV8P_SHIFT;
>  			break;
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> index 4685d64016de..0fe9d394962f 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> @@ -166,7 +166,10 @@ struct vpfe_ipipeif_device {
>  #define IPIPEIF_RSZ_MIN			16
>  #define IPIPEIF_RSZ_MAX			112
>  #define IPIPEIF_RSZ_CONST		16
> -#define SETBIT(reg, bit)   (reg = ((reg) | ((0x00000001)<<(bit))))
> +static void setbit(u32 reg, int bit)
> +{
> +	reg = (reg | (0x00000001 << bit));
> +}

This is a really nice try, but it doesn't work.  Now you are just changing
the local variable of setbit rather than changing the variable at the call
site.  Maybe you could pass in a pointer and the compiler would be clever
enough to optimize it away.

But maybe the whole thing could be eg val |= BIT(IPIPEIF_CFG2_YUV8_SHIFT);
You could also take care of the uses of RESETBIT similarly.

julia

>  #define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
>
>  #define IPIPEIF_ADOFS_LSB_MASK		0x1ff
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190321205206.21875-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

