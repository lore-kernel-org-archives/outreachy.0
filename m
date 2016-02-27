X-GM-THRID: 6256058221461504000
X-Received: by 10.112.158.138 with SMTP id wu10mr824659lbb.11.1456602151153;
        Sat, 27 Feb 2016 11:42:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.193 with SMTP id m184ls111089wma.3.gmail; Sat, 27 Feb
 2016 11:42:30 -0800 (PST)
X-Received: by 10.28.46.129 with SMTP id u123mr474wmu.0.1456602150678;
        Sat, 27 Feb 2016 11:42:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c140si40961wmh.1.2016.02.27.11.42.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 11:42:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,510,1449529200"; 
   d="scan'208";a="204889751"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2016 20:42:30 +0100
Date: Sat, 27 Feb 2016 20:42:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: usb: gadget: Use
 PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR.
In-Reply-To: <20160227114105.GA5524@sandhya>
Message-ID: <alpine.DEB.2.02.1602272042110.2060@localhost6.localdomain6>
References: <20160227114105.GA5524@sandhya>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 27 Feb 2016, Sandhya Bankar wrote:

> Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR. 
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/usb/gadget/udc/at91_udc.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/gadget/udc/at91_udc.c b/drivers/usb/gadget/udc/at91_udc.c
> index d0d1894..52851ad 100644
> --- a/drivers/usb/gadget/udc/at91_udc.c
> +++ b/drivers/usb/gadget/udc/at91_udc.c
> @@ -1726,10 +1726,7 @@ static int at91sam9261_udc_init(struct at91_udc *udc)
>  
>  	udc->matrix = syscon_regmap_lookup_by_phandle(udc->pdev->dev.of_node,
>  						      "atmel,matrix");
> -	if (IS_ERR(udc->matrix))
> -		return PTR_ERR(udc->matrix);
> -
> -	return 0;
> +	PTR_ERR_OR_ZERO(udc->matrix);

Same problem here.  You need a return.

julia

