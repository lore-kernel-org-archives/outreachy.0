X-GM-THRID: 6523432871904935936
X-Received: by 10.25.213.201 with SMTP id m192mr1042894lfg.43.1519057659522;
        Mon, 19 Feb 2018 08:27:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.114.14 with SMTP id n14ls162984ljc.14.gmail; Mon, 19 Feb
 2018 08:27:37 -0800 (PST)
X-Google-Smtp-Source: AH8x225uGHmDE0LxfzdR4DKZUBxuPKfIJmoaVdXBxc2sZkfe/sY0AL9dsZzNrAZUBxuCdgHFb3Js
X-Received: by 10.46.5.200 with SMTP id 191mr961824ljf.25.1519057657601;
        Mon, 19 Feb 2018 08:27:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519057657; cv=none;
        d=google.com; s=arc-20160816;
        b=FZ1d+iquV9ok8UE1kbvuzip3iecupbM0RuygK6T98RKgL1KRofegc0BqJxeYWmhUQG
         m+hE/N48NA4gyjhhZNryDt9iVmH1vGJ8HJqJWfbcWI/Zwl00Bi/u1PQatf1j0hVRBAFm
         DPlaQSbD/XzOQ6OMxrIDqF2vU5RjVj38rx5lTRQI66vdEzR+uMDhSWU7Y+OeqYbkFyMV
         V4gRp85LUylZrEHIjnKFuUd+epo55/rVxtwKJ6S0YaIUBQaeEmAmyxdm9D7DQC+/4z4/
         f3DpOVff7Vk/i+KCDkRBMoshhjYlWwX1Q6h9sRIKREJzWI3k8MiOtY3j9MSgOzlWUKgT
         D75w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=bqUhtFhXf0HG+U22/iCh+0vBhBYhWMKSo1UzR7ydaWw=;
        b=TcokTOKhmEEdMKV27aHPgVNKAKfPmTI2RH7Ch4iTqAEO27aBIEXnWQT/dyDoHxujBL
         x2qiiaxR16yUlnaVAhzXgSPUrxr/wJqd9fMcOGcLV3uyigfGNL+efeKGDSp3f5utaPw4
         EEO1qGyhvzjwaH3aHFpbxdl5FhljDdGgYp+N2QWVwjD/AJbtKxFGp+1+GOg1B2agfJON
         3hnE+I2Liu3BXSLRuv2h8Sw5IfIWdbjHCCuuXdd59TneRmUopcnnZtPDywrHB8gObSZl
         OW3aPypnlkr2T+kuf84TimTJjGlYJBDUgBIA5lhY9OUuACzuqFJ65HXknNxhlFOEcHK8
         GyAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k82si652972lfe.1.2018.02.19.08.27.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 08:27:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,535,1511823600"; 
   d="scan'208";a="314344755"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2018 17:27:35 +0100
Date: Mon, 19 Feb 2018 17:27:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eisha Chen-yen-su <chenyensu0@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    abbotti@mev.co.uk, hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: comedi: Remove a newline
 inside a dereference
In-Reply-To: <20180219160422.27240-1-chenyensu0@gmail.com>
Message-ID: <alpine.DEB.2.20.1802191727130.7252@hadrien>
References: <20180219160422.27240-1-chenyensu0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 19 Feb 2018, Eisha Chen-yen-su wrote:

> Remove a new line inside a dereference so that it is not on
> multiple lines.
> And avoid making the line go over 80 columns by moving the whole
> dma_alloc_coherent() call back 4 columns. Problem found with
> checkpatch.
>
> Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
>   - Change the commit log to mention what I have done.
>   - Remove the unnecessary cited lines from checkpatch inside the commit body.
> Changes in v3:
>   - Rephrase completely the commit message.
>   - Move the whole dma_alloc_coherent() call back 4 columns in order
>     to avoid making the line exceeding 80 characters length.
>
>  drivers/staging/comedi/drivers/cb_pcidas64.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
> index b657beedd5ff..c00750054ae9 100644
> --- a/drivers/staging/comedi/drivers/cb_pcidas64.c
> +++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
> @@ -1488,11 +1488,10 @@ static int alloc_and_init_dma_members(struct comedi_device *dev)
>  	for (i = 0; i < AO_DMA_RING_COUNT; i++) {
>  		if (ao_cmd_is_supported(board)) {
>  			devpriv->ao_buffer[i] =
> -				dma_alloc_coherent(&pcidev->dev,
> -						   DMA_BUFFER_SIZE,
> -						   &devpriv->
> -						   ao_buffer_bus_addr[i],
> -						   GFP_KERNEL);
> +			    dma_alloc_coherent(&pcidev->dev,
> +					       DMA_BUFFER_SIZE,
> +					       &devpriv->ao_buffer_bus_addr[i],
> +					       GFP_KERNEL);
>  			if (!devpriv->ao_buffer[i])
>  				return -ENOMEM;
>  		}
> --
> 2.14.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180219160422.27240-1-chenyensu0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

