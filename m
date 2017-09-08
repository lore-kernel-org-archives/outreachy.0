X-GM-THRID: 6463317881648054272
X-Received: by 10.46.31.2 with SMTP id f2mr155286ljf.31.1504860352730;
        Fri, 08 Sep 2017 01:45:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.138 with SMTP id v132ls110116lfa.5.gmail; Fri, 08 Sep
 2017 01:45:51 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb6/ts3U8/mN7EYUTZ/iQjocfO+rEdEYt8R32bVdX4b249O5GM2BjqNvpdAHPxmvNepDi3je
X-Received: by 10.46.7.26 with SMTP id 26mr146427ljh.5.1504860351327;
        Fri, 08 Sep 2017 01:45:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504860351; cv=none;
        d=google.com; s=arc-20160816;
        b=mCccOO94dp+yvCRfccu2CaIeU6bn6SveRxu4L9vVGeyyokwo4IKBdSPsakYG7aiHbU
         mq7XYSV7xiCcy578xSfvpWWZQ/v7RkGAerx/qkSrJgmrujLr7qcBoM0bQYWaOZ0r9e6H
         ib5rblowDuxXZOc7hrYUa0Cpd+DUl0DypSIu8NmGL6PVb9fy/QgtOBwTWZ4FpXy/BM4/
         sWXoxHQVJ/AdtvHrA9F3kbAQV0fQ+XifLQn+Sm98zRiO8fWReOD6ZCu+YgpWZqk2hqSF
         YC7Hq2epMIdK1hLwWA47nmsr/bsBRN4ulXWenYp0gn1/R8quwSq7yWGq4AsudspB5rl1
         HFLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=6NPT//9/5Cqa3nvHfeHOjA1p58FYaYYDkeJZr8im3tE=;
        b=MrcjghQ80vRb5j2uRsDiVYAUl6UbO0JHwDUjKb/RNeWKM/h+Cx3Mz1G6RJur6s5rd8
         jJpa0OW22our5sWrbF+oWQnofahVE+IRG7y6t8AyO3RXDNj1SkgFuYaWjjTyFK2DBGjX
         kaHNO5O0y2xPNoUsXyg8TNDmrbo0uXiqouqNlC0m0QlX6BgWUnMjDxT5fuD+9wTLq2PH
         ZlIriOOJzCVeasukKEdx35gmgZ9DPKahYFGZpqRAcEeYEF8BOsPJgaMC2ezK3x2hn/5W
         h2Z4QKJjxVueOpfBRhFh+GMjXv5DxycD6T249hk3Sh6F1WPujVD1Zf4WpzWmrFR0IU97
         Ajeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 74si91794wmf.8.2017.09.08.01.45.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 01:45:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,360,1500933600"; 
   d="scan'208";a="236756218"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 10:45:50 +0200
Date: Fri, 8 Sep 2017 10:45:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: harsha <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: pi433: pi433_if: Fixes minor
 typo errors
In-Reply-To: <1504858343-11850-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709081044110.3165@hadrien>
References: <1504858343-11850-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line above is still not what is shown with git log --oneline
for this file.  Also, this patch fixes a previous submission so it should
be v2.

I suggest to read through the tutorial carefully again to get these small
details.

julia

On Fri, 8 Sep 2017, harsha wrote:

> Fixes checkpatch warning -- "occured" and "succesfully" are misspelled
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  drivers/staging/pi433/pi433_if.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
> index 6b9b7df..6a10478 100644
> --- a/drivers/staging/pi433/pi433_if.c
> +++ b/drivers/staging/pi433/pi433_if.c
> @@ -473,7 +473,7 @@ struct pi433_instance {
>  	}
>
>
> -	/* rx done, wait was interrupted or error occured */
> +	/* rx done, wait was interrupted or error occurred */
>  abort:
>  	dev->interrupt_rx_allowed = true;
>  	SET_CHECKED(rf69_set_mode(dev->spi, standby));
> @@ -1033,7 +1033,7 @@ static int setup_GPIOs(struct pi433_device *device)
>  		if (retval)
>  			return retval;
>
> -		dev_dbg(&device->spi->dev, "%s succesfully configured", name);
> +		dev_dbg(&device->spi->dev, "%s successfully configured", name);
>  	}
>
>  	return 0;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504858343-11850-1-git-send-email-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

