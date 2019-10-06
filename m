X-GM-THRID: 6744449794270298112
X-Received: by 2002:a63:e606:: with SMTP id g6mr18486450pgh.248.1570355445812;
        Sun, 06 Oct 2019 02:50:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:4f0c:: with SMTP id d12ls2409703pgb.1.gmail; Sun, 06 Oct
 2019 02:50:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzWTBoQ4JEjh7HGvth0u1O/ZwUWXDQvVJLcpmUD3Ok1/7DwMjt/MOuYMP0aRtoxlQgFUxCg
X-Received: by 2002:a63:e514:: with SMTP id r20mr8499736pgh.275.1570355444858;
        Sun, 06 Oct 2019 02:50:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570355444; cv=none;
        d=google.com; s=arc-20160816;
        b=Cgtg4ABydXF1bru+2UdiCQtzC+eEnXz9jZLyvkkcIK5rsYyv5rfNbJNai3Cn6F791s
         nugOWm3Uh2a4TLnnuo1yKoRlUfAd7VP4MLMvQ4HnFGarhVU5kHsnDII/3P9T8cG/SoLX
         sk3pkp1MoWQ29+ZF8ChP5OsYYbPH2NZSZOjdTtlQMMIefYlBZpe64XXYuI9brx4XFm5s
         2gFqkf59fytGEUnu+h2e0e7+J2fXqGSZ2IobtVJXmrtKP8EKncJqfG3GHIKjmbgdxTJF
         hmlLN2WHJFkYamIYr7Rj7t2lzOUZjyiJBiDKG0iLXLe6pctCJWIpINFaoUHENfyOdSU2
         fgfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XLTFu+XKummEgySuicnpPuwoXiHbXZ0oPnVILkaZixs=;
        b=NtpdwFQDgMX27J8CqANBTowzJ8x53ZeuFVvqVHsuv4wFYVD/6dsY5pRf9NSYGvmQHT
         p4y9PmAnOK5pvLiNE/au9+7khaFRINYfRA332wv/PtQRaS3cSB8NLubKmFY13pM8bhzR
         lnCMAFFOyUwEigs8nTombpGk1CkGHSq/pZBAxAIuGfWUW/2rj434uUzBp1IjZlrDbs+Y
         ZF7QIO5TBWdtCW0kHEP8fsk3APwng+bges2u1pbvgopLyPOZvPkjSPaoRCbTrOGtTMHj
         WMFHOGSQjvOnajnJ0DkRSK6k5iJ+/IzwkQu7StocAhFnCTz+rOfUjAHs0+AI71tdPsux
         aTfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fDoRXRDU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q141si814655pfc.4.2019.10.06.02.50.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 02:50:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fDoRXRDU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0C62A20867;
	Sun,  6 Oct 2019 09:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570355444;
	bh=IEIOaPM0gWMqpc0zX16Dpknqo7eoR6bXroNx94NIjbI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fDoRXRDUAh3f/Wl8m8Vf/KnM7I7dINcMPAD41WRI3EoYkS1D+NMGcmB+k9CX7T2PK
	 YOne+95KYCGaaeOr69HmTnV84fF9HvNyvZgp8P2J5UAb3spb29Ecs9IvXfWJ9wxrv7
	 gLk7BTpwXrYWdzyS2zRz5WHW2PRUyH63LCHWwe8o=
Date: Sun, 6 Oct 2019 11:50:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Cc: outreachy-kernel@googlegroups.com, johan@kernel.org, elder@kernel.org,
	greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: greybus: add blank line after declarations
Message-ID: <20191006095042.GA2918514@kroah.com>
References: <20191005210046.27224-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191005210046.27224-1-gabrielabittencourt00@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sat, Oct 05, 2019 at 06:00:46PM -0300, Gabriela Bittencourt wrote:
> Fix CHECK: add blank line after declarations
> 
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/greybus/control.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
> index 3a29ec05f631..5a45d55349a1 100644
> --- a/drivers/staging/greybus/control.h
> +++ b/drivers/staging/greybus/control.h
> @@ -24,6 +24,7 @@ struct gb_control {
>  	char *vendor_string;
>  	char *product_string;
>  };
> +
>  #define to_gb_control(d) container_of(d, struct gb_control, dev)

No, the original code is "better" here, it's a common pattern despite
what checkpatch.pl tells you, sorry.

thanks,

greg k-h

