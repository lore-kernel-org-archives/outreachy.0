X-GM-THRID: 6675395649544912896
X-Received: by 2002:adf:f487:: with SMTP id l7mr157726wro.6.1554237357993;
        Tue, 02 Apr 2019 13:35:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:678a:: with SMTP id b132ls12301wmc.0.gmail; Tue, 02 Apr
 2019 13:35:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyiZtn/l1F03Xxb3Nn+jjOyz3cJRdFhk/GlNsRDqPHwgwKJa3D6y56xxHkBw4n7sYhkra7o
X-Received: by 2002:a1c:2d4c:: with SMTP id t73mr1605698wmt.21.1554237357005;
        Tue, 02 Apr 2019 13:35:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554237357; cv=none;
        d=google.com; s=arc-20160816;
        b=gDKtO7uFne1/ypX4P0CVEfZi7OvJu7FYHeeQWnOKofcIFkuNJvdl+C5TPJNnvAc467
         zYLoajNvjB4NESuFoB1mST+jndF7S6DETN4e7zC5PRrbB9ztwYir7sp+/t8g6IlbFezg
         enTzXTV0HgiouFsfc9hfHLZJ+otkiSJsR6XXXgc7FEu4fo2ku7F1QogOV3FhUBO+lLuZ
         e/jn6ZqYJRzEQ2oGzxDuxFZSsRN/t+wQAijzagoPctvBpil5aENnidtxC80vk8VUswDZ
         +P0h/ZIL30fTZHsjNz4JycWaAgiQmo27GdBeYhym3r6qeRPNckkBrmv5LDbWm1Tus6j2
         U8Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=AEL9c/AY/RYqt+KdZjzRbvv6aHUxoUQHGt8Pj1dZ1UA=;
        b=XXB8Tti3GQpq0zxP6/jZeUJYccP8a5G5qxYy/MI8B2PhHmuwTGMMPAbJzOlVQMg7ZT
         JBtFl2t14ZjQISVHUAGe9iY4tk3EdphtEHIVY7mH7qZDRiS9C9JcNBpp+rnRo7J46zrF
         Owj2Izf06qCRdlThO1rj76GsfoK/E1qNerMVNgwCbOVyyyVBBCp7JmuF8uBjZZJTu1ya
         g06O6UfHb4d4fRlgETd6NgGXKb6HWvXy7Y6ABvEp1mucYO7AzM8aPfutKyNNIbYhZCZ6
         4gqhcMxIGpk8EnEhQaWEJCwSh9q1v1KyfMgE4KB5zGL3ENulZzdyfASsQULAyNu8WDs1
         IsHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id k15si739313wrq.1.2019.04.02.13.35.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 13:35:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,302,1549926000"; 
   d="scan'208";a="301579462"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2019 22:35:56 +0200
Date: Tue, 2 Apr 2019 22:35:56 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: ralink-gdma: Remove print
 statement on failure of devm_kzalloc
In-Reply-To: <20190402202409.3613-1-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1904022234100.3803@hadrien>
References: <20190402202409.3613-1-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 3 Apr 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove print statement after failure of devm_kzalloc. Issue found with
> Coccinelle.

Hi,

The application period is actually over.  If you have some left over
revisions of patches you started during the application period, then you
can post them here.  Otherwise, you can continue contributing, but just
use get_maintainer.pl to find out who to send patches to, rather than
using the mailing list.

Thanks everyone for so many contributions!

julia


>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/ralink-gdma/ralink-gdma.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index b6d484532269..e8c0c8d0dea5 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -826,7 +826,6 @@ static int gdma_dma_probe(struct platform_device *pdev)
>  			       struct_size(dma_dev, chan, data->chancnt),
>  			       GFP_KERNEL);
>  	if (!dma_dev) {
> -		dev_err(&pdev->dev, "alloc dma device failed\n");
>  		return -EINVAL;
>  	}
>  	dma_dev->data = data;
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190402202409.3613-1-nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

