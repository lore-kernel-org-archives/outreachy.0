X-GM-THRID: 6808080746625892352
X-Received: by 2002:a1c:6146:: with SMTP id v67mr3177345wmb.78.1585136374053;
        Wed, 25 Mar 2020 04:39:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:104d:: with SMTP id 13ls990011wmx.1.gmail; Wed, 25
 Mar 2020 04:39:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vus792YINRVWSu62e8I+3Tz8Vbo9GUzoMAeVOsqwL+cf+2P5KwMYy548SVOf3+wmcU3CLKM
X-Received: by 2002:a7b:c1da:: with SMTP id a26mr3224509wmj.91.1585136372449;
        Wed, 25 Mar 2020 04:39:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585136372; cv=none;
        d=google.com; s=arc-20160816;
        b=p/zCItvU7tVvkcmtM1YDYSCaGBfm3CEVn47ewX1IsL7519NERBT3QqIzaFB+FXZRKI
         Ck01tpJsIUZQsiVYaN1ayXvm/oeOkW/CxVe7KMTGKXF8AC7Sv6UmPrwbbUb9A5NMwEna
         lV49b8T15sXGtPCZfK2ZRNZPyezA4H7GHbuogp8FSLxZ3HXPTGhlmuOzm3Nnqd1pC9GF
         hF6fX3Qoh5gGlrylVA7X23rRGySqoHdrdRXuMDZ6BYaPMauX9vekspnTroV81P97d5jZ
         edDJZgFyQV1fSP1qSWdz9rN84NOuftP5kW7X57W7MAo1VQfW0O9XYVRD/lmfO/jIhtKj
         wJ2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=E4Tt28BE377NIyP9jHMKXbUgRb2jFkZ16W85lX0cG3g=;
        b=JfNhIKpDyG2CfvkE2zQB2yPYHlofiT8iuAQkwcR2r5MPJQ0kn+K1uN9WjnZtaghGOO
         2TAaD0zmbPn6EW1Kif4zAYNncCeQ0fhXUDFGMbFXFe4nxtBrBbJBUwRUNZhgtJhr1BY1
         pFKskVQFagNY08UWbj3hkm4xoyZGUxBEgfJ2LQm0AZHcQeCyflw1ASWIkqYGXatME/A/
         FBvsFFLNPvXCaO/288UyKHfrekaA3kD2zjo7/RRqkkV8sqgg4ylMr1HSp0I0fxCf84NF
         lT2sgLt7R0H5V33ktOLQLw5Jj6Z6qJgQCm8TqUDcwukZY/NK5900BMqy9+/jkgM/0l4T
         6wwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i22si291913wml.0.2020.03.25.04.39.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 04:39:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,304,1580770800"; 
   d="scan'208";a="343676990"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Mar 2020 12:39:31 +0100
Date: Wed, 25 Mar 2020 12:39:31 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Soumyajit Deb <debsoumyajit100@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    perex@perex.cz, sbrivio@redhat.com
Subject: Re: [Outreachy kernel] [PATCH] staging: hp100: Add spaces in if
 statement.
In-Reply-To: <20200325094951.33508-1-debsoumyajit100@gmail.com>
Message-ID: <alpine.DEB.2.21.2003251238460.2444@hadrien>
References: <20200325094951.33508-1-debsoumyajit100@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 25 Mar 2020, Soumyajit Deb wrote:

> Add space between if and open parenthesis "(" in if statement to improve
> code readability and to adhere to the standard linux kernel
> coding style. Also, shift the next line to the right by a single space
> as it is the continuation of the above if statement.

The beginning of the log message seems to say the same thing twice.  I
think that you can drop ""(" in if statement".

julia

>
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index 16fe9c7879cf..926d0b51ddb2 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -556,8 +556,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
>  			 * can map the full 32bit address space.
>  			 * Also, we can have EISA Busmaster cards (not tested),
>  			 * so beware !!! - Jean II */
> -			if((bus == HP100_BUS_PCI) &&
> -			   (pci_set_dma_mask(pci_dev, DMA_BIT_MASK(32)))) {
> +			if ((bus == HP100_BUS_PCI) &&
> +			    (pci_set_dma_mask(pci_dev, DMA_BIT_MASK(32)))) {
>  				/* Gracefully fallback to shared memory */
>  				goto busmasterfail;
>  			}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200325094951.33508-1-debsoumyajit100%40gmail.com.
>

