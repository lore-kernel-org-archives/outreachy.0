X-GM-THRID: 6667786089217916928
X-Received: by 2002:a67:1c82:: with SMTP id c124mr7703121vsc.13.1552817796619;
        Sun, 17 Mar 2019 03:16:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7489:: with SMTP id p131ls2826632vsc.5.gmail; Sun, 17
 Mar 2019 03:16:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxEmKKPJECu3LKjmWKawkUcUlVlBJtPGEEWhd9fcNV5MPeUtp6uqjXgXpRLKRpB41/tZllX
X-Received: by 2002:a67:f70e:: with SMTP id m14mr7699056vso.25.1552817795704;
        Sun, 17 Mar 2019 03:16:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552817795; cv=none;
        d=google.com; s=arc-20160816;
        b=EZuyJiqrFSheWqsTh5y/1nyfg/n6d6dZUQKll0M4LefzehVxBsWi+3TyuJoxgVIcyD
         er9EL5QNLP6idtpKOEzHM6nLeXwHkCuFSEn9CHurTPHF+s51SU+p/SiYNvGdp3GhUrB9
         2vrFzfrZapWC2D1GKky09ETjiN931UiR0Yua/PkZJztXdO8gMwuk0pXRRMrV9YYVjU/A
         2MVzsldJLcMSKTix4bC/L4vONJUSsw6C8Nfwvs0NR/bzTZsY57UUwy8biMZKHopGej5z
         1bh3r1gro77hqL2uQCGXiUedIFHWmhWjzAjhw4uqEoaqlqbawtZshGOLLehZDF/HWovt
         vejQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=M330T7OfLEBUmxYY2X2MJyeZbtoHm67HSxDaTE0WVys=;
        b=f/yHnKoDR/eEimokQBot3OVV1nT2z4s56PhD8m0LSrfMziOgqA8qOxo4czAzjmLkao
         4NGg88JUU3y+Pud8R2mZzg8oo14FY+SQoAjHfSjonwIAVIOShJYw0et7wkXq6h9Y8tpO
         8eJHHkKD1p6gFNX5aPntdNMCb7wM9Va/rtO0i74hx5qxQ+19mjTWY3KYa96cxF3r5mW+
         HJ6Ks5i5cZinRugjTmwiqsEWxCOnQZ8fexL8Y6eTxx1XB9aAzdGZC9oncZ7t78y7suot
         H2Sxo1SbJNMdVJjjRPR3d1E71n041OaMtdixSO3axwIF4UIklaszJcGiABO4ZZbzoz1c
         rHoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=D9qcFvi2;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k19si475040vsm.0.2019.03.17.03.16.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:16:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=D9qcFvi2;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0011821019;
	Sun, 17 Mar 2019 10:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552817794;
	bh=UITLL73KzZU1GYLPcB5edPGXFChwzLFKcFEJueUa2v8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D9qcFvi21F6MJos0VZhg3mWoK8Ouxriaa3FtLA3PG68a/IQ+zqN67xUCRxVG67uKv
	 befiUCTFRvkAFWk/Ai2BqpDjfJ8Q13ep5iooY1aMdZ++yhmdY1+i2lzCsc4AI0KzC9
	 jjXAsI5kmAd9hUQBQ0j2IA2WMeey3Cn+Co6Xc5Bc=
Date: Sun, 17 Mar 2019 11:16:31 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v6 2/2] staging: fbtft: ternary
 statement to if statement.
Message-ID: <20190317101631.GC20773@kroah.com>
References: <1552464910-32765-1-git-send-email-digholebhagyashri@gmail.com>
 <1552464910-32765-2-git-send-email-digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1552464910-32765-2-git-send-email-digholebhagyashri@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Wed, Mar 13, 2019 at 01:45:10PM +0530, Bhagyashri Dighole wrote:
> Convert a ternary statement into a if statement which is detected while
> resolving "WARNING: line over 80 characters".
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v6:
>   - Drop some invalid changes.
> 
> Changes in v5:
>   - Make patch series.
> 
> Changes in v4:
>   - Convert a ternary statement into a if statement.
> 
> Changes in v3:
>   - Make the code in original form.
>   - Use tab to line up the code.
> 
> Changes in v2:
>   - Improve code order.
>   - Make the code more readable.
> 
>  drivers/staging/fbtft/fb_ssd1306.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
> index d7c5e2e..1fb0098 100644
> --- a/drivers/staging/fbtft/fb_ssd1306.c
> +++ b/drivers/staging/fbtft/fb_ssd1306.c
> @@ -184,7 +184,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  		for (y = 0; y < yres / 8; y++) {
>  			*buf = 0x00;
>  			for (i = 0; i < 8; i++)
> -				*buf |= (vmem16[(y * 8 + i) * xres + x] ? 1 : 0) << i;
> +				if (vmem16[(y * 8 + i) * xres + x])
> +					*buf |= 1 << i;

You are geting much closer.

What about using the BIT() macro here instead?

thanks,

greg k-h

