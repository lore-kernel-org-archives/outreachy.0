X-GM-THRID: 6664981263437266944
X-Received: by 2002:a5e:8819:: with SMTP id l25mr1108414ioj.35.1551987055453;
        Thu, 07 Mar 2019 11:30:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls2283803jaf.3.gmail; Thu, 07 Mar
 2019 11:30:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqzcRrhCiAMdRttq6MCAUbINddOAebF8kNQMU8V+nJ3Qq/WocmcKb1OMG1EFye2dExxHtf9k
X-Received: by 2002:a02:3c06:: with SMTP id m6mr8809538jaa.9.1551987054560;
        Thu, 07 Mar 2019 11:30:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551987054; cv=none;
        d=google.com; s=arc-20160816;
        b=nZ+vDA8d9LjPDfq4XYtfBTtwnqtaDICmwgk/E9at23WsPx4YUkB5co4/WZEU2Y4s0v
         ZsLvJGBFslDVI8f9XAVz6FHlFlYkTT1zxyjjfPgtU3jAlMIPhK0UrB2avzhsLUu4X4ue
         zblEr8zqlOsP5Tdl+XAc6e4tMb9GoXBMbdyJOrib8w4wgfiiumLhKA8r+PhZeTaO6UKs
         mYbLcOWhxpKt6W5KMyCxYxMOw7EGTsuXHL+EYJZ7PWZFHU7NQmPwkRlduzWzm4xe2AXS
         kgrQYI3FLts67vsJkwqOf/ozwxJ9TzAJOaufCgW55QYIL5Qa4GOusvdqwPfusJM1B81C
         Cnow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6soHGB5AJaVeEjHfC5ZLuOQzjbkKcWg75STaGaZoTf8=;
        b=zjYKLS1HXwQXCBJL8DEOK/lI1lEu2oofN6qXxzYujCPgsEd1WKdVFXK2rvKvNgGnYg
         OTpgRV0n8PQsoTbJJCPTOCLSs0whXnH32KmstYvumZ1kwHMhZLLI5gGTxYxnH/+J+q3/
         J8dTH0Pbu5LOn7p0Fn088/bPZVHEeA+dQQ+nPaTKza3OA53h7oev2sy6EQID7QFi5ZMO
         BcUq3jabJA8mEXb5ShJpwM122U6Va/FOXh5/jWU4xEW0C3zrPA1KjTrkmsdu5RUrVVWV
         oKzuMfjEYtKccdieYxf1HNAaL0KJwfx4OIrRqZpL0WVogv9oE9RgpU+k2+p6a36p2x9J
         cAfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Hu7WZT7z;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n185si419777itn.3.2019.03.07.11.30.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 11:30:54 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Hu7WZT7z;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 04F9F20840;
	Thu,  7 Mar 2019 19:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551987053;
	bh=vbaVsfAh8M+2cd+krJT7Dsq9apa0wrzIjiqP09BQGHE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hu7WZT7zqgENp6RvOwS1SEtXjWzNTzf9xb6Kh9h7HmvZVbLExtKyzv1FNRcepctry
	 /6DuTw7u3iJs99tt/3ypvd4wofKuqqQ78o/WPmkadOIZ2jXaZJp8hXX7Z379yr2KGb
	 XPcv1e/W5ZbbNo9nFHytmYFx8qidi96uL1weTMxA=
Date: Thu, 7 Mar 2019 20:30:50 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v4 2/2] staging: fbtft: convert a macro to a function.
Message-ID: <20190307193050.GA16807@kroah.com>
References: <20190306111512.GA11718@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190306111512.GA11718@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Mar 06, 2019 at 04:45:12PM +0530, Bhagyashri Dighole wrote:
> Convert a macro to an inline function to improve type safety and make
> the code simpler.
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
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
>  drivers/staging/fbtft/fb_watterott.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
> index 502d67f..40e5427 100644
> --- a/drivers/staging/fbtft/fb_watterott.c
> +++ b/drivers/staging/fbtft/fb_watterott.c
> @@ -90,9 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	return 0;
>  }
>  
> -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> -			   (((c) & 000700) >> 6) |\
> -			   (((c) & 0x0018) >> 3))
> +inline int rgb565_to_rgb332(u16 c)
> +{
> +	return ((c & 0xE000) >> 8)| ((c & 000700) >> 6)| ((c & 0x0018) >> 3);

Odd placement of '|' right?  checkpatch.pl didn't complain about this?

Please put a space on both sides of that operator.

thanks,

greg k-h

