X-GM-THRID: 6667942778398310400
X-Received: by 2002:a0c:9de5:: with SMTP id p37mr25975204qvf.50.1552505519738;
        Wed, 13 Mar 2019 12:31:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3fed:: with SMTP id w42ls1449184qth.2.gmail; Wed, 13 Mar
 2019 12:31:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwOqu+xvG3dQ4W4Ts6yTy5e+vUCw2MWMLP+c6vXfS6nZnkcza2QEmOiSdl9G0vcIZkrosVn
X-Received: by 2002:ac8:2616:: with SMTP id u22mr2237676qtu.36.1552505519179;
        Wed, 13 Mar 2019 12:31:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552505519; cv=none;
        d=google.com; s=arc-20160816;
        b=Cz81+w721cKSTbO2XO+Vk9AkyhV8DD4BiIn7t6+GMGdS9ULUbH0J2hPTHWWDCo7Av+
         0B7BTLkACiwznX8AzA4SsUDFm73k4xjZ4tmAE5vyVuwPCcyTApWLJUtsTFHXHtbV8NUo
         3Ywvjds3fxJ+GbcMQxdEUlJfFeF3jv99234KHpeoY84DTiX+x+V4eJ9wa4/x7DZbqC26
         nbxFvOdaEUsZvIImc2JuUBMX7uVud4FbfFFyJGfdOlegkIO8J1tSeR8J7wWaDnHWtztN
         mOz93c1LJ3o3G7Aq02WlrDIK5I7Ho5vhFr/w8ubVeb2/xWMqKBd//rT3uynJwTzIdgYo
         q5SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ssOsTfbKP0AXYa6fmpuF6/nwG82lB69r6hKtAPJxCBI=;
        b=N3jghVI09JXQKZrZN61aIRwYs/r3CcO04LEpcNqL0Y7HxVtc8cal+kFQcG9okLCQXv
         XdjcZ68TDBmQ89CG1i3BL0UoJQgQ/OMahkFtGHR7Dx6Dx2AJT9Y3WDLpaECtyss8mPyn
         q0W7cM7LG3IWKy5Qb9SuhfTN6UyGZ+wqM3QVxSsOyuCVojfLEjhaVV1VCFNwlgGR/Hib
         cNUA5Ka2omf+TanJEoJg6FI1TIPnb37gozqLbmtPl0rSzDB7cK/OhOZbueBndX+WhEp1
         e30tTSJB8UVAEv1vWih9G4COjgar9HdyxmPpVlA0+K+4KK0fTtH9Ehvpto9PAZ66Gqi7
         Jf0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="R4Y/cEw9";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e12si368118qtg.5.2019.03.13.12.31.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 12:31:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="R4Y/cEw9";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.27.65.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 180F02075C;
	Wed, 13 Mar 2019 19:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552505518;
	bh=i7HQPyQVhjG3NmUfy0qCzHgEeHp8NMUL+LhJvNu4HHs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R4Y/cEw9ZmPw7AzcwD06Z8DYC7z7np2mPPj0jATCUa+FX7DbnOc7AfIBNSuvJxccS
	 +o9gxGLYUDakbGh96JmaVn3P3THdxIW0JQWgByV7aNUrhb/Ijpv7c3XY7i/NtMBGPn
	 r92WD9T7sT/qXPVvTg0uWoa6Txu/W8jnqfvOPuZ4=
Date: Wed, 13 Mar 2019 12:31:57 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: speakup: Remove unused variable.
Message-ID: <20190313193157.GA28479@kroah.com>
References: <1552501395-12308-1-git-send-email-digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1552501395-12308-1-git-send-email-digholebhagyashri@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Mar 13, 2019 at 11:53:15PM +0530, Bhagyashri Dighole wrote:
> Remove unused variable which is used to store return value,
> Detected by Coccinelle semantic patch ret.cocci.
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index ee240d3..a748eb8 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
>  	input++;		/* Advance over %. */
>  	input = skip_flags(input);
>  	input = skip_width(input);
> -	input = skip_conversion(input);
> -	return input;
> +	return skip_conversion(input);

This same patch just got rejected a few days ago :(

Please see the mailing list for the details.

greg k-h

