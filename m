X-GM-THRID: 6331261772589170688
X-Received: by 10.28.199.198 with SMTP id x189mr93111wmf.13.1474117269397;
        Sat, 17 Sep 2016 06:01:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.11 with SMTP id s11ls640210lja.18.gmail; Sat, 17 Sep
 2016 06:01:08 -0700 (PDT)
X-Received: by 10.25.75.21 with SMTP id y21mr257177lfa.11.1474117268952;
        Sat, 17 Sep 2016 06:01:08 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si1291885wmd.1.2016.09.17.06.01.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 06:01:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,350,1470693600"; 
   d="scan'208";a="237205677"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2016 15:01:08 +0200
Date: Sat, 17 Sep 2016 15:01:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: i4l: Remove NULL
 comparison.
In-Reply-To: <20160917015330.GA14957@sandhya>
Message-ID: <alpine.DEB.2.10.1609171500440.3454@hadrien>
References: <20160917015330.GA14957@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 17 Sep 2016, Sandhya Bankar wrote:

> This patch removes the explicit NULL comparison.This issue was found by
> checkpatch.

The commit message looks better, but you still need a space after the end
of the first sentence.

julia

>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
> Changes in v2:
> * Correcting commit message.
>  drivers/staging/i4l/act2000/act2000_isa.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
> index c800da8..808bb3b 100755
> --- a/drivers/staging/i4l/act2000/act2000_isa.c
> +++ b/drivers/staging/i4l/act2000/act2000_isa.c
> @@ -166,7 +166,7 @@ act2000_isa_config_port(act2000_card *card, unsigned short portbase)
>  		release_region(card->port, ISA_REGION);
>  		card->flags &= ~ACT2000_FLAGS_PVALID;
>  	}
> -	if (request_region(portbase, ACT2000_PORTLEN, card->regname) == NULL)
> +	if (!request_region(portbase, ACT2000_PORTLEN, card->regname))
>  		return -EBUSY;
>  	else {
>  		card->port = portbase;
> @@ -244,7 +244,7 @@ act2000_isa_receive(act2000_card *card)
>  				if (valid) {
>  					card->idat.isa.rcvlen = ((actcapi_msghdr *)&card->idat.isa.rcvhdr)->len;
>  					card->idat.isa.rcvskb = dev_alloc_skb(card->idat.isa.rcvlen);
> -					if (card->idat.isa.rcvskb == NULL) {
> +					if (!card->idat.isa.rcvskb) {
>  						card->idat.isa.rcvignore = 1;
>  						printk(KERN_WARNING
>  						       "act2000_isa_receive: no memory\n");
> --
> 1.7.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160917015330.GA14957%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

