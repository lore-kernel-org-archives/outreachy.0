X-GM-THRID: 6466254193514512384
X-Received: by 10.25.202.17 with SMTP id a17mr374834lfg.6.1505542670812;
        Fri, 15 Sep 2017 23:17:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.216.4 with SMTP id p4ls347823lfg.21.gmail; Fri, 15 Sep 2017
 23:17:49 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5md2gSiaeVpgYttO/b/U1h3fpURivmllQ7k1jEy+K9/u8+fHpwkYOruUI9h5FokNGwU+uo
X-Received: by 10.46.64.20 with SMTP id n20mr1630720lja.36.1505542669154;
        Fri, 15 Sep 2017 23:17:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505542669; cv=none;
        d=google.com; s=arc-20160816;
        b=VSYPVoo0/lTFbZfidvd2yQBi1Rgl69SFf3RBh2FuUyAyEB9cK0wZjyYu138C8sxX4i
         qq+WkYHeZjbrs65QYgaz0xWZ3KpekknyKsu5+f6ZfhLBm/GRcK/PciEY5vR57+sxfOht
         AYDqvZ+rhlCqqMlMh6e1z3mXZ6KmF0zDorTPv7OwSK31wmKTyf7TdlTSB7akrWy3/7dM
         3Jqx8yOs2YQGPapAblN0rSSiu5Vzzjm91+8Zz7hoXmo+mJQBUpF4Ib/pCFukZEjMPT6F
         Pn/bl1E+lFvvfV90JhcqixuiGRwHYlwKkKVF+CZKhg1pLvd4h1NfFvZs4V7ot7WY9Wtm
         9spQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=b56RkZP89uC9hgAb3y9Z6W573KqnknXAdzSoHH0QZCA=;
        b=OiiXwnFy9fqsJe/XZdibZF7DslxfqrIDhKdzYg22e9P5aNXbflAshimLIT4IgqI0BD
         Z/NJngSiog0C5XTQo8DEdgAql3ggt+B4cE0Cj0lXBXj0FBHSb1F6TiN9SV/VotvCILw5
         yIENlNhVuaGUPNRYd1iExN6mlaidnRDCElh2T2/VJN/NUr7ECLRuGhVN0lvZP5pkeNQO
         t1LVEPk0g2HBdVMvnD63JWVJSl9Rn4gq+vdez7A8m6bb60pjKuljODZ1lCnMSXDYp+ap
         OpYyvlnvc6WSo2XXjulXk2t15K3TNk04pTwycNiC+bb/jdhSYa9djWiOWYVd2OwYU3GJ
         Lnqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k18si80357wmd.1.2017.09.15.23.17.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 23:17:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,400,1500933600"; 
   d="scan'208";a="291356198"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 08:17:48 +0200
Date: Sat, 16 Sep 2017 08:17:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: irda: drivers: Move the
 curly bracket to the same line as if
In-Reply-To: <20170916060833.GA31923@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709160817370.2943@hadrien>
References: <20170916060833.GA31923@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Meghana Madhyastha wrote:

> Move the left curly brace to the same line as the if statement.
> This coding style is more common and also reduces the number of
> lines of code.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/irda/drivers/ali-ircc.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/irda/drivers/ali-ircc.c b/drivers/staging/irda/drivers/ali-ircc.c
> index 756ae53..589cd01 100644
> --- a/drivers/staging/irda/drivers/ali-ircc.c
> +++ b/drivers/staging/irda/drivers/ali-ircc.c
> @@ -1876,8 +1876,7 @@ static int  ali_ircc_dma_receive_complete(struct ali_ircc_cb *self)
>  			self->stamp = ktime_get();
>
>  			skb = dev_alloc_skb(len+1);
> -			if (!skb)
> -			{
> +			if (!skb) {
>  				self->netdev->stats.rx_dropped++;
>
>  				return FALSE;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170916060833.GA31923%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

