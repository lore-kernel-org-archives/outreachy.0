X-GM-THRID: 6392323962132496384
X-Received: by 10.25.156.74 with SMTP id f71mr507859lfe.26.1488352044329;
        Tue, 28 Feb 2017 23:07:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.8.133 with SMTP id 127ls535736wmi.1.gmail; Tue, 28 Feb 2017
 23:07:23 -0800 (PST)
X-Received: by 10.28.166.144 with SMTP id p138mr55738wme.1.1488352043524;
        Tue, 28 Feb 2017 23:07:23 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b186si227586wme.1.2017.02.28.23.07.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 23:07:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,224,1484002800"; 
   d="scan'208";a="262554604"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2017 08:07:22 +0100
Date: Wed, 1 Mar 2017 08:07:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Removed
 unnecessary variable
In-Reply-To: <1488328859-6925-1-git-send-email-narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703010806240.2079@hadrien>
References: <1488328859-6925-1-git-send-email-narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Removed unnecessary variable and used instead the parameter
> that was already defined
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index 2815387..ff0a1ff 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -755,9 +755,7 @@ static const char *msg_type_str(unsigned int msg_type)
>  	void *context, void *dest,
>  	size_t offset, size_t maxsize)
>  {
> -	void *src = context;
> -
> -	memcpy(dest + offset, src + offset, maxsize);
> +	memcpy(dest + offset, context + offset, maxsize);

You have to watch for this, because the type could change, which could
change the result of the pointer arithmetic.  But that doens't happen here
- it's void * both times.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


>  	return maxsize;
>  }
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488328859-6925-1-git-send-email-narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

