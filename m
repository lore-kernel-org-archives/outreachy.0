X-GM-THRID: 6254186235119534080
X-Received: by 10.25.23.105 with SMTP id n102mr4365351lfi.9.1456256390804;
        Tue, 23 Feb 2016 11:39:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.4.214 with SMTP id 205ls566997lfe.32.gmail; Tue, 23 Feb
 2016 11:39:49 -0800 (PST)
X-Received: by 10.25.39.2 with SMTP id n2mr4365025lfn.10.1456256389134;
        Tue, 23 Feb 2016 11:39:49 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si1395967wmy.2.2016.02.23.11.39.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:39:49 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,490,1449529200"; 
   d="scan'208";a="165747377"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 20:39:48 +0100
Date: Tue, 23 Feb 2016 20:39:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: slicoss: Use sizeof structure
 *pointer over sizeof structure in kmalloc()/kzalloc().
In-Reply-To: <20160222103651.GA5176@sandhya>
Message-ID: <alpine.DEB.2.02.1602232039200.2040@localhost6.localdomain6>
References: <20160222103651.GA5176@sandhya>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 22 Feb 2016, Sandhya Bankar wrote:

> Use sizeof structure *pointer over sizeof structure in kmalloc()/kzalloc().
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/slicoss/slicoss.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
> index a91c60a..ea6b7b5 100644
> --- a/drivers/staging/slicoss/slicoss.c
> +++ b/drivers/staging/slicoss/slicoss.c
> @@ -880,7 +880,7 @@ static int slic_upr_queue_request(struct adapter *adapter,
>  	struct slic_upr *upr;
>  	struct slic_upr *uprqueue;
>  
> -	upr = kmalloc(sizeof(struct slic_upr), GFP_ATOMIC);
> +	upr = kmalloc(sizeof(*upr), GFP_ATOMIC);
>  	if (!upr)
>  		return -ENOMEM;
>  
> @@ -1806,7 +1806,7 @@ static int slic_mcast_add_list(struct adapter *adapter, char *address)
>  	}
>  
>  	/* Doesn't already exist.  Allocate a structure to hold it */
> -	mcaddr = kmalloc(sizeof(struct mcast_address), GFP_ATOMIC);
> +	mcaddr = kmalloc(sizeof(*mcaddr), GFP_ATOMIC);
>  	if (mcaddr == NULL)

You could make a series and also eliminate this == NULL test.

julia

>  		return 1;
>  
> @@ -3049,7 +3049,7 @@ static u32 slic_card_locate(struct adapter *adapter)
>  	}
>  	if (!physcard) {
>  		/* no structure allocated for this physical card yet */
> -		physcard = kzalloc(sizeof(struct physcard), GFP_ATOMIC);
> +		physcard = kzalloc(sizeof(*physcard), GFP_ATOMIC);
>  		if (!physcard) {
>  			if (card_hostid == SLIC_HOSTID_DEFAULT)
>  				kfree(card);
> -- 
> 1.8.3.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160222103651.GA5176%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
> 

