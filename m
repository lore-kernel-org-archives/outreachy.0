X-GM-THRID: 6474128496939499520
X-Received: by 10.28.107.65 with SMTP id g62mr397834wmc.32.1507376050060;
        Sat, 07 Oct 2017 04:34:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.184.88 with SMTP id u24ls196015wrf.10.gmail; Sat, 07 Oct
 2017 04:34:09 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA45pLUXsVMGM2/U0KVLwtec3Xp9/GqnwmkUa/iRmsvnO/6XNj54viHbpob0x6eQn38ELoK
X-Received: by 10.28.69.24 with SMTP id s24mr191137wma.31.1507376049179;
        Sat, 07 Oct 2017 04:34:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507376049; cv=none;
        d=google.com; s=arc-20160816;
        b=okw0sQNCLI34fzpOgHgFK0es7KMpWjETa/hd+0v4M9MpfTg2jS4J5JXcISzAPvjQfr
         rmr86e69NPy32MgcbblNz4MaBi6tSoZiheIhSYiIph/4Q7noLlrrb2gq8ARqmyM6Tu0E
         ljVpqXdBVDyGL9GP5L6Hn1SQUV6iMaibbgk0cYQEptebMfNx1XGoqL8gZHXWNXqSK/hw
         Bvef8FbCvSfgHN9wIQ8Jo7hKbBvk2VXk/u2dW+05G3PXLUT9dsWLk8WNAXnAGv2rx4lb
         tR2ZTlk6imCIjhtAu+J9wo1qtCogogqe/xKVo4QoCbrU63lehRxZQYybK+TIqcxBk8dc
         fsog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=G0deYgtaUucwXDpq8D3t4SUJ43HRTCjuYXcH/gLKask=;
        b=qqBd7SIFuzleCvs7+v6CSc/66h94AAde63dKQv4gpUJXksDH96DP9ZqyFGrxSPxsAc
         ZP5r9RUiYje3U/r94Ir5IzhVG8leGHBPzDovOHqLz5yfxV8+nyXm7Mxvi9Ybm7vah57r
         ADyuMF4ilnXL0R1n2XOxvlggC1in/dPSdtADdUE8KxQUc+z/PTsginMIslOY3fTKrITf
         9Xq+NCiYB6QQ+qt6OZYYdh6a7eBknyAdcG4K2XI4N+9kpudzyNZRdYiu3EkOpCx0Q9xE
         Cf1RUB+cFBJXeyWBqmOiuUymmwVyc/dAmmnauNryMeIUO7ZlogF0viEio+XzzSHLJtWA
         y9GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y145si396360wmd.3.2017.10.07.04.34.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 04:34:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,489,1500933600"; 
   d="scan'208";a="294877289"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2017 13:34:08 +0200
Date: Sat, 7 Oct 2017 13:34:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Use __func__
 instead of function name
In-Reply-To: <20171007112502.GA4418@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1710071333180.8673@hadrien>
References: <20171007112502.GA4418@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 7 Oct 2017, Mihaela Muraru wrote:

> Use identifier __func__ instead of the name of the function.
>
> Issue found by checkpatch.pl.
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/rtl8192e/dot11d.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
> index 017fe04..2f1dbfa 100644
> --- a/drivers/staging/rtl8192e/dot11d.c
> +++ b/drivers/staging/rtl8192e/dot11d.c
> @@ -128,12 +128,12 @@ void Dot11d_UpdateCountryIe(struct rtllib_device *dev, u8 *pTaddr,
>  	pTriple = (struct chnl_txpow_triple *)(pCoutryIe + 3);
>  	for (i = 0; i < NumTriples; i++) {
>  		if (MaxChnlNum >= pTriple->FirstChnl) {
> -			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\n");
> +			netdev_info(dev->dev, "%s: Invalid country IE, skip it........1\n", __func__);
>  			return;
>  		}
>  		if (MAX_CHANNEL_NUMBER < (pTriple->FirstChnl +
>  		    pTriple->NumChnls)) {
> -			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........2\n");
> +			netdev_info(dev->dev, "%s: Invalid country IE, skip it........2\n", __func__);

At the same time you could add some newlines so that the modified code
fits better into 80 characters.

julia

>  			return;
>  		}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171007112502.GA4418%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

