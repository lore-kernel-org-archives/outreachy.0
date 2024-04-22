Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B20F14F13F
	for <outreachy@lists.linux.dev>; Mon, 22 Apr 2024 13:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713792347; cv=none; b=IcuhMGI02MrZguHXNZuHV5UH30AalE9McgOmW7VVoKZm+HFK9REl8rSmDh8Y2l2/HoXxV8G7quxViII3R2yx2ldRN1bZqyIt8jaEfR75SF3RRCz44cxD3KKRfTR6jqc115Fp35eTfrq773i1c/gXApt74ApT53EQ6+6lYwammkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713792347; c=relaxed/simple;
	bh=p71XPOYccBTrK5vNtFphHMc7xrNQr0V9gF4p0adc0z8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PhJoDuOSkDrxjzeA0ACsvQbZa5ok45dCeV1Au8KhzBA/bwaArtgWl/sHqWmoJkok3MoGY9KGpp6JNi1yZiEScKP7ldowJcUxvf/fJBQIZMBmFZVfOgnMaYlSGPKGuPzMKN0Acb7C+i68xFTlQ4CHchlUbq6Tbb4IDM1UG7/8mUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nfOcDd29; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nfOcDd29"
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d895138ce6so62311021fa.0
        for <outreachy@lists.linux.dev>; Mon, 22 Apr 2024 06:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713792342; x=1714397142; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/kyPaZIZyrkWqjj0WFiDLbAxvb7aRYR+HuKJ6/NuUGw=;
        b=nfOcDd29DEsp0RbKmWIo0V8xLsDPIEmyJvOYH4w447KdDpY7Lj6q/6PDVcTINiQHMh
         HF3IO1Gd3Hogfl6JN0gRCmECBonwnE9+cG0nfacnUQo5B3QvHUGfDyozKl+de8FgwXjk
         ijMeRlG+9yOLaC6yArFUeaNKceFmwlPRXuGAQkJLdq+OmP888YEaLVtZoJUQrycBHVUL
         DqMVIaYYppkoeGwSCRMFruA+LnXyRkjE60iBpJlp3iDwsRe3g7ymGybtCRY0+wF3YXfP
         wmVoRaU0RJxUPnv/nMCsxXtZ4/9iuv0i/8j9w7ob8hEsCbX+6Q/zRk9ePPRV27fN9bSJ
         DzAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713792342; x=1714397142;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/kyPaZIZyrkWqjj0WFiDLbAxvb7aRYR+HuKJ6/NuUGw=;
        b=jDfnCRYkMbZyAdjQEfLyQHdZGfZ1wnw1M1/UeLtHz8e2mb1gg+KFrn7YHqwCI9XyBv
         Mia++OEIFHj4MzptmAam2GlNCgTcfFIwjz6Ofz+G1/pBPDmvSwICfnXe+sUIPpKlj8wZ
         rDSXOhjNwlfvgAXrl4cYWt3bq/U07jJW520MYGRVVxI8KwlN+j5MNvhFwpgOc2ORQUo0
         5/7n+MALsvrE5rMeOfmnjytq0/4zVPT9sj3X8Yel5y9CtxCgOyXNq4IIdmUtZatgWCkz
         LctLDijSde2pDR/6A1CQyI03VhIli5BjKiWvDsCF0STH5m0RJJyFP46LPWucBDf8fqyh
         OXRw==
X-Forwarded-Encrypted: i=1; AJvYcCWqJ/BOeCvRako1L+GpmHzBzGp0ZIGc81rfMMSIvZv4JEe3a1HxAVmlBIyMizbR/eUKspXgJlbCZKFij4HB4d3X6jWoizreRwyJ
X-Gm-Message-State: AOJu0YwAhSKt/WDNhnqG/DMQKXNUdX+yYCE07cENpK9Jcw6SNcT+/KTU
	2vU5haa7dENFa4toMXvWiBb8MNACbWuTQGPuRPZLfQOlsbIFM6epi3CBz1jkNCw=
X-Google-Smtp-Source: AGHT+IHWET/ZymKfhlPZrQHfC2dJ8JbIntynRS8qE8Jm7h5ARJyaDMzXxiK//kI7R+cm7SauaT3FVQ==
X-Received: by 2002:a2e:9d43:0:b0:2d4:6f33:2e59 with SMTP id y3-20020a2e9d43000000b002d46f332e59mr5822818ljj.30.1713792342161;
        Mon, 22 Apr 2024 06:25:42 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id ef9-20020a05640228c900b00571bde3b0a4sm5246522edb.34.2024.04.22.06.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 06:25:41 -0700 (PDT)
Date: Mon, 22 Apr 2024 16:25:36 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: A <ashokemailat@yahoo.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Subject: Re: [PATCH] staging:fbtft:fb_ili9320 Removed redundant Parentheses
Message-ID: <9baed766-a2d2-4b94-ae2b-d16ffbea3f67@moroto.mountain>
References: <452e4a2dcdc7020f75b84d787297a1d17a21ca81.camel.ref@yahoo.com>
 <452e4a2dcdc7020f75b84d787297a1d17a21ca81.camel@yahoo.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <452e4a2dcdc7020f75b84d787297a1d17a21ca81.camel@yahoo.com>

0) Fix your From address.

1) Look at how other people write subjects.
   git log --oneline drivers/staging/fbtft/fb_ili9320.c

On Fri, Apr 19, 2024 at 11:04:21AM -0700, A wrote:
> >From 51e98164e314a2d1d834d2a9baea21a9823650bb Mon Sep 17 00:00:00 2001
> From: Ashok Kumar <ashokemailat@yahoo.com>
> Date: Fri, 19 Apr 2024 10:32:48 -0700
> Subject: [PATCH] staging:fbtft:fb_ili9320 Removed redundant
>  Parentheses

2) This should not be part of the email.

> 
> Adhere to Linux kernel coding style.
> Reported by checkpatch
> 
> CHECK: Unnecessary parentheses around 'devcode != 0x0000'
> +       if ((devcode != 0x0000) && (devcode != 0x9320))
> 

3) Just leave this as-is.  Ignore checkpatch in this case.  Greg likes
   parens.

> Signed-off-by: Ashok Kumar <ashokemailat@yahoo.com>
> ---
>  drivers/staging/fbtft/fb_ili9320.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fb_ili9320.c
> b/drivers/staging/fbtft/fb_ili9320.c
> index 0be7c2d51548..409b54cc562e 100644
> --- a/drivers/staging/fbtft/fb_ili9320.c
> +++ b/drivers/staging/fbtft/fb_ili9320.c
> @@ -37,7 +37,7 @@ static int init_display(struct fbtft_par *par)
>  	devcode = read_devicecode(par);
>  	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "Device code:
> 0x%04X\n",

4) This patch is corrupt and will not apply.  Read the first two
paragraphs of Documentation/process/email-clients.rst.

regards,
dan carpenter


