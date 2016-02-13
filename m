X-GM-THRID: 6250740412870295552
X-Received: by 10.194.24.233 with SMTP id x9mr742764wjf.0.1455391929222;
        Sat, 13 Feb 2016 11:32:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.149.144 with SMTP id x138ls405116lfd.68.gmail; Sat, 13 Feb
 2016 11:32:08 -0800 (PST)
X-Received: by 10.112.151.240 with SMTP id ut16mr977893lbb.16.1455391928562;
        Sat, 13 Feb 2016 11:32:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e130si315973wme.2.2016.02.13.11.32.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 11:32:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,441,1449529200"; 
   d="scan'208";a="202975830"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Feb 2016 20:32:08 +0100
Date: Sat, 13 Feb 2016 20:32:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Rakhi Sharma <rakhish1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Fixed a return
 coding style warning.
In-Reply-To: <1455363907-15077-1-git-send-email-rakhish1994@gmail.com>
Message-ID: <alpine.DEB.2.02.1602132031310.2068@localhost6.localdomain6>
References: <1455363907-15077-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 13 Feb 2016, Rakhi Sharma wrote:

> Remove unusefull return at the end of void function,as warning generted by

I don't think that "unusefull" is a real word.  Unneeded would be better.

> checkpatch.
> WARNING: void function return statements are not generally useful.
> 
> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_wlan.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
> index 54fe9d7..5ba600c 100644
> --- a/drivers/staging/wilc1000/linux_wlan.c
> +++ b/drivers/staging/wilc1000/linux_wlan.c
> @@ -1120,7 +1120,6 @@ static void wilc_set_multicast_list(struct net_device *dev)
>  
>  	wilc_setup_multicast_filter(vif, true, (dev->mc.count));
>  
> -	return;

Please get rid of the blank line also.

julia

>  }
>  
>  static void linux_wlan_tx_complete(void *priv, int status)
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455363907-15077-1-git-send-email-rakhish1994%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

