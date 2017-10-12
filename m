X-GM-THRID: 6474128496939499520
X-Received: by 10.223.156.139 with SMTP id d11mr335575wre.17.1507841958225;
        Thu, 12 Oct 2017 13:59:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.11.143 with SMTP id 137ls1084604wml.0.canary-gmail; Thu, 12
 Oct 2017 13:59:17 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAfYzA/wN5y4WaFpZbiBbujQl9NGrMDXhEOkqhBD3YZ7ZJ1ZCbHh8LlT+5XnTaIWrCOfLiq
X-Received: by 10.28.4.210 with SMTP id 201mr375840wme.19.1507841957424;
        Thu, 12 Oct 2017 13:59:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507841957; cv=none;
        d=google.com; s=arc-20160816;
        b=YxVTyWNFivoX2bByVDq0+6pRmJwBElcRu3Ify7Hdxmtu+4F6gf+w7WzrFbIfl5uJw4
         6SuUw5bhg8c/cyeoDawwCcUOyB7sokiZm9FDY2/LXQuTmNS3sFa/d3muIvx5JsxNQkuG
         ZO97MgQA1wPJLGnkkekDSF9Kn0ufyUV+3prYrNM9a7ZbIHKGDSZ0p54/65YRwdvLpqsj
         Y9Ou3o81pNCKsQDgIqIZiFaLB+YC2H14lHmX8rGHuqwPvwGBMQfHe9ByQ5bBUkGkoYOY
         nNXEOb0Ir1WEyCgJt6c++uZL+2lztV1p5oPi6cjh5+k3IAaAHQAD1DZG4j17Kdt5Xu6s
         HxDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=ztKzoxyUYooot7n63cTiit8XFiKKZI/M11KTmY2d8tg=;
        b=DZFHue9e0NNNri8vmWXu+GnQx9BJn6oc8l9b9xCJQzA4ko++1T5o5uJUA26rSO/GB9
         gQSaCBuPqe1+K/HNoq9HfaIqQLJOSMa+3UAXW3JiQZpza1FPXJE1rZxBUSUt7VCf8Wxy
         GPzOBozRDoJiD6RFAzu8AJpHhZEW4ZLOYmYEmFX5LH8shzxT4iFmK0csgSPcKNCgC87+
         l1zgyxqEPWS+VusMaJsBHt0EBy9z08+cBPY8NZ0aV0+nuhXuUjbIhfKnPHbSarZnosrf
         k7OKlqoe2EIWfWIq46RW+B/OHSA0bQkVvGstTKrSRCqgk1CFbHAV19NAkyyUyDsqMvzM
         BpFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n82si39609wma.2.2017.10.12.13.59.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 13:59:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,368,1503352800"; 
   d="scan'208";a="295967380"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Oct 2017 22:59:17 +0200
Date: Thu, 12 Oct 2017 22:59:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192e: Use __func__
 instead of function name
In-Reply-To: <20171012202626.GA25395@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1710122257400.3147@hadrien>
References: <20171012202626.GA25395@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 12 Oct 2017, Mihaela Muraru wrote:

> Use identifier __func__ instead of the name of the function.
>
> Issue found by checkpatch.pl.
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
> Changes in v2:
>         -add newlines so that the modified code fits better into 80
> 	 characters.
>
>  drivers/staging/rtl8192e/dot11d.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
> index 017fe04..c97262d 100644
> --- a/drivers/staging/rtl8192e/dot11d.c
> +++ b/drivers/staging/rtl8192e/dot11d.c
> @@ -128,12 +128,16 @@ void Dot11d_UpdateCountryIe(struct rtllib_device *dev, u8 *pTaddr,
>  	pTriple = (struct chnl_txpow_triple *)(pCoutryIe + 3);
>  	for (i = 0; i < NumTriples; i++) {
>  		if (MaxChnlNum >= pTriple->FirstChnl) {
> -			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\n");
> +			netdev_info(dev->dev,
> +					"%s: Invalid country IE, skip it........1\n",

You can line up the arguments with the right side of the ( and thus have a
little more of the message string within 80 characters.  Maybe the number
of ...s could be reduced also, if it can be done consistently.

julia

> +					__func__);
>  			return;
>  		}
>  		if (MAX_CHANNEL_NUMBER < (pTriple->FirstChnl +
>  		    pTriple->NumChnls)) {
> -			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........2\n");
> +			netdev_info(dev->dev,
> +					"%s: Invalid country IE, skip it........2\n",
> +					__func__);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171012202626.GA25395%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

