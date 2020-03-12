X-GM-THRID: 6803294715110227968
X-Received: by 2002:a25:86c9:: with SMTP id y9mr9109484ybm.376.1584016229345;
        Thu, 12 Mar 2020 05:30:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d851:: with SMTP id p78ls1436512ybg.3.gmail; Thu, 12 Mar
 2020 05:30:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuKXiIgLq33O9dNlTnh9ehOjMU9M8ifjC03V1snIuZ/awHO68glnF0cgxZZYvWdk1BJye7N
X-Received: by 2002:a25:9382:: with SMTP id a2mr2564224ybm.518.1584016227794;
        Thu, 12 Mar 2020 05:30:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584016227; cv=none;
        d=google.com; s=arc-20160816;
        b=o5vyYKSkvwz4mj3hQljeOUWclkKTf1GRQgtmLSeH4xIZlXeo/cIjRcrHmmNDj8WKnu
         3k/p1KWpCTPasERKCsODwC3RzuhibZMJ7bESuwOLb48EOhn1Z16KLcdu5Se/IWw/TR2a
         WlfmWWOXSKavMDi+mCnW8/M8KjE1uvZI9l8GCTsAuzYohA/nq1B0KI0CuV7FMgueJPi8
         YKMAV7AGCMO5ATCp4tMepQnXGrTO5AibRaGXkYlDd7uKYpEGCage+9izIXicWK97luTm
         ZRcXlGLFoRANgdU3hIRP4Mf9boetjWRPGlVwE9VvHfr00NSOwa4OqTghCa6EwWGe2YDT
         UPpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qkntRWEpphywib3CW6wfGuWhVlc8Z62krNYr4PYDMFI=;
        b=BITb03QYKwrg/2CMbby3RydbvhatZjv0u9jNsa5hTYV8L0ZN8qC5kNtl0rkyrN5tTn
         LflYSW2mcp2poRtb3TKNdNwKrfMfMgrNkUgjJThb2cVIDGHB5bgk/5yruivkcGoDkPot
         b1vg5xI+c9E0taglAI31oxYmTBXhkYs9r6kJ2SBXynmNMCuk9hTsvyG8GakVAhgpDIak
         mF5HQ6TBFbBbb4lYDcrnj0iHdTcxG7No+AbpNn7CLiYxCAAJP9FFlxMGBuWnOnzK8IIH
         /VZZ7d4emRuxUd8/GtgCo8XpSVvlU+wbpxGGS5gq2odIiyjHWpi5OvvEEIbKD3DXnQD8
         mqvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="VrwAoN6/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 207si24944ybe.5.2020.03.12.05.30.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 05:30:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="VrwAoN6/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5684B206B1;
	Thu, 12 Mar 2020 12:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584016226;
	bh=4nNURy3cz9N7dpI+swspL+9wYlByP9ABdSxh2bfqy0U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VrwAoN6/WsZ72NwLDWEMUZszJwwe81KDo2Yje6jhLUcQ482otkb872IYyMN5fImeI
	 jhxD8Q+/1sQnBLGyI21loBjfxjYjBOn83h06hUnFCFmuC93lvY4x2jTN5iL+nIW86E
	 VR+jwP9d0JNVC/pzALb1rWAKuJWXPKfsCrk5ntzk=
Date: Thu, 12 Mar 2020 13:30:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: ralink-gdma: ralink-gdma: change variable to a
 non-volatile
Message-ID: <20200312123024.GC260420@kroah.com>
References: <20200312121756.6799-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312121756.6799-1-lu@pplo.net>

On Thu, Mar 12, 2020 at 01:17:56PM +0100, Lourdes Pedrajas wrote:
> Change variable declaration volatile unsigned long chan_issued to
> unsigned long chan_issued
> 
> Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
> 
> Issue found with checkpatch.pl
> 
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
>  drivers/staging/ralink-gdma/ralink-gdma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index eabf1093328e..8d1b81f720fd 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -122,7 +122,7 @@ struct gdma_dma_dev {
>  	struct gdma_data *data;
>  	void __iomem *base;
>  	struct tasklet_struct task;
> -	volatile unsigned long chan_issued;
> +	unsigned long chan_issued;

Same comment here as on the other patch.

thanks,
greg k-h

