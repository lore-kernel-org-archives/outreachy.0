X-GM-THRID: 6388128141195345920
X-Received: by 10.46.77.207 with SMTP id c76mr900041ljd.25.1487354006608;
        Fri, 17 Feb 2017 09:53:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.65 with SMTP id y1ls230249ljd.17.gmail; Fri, 17 Feb 2017
 09:53:25 -0800 (PST)
X-Received: by 10.25.168.20 with SMTP id r20mr937425lfe.10.1487354005625;
        Fri, 17 Feb 2017 09:53:25 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p185si183250wme.1.2017.02.17.09.53.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 09:53:25 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,172,1484002800"; 
   d="scan'208";a="260996124"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2017 18:53:25 +0100
Date: Fri, 17 Feb 2017 18:53:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, lars@metafoo.de, 
    Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de, 
    pmeerw@pmeerw.net, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: compress return logic
In-Reply-To: <1487351841-6639-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702171852520.3109@hadrien>
References: <1487351841-6639-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 17 Feb 2017, Gargi Sharma wrote:

> Simplify function returns by merging assignment and return.
> Found with Coccinelle.
>
> Semantic patch:
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/iio/meter/ade7854.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7854.c b/drivers/staging/iio/meter/ade7854.c
> index e8007f0..c6cffc1 100644
> --- a/drivers/staging/iio/meter/ade7854.c
> +++ b/drivers/staging/iio/meter/ade7854.c
> @@ -426,9 +426,7 @@ static int ade7854_set_irq(struct device *dev, bool enable)
>  	else
>  		irqen &= ~BIT(17);
>
> -	ret = st->write_reg_32(dev, ADE7854_MASK0, irqen);
> -
> -	return ret;
> +	return st->write_reg_32(dev, ADE7854_MASK0, irqen);
>  }
>
>  static int ade7854_initial_setup(struct iio_dev *indio_dev)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487351841-6639-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

