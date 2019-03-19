X-GM-THRID: 6670193586677481472
X-Received: by 2002:aa7:cfc3:: with SMTP id r3mr292364edy.1.1553026590728;
        Tue, 19 Mar 2019 13:16:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:2a9b:: with SMTP id l27ls16696eje.10.gmail; Tue, 19
 Mar 2019 13:16:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxUXLUOjEdo9UgsD+NpeJ758y/DG0V2bUJsB4DLR4mHfRDVIZPuGvZ7b+yrcAjYWOoBMQpP
X-Received: by 2002:a17:906:5985:: with SMTP id j5mr2109281ejq.8.1553026589929;
        Tue, 19 Mar 2019 13:16:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553026589; cv=none;
        d=google.com; s=arc-20160816;
        b=AiLINMZ1nePQ0aV2zR0+wYf/7vvIyRR+YCzT7t+nosFdLefJx3EiYleyuAXs89Tag3
         FF9oYRDKFOYkYimN4oCNdmZTz/NvzaKMHXodJEfNfE3YXYryEKZ7LrzKs28mIJUQXwxX
         Q0YkfnECBa6TwB8wP/INy31PCnJ/RylzP4RBVBWE9wGqN/wCY4y91BN2XAeQGlBqYUCb
         Q5QrvZoeNjm1zc6rgl+BG1TuOXfBivT39Tj1nEiVfv+h83BWHNAFfr1Q3foVHSH/Oezc
         enzOrF/IwewAEZCJ1PLGDtkSoS6J1E16DkZ0vxfojUHYOqJRjc20mhzf2f8gS5vrfPBe
         k4iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=zkGzuY/uoAq6Il5jy6FrgKhKr66vbnx1Oz9ytqm/MVU=;
        b=HsRnZ0mdvA2KgNaXNEpL0Ji8EmO0j1dTWIMASHH969tGPruI0ZwxuRan2sZ+/NFjFf
         aDRB+X/cmFS5liuG6t/JLPxQjbIYMSKzwmO7bYnX9rZMoX2r0IzfUwLSghIw0xNd75rM
         TbB8Aq+F7wtCQ7Isv2RBEHOGp8dHuF8+DbfgA6SRxM6N65JIreCvBp/wqHypKFP9iRfF
         2OLLJiUCD37O2rzn/T+lLPzCPVJW0e9dlofa7nmRivgfnsCZh2h6fNMoGo4WgguVCZWn
         P6jMlmtgl/qorMcZa15ch4apLGwUrCaSabTTmhir8E/mt+drzjO0TmcSJkF4ax2lAax2
         NJ9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f15si438ejk.0.2019.03.19.13.16.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 13:16:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,245,1549926000"; 
   d="scan'208";a="300010131"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 21:16:17 +0100
Date: Tue, 19 Mar 2019 21:16:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    ajay.kathat@microchip.com, adham.abozaeid@microchip.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: wilc1000: Remove return
 variable
In-Reply-To: <030f11edadf6ee01ffbe7d239f8352b8034427af.1553025265.git.nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903192115440.2460@hadrien>
References: <cover.1553025265.git.nishka.dasgupta@yahoo.com> <030f11edadf6ee01ffbe7d239f8352b8034427af.1553025265.git.nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove return variable and return required value directly. Issue found
> with Coccinelle using ret.cocci.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/wilc1000/wilc_spi.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
> index 28fdfa269192..9959a794edc7 100644
> --- a/drivers/staging/wilc1000/wilc_spi.c
> +++ b/drivers/staging/wilc1000/wilc_spi.c
> @@ -981,9 +981,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
>  	u32 tbl_ctl;
>
>  	if (spi_priv->has_thrpt_enh) {
> -		ret = spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
> +		return spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
>  					 val);

You need to adjust the position of val.  You can check  if it would fit on
the previous line.

julia

> -		return ret;
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/030f11edadf6ee01ffbe7d239f8352b8034427af.1553025265.git.nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

