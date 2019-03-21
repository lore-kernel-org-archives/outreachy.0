X-GM-THRID: 6670930948020764672
X-Received: by 2002:a19:c101:: with SMTP id r1mr3099047lff.81.1553197226686;
        Thu, 21 Mar 2019 12:40:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8013:: with SMTP id j19ls833853ljg.0.gmail; Thu, 21 Mar
 2019 12:40:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy/QbRvhXhq3E1SF7t7LioP70e6VRCGFmeqwI8afXvIs92MGBJws5fqGFGvw7KXtmgSr7HZ
X-Received: by 2002:a2e:b1c7:: with SMTP id e7mr2884171lja.107.1553197225803;
        Thu, 21 Mar 2019 12:40:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553197225; cv=none;
        d=google.com; s=arc-20160816;
        b=kZ5x8p3A385sezSE/c4Dz0ZnEE1rJtRIqIovQVczbilVr6mGr07cimgDUbyc2fGQKs
         1EYEr+wFzhu9++EAr5nJEgopFM32itwThOK+dIvTMnDdagNKGIVl/VER7WW8qB9AkDVG
         XKUE8TOWa3ZbvGnyC6A4tp/6aPyoq7tbA7EY4JR6Nyy3CFJMGKCH0co1euq0byXEfxWC
         VkxHNMtZWCLNADOhop/iVkb+DZiEUiAiS0O4CqS04mNbKevv66ONAo8S98VwPg8z62Pn
         qY3DGcxzC3F/QaIui3mUpRQ33qjo1IAmg2S6wd1c/0KwFEL6khtevfjohHrDfad9iu43
         nHJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=RqQQr9iRlSOHeaR83N2BrvdYa1iQ9tx93OQK8exNz1o=;
        b=HSRH7uY6ISL7rXTI76o0tGoEq0CsUMbzNQ8xdvoW4zSyI9Gox3N0npk10m8VOFOdi6
         Idilz3mM28rv4grbXavEZkepP/K85EWxSAblyeOgp5KII6g0XWbOvV36oFIvfqe8PmNG
         TI0gtx5Pu1jRKx3xOJrHZKPLiXRXN9JuUNf7dV14B8KZfVx3q6e0zXDmOwg5UoaOpwbX
         KLE2Qcs0I9YWIlWpfIBHTHulSonOh5TUhEZV3gEe7243/b1RRufFP9sohU2y9MFwgVPa
         sLY2+mMCap/9OCg8Shf2wbh+Z+Cf+377zGZEWlOmzjrhlK1g1H8MLxj15qFoUhqf5hux
         BKWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u21si216866lja.1.2019.03.21.12.40.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:40:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,253,1549926000"; 
   d="scan'208";a="375163486"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2019 20:40:24 +0100
Date: Thu, 21 Mar 2019 20:40:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    ajay.kathat@microchip.com, adham.abozaeid@microchip.com
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] staging: wilc1000: Remove
 return variables in wilc_spi.c
In-Reply-To: <20190321193842.4327-3-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903212039530.2491@hadrien>
References: <20190321193842.4327-1-nishka.dasgupta@yahoo.com> <20190321193842.4327-3-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove local return variable in wilc_spi.c. Issue found with Coccinelle
> using ret.cocci.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
> Changes in v3:
> - Remove trailing whitespace
>
>  drivers/staging/wilc1000/wilc_spi.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
> index 4a1be9e60d74..47c777c5d1a7 100644
> --- a/drivers/staging/wilc1000/wilc_spi.c
> +++ b/drivers/staging/wilc1000/wilc_spi.c
> @@ -934,9 +934,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
>  	int k = IRG_FLAGS_OFFSET + 5;
>
>  	if (spi_priv->has_thrpt_enh) {
> -		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
> -					int_status);
> -		return ret;
> +		return spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
> +					 int_status);

You end up with a single statement in the if branch.  So the {}s should be
dropped as well.

julia

>  	}
>  	ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE, &byte_cnt);
>  	if (!ret) {
> @@ -982,9 +981,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
>  	u32 tbl_ctl;
>
>  	if (spi_priv->has_thrpt_enh) {
> -		ret = spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
> -					 val);
> -		return ret;
> +		return spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
> +					  val);
>  	}
>
>  	flags = val & (BIT(MAX_NUM_INT) - 1);
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190321193842.4327-3-nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

