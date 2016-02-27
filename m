X-GM-THRID: 6256054516784824320
X-Received: by 10.28.126.149 with SMTP id z143mr357292wmc.4.1456601792380;
        Sat, 27 Feb 2016 11:36:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.148.215 with SMTP id w206ls106276wmd.4.canary; Sat, 27 Feb
 2016 11:36:31 -0800 (PST)
X-Received: by 10.28.63.148 with SMTP id m142mr359224wma.6.1456601791713;
        Sat, 27 Feb 2016 11:36:31 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w128si321667wmd.0.2016.02.27.11.36.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 11:36:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,510,1449529200"; 
   d="scan'208";a="166189286"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2016 20:36:30 +0100
Date: Sat, 27 Feb 2016 20:36:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: usb: Use PTR_ERR_OR_ZERO
 instead of if(IS_ERR(...)) + PTR_ERR.
In-Reply-To: <20160227112641.GA5408@sandhya>
Message-ID: <alpine.DEB.2.02.1602272035510.2060@localhost6.localdomain6>
References: <20160227112641.GA5408@sandhya>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 27 Feb 2016, Sandhya Bankar wrote:

> Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR.
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/usb/phy/phy-qcom-8x16-usb.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/phy/phy-qcom-8x16-usb.c b/drivers/usb/phy/phy-qcom-8x16-usb.c
> index 579587d..dc97abe 100644
> --- a/drivers/usb/phy/phy-qcom-8x16-usb.c
> +++ b/drivers/usb/phy/phy-qcom-8x16-usb.c
> @@ -291,10 +291,7 @@ static int phy_8x16_read_devicetree(struct phy_8x16 *qphy)
>  
>  	qphy->switch_gpio = devm_gpiod_get_optional(dev, "switch",
>  						   GPIOD_OUT_LOW);
> -	if (IS_ERR(qphy->switch_gpio))
> -		return PTR_ERR(qphy->switch_gpio);
> -
> -	return 0;
> +	PTR_ERR_OR_ZERO(qphy->switch_gpio);

You still need the return.

julia

