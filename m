X-GM-THRID: 6523310311652458496
X-Received: by 10.46.42.66 with SMTP id q63mr527800ljq.37.1518852908268;
        Fri, 16 Feb 2018 23:35:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.8 with SMTP id h8ls387447ljb.8.gmail; Fri, 16 Feb 2018
 23:35:06 -0800 (PST)
X-Google-Smtp-Source: AH8x226DW+DoRJBQQGrehLofocM5gROsR8rYw+iF3hBS9qa5hpTABIbdFHgMLQQqEi8JJG9z4pE7
X-Received: by 10.46.33.147 with SMTP id h19mr536363lji.3.1518852906507;
        Fri, 16 Feb 2018 23:35:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518852906; cv=none;
        d=google.com; s=arc-20160816;
        b=SWUyE1bLSD6RKkmeJJ2bb3Kbe6BhTmDH69IY9BkySwfH4wgxwkQzyJf3Y++Y8RIwR3
         V43ZZM2bLMGMz51nHH7XFK+o3jO1VnQK3qJ/wdkKg/tPXtoAdKONAg3G8juzodhAzoUe
         Cpo03Su3u8lkXKyfBnqyTjfgP4GWLJ1VJ7CW0r4lqBT0tUxAyq50JAOageKHtOPc9wml
         4y0bHdBFELqMkzh4+eoxeh36zSM5UzgiUcuLNfTopr1G7/kV7KRMEXLDvRHQETM30hZE
         Du6FhwWdNdMvLuYhnXCGCBTcEFywXFigtJv46XEJRHZvqs4Ss8gbDmeCLH6xnDR/2ILX
         jPxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=+k64DyavFSGx50v46FeBMrSevJvyD9waaeAbtECDoUI=;
        b=qgO00oZs42fAPEOQCpLjbvMioc9RBeBbdfwwJ9N2NYK9PRZTcGnBAYP3XcLWhRzzIP
         YVxaS8g9Rq6EiOpK2blB++OFX5sPnleA6rXKkSCFUkM0fXjpRG91JhOwUHopLWpb/TA7
         G1ycGUHilkXK9bMCRir9tdCsuy4pP+TXzFnejXNwh6YbdVztnxuMDTDWM/INyr6akdM7
         FrFh2d0FuAZBjETSnZUqWKeWQJq5l6ksC9BTPb7Bp9qEwbZBnxk9dEEUeamJuogv7H3E
         A9uBoCcURlT7reY2KVqS8idRgbA4dGHAXzSShi48xNUQOQCRNOhjvaZPqVGLErCbXXqn
         OjNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l30si125131ljb.3.2018.02.16.23.35.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 23:35:06 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,523,1511823600"; 
   d="scan'208";a="314028853"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2018 08:35:05 +0100
Date: Sat, 17 Feb 2018 08:35:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eisha Chen-yen-su <chenyensu0@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Fix dereference
 warning style
In-Reply-To: <20180217001446.6261-1-chenyensu0@gmail.com>
Message-ID: <alpine.DEB.2.20.1802170832430.2645@hadrien>
References: <20180217001446.6261-1-chenyensu0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 17 Feb 2018, Eisha Chen-yen-su wrote:

> This patch fixes the checkpatch.pl warning:
>
> WARNING: Avoid multiple line dereference - prefer 'devpriv->ao_buffer_bus_addr[i]'
> \#1494: FILE: drivers/staging/comedi/drivers/cb_pcidas64.c:1494:
> +                                                  &devpriv->
> +                                                  ao_buffer_bus_addr[i],

Thank you for your patch.  For the subject line and the commit log, please
try to focus on what you did, rather than what you fixed, as fixing can
typically be done in multiple ways.  Basically what you have done is to
remove a newline inside a dereference.  Also, while it's ok to include the
checkpatch message, it is probably not necessary to cinlude the cited
line, since one can easily see that from what changes in the patch.

Please send a v2.

julia


>
> Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
> ---
>  drivers/staging/comedi/drivers/cb_pcidas64.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
> index b657beedd5ff..eea44435a2aa 100644
> --- a/drivers/staging/comedi/drivers/cb_pcidas64.c
> +++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
> @@ -1490,8 +1490,7 @@ static int alloc_and_init_dma_members(struct comedi_device *dev)
>  			devpriv->ao_buffer[i] =
>  				dma_alloc_coherent(&pcidev->dev,
>  						   DMA_BUFFER_SIZE,
> -						   &devpriv->
> -						   ao_buffer_bus_addr[i],
> +						   &devpriv->ao_buffer_bus_addr[i],
>  						   GFP_KERNEL);
>  			if (!devpriv->ao_buffer[i])
>  				return -ENOMEM;
> --
> 2.14.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180217001446.6261-1-chenyensu0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

