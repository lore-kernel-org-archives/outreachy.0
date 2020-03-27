X-GM-THRID: 6808643373543456768
X-Received: by 2002:a17:902:a706:: with SMTP id w6mr12124792plq.79.1585291031673;
        Thu, 26 Mar 2020 23:37:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b58e:: with SMTP id a14ls6105887pls.5.gmail; Thu, 26
 Mar 2020 23:37:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv5/rOPN31dpODkNHIlhMfgt0BzIGaX5eb7SFlHcNNFT+ZDcT1tzvQKN/AOa1WmnKXpUuC0
X-Received: by 2002:a17:90a:1954:: with SMTP id 20mr4385959pjh.106.1585291029920;
        Thu, 26 Mar 2020 23:37:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585291029; cv=none;
        d=google.com; s=arc-20160816;
        b=qAG7L83Dz1MlXW9LAufaGbGPii+AzfTpfS7gLLY2gd9lZOf4VqFJQP2ROGQ+rM9X/l
         alfbiPy2m+oeLug8aWaDcZfEt1SZRUhC+TMkyLsTOwoZjw+IFtz2Ac9BN47FIbBFVs8P
         SyD+BQp3j9DYmSGuukJ5uduG6goTRi19CyJ/66ckmnbehDeqbJd+qdTbwBgyMJ/fBzHO
         /rWijL4/RYrWO1EKRj2UboUdn86I1Yu02zmIJQch7N1Socvgfny8d8v4ogXyGdTmhC86
         3ipIn9COsG/h3G50v8TGlvcpVN/hbs4cclpptD3T1nw1XVYLsVhUyKM6O3AoToxIRaVF
         F0Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fc2icUVxe1E6kRv8+l16gI5JgH67yCjVTL1dFjuBwKM=;
        b=vEM2Ndy9kWTrZlU8+m6fpEr8tBAwGWx1mLA8NYS8VL0bBcgaEnc4dNWEeacaMqzY7S
         KpET9zSsKwKN2eZUFCfOPRoyIzSHnJ39zWcLmS46wnupwsRm71cRx+q/TpRIkRnyS65z
         u1KI/HOtJFb0srcr7Zx4JE4a6Aae9yjRJoZVl7RPiokl83tWT+zfM/yrTRF+OmVLucix
         InsalaVyAotlQ4RCA5yg2lF9Axf2bTfflrTU+VKw+U56GT/x+wSspwf1X5perLVL2+7b
         1+yCoJCttHxzpzxa9FqbnFym2AYrhh6+Z0kVUZMEse6EW3k7j+Ky9mORpu0oehgSIlWS
         IxZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cQGC9RoY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 188si340187pfb.1.2020.03.26.23.37.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 23:37:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cQGC9RoY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1C7F020663;
	Fri, 27 Mar 2020 06:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585291029;
	bh=bViNDc6WPjbaiAMSE9GbGg+t+oBgCVi7qVcYh8kAF9Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cQGC9RoYazkHO7kNuGayyBo7ffv5YiDXmijaBY3dD3miClkuxePYxv3973atlVAEF
	 XHMJSzcgJu92Be9XkUevHcPuCwf0ZwuOFM9Lyj8bnnKc2rhVOvCzXSQ0hhYlvU1Epz
	 vXcXSXKPBlQdu/Kwu5yUJYkaI20Y0nXSOXnjQ5AM=
Date: Fri, 27 Mar 2020 07:37:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: ralink-gdma: add blank line
Message-ID: <20200327063706.GH1601217@kroah.com>
References: <20200326221335.GA25502@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200326221335.GA25502@siyah2>

On Fri, Mar 27, 2020 at 01:13:35AM +0300, Gokce Kuler wrote:
> Add missing blank line after declarations to follow 
> the Linux kernel coding conventions.
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/ralink-gdma/ralink-gdma.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index eabf109..b43f37f2 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -123,6 +123,7 @@ struct gdma_dma_dev {
>  	void __iomem *base;
>  	struct tasklet_struct task;
>  	volatile unsigned long chan_issued;
> +
>  	atomic_t cnt;
>  
>  	struct gdma_dmaengine_chan chan[];

No, you need to remove a blank line here to get this right, not add one.
Look at the list of variables...

thanks,

greg k-h

