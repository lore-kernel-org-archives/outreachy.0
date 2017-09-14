X-GM-THRID: 6465677729933033472
X-Received: by 10.223.152.12 with SMTP id v12mr1424903wrb.12.1505409128668;
        Thu, 14 Sep 2017 10:12:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.31.9 with SMTP id f9ls443426ljf.48.gmail; Thu, 14 Sep 2017
 10:12:07 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDZldf42clIwPCLr5XPvN2jSnQ/ZYnusr/3G2Ex0q8IAF3uuWqSqMMpCo9ySEtuqCKGZA8A
X-Received: by 10.25.190.75 with SMTP id o72mr1706637lff.18.1505409127240;
        Thu, 14 Sep 2017 10:12:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505409127; cv=none;
        d=google.com; s=arc-20160816;
        b=qFuBLOmjv7YJBtzmjrPB8tu54V0MwJrn5f5CinhmLq3K7kSY9FRW4Xb3r1Y7ZrXUsy
         M3zn221yB4DHmmyXGuEUF5tacOYmrJ2hxD0367Ou/YSVXycXAtIyYKXUPo9+qSnj14u9
         6IzvJQ0ErE8stBnv75gH1VFauinK5YLO5BdI2+OOkRoe28VuzC4X0oVSUlXFApNyV/xL
         5j5u6pAR1g1RCMMOV4TcRXAbjtvmVtincmZCxPEibA4T5eV7yYeQDJzcBRiBlgq52QtU
         uYd2vGrHrcyU42xuiE9AWHfP+LuAglqRrlFoTn5fSWMupT1PWUY2RiTCVCl1baDOmZSp
         3x6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=/dFBfG0soZz/E3ULlXareDkMoosaiWOy/mEGMGUjH9s=;
        b=a57cZscMGrbssEOJ2Zqc9tN6GcbLvV641agdNuvO3KgC85WUMoaQTBpO406IYiWJl0
         knjoXHMA/6xsgmn78lCBV01Ek91pdpKT/9xSYDwzPxrfejgdaDwZSoGAZCFZ7VURGIq6
         zai62zYkko1P6C16pGLpSxAexbIFXoZBiHTkBGcSYVjwTxsG2AZlxwzGIWlyEi8Wvvg5
         tWC30KTKgDlrKVGDXIDdrpYA3AG1vBOZBvEBPJMv4S7ZIsjlhtBZ3e9dcmNKONSJ6ULw
         zpNOWNVGtT+T9z8S9U+Wiafw7n+TFJmfZ6H4/Z0aoCdA/IAFUYNmEH19hjXYuJdaKVC8
         vC5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c142si82598wmh.3.2017.09.14.10.12.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 10:12:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,394,1500933600"; 
   d="scan'208";a="237534677"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 19:12:06 +0200
Date: Thu, 14 Sep 2017 19:11:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: octeon: Remove unnecessary
 parentheses
In-Reply-To: <20170914165129.GA19272@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709141911180.3185@hadrien>
References: <20170914165129.GA19272@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 14 Sep 2017, Meghana Madhyastha wrote:

> Removes unnecessary parentheses inside the conditional
> statement.
>
> Found by checkpath.pl
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
>  drivers/staging/octeon/ethernet-spi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/octeon/ethernet-spi.c b/drivers/staging/octeon/ethernet-spi.c
> index 063dcd0..8c6bb93 100644
> --- a/drivers/staging/octeon/ethernet-spi.c
> +++ b/drivers/staging/octeon/ethernet-spi.c
> @@ -213,7 +213,7 @@ int cvm_oct_spi_init(struct net_device *dev)
>  	}
>  	number_spi_ports++;
>
> -	if ((priv->port == 0) || (priv->port == 16)) {
> +	if (priv->port == 0 || priv->port == 16) {

It looks fine, but did you actually compile the code?

julia


>  		cvm_oct_spi_enable_error_reporting(INTERFACE(priv->port));
>  		priv->poll = cvm_oct_spi_poll;
>  	}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170914165129.GA19272%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

