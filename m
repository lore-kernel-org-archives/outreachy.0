X-GM-THRID: 6803023005726277632
X-Received: by 2002:a62:8144:: with SMTP id t65mr7221644pfd.188.1584001026530;
        Thu, 12 Mar 2020 01:17:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:84d9:: with SMTP id x25ls2108243pfn.2.gmail; Thu, 12 Mar
 2020 01:17:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv38ICfjtvnI3YtQXPetInR9pMmp4TZ7baoiMzKsWeTUXvoPhVC+oWCSieY6KGZlzTRLp9g
X-Received: by 2002:a63:ce42:: with SMTP id r2mr7018537pgi.106.1584001025013;
        Thu, 12 Mar 2020 01:17:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584001025; cv=none;
        d=google.com; s=arc-20160816;
        b=Pg2wKfNncSOSm/mXTxuBsiPWAiUUgJHXqg6KN7QaKE+ycUo72uLLXm/xsK7bCJ5bKg
         MPcHMWbuNHzDEH1y6a8uSTZaJuRPiuyNhOg1WnIFPEmEXCfPVfqza4JrHu+VAKDQoHln
         9EzuSRUKR43GEAqyn6Pk1wxHx1+visY22rtEDSfCsmJFj13JUyb1y1iKprUjw820Ygc9
         w6zRy3w1i/grf8pQQvkYbtFvJIkBq2KC5Lt709HTmU2zi6y2XA7jQjrXs7puJO2QO3Al
         1AXkpQvste5ncdfEOK2s/V1ps2+RdJO3njcc7ItEEhSgsZU+C2PcT71ADzS2lTmNYhqu
         c0pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=elDQjkSsYXj56rXqYX/tt2Oek4uf77Asoi4nrTFgtc0=;
        b=Qe9TiqdaAS+Ckhi9YzJA3cWnlxQUzMjLUOEwFijP8otRYUxYO8S5zQEKvbn3ZNzOxv
         J+ESGglAADGZvr3FzlxBDPLc9gZmRqIM8rFSA6loJl4EgfYZfTExzZXzbb03kWIDEJT3
         gEHxGEkkT+Ua4cJ7JHcP6z0x/rsdA6E/A3HuipQ5Bbq3hSzRtoNoggwpuUGLdv0B6dY2
         4+0WW38CbSlRotRQ7V+uzli4b3bgl8g/Mce5TJ4uGR2+9aMbSaLOPCouWy2ZvS6JMbJs
         C/ojezVUw3Jfb+valNZpV0gLBS6sDiB91W81HtAwAT0yGuFfd1taWcapo2humR0s0ACV
         yiEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vRBtSfjy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y129si283900pfg.1.2020.03.12.01.17.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 01:17:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vRBtSfjy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2FF46206EB;
	Thu, 12 Mar 2020 08:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584001024;
	bh=YWxJAuznF5pgekakZzOlljv/GmzwzPYE5tAUMFgg1Tg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vRBtSfjy4fbH3Q51Zo8V6vWmsxklGBqknMWFU+EYmsF0W6CHdk1JuoFiBRVhXYWXX
	 ZAKiTaw4MC80ZD4mY8WNQzWQaoqW1Ln38YZL1RP1vtz6Q1/rMlQtyPUFAQa0623fY3
	 tBL7lYl1WgO88STLTI9vVnX/c+L0Pi4EW2y9l/Y4=
Date: Thu, 12 Mar 2020 09:17:02 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/5] staging: comedi: check condition in one statement
Message-ID: <20200312081702.GC11746@kroah.com>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
 <20200311184327.25338-3-kgupta@es.iitr.ac.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311184327.25338-3-kgupta@es.iitr.ac.in>

On Thu, Mar 12, 2020 at 12:13:24AM +0530, Kaaira Gupta wrote:
> check two conditions in one `if` statement rather than two since both
> return same thing in file usbdux.c
> 
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/comedi/drivers/usbdux.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/usbdux.c b/drivers/staging/comedi/drivers/usbdux.c
> index 0350f303d557..8eff7f140560 100644
> --- a/drivers/staging/comedi/drivers/usbdux.c
> +++ b/drivers/staging/comedi/drivers/usbdux.c
> @@ -617,9 +617,7 @@ static int receive_dux_commands(struct comedi_device *dev, unsigned int command)
>  		ret = usb_bulk_msg(usb, usb_rcvbulkpipe(usb, 8),
>  				   devpriv->insn_buf, SIZEINSNBUF,
>  				   &nrec, BULK_TIMEOUT);
> -		if (ret < 0)
> -			return ret;
> -		if (le16_to_cpu(devpriv->insn_buf[0]) == command)
> +		if (ret < 0 || le16_to_cpu(devpriv->insn_buf[0]) == command)
>  			return ret;

The original is better, please leave it as-is.

thanks,

greg k-h

