X-GM-THRID: 6249238680974655488
X-Received: by 10.28.225.8 with SMTP id y8mr447333wmg.7.1455015060993;
        Tue, 09 Feb 2016 02:51:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.228.70 with SMTP id b67ls575966wmh.42.gmail; Tue, 09 Feb
 2016 02:51:00 -0800 (PST)
X-Received: by 10.28.30.147 with SMTP id e141mr454319wme.0.1455015060600;
        Tue, 09 Feb 2016 02:51:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h73si389216wme.0.2016.02.09.02.51.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 02:51:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,420,1449529200"; 
   d="scan'208";a="202253762"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 11:51:00 +0100
Date: Tue, 9 Feb 2016 11:50:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: fix check for dma
 mapping error
In-Reply-To: <20160209103540.GA27735@haneenVB>
Message-ID: <alpine.DEB.2.10.1602091148570.2578@hadrien>
References: <20160209103540.GA27735@haneenVB>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 9 Feb 2016, Haneen Mohammed wrote:

> use dma_mapping_error() instead of comparing the returned address with
> zero after dma_map_single().

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

However, the parentheses in &(rtsx->pci->dev) are really unpleasant.
Especially since they make the call to dma_map_single different from the
call to dma_mapping_error.

Maybe you could send a patch series to also get rid of them?

julia

>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_transport.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
> index f27491e..0c9549b 100644
> --- a/drivers/staging/rts5208/rtsx_transport.c
> +++ b/drivers/staging/rts5208/rtsx_transport.c
> @@ -653,7 +653,7 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
>  		return -ENXIO;
>
>  	addr = dma_map_single(&(rtsx->pci->dev), buf, len, dma_dir);
> -	if (!addr)
> +	if (dma_mapping_error(&rtsx->pci->dev, addr))
>  		return -ENOMEM;
>
>  	if (card == SD_CARD)
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160209103540.GA27735%40haneenVB.
> For more options, visit https://groups.google.com/d/optout.
>

