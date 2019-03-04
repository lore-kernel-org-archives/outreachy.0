X-GM-THRID: 6664357391399649280
X-Received: by 2002:adf:9f42:: with SMTP id f2mr776875wrg.25.1551685080122;
        Sun, 03 Mar 2019 23:38:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ea4e:: with SMTP id j14ls3210717wrn.8.gmail; Sun, 03 Mar
 2019 23:37:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqwOdV0HNw8pe1ywrohrcVrHUWmPyKXimgReElJtUW56FeZoNDKC99oXEem3QjPkFMImg/k+
X-Received: by 2002:adf:9f42:: with SMTP id f2mr776871wrg.25.1551685079513;
        Sun, 03 Mar 2019 23:37:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551685079; cv=none;
        d=google.com; s=arc-20160816;
        b=dbo7Qyx8zj0oiI0CsJnL9pFICr/iNBEhFJzMhihP0FhhZ1VHI+u70VI7FURus4de7l
         wJ7EtYvua7DKhbSXx9/tookbIvkF05H9NPkbR5Yu0sbY1neAOm/mU+ER7tKL8crofDYj
         VL1SldDzf6gpf8BkKziw2mQtSeklw+13hnF5HxZCU5fdpsdH0nvNKPhCgMAmEfH7gP8y
         IYFYoydnAzYp3EbjQjIoEoMIf443YcWBZK4SsZ2QiIdmk84GtuU5AsAMhULtAfe7l6VE
         AJ1adJlqwqQv2ohn/rKaROMp0ZryqttUEwZmX5hnjiY9FU1zZ+hVfIiNhLZ2i1zEeku2
         6VEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7H6mMFqNaJAG45rosC+PlFqd6cnLn5hSKuPCg+Zf1Qk=;
        b=jFuImPdG43ZslBhWEO33m+vrjbOQDBPVuyzoe32aAMu+uOvgYHH6unK9EZeEOmNMYR
         L/G8i/gfIyiZpTQXvMlxKxaORX2BV27VyKQWOn+3RTm3REgefGiFE/g1QIWFDxpsur42
         KJcqz0XBAbPYBMBQ+TCyn45X2kiz3B/Y91S5pW773DwOrS3vG9tB1NKRAsnAFDRfrZT6
         NoeTHkKfodeLuqKLs2rM9sGlbPdelDbcZ4KckE/gL70Z26+9dbuntHDTNNxmbWofr6En
         eRxfrtHZndfjE+Zl/QF6Chv+DgrHXRVQ6HlT91qNHCTSZct2r6cMTIchMMv6QehPJBOZ
         gebQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTP id o184si147108wma.0.2019.03.03.23.37.59
        for <outreachy-kernel@googlegroups.com>;
        Sun, 03 Mar 2019 23:37:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,439,1544482800"; 
   d="scan'208";a="371725659"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2019 08:37:58 +0100
Date: Mon, 4 Mar 2019 08:37:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Fix space around
 binary operator
In-Reply-To: <20190304023013.18421-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903040837450.2559@hadrien>
References: <20190304023013.18421-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Mar 2019, Madhumitha Prabakaran wrote:

> Fix the check as per Linux kernel style for use of spaces
> CHECK: spaces preferred around that '-'
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/vt6655/rf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index 825b6ab5c0de..fd09b9771cf5 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -792,7 +792,7 @@ bool RFbSetPower(
>  			byDec = byPwr + 10;
>
>  		if (byDec >= priv->byMaxPwrLevel)
> -			byDec = priv->byMaxPwrLevel-1;
> +			byDec = priv->byMaxPwrLevel - 1;
>
>  		byPwr = byDec;
>  		break;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190304023013.18421-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

