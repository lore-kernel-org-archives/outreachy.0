X-GM-THRID: 6670188410102087680
X-Received: by 2002:a50:e609:: with SMTP id y9mr604554edm.4.1553025712658;
        Tue, 19 Mar 2019 13:01:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b491:: with SMTP id w17ls3867823edd.7.gmail; Tue, 19 Mar
 2019 13:01:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyNAdY9IHvOb0VRVBDeFubKLljfv7BhqVugA+e++WnHRt9PZvjMkHCEyTyscTCDRtk3fqv/
X-Received: by 2002:a50:b361:: with SMTP id r30mr2978703edd.8.1553025711852;
        Tue, 19 Mar 2019 13:01:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553025711; cv=none;
        d=google.com; s=arc-20160816;
        b=wn4eYqPRH0j/H/2LfqfbHfLzJuhKnKePYpJDpb6DDe+iSUH2NLwIlCoXepbEt0z4ch
         GMb8NVevlF/54vKB/ZS8lNwxTJ/MGoYb0FyKxYP/u1GtS4H/y/ZMmBzCrnAviNuisyJr
         t/41PMmkJy1t/SnhxPCNcjAYQYPPDXYtGNYgBxnZ/Y+P0gpYh5DQQZBNRyq+N5fYSAr2
         l6+S2z4uJz9tASQDKHCDn6qm2EBPMJExXoOGyfuSDpnZclmSSWMcKRx+K+qWljBCsroB
         QTL8xOuu0hhWY9yyJ2jPHWmAukj53rZU0tRIpxkK0ReyOoe/jAp50DY9fPidgygUT9YM
         7VAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2ro0Ya8Nxi9jHSSy/Wtt7YwyI2Ype3Y72HZrbIaaXw4=;
        b=VFLBS5BJ48vgmMUx8n75zZR/G7d1YrlBnWS2DN01HaISYsSXFd91Mn8BhBZZ9KjyxD
         xDcBZ4q1NCj75fhAkN6CxCIrQ9AaBbfVOmaVNfczKpDz1LPD+Cjf/kTizegZUaBGKgfg
         CdroKERmTvKWTbqLPEM9sQTjrz2dkW7/HIz+8Iy/w5TX3aJmFZ1dDJQ5mb+ar8Oznbet
         71ZUphMIzxke9Dat4i4ySFB7U4G65CKPKI82RPilODnn3g3Yrxy3xqriP5dVyshyN7XR
         Q4qVfU6T+8ChBi1ol52pmE7rRJF70/VOuhRghqIbVWFbBh9F4k/s15DhrnqdfdA6WHcw
         Xr2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r37si675edd.2.2019.03.19.13.01.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 13:01:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,245,1549926000"; 
   d="scan'208";a="300008858"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 21:01:51 +0100
Date: Tue, 19 Mar 2019 21:01:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Remove return
 variable
In-Reply-To: <20190319193722.9561-1-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903192101210.2460@hadrien>
References: <20190319193722.9561-1-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove return variable and return the required value directly. Issue
> suggested by Coccinelle using ret.cocci.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/speakup/i18n.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index ee240d36f947..a748eb8052d1 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
>  	input++;		/* Advance over %. */
>  	input = skip_flags(input);
>  	input = skip_width(input);
> -	input = skip_conversion(input);
> -	return input;
> +	return skip_conversion(input);

The maintainer has already said that he prefers the parallelism of an
assignment on input in each case.

julia

>  }
>
>  /*
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190319193722.9561-1-nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

