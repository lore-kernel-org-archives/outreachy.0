X-GM-THRID: 6329556258155134976
X-Received: by 10.46.5.140 with SMTP id 134mr2999971ljf.6.1473715016245;
        Mon, 12 Sep 2016 14:16:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.219.145 with SMTP id t17ls488460lfi.2.gmail; Mon, 12 Sep
 2016 14:16:55 -0700 (PDT)
X-Received: by 10.46.0.208 with SMTP id e77mr2848849lji.7.1473715015693;
        Mon, 12 Sep 2016 14:16:55 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si166491wmr.2.2016.09.12.14.16.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 14:16:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,324,1470693600"; 
   d="scan'208";a="192902127"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 23:16:46 +0200
Date: Mon, 12 Sep 2016 23:16:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Spaces preferred
 around operator.
In-Reply-To: <20160912211129.GA3309@sandhya>
Message-ID: <alpine.DEB.2.10.1609122316170.3549@hadrien>
References: <20160912211129.GA3309@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Sep 2016, Sandhya Bankar wrote:

> Spaces preferred around operator.This issue is found by checkpatch.pl

There should be a space after the . after operator.

Is Greg the only maintainer for this?

julia

>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/speakup/selection.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/selection.c b/drivers/staging/speakup/selection.c
> index 0149edc..ce4b946 100644
> --- a/drivers/staging/speakup/selection.c
> +++ b/drivers/staging/speakup/selection.c
> @@ -99,7 +99,7 @@ int speakup_set_selection(struct tty_struct *tty)
>  	sel_start = new_sel_start;
>  	sel_end = new_sel_end;
>  	/* Allocate a new buffer before freeing the old one ... */
> -	bp = kmalloc((sel_end-sel_start)/2+1, GFP_ATOMIC);
> +	bp = kmalloc((sel_end - sel_start) / 2 + 1, GFP_ATOMIC);
>  	if (!bp) {
>  		speakup_clear_selection();
>  		return -ENOMEM;
> --
> 1.8.2.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160912211129.GA3309%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

