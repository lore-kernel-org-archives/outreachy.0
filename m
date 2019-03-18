X-GM-THRID: 6669776681791651840
X-Received: by 2002:a63:610f:: with SMTP id v15mr2489576pgb.37.1552930891167;
        Mon, 18 Mar 2019 10:41:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:68c7:: with SMTP id d190ls6770477pgc.3.gmail; Mon, 18
 Mar 2019 10:41:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw31+EMQMAM/K8t6pXz2EU0v3eVGmevZeXYxXe77CmA3QIlbeqVL6MLu4I8QFpBlGF7mc8T
X-Received: by 2002:aa7:8212:: with SMTP id k18mr6998153pfi.75.1552930890447;
        Mon, 18 Mar 2019 10:41:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552930890; cv=none;
        d=google.com; s=arc-20160816;
        b=CKBgkJvChxWbOqwP2Y6gQZUuwOIazjEd5A1vlby/+x2kG0eTSp6oLhGOfoi79XAw5Z
         MhlaMuF/2iuQNZqGMXdf9VYG8x9GBk8ILLuVFilDDSYSqyOHXamyMXGCvyHZCO56eYL2
         pqoMWq/f62+XYINJAJsl9MopkE2UDdW2v0Yc4S1thihvIhpplxk+Utpla3zmJiaPKvRt
         P1/VKuhWybDlSagYsea5nFoEajuActNql3cPpr5AjhR0efFhXn8vygrUWaA+FzZ8mv0x
         BkqURY6cNb4HZa5j5TtCFhczqY5KbAIW3dz/Yf+Zpvkz0NvK2bELAczjUZVwRSLxpXiv
         WKCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=m806W2d/nZzKconPUabi6qiqBjBD8be4A1dcCX4NdnQ=;
        b=OEgXSKDLqBC3zqhfmOPEbLI5HPxHWwll/MXQCm1VDYcHkFmRgC3JG8g+XOGIFPLutH
         0bulnXh5w7M7ILC/P7WwcsipHxtO8EUJX0EFePq3lhsfWusaFlbkI4UEJGWwiIVQmfoP
         gQRvrcQVPSTFcfVLg287ZCTKYdUwRVatgXQPEfvAIxXcT0M4YAYGoTb3xdupDGgCxNKD
         wBVTFNPW/sJ8fgasbe7it1jLfad8OlFrjpgM93gmL9MjFTSGdNglWvLiHJUMjGMRhRKu
         2MWc5PklFVO1YtHX6repuEGMTSCPf8A8Vdhi8THkdHAcwVCvTPVq+KIsNnv9nW8bLdn4
         H26A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=efrpcOgM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a6si622549pfn.3.2019.03.18.10.41.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 10:41:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=efrpcOgM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AE92D2070D;
	Mon, 18 Mar 2019 17:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552930890;
	bh=2JSVkCGcyfxHC7LKFynv0RKsrwX/4s9dK/ttaARyzLI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=efrpcOgM8Y7nx61855Pbdzzzn8BHVRdKkVYpUHYJN9evSK/Po2ghnrdCWeflddC4v
	 5fI8EdIvxmFFVn/eYNW1h9ZP+Q4J+6Z9kPyI7o8vA+MJSnQ5aNT09Vs/WBoIPFKxDd
	 AwHTy5e0u0cLvBhnav0vCW5Vi9udIfcg9n5rTuNY=
Date: Mon, 18 Mar 2019 18:41:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: vatsalanarang <vatsalanarang@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] Eliminate camel case
Message-ID: <20190318174127.GA22288@kroah.com>
References: <20190318165938.2503-1-vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190318165938.2503-1-vatsalanarang@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Mar 18, 2019 at 10:29:38PM +0530, vatsalanarang wrote:
> Issue reported by checkpatch.pl tool
> 
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_display.c | 5 ++---
>  drivers/staging/sm750fb/ddk750_power.h   | 2 +-
>  2 files changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
> index 7f28e4cc4c79..6380e1536598 100644
> --- a/drivers/staging/sm750fb/ddk750_display.c
> +++ b/drivers/staging/sm750fb/ddk750_display.c
> @@ -147,8 +147,8 @@ void ddk750_set_logical_disp_out(enum disp_output output)
>  
>  	if (output & PNL_SEQ_USAGE) {
>  		/* set  panel sequence */
> -		sw_panel_power_sequence
> -		((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET, 4);
> +		sw_panel_power_sequence((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET,
> +				4);

This is not what your subject said it was doing :(

Also, it doesn't look correct, right?

And your From: line needs to match your signed-off-by line.

And finally, this is patch 2/2?  Where is 1/2?

thanks,

greg k-h

