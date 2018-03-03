X-GM-THRID: 6528802195768344576
X-Received: by 10.28.245.19 with SMTP id t19mr625906wmh.11.1520110118566;
        Sat, 03 Mar 2018 12:48:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.4.212 with SMTP id 203ls846470wme.0.canary-gmail; Sat, 03
 Mar 2018 12:48:37 -0800 (PST)
X-Google-Smtp-Source: AG47ELtBNuXGzSVYBgDeOsi8JBXonUBpxXVddTIoH20mfmjHoJ2PDP6Bzwkdg6/NWaOlaiIQSsSX
X-Received: by 10.28.21.203 with SMTP id 194mr570420wmv.26.1520110117031;
        Sat, 03 Mar 2018 12:48:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520110117; cv=none;
        d=google.com; s=arc-20160816;
        b=upS+5sV0DpoBrCB0UzmEUr/8lEEIhzIFjj8EMTa9zX9+MmGFsJTppPGYBEQsmbgjmD
         NCe1xNlVf3Dka2pkKDf9mtvji0WP+wn78Vi6Qei+LuvaCtqCJe7rLMiWl3XPLCCMydlR
         RjbFKa/8KJW7UpxkNnew/XpoxB1TCoyphPKVHOZqbPM2XxuxIhkIviMF5SLo54QV7Y66
         Y9+Mcs0uJ521SkLpKlVp7LeUtO88NNab68cNUpSQJ+wtBSrDmY3kAeSQyI25FVEBJuel
         T5diwyFNyiszr8/NQTZBmNSXZGkfsYrpsZKjmxyB8mMvjttAoApy23SPBpKmXR37g7Hi
         4Xxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=4I5wFjgnADcnzLthO14Nz/pCvpruG/76HsyglXptCsU=;
        b=te99Pw4Lnx0jDHox/xqtkOcINhcr5MWkBEOdHiXiQgv4nPeCqLwiAL6uE51LN6rYpO
         7jhzGMcksdi59AoV7g5jOXr1GeRgsmUAV2zVKvaVIK/NowQ+3PwOtYPERIBZIrhbE8/4
         +pCEG/Ccz6g+Qo7GqNRfCqSntT5w8CFSqq3wDHYo7u+xdWLBnt28BsWFZV6WmZkpQ7q6
         FHeAJWy8dLxZO5mZBlO4GzMEHO9CIFgt6f4heNDOLBEMFmf5CCjXRd9UisUNxgFLpld6
         Gygc7J/Mdrboy0xhRidL2KoSWoA5b6A4SM+4lXM8aSix4cIbTcVKz+ViWCMAEwQeJXyY
         zycA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m29si348247wrb.1.2018.03.03.12.48.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 12:48:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,419,1515452400"; 
   d="scan'208";a="316238434"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 21:48:36 +0100
Date: Sat, 3 Mar 2018 21:48:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: alan@linux.intel.com, Sakari Ailus <sakari.ailus@linux.intel.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-media@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: Remove unnecessary
 semicolon
In-Reply-To: <20180303192629.GA5198@seema-Inspiron-15-3567>
Message-ID: <alpine.DEB.2.20.1803032148230.9544@hadrien>
References: <20180303192629.GA5198@seema-Inspiron-15-3567>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Mar 2018, Arushi Singhal wrote:

> Remove unnecessary semicolon found using semicolon.cocci Coccinelle
> script.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  .../media/atomisp/pci/atomisp2/css2400/runtime/frame/src/frame.c        | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/frame/src/frame.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/frame/src/frame.c
> index 5faa89a..7562bea 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/frame/src/frame.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/frame/src/frame.c
> @@ -196,7 +196,7 @@ enum ia_css_err ia_css_frame_map(struct ia_css_frame **frame,
>  						  attribute, context);
>  		if (me->data == mmgr_NULL)
>  			err = IA_CSS_ERR_INVALID_ARGUMENTS;
> -	};
> +	}
>
>  	if (err != IA_CSS_SUCCESS) {
>  		sh_css_free(me);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180303192629.GA5198%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.
>

