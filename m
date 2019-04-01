X-GM-THRID: 6674917600635387904
X-Received: by 2002:a05:660c:885:: with SMTP id o5mr6734761itk.27.1554140467783;
        Mon, 01 Apr 2019 10:41:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:282:: with SMTP id 124ls1212885jau.0.gmail; Mon, 01 Apr
 2019 10:41:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxKSrPD+BL3rBgdM2sa+y6HmP5V90SSqMGHSLhJVxvW2jF+eGFlhpoPewzJcGaoBpddq8Km
X-Received: by 2002:a05:6638:388:: with SMTP id y8mr10315061jap.12.1554140467264;
        Mon, 01 Apr 2019 10:41:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554140467; cv=none;
        d=google.com; s=arc-20160816;
        b=sYtOwVuovKh0cE0/BHfoKRxH+NomrNQxDJFoP4VGvgijoQdNwCHHtzdei8I9/hTEF2
         /h2Cx1CGLuZmUR6aOni7bIR31VT5gDjR4K2eBdLFqO9QGCp1NGt9rL4TjACLzciMk0wK
         UWJhbbij2kMA0zqpNtbGPaR7UFPENcS3yucaLgLEXUoeK2CTBLGaIsDU1d37GGJhkJSC
         QYGcPZB1EIQENpCEVJAJi7MwvEGXhXRZUDFa/S4qgdEPuXt1SbggbMnhhN22DtqHR+Dj
         dmmyEOz75r/ce1xFoqaLhsCOupMgTmNjxC9cepRo5F40K8VBuSNi42IVhuZ/mIHPerZ1
         akUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ds02L7ejAFqIa8ZK5FQJbzyD+t/E5FFt4XBq1wupd2k=;
        b=zJ89rt/6mse1umRsVnnBntE/B1aD9GIT3+Wc5SzKKwTI/ZtWUoiSMUZ/GnXM/PaESU
         NKKGi+UVTI2fTlSDM0X4OTe51XZGp0LCAQ4jM6B0eyNDHM1GJeX910mzKcPVrLjJKvsJ
         UE6JQ00M5tS9fqWsztgnDQ3CnC5p7FyGKhjz4RqGkuiSxXlTsLdrmrzMiowpLF6H3xZS
         tsAamxTfNumaFgP1oCP7ea2sY9/+X+6WLkMSgdIlsTIG2Umuj39jkaIMAElEqe/zYT2S
         NorfWWqyWgRXCM9BsT4kaHh8Yac8FbrS/xRW1pYSNbT9aAREJEc9VesVXwrJHQddkdyO
         2V8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=khm6BQTT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g127si1245848ita.3.2019.04.01.10.41.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 10:41:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=khm6BQTT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 17D3820880;
	Mon,  1 Apr 2019 17:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554140466;
	bh=/PQpRa/q1t8DnUoyZl55u9/QKseuL0hPdB1ZEwiJJtY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=khm6BQTTCAHnOvZ6D44JSizvOM0zZaewLHmg0Vv6klkxYGnY9WChywPKEi9CEMGFJ
	 RvGtmXbNyoGFw2Bw9xSC8GzRZ1yPs8RUJtrdQXHoKauTlRuL2CJW8wyrS0Yk7rKl1D
	 3HlFfJ3iV0tg3O7vgwTZzpvn7XJlk6jmT25vA1RE=
Date: Mon, 1 Apr 2019 19:31:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: gasket: apex: Modify return type suggested by
 Coccinelle.
Message-ID: <20190401173139.GA4212@kroah.com>
References: <20190401132906.4406-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190401132906.4406-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Apr 01, 2019 at 06:59:06PM +0530, Sanjana Sanikommu wrote:
> The last two lines in the function could
> be compressed into one. Avoid usage of local variable.
> Issue found by Coccinelle using ret.cocci.
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/gasket/apex_driver.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> index a79613db71ef..2be45ee9d061 100644
> --- a/drivers/staging/gasket/apex_driver.c
> +++ b/drivers/staging/gasket/apex_driver.c
> @@ -439,9 +439,7 @@ static int apex_reset(struct gasket_dev *gasket_dev)
>  		if (ret)
>  			return ret;
>  	}
> -	ret = apex_quit_reset(gasket_dev);
> -
> -	return ret;
> +	return apex_quit_reset(gasket_dev);
>  }
>  
>  /*

This patch does not apply to my tree at all, I think someone else
already did this before you did.  Please update your local tree and
verify this.

thanks,

greg k-h

