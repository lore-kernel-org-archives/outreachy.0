X-GM-THRID: 6614906584085561344
X-Received: by 2002:a5d:5287:: with SMTP id c7-v6mr3880521wrv.14.1540160045257;
        Sun, 21 Oct 2018 15:14:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:b69b:: with SMTP id j27-v6ls6892199wre.12.gmail; Sun, 21
 Oct 2018 15:14:04 -0700 (PDT)
X-Google-Smtp-Source: AJdET5deR4fzfiemOFitsWrtpPaFIVPvVIGNpCKwRiIP26PKsnuSk6R+mAmVz+4vWAtgf4IhD/u5
X-Received: by 2002:a5d:4883:: with SMTP id g3-v6mr852540wrq.18.1540160044358;
        Sun, 21 Oct 2018 15:14:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540160044; cv=none;
        d=google.com; s=arc-20160816;
        b=unZqWaKNpI+3G86pvlSf4RiUHHPeDHsjnRZryaIdlJpYLgk3k6/y6/6kL87tk52HDn
         oC3o9dS7Fy+Rjl5qnwyV48n7VSSI4/W7pCcnu4t4OijfiT4n2qaBa9jK6paNfbGRyCGF
         dZjx7QBZfGaMg2gS7Tq8funP+Fso8XKRfJzMuxnxdj+nG7Cqnva5gem9dIlI5ifPBfUh
         iLstZ5C3Py1R07of9lOUeBY99hEmUNjZEOnc+nSHSKcmZxSnRA2oA0oQFCgQbo+bPKCn
         wD8WC6HalzW8AS+OK28LgGuPqTqNvtNz/3A0CpMK0vKjDbwkc4u6exFIJhy2tRwk5Tdz
         AFiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=PB7Di+wYloVT0QF2L3k0e0Tc74Y2BEdIX51NKtf86Gs=;
        b=oCb5708toa/3kpNTfji7BTN2Q5ybCcsw5KwBsa0eWdb2bLNir8lBKw2rjpHcl7XL/3
         qtWryEXPAm8w6NgUBDe463mi0imH0TsMv724aW5DjJhJS9Kyjww6QPytxTm1ZdvxWLzg
         +dOQ0ZPdxIAc1l4fpL+Odb0JJZmCguGOM11S5v4Zm0g93KZijq+QH3tULt0tMPuUoaG2
         6ukO79p3p3iHdjwKOsM8OQODY4xOXdhaXQyJSAc2JMxEL4WZrmRGBlxmHtfmYwIgXp0G
         qpFi4DYircjM/VtKCpigpXWTd5Mn7Ye0f1kk1zaw0icD3ynKWIDEfZQ2Lyq2PdYdAXmC
         RCZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 68-v6si725339wra.5.2018.10.21.15.14.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Oct 2018 15:14:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,409,1534802400"; 
   d="scan'208";a="352130337"
Received: from 30.9-255-62.static.virginmediabusiness.co.uk (HELO [172.16.7.66]) ([62.255.9.30])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Oct 2018 00:14:03 +0200
Date: Sun, 21 Oct 2018 23:14:02 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: netlogic: Cleanup
 parenetheses
In-Reply-To: <e7defe7da804d867532182a1fcb387a9f41f9482.1540152794.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.21.1810212312570.2402@hadrien>
References: <cover.1540152794.git.code@wizofe.uk> <e7defe7da804d867532182a1fcb387a9f41f9482.1540152794.git.code@wizofe.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 21 Oct 2018, Ioannis Valasakis wrote:

> Cleanup mismatching parentheses.
> Reported by checkpatch.

It doesn't look very nice to me with the function arguments alone on a
line like that.  Maybe there are other places where newlines could be put.

julia

>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/netlogic/platform_net.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
> index abf4c71ee66b..1b1a8a0c9b72 100644
> --- a/drivers/staging/netlogic/platform_net.c
> +++ b/drivers/staging/netlogic/platform_net.c
> @@ -107,8 +107,8 @@ static struct platform_device *gmac_controller2_init(void *gmac0_addr)
>  		.dev.platform_data = &ndata1,
>  	};
>
> -	gmac4_addr = ioremap(CPHYSADDR(
> -		nlm_mmio_base(NETLOGIC_IO_GMAC_4_OFFSET)), 0xfff);
> +	gmac5_addr = ioremap(CPHYSADDR
> +		(nlm_mmio_base(NETLOGIC_IO_GMAC_4_OFFSET)), 0xfff);
>  	ndata1.serdes_addr = gmac4_addr;
>  	ndata1.pcs_addr	= gmac4_addr;
>  	ndata1.mii_addr	= gmac0_addr;
> @@ -134,8 +134,8 @@ static void xls_gmac_init(void)
>  {
>  	int mac;
>  	struct platform_device *xlr_net_dev1;
> -	void __iomem *gmac0_addr = ioremap(CPHYSADDR(
> -		nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)), 0xfff);
> +	void __iomem *gmac0_addr = ioremap(CPHYSADDR
> +		(nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)), 0xfff);
>
>  	static struct xlr_net_data ndata0 = {
>  		.rfr_station	= FMN_STNID_GMACRFR_0,
> @@ -153,8 +153,8 @@ static void xls_gmac_init(void)
>  	ndata0.mii_addr	= gmac0_addr;
>
>  	/* Passing GPIO base for serdes init. Only needed on sgmii ports */
> -	gpio_addr = ioremap(CPHYSADDR(
> -		nlm_mmio_base(NETLOGIC_IO_GPIO_OFFSET)), 0xfff);
> +	gpio_addr = ioremap(CPHYSADDR
> +		(nlm_mmio_base(NETLOGIC_IO_GPIO_OFFSET)), 0xfff);
>  	ndata0.gpio_addr = gpio_addr;
>  	ndata0.cpu_mask = nlm_current_node()->coremask;
>
> @@ -214,8 +214,8 @@ static void xlr_gmac_init(void)
>  		.id		= 0,
>  		.dev.platform_data = &ndata0,
>  	};
> -	ndata0.mii_addr = ioremap(CPHYSADDR(
> -		nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)), 0xfff);
> +	ndata0.mii_addr = ioremap(CPHYSADDR
> +		(nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)), 0xfff);
>
>  	ndata0.cpu_mask = nlm_current_node()->coremask;
>
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e7defe7da804d867532182a1fcb387a9f41f9482.1540152794.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>

