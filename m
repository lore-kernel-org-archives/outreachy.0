X-GM-THRID: 6395756748523700224
X-Received: by 10.25.157.14 with SMTP id g14mr2307921lfe.28.1489128389732;
        Thu, 09 Mar 2017 22:46:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.66 with SMTP id s63ls886615lja.0.gmail; Thu, 09 Mar 2017
 22:46:29 -0800 (PST)
X-Received: by 10.46.83.7 with SMTP id h7mr3131840ljb.24.1489128389289;
        Thu, 09 Mar 2017 22:46:29 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si121112wmg.0.2017.03.09.22.46.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 22:46:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,139,1486422000"; 
   d="scan'208";a="263961141"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 07:46:28 +0100
Date: Fri, 10 Mar 2017 07:46:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: bcm2835-vchiq:
 Replace kmalloc with kzalloc
In-Reply-To: <20170310064211.GA7443@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.20.1703100744581.2169@hadrien>
References: <20170310064211.GA7443@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, sayli karnik wrote:

> This patch replaces kmalloc and memset with kzalloc.
> Done using coccinelle:
> @@
> type T, T2;
> expression x;
> expression E1,E2;
> statement S;
> @@
>
> - x = (T)kmalloc(E1,E2);
> + x = kzalloc(E1,E2);
>   if ((x==NULL) || ...) S
> - memset((T2)x,0,E1);
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/bcm2835-audio/bcm2835-vchiq.c | 3 +--

The file has not existed for a few days now.  It is in another directory.
I think that there has already been a patch on this issue, but you can
check if it is still relevant.

As Alison suggested, it is good to update your kernel every time you start
to work.  There are a lot of patches flying around on this code at the
moment.

julia

>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/bcm2835-audio/bcm2835-vchiq.c
> index fa23a13..a117b05 100644
> --- a/drivers/staging/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/bcm2835-audio/bcm2835-vchiq.c
> @@ -289,11 +289,10 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
>  		return NULL;
>  	}
>  	/* Allocate memory for this instance */
> -	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
> +	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
>  	if (!instance)
>  		return NULL;
>
> -	memset(instance, 0, sizeof(*instance));
>  	instance->num_connections = num_connections;
>
>  	/* Create a lock for exclusive, serialized VCHI connection access */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170310064211.GA7443%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

