X-GM-THRID: 6331749364355039232
X-Received: by 10.25.23.79 with SMTP id n76mr418516lfi.7.1474278737167;
        Mon, 19 Sep 2016 02:52:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.209 with SMTP id h78ls819107lji.13.gmail; Mon, 19 Sep
 2016 02:52:16 -0700 (PDT)
X-Received: by 10.46.71.203 with SMTP id u194mr618447lja.29.1474278736420;
        Mon, 19 Sep 2016 02:52:16 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si1705359wmr.2.2016.09.19.02.52.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 02:52:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,361,1470693600"; 
   d="scan'208";a="193889653"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 11:52:15 +0200
Date: Mon, 19 Sep 2016 11:52:13 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: i4l: Remove unused
 variable
In-Reply-To: <20160918190112.GA4845@sandhya>
Message-ID: <alpine.DEB.2.10.1609191151590.3203@hadrien>
References: <20160918190112.GA4845@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 19 Sep 2016, Sandhya Bankar wrote:

> Remove unused variable.
>
> This change is made by below coccinelle script:
> @@
> type T;
> identifier i;
> constant C;
> @@
> (
> extern T i;
> |
> - T i;
>   <+... when != i
> - i = C;
>   ...+>
> )
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/i4l/act2000/act2000_isa.c |    2 --
>  1 files changed, 0 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
> index 808bb3b..ad7a039 100644
> --- a/drivers/staging/i4l/act2000/act2000_isa.c
> +++ b/drivers/staging/i4l/act2000/act2000_isa.c
> @@ -399,7 +399,6 @@ act2000_isa_download(act2000_card *card, act2000_ddef __user *cb)
>  	unsigned int length;
>  	int l;
>  	int c;
> -	long timeout;
>  	u_char *b;
>  	u_char __user *p;
>  	u_char *buf;
> @@ -417,7 +416,6 @@ act2000_isa_download(act2000_card *card, act2000_ddef __user *cb)
>  	buf = kmalloc(1024, GFP_KERNEL);
>  	if (!buf)
>  		return -ENOMEM;
> -	timeout = 0;
>  	while (length) {
>  		l = (length > 1024) ? 1024 : length;
>  		c = 0;
> --
> 1.7.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160918190112.GA4845%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

