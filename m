X-GM-THRID: 6664078765132349440
X-Received: by 2002:aca:5381:: with SMTP id h123mr8021238oib.16.1551602075139;
        Sun, 03 Mar 2019 00:34:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:2c04:: with SMTP id f4ls4149328otb.1.gmail; Sun, 03 Mar
 2019 00:34:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqyD1DKiFWNnyUs1cwKoo/8Gn6VAPkzfel3ALkfDxM7om3UcKj6NXsZLj/+ES48wGi8bsfrS
X-Received: by 2002:a9d:64cb:: with SMTP id n11mr8374870otl.48.1551602074399;
        Sun, 03 Mar 2019 00:34:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551602074; cv=none;
        d=google.com; s=arc-20160816;
        b=A+7NmFAaxZIMIaYOGcGJ9yyTK8NDhoFrCEPQn1Zu6wtDv5AgZMjPxpfSCTFB2lAG53
         Y9EGpZ1tXymRlzuhHuXXr5FXnUKXl9V7/HplLSl5F82a5I3CKIyxK6gXuhoAcCQZJEAG
         9AtTNvTj76Q1lGC3HF61jjzEBmvODCR2XfIrAbZmKaZpYVUYdrVxGIp8OD1bM4OEwiN+
         bZR+FZ91CJAD3cacp5kQQ0auqU2V6djX7LuqU6IZeGoiYHyD3DtGOKdVA+TzWC/uTm7c
         XCAlCst0+Alh+cG15C1ZpCZpaU/3rHlgJJxddpe3RjnXOfc3st/KQBT1UlwQ0c5yjzCh
         C2mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nNvDBzycJe0WAiS4xPINr4dy/qPlZ54MYlcMar4Q1uM=;
        b=JvivrN7IW/xMNhjExXALMx3gJfDGt+sJDLUqBAz9gD+poucM33pY+p+vgysVzo2Zu+
         XSMdZQGhGhRtm/u0M9RoTXeX7bB+PAAIYtDVHa8JG9I+1XyEltUuPtkAFIQhqOITqVIm
         OZLC1a3MgPyymrGXltXEJ+HxclqEtVpTLekV2I4hTN4Ulfx5pMgN+tYTrFWRJUL0jnf2
         U69n7NmdH2h5KwEJ2aUO1TaMHekt4WxnEUqkShAcgMod7GqwFdPXQc6FLRv9K+t9M62W
         YehvtbBH/GoHr4/HKBPOFr+IMacCNUUAiBW0z3YOgKn/Osv5XrF12EMs1s4kXBt7Rwjb
         PjJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UWAZ6uCi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q206si75084oic.2.2019.03.03.00.34.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:34:34 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UWAZ6uCi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EB59620836;
	Sun,  3 Mar 2019 08:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551602073;
	bh=HlzwHv35fa9VlTH50+6iXi0S5jLO1p4gCoy5FtFgvh0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UWAZ6uCibkvnwtzm/l9RhJMCvFe1vKzXbsYgKrg2LHhSFJYsbPdOQZZssQjVkZZQa
	 C2XczuAuZG7ao2CFmyPDTun/C4sElub2FbqP19P/pLQl4ch7q2ew5tRXVV5YyvhQZ9
	 a6Nvl6sptrdXP7625wlq8wuAq46qkYjrxfZQUbCg=
Date: Sun, 3 Mar 2019 09:34:30 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Replace udelay to
 usleep_range
Message-ID: <20190303083430.GA30460@kroah.com>
References: <20190303082902.GA16698@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190303082902.GA16698@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sun, Mar 03, 2019 at 01:59:02PM +0530, Bhagyashri Dighole wrote:
> Replace udelay to usleep_range function call with 10 microsecond range.
> Detected by checkpatch.pl "CHECK: usleep_range is preferred over udelay".
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/fbtft/fb_agm1264k-fl.c |  2 +-
>  drivers/staging/fbtft/fb_ra8875.c      |  4 ++--
>  drivers/staging/fbtft/fb_tinylcd.c     |  2 +-
>  drivers/staging/fbtft/fb_upd161704.c   | 18 +++++++++---------
>  drivers/staging/fbtft/fb_watterott.c   |  4 ++--
>  5 files changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
> index 8f27bd8..b2d19b1 100644
> --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
>  	dev_dbg(par->info->device, "%s()\n", __func__);
>  
>  	gpiod_set_value(par->gpio.reset, 0);
> -	udelay(20);
> +	usleep_range(20, 30);

How do you know that 30 is an acceptable value here?

Making this kind of change is tricky if you do not have the hardware
involved, as you are changing the functionality of the driver.  Look up
why checkpatch is asking you to make this change, perhaps that reason is
not relevant for these devices?

I can't take this type of change without testing on the hardware itself,
sorry.

greg k-h

