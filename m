X-GM-THRID: 6249270687841648640
X-Received: by 10.112.16.34 with SMTP id c2mr3994672lbd.19.1455022688583;
        Tue, 09 Feb 2016 04:58:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.16.198 with SMTP id 189ls592063wmq.45.gmail; Tue, 09 Feb
 2016 04:58:08 -0800 (PST)
X-Received: by 10.194.204.194 with SMTP id la2mr3899658wjc.7.1455022688175;
        Tue, 09 Feb 2016 04:58:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s132si576972wmd.1.2016.02.09.04.58.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 04:58:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,420,1449529200"; 
   d="scan'208";a="202277753"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 13:58:07 +0100
Date: Tue, 9 Feb 2016 13:58:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] Staging: rts5208: remove
 unnecessary parantheses
In-Reply-To: <20160209115955.GA28315@haneenVB>
Message-ID: <alpine.DEB.2.10.1602091357450.2578@hadrien>
References: <20160209115955.GA28315@haneenVB>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII


On Tue, 9 Feb 2016, Haneen Mohammed wrote:

> This patch removes unnecessary parantheses around rtsx->pci->dev.
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rts5208/rtsx_transport.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
> index 0c9549b..f2eb18e 100644
> --- a/drivers/staging/rts5208/rtsx_transport.c
> +++ b/drivers/staging/rts5208/rtsx_transport.c
> @@ -652,7 +652,7 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
>  	else
>  		return -ENXIO;
>
> -	addr = dma_map_single(&(rtsx->pci->dev), buf, len, dma_dir);
> +	addr = dma_map_single(&rtsx->pci->dev, buf, len, dma_dir);
>  	if (dma_mapping_error(&rtsx->pci->dev, addr))
>  		return -ENOMEM;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160209115955.GA28315%40haneenVB.
> For more options, visit https://groups.google.com/d/optout.
>

