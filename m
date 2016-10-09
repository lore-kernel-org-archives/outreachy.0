X-GM-THRID: 6339198872310513664
X-Received: by 10.25.10.131 with SMTP id 125mr1693903lfk.17.1475992242786;
        Sat, 08 Oct 2016 22:50:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.219 with SMTP id f88ls650194lji.23.gmail; Sat, 08 Oct
 2016 22:50:42 -0700 (PDT)
X-Received: by 10.25.198.15 with SMTP id w15mr203363lff.22.1475992242273;
        Sat, 08 Oct 2016 22:50:42 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c74si513431wmd.3.2016.10.08.22.50.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 22:50:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,316,1473112800"; 
   d="scan'208";a="196117457"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Oct 2016 07:50:41 +0200
Date: Sun, 9 Oct 2016 07:50:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: rtl8188eu: core: removes
 extra blank lines
In-Reply-To: <20161008204909.GA8819@spock>
Message-ID: <alpine.DEB.2.10.1610090750080.3134@hadrien>
References: <cover.1475959255.git.juliana.orod@gmail.com> <20161008204909.GA8819@spock>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 8 Oct 2016, Juliana Rodrigues wrote:

> Removes unecessary blank lines that were causing checkpatch issues.
>
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_led.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c b/drivers/staging/rtl8188eu/core/rtw_led.c
> index f51a196..147eded 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_led.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_led.c
> @@ -87,7 +87,6 @@ void InitLed871x(struct adapter *padapter, struct LED_871x *pLed)
>  	INIT_WORK(&pLed->BlinkWorkItem, BlinkWorkItemCallback);
>  }
>
> -
>  /*  */
>  /*	Description: */
>  /*		DeInitialize an LED_871x object. */

It would be for another patch, but this is definitely not the proper
format for a comment describing a function definition.

julia


> --
> 2.10.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161008204909.GA8819%40spock.
> For more options, visit https://groups.google.com/d/optout.
>

