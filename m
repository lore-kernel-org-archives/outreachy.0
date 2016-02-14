X-GM-THRID: 6250925107239190528
X-Received: by 10.28.126.149 with SMTP id z143mr508783wmc.4.1455433809552;
        Sat, 13 Feb 2016 23:10:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.145.149 with SMTP id t143ls424713lfd.105.gmail; Sat, 13 Feb
 2016 23:10:08 -0800 (PST)
X-Received: by 10.112.77.37 with SMTP id p5mr1079216lbw.1.1455433808825;
        Sat, 13 Feb 2016 23:10:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s141si584090wmd.1.2016.02.13.23.10.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 23:10:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,444,1449529200"; 
   d="scan'208";a="164633638"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 08:10:08 +0100
Date: Sun, 14 Feb 2016 08:10:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: linux_mon.c: Remove
 unneeded parentheses
In-Reply-To: <20160214044116.GA25811@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.02.1602140809520.2039@localhost6.localdomain6>
References: <20160214044116.GA25811@janani-Inspiron-3521>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 13 Feb 2016, Janani Ravichandran wrote:

> Remove parentheses around single statement blocks in if conditions as
> they are not required.

I would say that these are braces, not parentheses.

julia

> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_mon.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
> index e9bb0ec..e5f9ec9 100644
> --- a/drivers/staging/wilc1000/linux_mon.c
> +++ b/drivers/staging/wilc1000/linux_mon.c
> @@ -302,9 +302,8 @@ struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_devi
>  	struct WILC_WFI_mon_priv *priv;
>  
>  	/*If monitor interface is already initialized, return it*/
> -	if (wilc_wfi_mon) {
> +	if (wilc_wfi_mon) 
>  		return wilc_wfi_mon;
> -	}
>  
>  	wilc_wfi_mon = alloc_etherdev(sizeof(struct WILC_WFI_mon_priv));
>  	if (!wilc_wfi_mon) {
> -- 
> 2.5.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160214044116.GA25811%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
> 

