X-GM-THRID: 6250932396840976384
X-Received: by 10.194.216.3 with SMTP id om3mr1102485wjc.7.1455433587833;
        Sat, 13 Feb 2016 23:06:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.111.193 with SMTP id c62ls388209wmi.36.gmail; Sat, 13 Feb
 2016 23:06:27 -0800 (PST)
X-Received: by 10.28.45.151 with SMTP id t145mr510094wmt.6.1455433587307;
        Sat, 13 Feb 2016 23:06:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w197si393325wmw.3.2016.02.13.23.06.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 23:06:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,444,1449529200"; 
   d="scan'208";a="203012583"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 08:06:26 +0100
Date: Sun, 14 Feb 2016 08:06:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: wilc1000: Simplify code
 by eliminating else block
In-Reply-To: <20160214051750.GA26350@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.02.1602140806110.2039@localhost6.localdomain6>
References: <20160214051750.GA26350@janani-Inspiron-3521>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 14 Feb 2016, Janani Ravichandran wrote:

> Remove else block here as it is not useful after the return statement in 
> the corresponding if block. This simplifies code. This issue was
> identified by checkpatch.
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
> Changes since v1:
>  * Modified commit decription to respect 80 char limit.
> 
>  drivers/staging/wilc1000/host_interface.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 472fd7f..fe27560 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -3355,10 +3355,9 @@ static s32 host_int_get_assoc_res_info(struct wilc_vif *vif,
>  		*pu32RcvdAssocRespInfoLen = 0;
>  		PRINT_ER("Failed to send association response config packet\n");
>  		return -EINVAL;
> -	} else {
> -		*pu32RcvdAssocRespInfoLen = wid.size;
>  	}
> -
> +	

You have added trailing whitespace here.

julia

> +	*pu32RcvdAssocRespInfoLen = wid.size;
>  	return result;
>  }
>  
> -- 
> 2.5.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160214051750.GA26350%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
> 

