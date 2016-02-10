X-GM-THRID: 6249498218591158272
X-Received: by 10.28.156.83 with SMTP id f80mr1056375wme.1.1455089198746;
        Tue, 09 Feb 2016 23:26:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.232.20 with SMTP id f20ls103409wmh.5.gmail; Tue, 09 Feb
 2016 23:26:38 -0800 (PST)
X-Received: by 10.28.48.88 with SMTP id w85mr1063528wmw.5.1455089198348;
        Tue, 09 Feb 2016 23:26:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w128si680058wmd.0.2016.02.09.23.26.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 23:26:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="202409439"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 08:26:37 +0100
Date: Wed, 10 Feb 2016 08:26:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: Modify boolean
 assignment
In-Reply-To: <20160210082412.GA2645@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.02.1602100825150.2050@localhost6.localdomain6>
References: <20160210082412.GA2645@janani-Inspiron-3521>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 10 Feb 2016, Janani Ravichandran wrote:

> Boolean variables should be assigned true/false rather than 1/0.
> This patch makes such a correction.

A change like this should be made consistently, so it is a little 
surprising to see only one such change.  Is this the only place where the 
variable is initialized?  If so, you could say that.  if not, then you 
could explain that all of the other initialization places already have 
boolean values, in some way or another.

julia

> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/unisys/visorhba/visorhba_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
> index 5a78409..e93bb1d 100644
> --- a/drivers/staging/unisys/visorhba/visorhba_main.c
> +++ b/drivers/staging/unisys/visorhba/visorhba_main.c
> @@ -1062,7 +1062,7 @@ static int visorhba_resume(struct visor_device *dev,
>  		return -EINVAL;
>  
>  	if (devdata->serverdown && !devdata->serverchangingstate)
> -		devdata->serverchangingstate = 1;
> +		devdata->serverchangingstate = true;
>  
>  	visor_thread_start(&devdata->threadinfo, process_incoming_rsps,
>  			   devdata, "vhba_incming");
> -- 
> 2.5.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160210082412.GA2645%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
> 

