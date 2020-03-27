X-GM-THRID: 6808656295974928384
X-Received: by 2002:a9d:178a:: with SMTP id j10mr9311893otj.182.1585299938657;
        Fri, 27 Mar 2020 02:05:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3bc8:: with SMTP id k66ls3002209otc.10.gmail; Fri, 27
 Mar 2020 02:05:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvzDIVMr0z5SSOimn67nXB4VAygyP12/8cfbQ4dwbryeVyIIeN+cKPQhGH9AJPphypoF0sE
X-Received: by 2002:a9d:3f2:: with SMTP id f105mr3163778otf.187.1585299937476;
        Fri, 27 Mar 2020 02:05:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585299937; cv=none;
        d=google.com; s=arc-20160816;
        b=HEzrsoWB843nKq5IAB0UZJnl8FFitMv9mVfrd2wviv7JlYQnmItZu4KAItvI8fb2vg
         6H6dn2Fp15YIoIJlmcMKlL8TTeyYaoA2RHrhwHa0qb+exLJD6P0JXtj9xPuhNHATnWfW
         QfQltKo5GydXH1Nj/m7ZKaP0Waf86P8lfdFzkOIUY0OoBB/5jOj3PySj9IY7scf8E+OZ
         XxeI/0ozVpQMkSplxz1SANL5biNcJVeSKvuMiaUv4g7ZrE8eTblXAKJXBEZcrJsjGK6m
         Pw5GFmTsFptc6WsNbAIgWHRRYsg8R0Z7VwLdDKkXsEitrrfrVRlXEDA1gvkyJwVyxWN3
         Dirg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UJTdMMfAfPs8CXVUGib/LDLo11dUZYOJb+98f3WgGa8=;
        b=O6BNT/jJFqW4ED5k91P5F0t61EFzRnl0ew2JfeYFvKwNzL+PoM5WZqGlfPDBu+FthS
         yV9xMKV9Z4yJ6D9kSrIaBGzo7JPJusrwowRYaQfLLxnd5nbGMJpLhNM9jQLKWZsS3diW
         7Yojqi8y37FTEaACWrFBEFAGIjOETmoK6JVMdo9ncEnFqnf+nNHvt/9CwFamoXcjnxO8
         B7eBPa71wGPPa6IJuNwC9QzerHIBmiJOlFWUxAJDLjzuU8f9/VV81S4kZMOnN+8zCU6m
         P+7dFBl5deymhUJd3b+YhUaGGENyAL7in1RdW0m2bXRRtBnChQvklNVK7/wbk5f/aTVQ
         jOJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PXKJnv8o;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r1si416742oot.0.2020.03.27.02.05.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2020 02:05:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PXKJnv8o;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0C0F8206E6;
	Fri, 27 Mar 2020 09:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585299936;
	bh=MkEAHm/aHcV6u4WHA9Byuafwz8eK4BudxUoQlDVC5Ik=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PXKJnv8ofx13Wiu7RdjHIhSnFx0deqLbQTkfe2+OtCiFeWwV0H/BipdmMnIqf5rdj
	 P4UfrPLow/Z0klQ+SA3eKSXzLmKwWRH5du1ORQL96empA+HPkJSJuB8CW1Nor/roOt
	 9G0D3tqKjrpOiRiWDBxZ7yFYuo4VvSMrel/4DttA=
Date: Fri, 27 Mar 2020 10:05:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: nramas@linux.microsoft.com, forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: vt6655: Remove multiple assignments.
Message-ID: <20200327090534.GB1669531@kroah.com>
References: <5951d33f-ea8a-ec99-474b-2d8b2009da6a@linux.microsoft.com>
 <20200327023550.74406-1-briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200327023550.74406-1-briana.oursler@gmail.com>

On Thu, Mar 26, 2020 at 07:35:50PM -0700, Briana Oursler wrote:
> Remove multiple assignments at initialization and in computations to
> better match Linux style. Issue found by checkpatch.pl.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
> 
> Changes in v2:
> 	- Change removes to remove in patch description.
> 
>  drivers/staging/vt6655/rxtx.c | 34 ++++++++++++++++++++--------------
>  1 file changed, 20 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 37fcc42ed000..cdea2ff1c8f0 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -195,21 +195,29 @@ s_uGetRTSCTSRsvTime(
>  	unsigned short wCurrentRate
>  )
>  {
> -	unsigned int uRrvTime, uRTSTime, uCTSTime, uAckTime, uDataTime;
> -
> -	uRrvTime = uRTSTime = uCTSTime = uAckTime = uDataTime = 0;
> +	unsigned int uRrvTime = 0;
> +	unsigned int uRTSTime = 0;
> +	unsigned int uCTSTime = 0;
> +	unsigned int uAckTime = 0;
> +	unsigned int uDataTime = 0;
>  
>  	uDataTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, cbFrameLength, wCurrentRate);
>  	if (byRTSRsvType == 0) { /* RTSTxRrvTime_bb */
> -		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
> -		uCTSTime = uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
> +		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType,
> +					   20, pDevice->byTopCCKBasicRate);

While I understand the compulsion to want to fix up coding style issues
all over the place, don't mix changes like this with changes like:

> +		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType,
> +					   14, pDevice->byTopCCKBasicRate);
> +		uCTSTime = uAckTime;

That, as it makes it much harder to review when you do multiple
different things in the same patch.

And you didn't document that you did the reformatting here...

thanks,

greg k-h

