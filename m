X-GM-THRID: 6664981263437266944
X-Received: by 2002:a6b:da15:: with SMTP id x21mr9765589iob.26.1552028338429;
        Thu, 07 Mar 2019 22:58:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:6008:: with SMTP id r8ls3278725iog.6.gmail; Thu, 07 Mar
 2019 22:58:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqwh6UzCxXDG5e8Uo24JuXgnkM+Yh8mgBP685IRsvkMS4L+QBoQisvW0LxekRp9UjEbWeSkY
X-Received: by 2002:a6b:b608:: with SMTP id g8mr9781604iof.37.1552028337720;
        Thu, 07 Mar 2019 22:58:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552028337; cv=none;
        d=google.com; s=arc-20160816;
        b=RaCeIIx9b9qMo6SL1Na+fJgffKfeD13acdYSSJI7vx92RoV+Cw5kFqGB1ZMD3H/3QL
         Gjl6/8OjYaOXEF3q8bymujVGgDw9zcMLG+Xx/AnNfjP8E27bAMdl4FOP8fDbzm0qZfAe
         FgYvTkWQRPTaCn9nHxaUntIxgRbO482BCb/qe7OxsseSXJAeIznVKRlU8dEGUJ07vqiv
         BI2+j0Sm7dG2LZLgs50WUJroYGdq8btwJu+icB0QOj0CZqkAydIEVW2RLVH57AyQaP/U
         cqPFIusHHphl+QGEBsr49PMIgDynVq/K8OyjlQJugUKP62dqVnxs+yP1iLWB32rdRoHL
         gC+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OG81+kIK3MmdLA1LheQiX1JIcdDXc69iWj/BNbD1r8g=;
        b=S2naeX3Gsyv9L4h/PnRaUicXaOZJtbsk9mahBnHODU2Y+WJYM17sD+3v9tay+rMwGZ
         fEPGG+/rW3o9blTNXIt4+wNN83XnrBvU114VeYtZq7Dk6xax9Q8utZRlmWvFIrlisSpp
         4R/EpxejT2GmxezwQBOAAhaq0GwIMMV8HxGkRi4GvbQeELNoZ5IMSjsN6ZrvqM7I4Mej
         BRENeZXmc6NQnKyCX2X/ZaGqLQXvPBcNLaJmUKu2F2fhZaf46f8C4TOoMD6ZSyX8wxip
         S/Bh9gBaRyRLANHlreclMtGnUOKBd0iuV79X4HxFqJIyqi5s126Kh0zTyomVU2cDFd8w
         ezKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0X4YEZUP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l23si28214ioc.2.2019.03.07.22.58.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 22:58:57 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0X4YEZUP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6335720811;
	Fri,  8 Mar 2019 06:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552028336;
	bh=UO1KUITDLCS+cplyE+odLdNCJp42wBXdCySyucyK0bc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0X4YEZUP1Kgr5CP6Y3z7Vv4v/l+wpGJ2Z6alWclhBb5ZuwNuOi30s7H47gfuGqFSG
	 7yPpfWEzld9KGCfnST1NavsiC+ygIHhK5ZpCjVN/hoq0UKQ5nWIkv3Ybwn1Y4DDfpx
	 L6oshLWTgrW2uCXz+Ul8/9ixgvMxITNHwSRo62Tg=
Date: Fri, 8 Mar 2019 07:58:54 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v5] staging: fbtft: convert a macro to a function.
Message-ID: <20190308065854.GA6875@kroah.com>
References: <20190308065424.GA7942@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190308065424.GA7942@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 08, 2019 at 12:24:24PM +0530, Bhagyashri Dighole wrote:
> Convert a macro to an inline function to improve type safety and make
> the code simpler.
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v5:
>   -- Add space on both the side of operator.
> 
> Changes in v4:
>   -- Modify log messages.
> 
> Changes in v3:
>   -- Change the subject line according to log messages.
>   -- Remove extra spaces.
>   
> Changes in v2:
>   -- Make the converion from macro to inline function
> 
>  drivers/staging/fbtft/fb_watterott.c | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
> index 0a5206d..7ee8a83 100644
> --- a/drivers/staging/fbtft/fb_watterott.c
> +++ b/drivers/staging/fbtft/fb_watterott.c
> @@ -90,15 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	return 0;
>  }
>  
> -#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
> -			   (((c) & 000600) >> 6) |\
> -			   (((c) & 0x001C) >> 2))
> -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> -			   (((c) & 000700) >> 6) |\
> -			   (((c) & 0x0018) >> 3))
> -#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
> -			   (((c) & 000700) >> 5) |\
> -			   (((c) & 0x001C) >> 2))
> +inline int rgb565_to_rgb332(u16 c)
> +{
> +	return ((c & 0xE000) >> 8) | ((c & 000700) >> 6) | ((c & 0x0018) >> 3);
> +}

You also deleted 2 unused macros here, making this patch do multiple
things, and you didn't describe it in the changelog text :(

This should be 2 separate patches, one to remove the unused macros, and
one to turn the macro that is used, into an inline function.

Oh, I also just noticed it needs to be static :)

thanks,

greg k-h

