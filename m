X-GM-THRID: 6336950026186522624
X-Received: by 10.28.157.10 with SMTP id g10mr356294wme.15.1475437002492;
        Sun, 02 Oct 2016 12:36:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.228 with SMTP id e97ls56308lji.9.gmail; Sun, 02 Oct 2016
 12:36:41 -0700 (PDT)
X-Received: by 10.46.32.169 with SMTP id g41mr1071783lji.26.1475437001599;
        Sun, 02 Oct 2016 12:36:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s6si903388wmb.1.2016.10.02.12.36.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 12:36:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,434,1473112800"; 
   d="scan'208";a="239084828"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Oct 2016 21:36:40 +0200
Date: Sun, 2 Oct 2016 21:36:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rehas Sachdeva <aquannie@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Bryan O'Donoghue <pure.logic@nexus-software.ie>, 
    Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [Outreachy Kernel] [PATCH] staging: greybus:
 Constify local struct gb_loopback_stats
In-Reply-To: <20161002192224.GA5295@toblerone>
Message-ID: <alpine.DEB.2.10.1610022135511.3327@hadrien>
References: <20161002192224.GA5295@toblerone>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 3 Oct 2016, Rehas Sachdeva wrote:

> The local declaration "struct gb_loopback_stats reset" is not modified
> throughout its scope and hence can be made const. Done using Coccinelle.
>
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/greybus/loopback.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
> index 7882306..fb5a068 100644
> --- a/drivers/staging/greybus/loopback.c
> +++ b/drivers/staging/greybus/loopback.c
> @@ -837,7 +837,7 @@ static int gb_loopback_request_handler(struct gb_operation *operation)
>
>  static void gb_loopback_reset_stats(struct gb_loopback *gb)
>  {
> -	struct gb_loopback_stats reset = {
> +	const struct gb_loopback_stats reset = {

Should it also be static?  I recall this comment being made in another
case, but I don't know what the tradeoffs are.

julia

>  		.min = U32_MAX,
>  	};
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161002192224.GA5295%40toblerone.
> For more options, visit https://groups.google.com/d/optout.
>

