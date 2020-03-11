X-GM-THRID: 6802933186338750464
X-Received: by 2002:a5b:4:: with SMTP id a4mr3070063ybp.109.1583931920533;
        Wed, 11 Mar 2020 06:05:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d851:: with SMTP id p78ls472759ybg.3.gmail; Wed, 11 Mar
 2020 06:05:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuRkFQytinsow/dDhmPKKFSB0GcDzXd9oow6jzDKB3jL7HtfJOj0VX/+QRFBfLk7PtXovJo
X-Received: by 2002:a25:c482:: with SMTP id u124mr2956836ybf.286.1583931918819;
        Wed, 11 Mar 2020 06:05:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583931918; cv=none;
        d=google.com; s=arc-20160816;
        b=Mbqjaawd2ooxLO7NnGg2I5r8XLfjDUN6Ar9vV2oGmiAPu58zr8WA7bmHvo3krnDXDl
         KR3YgRSDnBBUY5QZTC2WXSyh/fM9R9e6vZXmwVI/Gig+TnGbzt0Srnyfg7ksS+cVeWXC
         XTZci0lpekh9whKpq/oV29kNXJmbG29pjorUD8jxFb5E3quulc/Tmi4WT4mWm6p8hpJq
         p4NycnuThdCsgmmJue40S6OXKzcTyeZc6THLd3vxvMiT3xqjGDEg+FDG0vIFuJXGJaz/
         XIR4va/XHxEtCv5eErjHOG5f9jzzo04HU+ek3ij4EMLkWnDs/KFJhPVxUkYVQORfANZm
         jsOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vtaQ+U9MA0kTmg0Z1eF9WBxoyLGoFUl+m1kVFe6IY30=;
        b=f8iH14qgvkBPTVAZhAo++BjG4pXATJf8E5XUvLknPYCm9+qTrg51eVEiyPiawZ6+fw
         U7MqfFjo+CtYokH8u+OE2n+I0mnoCF+VDzPZ4PHEURkb0bvOyudXx4d7GHOjtFgH7iJK
         6sDUqfxtfE/3n6NB1vOOvyjO2FSRr4LuzBr4deIs/vQBjJ+uekoWdYIYQzA1NLLcW04/
         Kl8ZEQFLHcoFIyQEoOiQdhevt4GQpnlU9n3PwtHkSEeXjDoMi4GWnWJdKkrG/4eHljou
         6Jz0p/3dHdJgZQVA7LOInJC6tUFom6QCLkOT9FWwYQlr8rdfm9cnxStudKjh1YrXojLj
         yUbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XfkqkQli;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b130si84366ywe.2.2020.03.11.06.05.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 06:05:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XfkqkQli;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5F4842146E;
	Wed, 11 Mar 2020 13:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583931917;
	bh=Cx+gOZIgKknGIdPl+0Nfn9VKXwKcGh9NBh6FXMSvHUU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XfkqkQlixftkurJ7VriRJAsuscTbNeI8pFMzOp458I4zbmDsgpTj84waelnttSoJ+
	 e6lJangj4aZFHzbvcZuv4U8+/oXCRJKMb7/0/a8XhFwYmZHHftshuk9YAV/yuXkEZI
	 Nc91TFBsb2DmARCHSM9gC8P0UT1b+wFY7pQzNr3Q=
Date: Wed, 11 Mar 2020 14:05:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Enrique Vargas <jevargas@seas.upenn.edu>
Cc: Chas Williams <3chas3@gmail.com>, linux-iio@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] remove unnecessary newline for brace
Message-ID: <20200311130515.GB3823904@kroah.com>
References: <20200311125507.GA9347@evX1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311125507.GA9347@evX1>

On Wed, Mar 11, 2020 at 06:55:07AM -0600, Enrique Vargas wrote:
> put brace at the end of line following coding conventions
> 
> Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
> ---
>  drivers/atm/adummy.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/atm/adummy.c b/drivers/atm/adummy.c
> index 8157925af824..6eeaa1b21f3b 100644
> --- a/drivers/atm/adummy.c
> +++ b/drivers/atm/adummy.c
> @@ -131,8 +131,7 @@ adummy_proc_read(struct atm_dev *dev, loff_t *pos, char *page)
>  	return 0;
>  }
>  
> -static const struct atmdev_ops adummy_ops =
> -{
> +static const struct atmdev_ops adummy_ops = {
>  	.open =		adummy_open,
>  	.close =	adummy_close,	
>  	.send =		adummy_send,
> -- 
> 2.17.1
> 

This is an outreachy application patch?  You need to do work in
drivers/staging/ only.  Also, the iio mailing list is not the correct
one at all.

greg k-h

