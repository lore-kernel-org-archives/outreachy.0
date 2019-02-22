X-GM-THRID: 6660891436007817216
X-Received: by 2002:a2e:8852:: with SMTP id z18mr366432ljj.18.1550869190388;
        Fri, 22 Feb 2019 12:59:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48d1:: with SMTP id v200ls709815lfa.9.gmail; Fri, 22 Feb
 2019 12:59:49 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZOHcY0MJ657ZnyKzBK8v2v3k6hSsjYwNGkzh+q+qZUKl8JGtqaI2YRnEJvsCRj39SZTEa6
X-Received: by 2002:a19:a411:: with SMTP id q17mr379892lfc.14.1550869189412;
        Fri, 22 Feb 2019 12:59:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550869189; cv=none;
        d=google.com; s=arc-20160816;
        b=h8DssfabXtiS/SOtoSpMApcYyvbRH2dIWcM2zyHWgvUHNH/OfMhWueOKRhpTPkn69X
         B+jfK/pTqyt1g9XfB3URFQlMysBQk5vJ1uWdceyZujO4jV0diRU1GXSHlV448r8aYdBe
         nfqfCOpk8iO4f5l8UzNZ63wer6YTMVDcjJ6bC9J+XRHqMhx6lmnaN6AALZARqb/maByy
         yKkE+aLPkorBSzaZkRQo9CAUZRDJO0vgoDdBBdH/PyYfTVBxIRJwsyRjytCg9RqKC3Q9
         Kag0b/sO0gmV7IoymP+El+E0ulg+ZnTU12hzmIvx8OSHS0VoLK7uzydwSgdqC7B+UwNV
         ru3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=nCjaEk4MZ4ca+K8ovDO2i77xV6ufhrEqmptigfrfaGE=;
        b=agPkZvJ83a+yRV9g4TYhlBu1jO6GDhUd4cOV+edXLCRpR4r1TWQAISWjIPgJGLys9h
         UL1dmJ9onCFX1BygLNPmP4e8EMsR0cBjLsS9JI//n7+TYi+wRndI3W/ew3a2TIU1S0gS
         EHxEFq34s0z04HHIuhQUWHClflCuVcYvX99v0+FD0U3GEvf5Np0ldiKI8fBN+n298tcf
         N1hGXXAto9UfInYAchGJYdL7TW/wXZ57kdf3268qCz0MIl4AJ8bwOENj8UJ5EzCXqa6n
         +0UD66qoJ5CY/2WOYvqdK/Auzn3ntH+Z1qMxfZi+tPxsRCq/fdnhEmPTUhuixyehPl1d
         ss8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q30si99002lfb.3.2019.02.22.12.59.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 12:59:49 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,401,1544482800"; 
   d="scan'208";a="370557488"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Feb 2019 21:59:48 +0100
Date: Fri, 22 Feb 2019 21:59:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Modify coding
 style alignments
In-Reply-To: <20190222182035.GA8815@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.21.1902222159240.2579@hadrien>
References: <20190222182035.GA8815@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Feb 2019, Bhagyashri Dighole wrote:

> Fix coding style alignment issues detected by checkpatch.pl
> Match alignments with parenthesis.
> Limit lines to 80 characters.

This indeed looks nicer :)

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/netlogic/platform_net.c | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
> index abf4c71..924a7f8 100644
> --- a/drivers/staging/netlogic/platform_net.c
> +++ b/drivers/staging/netlogic/platform_net.c
> @@ -107,8 +107,9 @@ static struct platform_device *gmac_controller2_init(void *gmac0_addr)
>  		.dev.platform_data = &ndata1,
>  	};
>
> -	gmac4_addr = ioremap(CPHYSADDR(
> -		nlm_mmio_base(NETLOGIC_IO_GMAC_4_OFFSET)), 0xfff);
> +	gmac4_addr =
> +		ioremap(CPHYSADDR(nlm_mmio_base(NETLOGIC_IO_GMAC_4_OFFSET)),
> +			0xfff);
>  	ndata1.serdes_addr = gmac4_addr;
>  	ndata1.pcs_addr	= gmac4_addr;
>  	ndata1.mii_addr	= gmac0_addr;
> @@ -134,8 +135,9 @@ static void xls_gmac_init(void)
>  {
>  	int mac;
>  	struct platform_device *xlr_net_dev1;
> -	void __iomem *gmac0_addr = ioremap(CPHYSADDR(
> -		nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)), 0xfff);
> +	void __iomem *gmac0_addr =
> +		ioremap(CPHYSADDR(nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)),
> +			0xfff);
>
>  	static struct xlr_net_data ndata0 = {
>  		.rfr_station	= FMN_STNID_GMACRFR_0,
> @@ -153,8 +155,9 @@ static void xls_gmac_init(void)
>  	ndata0.mii_addr	= gmac0_addr;
>
>  	/* Passing GPIO base for serdes init. Only needed on sgmii ports */
> -	gpio_addr = ioremap(CPHYSADDR(
> -		nlm_mmio_base(NETLOGIC_IO_GPIO_OFFSET)), 0xfff);
> +	gpio_addr =
> +		ioremap(CPHYSADDR(nlm_mmio_base(NETLOGIC_IO_GPIO_OFFSET)),
> +			0xfff);
>  	ndata0.gpio_addr = gpio_addr;
>  	ndata0.cpu_mask = nlm_current_node()->coremask;
>
> @@ -214,8 +217,9 @@ static void xlr_gmac_init(void)
>  		.id		= 0,
>  		.dev.platform_data = &ndata0,
>  	};
> -	ndata0.mii_addr = ioremap(CPHYSADDR(
> -		nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)), 0xfff);
> +	ndata0.mii_addr =
> +		ioremap(CPHYSADDR(nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)),
> +			0xfff);
>
>  	ndata0.cpu_mask = nlm_current_node()->coremask;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190222182035.GA8815%40bhagyashri-Lenovo-G570.
> For more options, visit https://groups.google.com/d/optout.
>

