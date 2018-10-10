X-GM-THRID: 6610740007472726016
X-Received: by 2002:a17:906:6ace:: with SMTP id q14-v6mr6203273ejs.7.1539183282374;
        Wed, 10 Oct 2018 07:54:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9970:: with SMTP id l45-v6ls2671203edb.9.gmail; Wed, 10
 Oct 2018 07:54:41 -0700 (PDT)
X-Google-Smtp-Source: ACcGV604Y9aLjuIcCgGfjs9ho2FP1/zThg+6Rak92M5f3Wr7n3nSWn8Vcqc0j8mVsEy41uMFIZqX
X-Received: by 2002:aa7:c241:: with SMTP id y1-v6mr4437325edo.5.1539183281703;
        Wed, 10 Oct 2018 07:54:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539183281; cv=none;
        d=google.com; s=arc-20160816;
        b=eMkqG9FLIp7Ws7TFLye5ckoxxLgpmdiJUOYypfd6Xj0NuCa1efSPBW+D2i7FG7vqY0
         pmlHf5uCnQIZGEquGOVoPI4B3SsRqri2eW5HEt449hx9LGxzHH0Z3EFGQWx9caYHszEa
         pTSg+imDUPG+eSEtO5Dh1WreNwarMmgezWBR2rci5oaJVkbEc0YuId3WAL+I5yoACZlF
         SXZDCMaeGx7rLXH37RaTLGmDvbVkKZgYoDzbHbAlVl3RsEos1NbZEB9NymQxKOjAPJxZ
         toOY/W1oj/g8rgUWOFn+wPALuWG37fsOkKvclG5e80d6qo3zZRuujI7zmwyonRw178Wc
         N7Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=slzQtisitExvxk7Rb1HykUks+DyStxJ8P27LF8FGtlQ=;
        b=GGrCtw5+Xd2scEIhHqB5ZMIABFjxu6lqxNKX1kFRdJhyFqXaXuUJaa/vTij+YyAAaC
         OaeWIzWeTwxRy5j659R1NdOIjLd0m1Ub/Y7+FqjXscEYCIUTj+vALV8TY7Qmi+2q5zNS
         Xz8AMos0A08KXQowXt4ftj0vLfmPbRkfcvWu1YARsRU6eVMN6wPMzlfWICAGwy3avTx0
         PRZVtTxPBd+mKUh9PuGKdsuJoeRh8l1qSgf2fJ7fI9Xt4jBI7aJqzQD1XqJg+WCYmvc3
         /CiS7s83eILDfOie/ZbvkQVF0zLPltc9tgJNEg+BsZ5pSxoVqH+Td6HPw4IEDdYN848Y
         RAgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g5-v6si748268ejb.0.2018.10.10.07.54.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Oct 2018 07:54:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,364,1534802400"; 
   d="scan'208";a="281693920"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Oct 2018 16:54:40 +0200
Date: Wed, 10 Oct 2018 16:54:38 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    aditya.shankar@microchip.com, ganesh.krishna@microchip.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wilc1000: replace udelay
 with usleep_range
In-Reply-To: <6eca799b032fdd5f674f55087c926b1957e22e5c.1539182155.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.20.1810101654100.3396@hadrien>
References: <cover.1539182155.git.code@wizofe.uk> <6eca799b032fdd5f674f55087c926b1957e22e5c.1539182155.git.code@wizofe.uk>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 10 Oct 2018, Ioannis Valasakis wrote:

> Fix warning and replace a udelay inside a non-atomic context and
> it can be safely replace by a usleep_range(t, t + delta), where delta is
> 20% of t, as that is between 10 and 20 microseconds.
> Reported by checkpatch.

It looks like your delta is 5%?

julia

>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/wilc1000/wilc_wlan.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> index 8b184aa30d25..661c594b0a3c 100644
> --- a/drivers/staging/wilc1000/wilc_wlan.c
> +++ b/drivers/staging/wilc1000/wilc_wlan.c
> @@ -436,7 +436,7 @@ void chip_wakeup(struct wilc *wilc)
>  		} while (wilc_get_chipid(wilc, true) == 0);
>  	} else if ((wilc->io_type & 0x1) == HIF_SDIO) {
>  		wilc->hif_func->hif_write_reg(wilc, 0xfa, 1);
> -		udelay(200);
> +		usleep_range(200, 210);
>  		wilc->hif_func->hif_read_reg(wilc, 0xf0, &reg);
>  		do {
>  			wilc->hif_func->hif_write_reg(wilc, 0xf0,
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6eca799b032fdd5f674f55087c926b1957e22e5c.1539182155.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>

