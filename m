X-GM-THRID: 6806470410125705216
X-Received: by 2002:a25:f208:: with SMTP id i8mr18446075ybe.482.1584773655862;
        Fri, 20 Mar 2020 23:54:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ac26:: with SMTP id w38ls2055864ybi.11.gmail; Fri, 20
 Mar 2020 23:54:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtVqUVPRsA4gY+4SwfxMFjCrowjDiQXNEET0BeYCzNz/myTJnkMtEHDJjkQ6dbXE+K7hWcW
X-Received: by 2002:a25:e094:: with SMTP id x142mr8096057ybg.74.1584773654376;
        Fri, 20 Mar 2020 23:54:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584773654; cv=none;
        d=google.com; s=arc-20160816;
        b=cnGWNa/fqvKExxA/cSVoH52ZIR9Qq7wftV41Z82dq7FgCNQHEAkx+tJjGKmxCbLCGW
         FYEGxdPtc/Hl+7ifLuijYZQYJDLXTvUU1Mb0+x+LrvmRdgz/WDubBlVCf7qrK4/EFyTn
         kZiw7ld83EKtfZEtgoi1klE9a3dvN68gnCf0xfyeBbzccq44YI7+A/UPgLZD8tUMplt7
         OrqmhudsuRBQwqtyE4hlz++NVQ6VBkYSIQAXmJ0KGIjyIoYN0E794ng8TiSjJAyNACVV
         i2LK1NNUA1lfcLYQqzfnUWUnN5T8GF5L0dkmNTDxJQQz+PY5UmRye1IkcCbS/q2Se1Xa
         dVFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rmOiYBjDBHez9rUSoZw7awx+npZQPK7UsneEKLYokCo=;
        b=uSPUCCJ0Y4XG8vk72ky3Sp7JKWDLvuPJc2gcGNA6Zs79XZvZ56pv1fWGIPQ1hlbm1b
         dqfGCeOC7DZuy1YW+JGy4n5lV2Fnuci2vngzA1N5G0uDN1Z/y1lTnF/Jfq7rF1bY3aTz
         tg6Rcn20IZEmTf52MTtatQht4AHdYWoYDMrTVoL8S8nygGbL2ibjkLBGqcNqvB6WQO9w
         F6xobZpqk7EHir//Nvmeltg3/l+v2IkxoWXdFCHjHAnmZFg/0Tz/0L8b66mJH0NDeORh
         T42SZ+Yc2G3uSWqbPuPvntzbumYJztRyzNrubXl6TMUKX59lheTJ7pAhG0RUklBEIAos
         fk/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0+XKjAgh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y140si454089ybe.1.2020.03.20.23.54.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 23:54:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0+XKjAgh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0F918206F9;
	Sat, 21 Mar 2020 06:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584773653;
	bh=etSvMBiYbotvTdm+bY0MPcFH6fAcifQ0003xiteqDwI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0+XKjAghu4CDCti9UKjh/tBDoFu/0BOwwHZaKrUZDMEFWR6upPNvKFVxqNdUAUeTX
	 LNiDkLnYAsoPtd4LQxCro00lewGgrlRr/AUX+L3QOtNhdmzrKNevOIKmHugYabN3xU
	 UeYz1fwHTaeuDaFOHgKbvioCyErvrqz8dky7Cb1g=
Date: Sat, 21 Mar 2020 07:54:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] stagin: hp100: space prohibited between function name
 and open parenthesis '('
Message-ID: <20200321065411.GC849159@kroah.com>
References: <20200321014123.GA17832@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200321014123.GA17832@siyah2>

On Sat, Mar 21, 2020 at 04:41:23AM +0300, Gokce Kuler wrote:
> Delete space between funtion name and open parenthesis
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index b89c4dc..551cd52 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -3020,7 +3020,7 @@ static int __init hp100_module_init(void)
>  static void __exit hp100_module_exit(void)
>  {
>  	hp100_isa_cleanup();
> -	eisa_driver_unregister (&hp100_eisa_driver);
> +	eisa_driver_unregister(&hp100_eisa_driver);
>  	pci_unregister_driver (&hp100_pci_driver);

Why did you just do this to only 1 line and not both in this function?
How about this whole file?

thanks,

greg k-h

