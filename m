X-GM-THRID: 6664414939270086656
X-Received: by 2002:a25:cc4f:: with SMTP id l76mr6874996ybf.49.1551988992918;
        Thu, 07 Mar 2019 12:03:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:452:: with SMTP id 79ls2719035ywe.5.gmail; Thu, 07 Mar
 2019 12:03:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqymJyfkoOsRfrP/L25uerSyVUKZ/RvRbb/FSNBQvZtsIH2TgXUJcXiOXhDU7GJJBf23oXzI
X-Received: by 2002:a0d:d582:: with SMTP id x124mr6552176ywd.21.1551988991840;
        Thu, 07 Mar 2019 12:03:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551988991; cv=none;
        d=google.com; s=arc-20160816;
        b=PJYJLC0Yj8I4pNbWeWPaPKQbQZQJ78CG025t9ELdqU/tj+TfLvtvV4RgWKLcR4Jy0l
         6aujHlKYtLQfCL6EhyG7hnl/Dsv4+F0tiVxB0MArqn48YdLaF/r3sEm7R7iLoFYtGySd
         caX3R00qeFLshHL6/xC++nrPk4mfyGyxJWRCKu8j/7fdYmFTGTUoX2K8qyDrxgSTBnTB
         Z90Jp0HZKkDe9W0Rc23lalMOb/b5kKMyJEUWLVo8Eu6l4jfv2GTg2J4zBiJoOYK82w6U
         mV7GUt2k3ZC4LOhKIkFusTTjemsgspH8H41pCz6jQRg8p8XYlPZtHuQ3lv0wtH9cN97k
         7wXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IITVgune5Y5wVu+xdr+S0x4hsRTRCkpttpMpb4f7enI=;
        b=WccO57FajvKkWeevaAzCf1M4oZpM/bja9IBlB1oSE/ysU58nzW7xG0dGy3FYkA9cUD
         3m/jx/ADulrhorO4t5ZnaW2xGIDEc8XgLxX95PTqnhMh4lD8fZBhqll1g8dJyoTG6iLT
         m+hk5e4R31keFnSSeglaO1cp43UpA6+anZahG8lsLBuQYorz5iu7BV9q7gHnS4sjiypW
         t7AO9rtZyua87hhUR1RtKFRlsLz6/8zhAYP7xDIavfBDhItGm40LEbobTzvk3yfj3zUS
         qR5Ly/nrDF8pM5jNO3pSvRh0Ub+eIkKOUcNj48Dw/Wdv0im52n2+0UflcXv1OkXtppp6
         S7fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2s9OjGgJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e23si274138ybb.1.2019.03.07.12.03.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:03:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2s9OjGgJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4E300205C9;
	Thu,  7 Mar 2019 20:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551988990;
	bh=A7HcsWv9Y2dseGrOgB27nTyW0l9mcigorhLRl4vBx40=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=2s9OjGgJUriSTmFXVKFgqlKaX9TDofaQxlQR/1LEZ44VF93w2oHN4Y/dxH4i7lKkK
	 eliwPAndOT0YHQHSxDz9rxpPQ4GnMaIRAbtxUR9pZ5/5wKKX7odfR8JcGpJTK7fiaH
	 WVl3b/hYfVRKosk8x9fqbzdw1CUv+B2sllUkrbTA=
Date: Thu, 7 Mar 2019 21:03:08 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v4] staging: fbtft: line over 80 characters.
Message-ID: <20190307200308.GA27056@kroah.com>
References: <20190306181716.GA15455@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190306181716.GA15455@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Mar 06, 2019 at 11:47:17PM +0530, Bhagyashri Dighole wrote:
> Fix coding style issues, which solves checkpatch.pl warning:
> "WARNING: line over 80 characters".
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v4:
>   - Resend patch.
> 
> Changes in v3:
>   - Make the code in original form.
>   - Use tab to line up the code.
> 
> Changes in v2:
>   - Improve code order.
>   - Make the code more readable.
> 
>  drivers/staging/fbtft/fb_ssd1306.c |  3 ++-
>  drivers/staging/fbtft/fb_ssd1331.c |  3 ++-
>  drivers/staging/fbtft/fbtft.h      | 14 ++++++++++----
>  drivers/staging/fbtft/flexfb.c     |  3 ++-
>  4 files changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
> index d7c5e2e..e4c5a1c 100644
> --- a/drivers/staging/fbtft/fb_ssd1306.c
> +++ b/drivers/staging/fbtft/fb_ssd1306.c
> @@ -184,7 +184,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  		for (y = 0; y < yres / 8; y++) {
>  			*buf = 0x00;
>  			for (i = 0; i < 8; i++)
> -				*buf |= (vmem16[(y * 8 + i) * xres + x] ? 1 : 0) << i;
> +				*buf |= (vmem16[(y * 8 + i) * xres + x] ?
> +						1 : 0) << i;

I thought I complained about this change in the past.  Please just fix
it up to use a real "if ()" statment instead of this mess, which is
impossible to easily understand.

thanks,

greg k-h

