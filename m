X-GM-THRID: 6664645719610097664
X-Received: by 2002:a1c:4009:: with SMTP id n9mr80112wma.22.1551735240066;
        Mon, 04 Mar 2019 13:34:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:400e:: with SMTP id n14ls1775291wrp.16.gmail; Mon, 04
 Mar 2019 13:33:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqydeHiInCQV6jnnaS35R5mvcd5y6wR89Y5sohirX4gq3SdmI7veigK0S1y3SA/WlsxbiDPN
X-Received: by 2002:adf:e412:: with SMTP id g18mr1111741wrm.9.1551735239244;
        Mon, 04 Mar 2019 13:33:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551735239; cv=none;
        d=google.com; s=arc-20160816;
        b=P/98783CI24dk4LjmZ7GEtxRXwHR/DBLBsb6SQjeeC8HraEweaYNPaSPX+g8GjZ8ps
         cW+mtt4xMUolphOTIm+HyK5ZAnNQburs1aWS4bHTldM/SbmmpfApVJ0aokhSxKU64bkY
         ecppF+30k6WYXPatp32B+yPZSQEpntj6BLF+PORJsWAcbpfFiERcjqzqxHZlmsOJ4/vX
         eTzXRl4Hlxzxbfb3gnuLC7ygMyPDK2KJkkLpRIaWswl6wigOFUm94nKYV6Pqkv0sn5MW
         heOO/16yp8HTn/E6YWeldhE+oFO1mXdIWFQMJUsyDF6ds/u0gQ0DGhAJhe7TKQsT91RW
         NSbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2A39/cp+xgc1afqoYD6oeQpQ1vzZ/ZsFVEDLN/DjL8c=;
        b=cjVptnNtuZG6wICqNDBBWRqlybPZdIoX/oQpy8swiJO9pNMh972yG3sYbBVeGUomtH
         kyJYU2d4opgUDE2L2ZUxysLR2h8VkM66XF3XastsBuspIL8tAu+r51YkcmIH+sgIGfpk
         oFOIYgWLzh/Ks/l6SFGKD1GwDwfcSI4/vUNxvdBHSp0tH6n09Hlk6njxluMtzjEAhJSp
         4zaEYwFqxxRaj7EHWUm9e7QxGDS4THEMTmeUsADJ8A4U7MkAg7j0jn/LIZDa24M4dk+p
         R4jPzGYeWtbVrOwaR3y/ZHzXowP0DrmoRykNjhx/Wv/3OT7O2eicB6x6mm6W99DlhUNE
         Rzhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m1si437339wrj.4.2019.03.04.13.33.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 13:33:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,441,1544482800"; 
   d="scan'208";a="298079807"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2019 22:33:58 +0100
Date: Mon, 4 Mar 2019 22:33:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniela Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Lines over 80
 characters
In-Reply-To: <20190304210909.GA4408@pthm>
Message-ID: <alpine.DEB.2.21.1903042232270.2591@hadrien>
References: <20190304210909.GA4408@pthm>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 4 Mar 2019, Daniela Mormocea wrote:

> Fix lines with over 80 characters
>
> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
> ---
>  drivers/staging/fbtft/flexfb.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/flexfb.c
> index c5fa591..0759d93 100644
> --- a/drivers/staging/fbtft/flexfb.c
> +++ b/drivers/staging/fbtft/flexfb.c
> @@ -671,7 +671,10 @@ static int flexfb_probe_common(struct spi_device *sdev,
>  			break;
>  		case 9:
>  			if (regwidth == 16) {
> -				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n", regwidth, buswidth);
> +				dev_err(dev,
> +					"argument 'regwidth': %d is not
> +					supported with buswidth=%d and SPI.\n",

Don't break the string in this way.  Strings are allowed to drift over 80
characters, so that it is possible to grep for the string that one sees at
runtime.

julia

> +					regwidth, buswidth);
>  				return -EINVAL;
>  			}
>  			par->fbtftops.write_register = fbtft_write_reg8_bus9;
> @@ -718,7 +721,9 @@ static int flexfb_probe_common(struct spi_device *sdev,
>  			par->fbtftops.write_vmem = fbtft_write_vmem16_bus16;
>  			break;
>  		default:
> -			dev_err(dev, "argument 'buswidth': %d is not supported with parallel.\n", buswidth);
> +			dev_err(dev,
> +				"argument 'buswidth': %d is not supported with parallel.\n",
> +				buswidth);
>  			return -EINVAL;
>  		}
>  	}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190304210909.GA4408%40pthm.
> For more options, visit https://groups.google.com/d/optout.
>

