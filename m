X-GM-THRID: 6260471380300529664
X-Received: by 10.112.145.225 with SMTP id sx1mr25445lbb.23.1457652970158;
        Thu, 10 Mar 2016 15:36:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.91.82 with SMTP id p79ls359269lfb.76.gmail; Thu, 10 Mar
 2016 15:36:09 -0800 (PST)
X-Received: by 10.112.17.37 with SMTP id l5mr868312lbd.21.1457652969347;
        Thu, 10 Mar 2016 15:36:09 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c7si30713wmf.2.2016.03.10.15.36.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 15:36:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,317,1454972400"; 
   d="scan'208";a="168086740"
Received: from unknown (HELO hadrien.local) ([150.100.253.2])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 11 Mar 2016 00:36:07 +0100
Date: Fri, 11 Mar 2016 08:35:59 +0900 (JST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: os_dep: Remove
 unnecessary else after return
In-Reply-To: <20160310165407.GA18825@Karyakshetra>
Message-ID: <alpine.DEB.2.10.1603110835350.4048@hadrien>
References: <20160310165407.GA18825@Karyakshetra>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 10 Mar 2016, Bhaktipriya Shridhar wrote:

> This patch fixes the checkpatch warning that else is not generally
> useful after a break or return.
>
> This was done using Coccinelle:
> @@
> expression e2;
> statement s1;
> @@
> if(e2) { ... return ...; }
> -else
>          s1
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rtl8188eu/os_dep/osdep_service.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/os_dep/osdep_service.c b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
> index d87b547..854524d 100644
> --- a/drivers/staging/rtl8188eu/os_dep/osdep_service.c
> +++ b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
> @@ -67,8 +67,7 @@ u32 _rtw_down_sema(struct semaphore *sema)
>  {
>  	if (down_interruptible(sema))
>  		return _FAIL;
> -	else
> -		return _SUCCESS;
> +	return _SUCCESS;

It would really be nice to use more standard error return codes. (Not
related to this patch of course).

julia

>  }
>
>  void	_rtw_init_queue(struct __queue *pqueue)
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160310165407.GA18825%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
>

