X-GM-THRID: 6664414939270086656
X-Received: by 2002:a67:ee0e:: with SMTP id f14mr22958946vsp.0.1552345658195;
        Mon, 11 Mar 2019 16:07:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:76cd:: with SMTP id w13ls3855912uaq.2.gmail; Mon, 11 Mar
 2019 16:07:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyMxtwRvWcKykwZvCX1jL/jTMIFE+f00rzPrOGgDHXM2k2Y6Qp/XMdCErl2vtlu1L7yuUZw
X-Received: by 2002:ab0:6484:: with SMTP id p4mr22615073uam.6.1552345657541;
        Mon, 11 Mar 2019 16:07:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552345657; cv=none;
        d=google.com; s=arc-20160816;
        b=KMZ4I3H65LL8XTgvcZOWHtz9HPsWv1xtRXG5JwcxAk4AVEPWPR60RrqKeN8MUf0DMe
         S5hfnIv4tOp9wSK8QII6SWnv0byfwI7L2lGAAU1M5V9VQ6MCt1fmltyxHVwp1bWFtqGr
         CKo5jGe/D9MtGbWCDh1DVifbMvkc1pvQUiW9Fo4wLhY616pqMVNgg0z6ueeuhPF/aZdE
         IHyr9nU7Xm/fJzV3piBVQY+lb1iS2JOi7SFQi9exqdZBarojggQpFbQfbg9QBn0wCrvF
         F8XHgD2MsCeZDD6JS4Uuiv+YaYkk9LcX+/+05x2xZyRp8uXgpn+2LCWhTNQ+ifKat3Sm
         Nekg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pyYRPlcckt2VAuddHrPuxhEtU+FxsC7KxzTtr49wrs4=;
        b=FU0NQY14WqzQbFCi0m/v4x7ouhgPIMLCU5F/eIb6JecHrqtzo7RWHOOfCygF3vHqyt
         4sv6TgMPXxdQ/kyUtxjNeZkElcqz31G1is1vcKB+YOdJ7QSJFmkr+oSuTYAjLfeE1u2l
         /GQHErI609MHQbDUGqLQjQ5gThSgyIBFcYk83wxRFZOTN0rVQ/BS6XjQl5o5BBpk6lW0
         cvL0+M66bjs3RgLkT/7mjGnnM1xme0mPspQqm2fRkWBytRWRkL5p2e2J+JP6c64ZlOw4
         qRLiWHx5UVQQAhaaCTZnIXdUT5qX+znQAy3Bmk004hZCDbMqsYwbKJmFQk55AUdRMZyo
         c1vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sPW3AWvx;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c15si327293vsp.2.2019.03.11.16.07.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 16:07:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sPW3AWvx;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 34A372087F;
	Mon, 11 Mar 2019 23:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552345656;
	bh=DYOPIFvOQZzrLLj4CTkiMPvPuUZ851258wLRX+j9e6o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sPW3AWvx+FNm7VHaKaV/ToSeufou3G6EcHwDCWfcrpGCQn/vEa28ERbSAXyysloF8
	 8Knz6jfIOKMR6ag89rG+EhS7sxeVA+Nh+/MaTRcjhLXvb28rszOj+ejiWCsEuX9L6u
	 PdirBMqeWOrNqJml3gxPbXr06dkHKx8jmmEOxqHY=
Date: Mon, 11 Mar 2019 16:07:35 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v5 1/2] staging: fbtft: line over 80 characters.
Message-ID: <20190311230735.GA22900@kroah.com>
References: <20190309153813.GA16298@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190309153813.GA16298@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Mar 09, 2019 at 09:08:13PM +0530, Bhagyashri Dighole wrote:
> Fix coding style issues, which solves checkpatch.pl warning:
> "WARNING: line over 80 characters".
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
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
>  drivers/staging/fbtft/fb_ssd1331.c |  3 ++-
>  drivers/staging/fbtft/fbtft.h      | 14 +++++++++++---
>  drivers/staging/fbtft/flexfb.c     |  3 ++-
>  3 files changed, 15 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtft/fb_ssd1331.c
> index 9f54fe2..4cfe9f8 100644
> --- a/drivers/staging/fbtft/fb_ssd1331.c
> +++ b/drivers/staging/fbtft/fb_ssd1331.c
> @@ -74,7 +74,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
>  		for (i = 0; i < len; i++)
>  			buf[i] = (u8)va_arg(args, unsigned int);
>  		va_end(args);
> -		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device, u8, buf, len, "%s: ", __func__);
> +		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device,
> +				  u8, buf, len, "%s: ", __func__);
>  	}
>  
>  	va_start(args, len);
> diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> index 7fdd3b0..c265aff 100644
> --- a/drivers/staging/fbtft/fbtft.h
> +++ b/drivers/staging/fbtft/fbtft.h
> @@ -347,9 +347,17 @@ module_exit(fbtft_driver_module_exit);
>  
>  /* shorthand debug levels */
>  #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
> -#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
> -#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
> -#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
> +#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS |	\
> +			 DEBUG_TIME_FIRST_UPDATE)			\
> +#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET |			\
> +			 DEBUG_INIT_DISPLAY | DEBUG_BLANK |		\
> +			 DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS |	\
> +			 DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT |		\
> +			 DEBUG_SYSFS)					\
> +#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ |		\
> +			 DEBUG_FB_WRITE | DEBUG_FB_FILLRECT |		\
> +			 DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT |	\
> +			 DEBUG_FB_BLANK)				\
>  #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
>  #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
>  #define DEBUG_LEVEL_7	0xFFFFFFFF


You did not build this change :(

ALWAYS test build your patches, otherwise you will get emails from
grumpy maintainers complaining when you broke their build systems :)

greg k-h

