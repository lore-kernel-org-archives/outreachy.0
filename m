X-GM-THRID: 6887485179824177152
X-Received: by 2002:a63:3543:: with SMTP id c64mr10849455pga.380.1603617607525;
        Sun, 25 Oct 2020 02:20:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b114:: with SMTP id q20ls2962790plr.5.gmail; Sun, 25
 Oct 2020 02:20:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxTuokLcV+3Xo1WC6MjgJBuvnMnGM9PMxkPpW2hUfsvau5maB8ewVFY4pjq8iWMHbjO6Pll
X-Received: by 2002:a17:902:a609:b029:d5:dde6:f135 with SMTP id u9-20020a170902a609b02900d5dde6f135mr11709438plq.75.1603617605912;
        Sun, 25 Oct 2020 02:20:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603617605; cv=none;
        d=google.com; s=arc-20160816;
        b=ekOc/uBiVYTF/CdXiP7vOVtlWhwJXXM5ViIgiQxcjNs9XNymdTz4KS/ts2GvGDVStl
         cHUnQykXGOd1P8k+eoFHsTAu71hlbeMM6KJyjbV4pSN0jfNwcL6YPJyATD90c5zkNhmk
         IjnyRkg/ziXofzSZ4G3qRer/qHU96AuTbldzssyFCoa0g4gDRuhiX4sNHtt/9MEbAjov
         Gj9p8At7tMUtr2z4FR8PXfvo/z85BiZq9jeo7d1uJXd8jYmGyDrGEvXg8VpZniV21nQu
         p463Szl8ZLdwnSHpCJ1l1ddk4SCx2PaVe+M3d+AN9KTHlm6TnJ3rTQM0OwEw5UON/JWs
         Bmcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=s7P5H+naZR99jPpdN8jGkFYdSTrZSsYrh1ziSvtsPug=;
        b=IegF7Db5hTSqVaexAQWl6DubF9bFflkbc+NNNghQNgdI+xdJTHKVxCgFdbweH1ND++
         cxt92921WtrQNfp19Cxs5P7bo4tVgcNON3EGj4jX3+B56mOhy+x8HjBfWxNGCZkRA8eh
         bj1gcy7BqJDqbfdzgb3Q10JEKYE8Mz0SDFA8zQ0wLFYJb25/FBvMJTz2It087l7VXrEi
         7Pg8Vo3NT7UM8tPUErNMrChIvqrrM9ck+6U+PXe2vQpROUZIYY45D9BqF7s4T+GC9E/I
         hWtjnoEFPVcoeBw/nA+hapXiTuxlG6xc2JDvwQCqZUSMaF2joIsOAROtE9sMTP72IMZx
         ZeQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=S0jEql4u;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ce12si121434pjb.1.2020.10.25.02.20.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2020 02:20:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=S0jEql4u;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1D80A22259;
	Sun, 25 Oct 2020 09:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603617605;
	bh=/u2THIbzCziZYJskxYNAH6OqRMyajJIdkPeZ6itsEvA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S0jEql4up5zE3gDlUWriHtul6IlBjNIigDjohajesVqCgJW7SwKikr/G9uAcb5+R7
	 Im163IeOQCWOke26kug3Ia5PiFC3FRe5uvbdsnMy7vWkw79F54f8uiA/x9/UsudM48
	 tWC1i518+weeqRhaeL7jDyIp6TN7dZIF8jfZaios=
Date: Sun, 25 Oct 2020 10:20:02 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: vt6655: Break multiple assignments in one line
Message-ID: <20201025092002.GA107423@kroah.com>
References: <20201025032331.GA9095@Zangetsu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201025032331.GA9095@Zangetsu>

On Sat, Oct 24, 2020 at 08:23:31PM -0700, Marcos Antonio de Jesus Filho wrote:
> The kernel coding style disencourage multiple assignments in one
> line. Split this multiple assignments in one line into single assignments
> in multiple lines following this recommendation. Issue found by
> checkpatch.
> 
> Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
> ---
>  drivers/staging/vt6655/device_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index 09ab6d6f2429..ec73b4ac82e6 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -670,7 +670,8 @@ static int device_init_td0_ring(struct vnt_private *priv)
>  
>  	if (i > 0)
>  		priv->apTD0Rings[i - 1].next_desc = cpu_to_le32(priv->td0_pool_dma);
> -	priv->apTailTD[0] = priv->apCurrTD[0] = &priv->apTD0Rings[0];
> +	priv->apCurrTD[0] = &priv->apTD0Rings[0];
> +	priv->apTailTD[0] = priv->apCurrTD[0];

The original here is fine, you can ignore this checkpatch warning here.

thanks,

greg k-h

