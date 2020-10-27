X-GM-THRID: 6887485179824177152
X-Received: by 2002:a7b:c350:: with SMTP id l16mr1836889wmj.135.1603792748771;
        Tue, 27 Oct 2020 02:59:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4ac3:: with SMTP id y3ls1358218wrs.2.gmail; Tue, 27 Oct
 2020 02:59:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzWFuflSkNBwNwHPiGERVBa9uedX7pUSagzWJNfVt1kGo3A0wOPR+uu1gQ5JZDNwBtdmlnP
X-Received: by 2002:adf:fa01:: with SMTP id m1mr1946952wrr.220.1603792746521;
        Tue, 27 Oct 2020 02:59:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603792746; cv=none;
        d=google.com; s=arc-20160816;
        b=F5jW4A67wzJKioNXjYmXfSJgXim61dmd8SNLUYjy9ikY1+WNouFf6cTnnmC64tdaOk
         rYz2Ezy4wV9+oRNkGdyTXgUBMXSS5JPRdC7cX4BWYzm5rPet33m1f5ssKdf7m7XL6u5Q
         KkXbc5r2rhAhwcgXQ87flXsfIliGX3TQ24K99+3HFCMCQEKdAxqaoW0C4krg2PtZi+2w
         KXltlyRepZ7kbcISaNUgWcl9yOCjkOz++zqxyLiUJ8vzM2kirnDk08UKq1n66+S6ALRS
         6EJW9DLmweJfW4uprn3GbeCk15gFGg+YsRyKSLBRsqG3QkL5y1wUrRRYVhDwPmWNLmHJ
         MR8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=T4rgsiIPKAr+K09oa4KEN8esO3/QDBJYGfmSdcTAJ6M=;
        b=J1gTOb8USJH7aLvWoTnm67f21ZUeFONceffequHMMgpGOSl24M7sBhEsZ6utCJC9zE
         5YSb2XEdfkcBdhfmlYAt3gsEsp/civiGhin8dD3l+W39eFVK0yP5KT2d18ijGR2Lf0Uq
         nU4XF7bzTm2vN4nELb5EIpUaaYutYKwQJ76IYdM86puQ79lmZNVDrEPKY6AQUdgSM7GA
         vMSarNDK94rCUjJVCCaD4VUO845KGsMeQeeW8dwQz6SCuId3KFZbX7zC2uylbWXsTd7m
         j/kWHfF3liOIXG0Ojqbw1XQzV7xP/6qj0nRuQGgJJebaXf7trgeLzpHmtBVJCyMEYvGS
         rBOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 91si18239wrs.2.2020.10.27.02.59.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 02:59:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,423,1596492000"; 
   d="scan'208";a="474481058"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Oct 2020 10:59:06 +0100
Date: Tue, 27 Oct 2020 10:59:05 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
cc: Forest Bond <forest@alittletooquiet.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Break multiple
 assignments in one line
In-Reply-To: <20201025032331.GA9095@Zangetsu>
Message-ID: <alpine.DEB.2.22.394.2010271057530.2847@hadrien>
References: <20201025032331.GA9095@Zangetsu>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Oct 2020, Marcos Antonio de Jesus Filho wrote:

> The kernel coding style disencourage multiple assignments in one
> line. Split this multiple assignments in one line into single assignments
> in multiple lines following this recommendation. Issue found by
> checkpatch.
>
> Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
> ---
>  drivers/staging/vt6655/device_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index 09ab6d6f2429..ec73b4ac82e6 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -670,7 +670,8 @@ static int device_init_td0_ring(struct vnt_private *priv)
>
>  	if (i > 0)
>  		priv->apTD0Rings[i - 1].next_desc = cpu_to_le32(priv->td0_pool_dma);
> -	priv->apTailTD[0] = priv->apCurrTD[0] = &priv->apTD0Rings[0];
> +	priv->apCurrTD[0] = &priv->apTD0Rings[0];
> +	priv->apTailTD[0] = priv->apCurrTD[0];

I think this was already tried and Greg already expressed the opinion that
in this case the code is ok as it.

It might have something to do with the fact that all of the elements have
about the same size, which makes it a bit easier to see what is going on.

julia

>
>  	return 0;
>
> --
> 2.28.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201025032331.GA9095%40Zangetsu.
>

