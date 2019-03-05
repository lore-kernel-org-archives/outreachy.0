X-GM-THRID: 6664599065309741056
X-Received: by 2002:a25:50c7:: with SMTP id e190mr570954ybb.37.1551772169092;
        Mon, 04 Mar 2019 23:49:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:50cb:: with SMTP id e194ls1855141ybb.12.gmail; Mon, 04
 Mar 2019 23:49:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqzWa8ksqx0f00vikK5AbgKxuARds7MdLpnm5O8y8pN//HR3hDHxzYNwJ+XlxODv/X7/0M5f
X-Received: by 2002:a25:3249:: with SMTP id y70mr533264yby.70.1551772168655;
        Mon, 04 Mar 2019 23:49:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551772168; cv=none;
        d=google.com; s=arc-20160816;
        b=wS1Apm/3lJyNNl1WYqjHwsOOHd18e196YOCPRpz+8L1ZrEHz4eWUR0IBc5WTn7vZUp
         oMfZSyEpnj0Z9fCZJ3Kd9J2F4pru/fitZXdjfnsQy4SNrtHeHT2/iX2ff5Id/wQibMJf
         L68YTjsZCI/EUM6CFQaLi0TlC3jL5bhBwAialdVpLnN+v3Ty9MqpR/ZyL75rThkjpHGY
         4nri5frROwNPlCxLHn2yB041oNoX2Qlbee0W2dnNPFwqmOsLuWykW4GCCW41mxXPO18i
         QcXVFHh0F2vM8c5E7GwNnwhi7bZcvqVfdEtLtLDBChbQ0K2QKA+XE9CshTFva6nsheyX
         j6WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lDOYZYlhwMfUEzS2/MTtNZNnLWGpqneisbENPuJuizw=;
        b=L5fr8PXEA9XWxdg12BNMj0krQFfSTn5H1FHITGroidvB/Ewd2FAusZ4DXUxKs3RW9W
         GCQFrD/+2xg2nkCy3u4NDKxlazFsyTFX4JIfOL9/+LijQkUNj4lDmnphQTAq2XiW6dgo
         CoT22PxoT5On8dT2axlwBCJ6ZNn2GKoxiQo3QvXyyskq+MzJm4rtDon7cGon4zUAk9Eb
         zQREXvwsy3pxv6JFD0Z57ZbUpxrcZpSJzoidCUi34OA1bv/gBAbbbMHga4f1fur2G30x
         TTgotUWPZLjCu6BSo2N/y9Hrp7dpfOSujhGFpoRzzTA8t3fQiBfppuhhcvQ8cvIwbLYw
         w1Rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="XPrrc/YP";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k62si385006ybb.4.2019.03.04.23.49.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:49:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="XPrrc/YP";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 487C52082C;
	Tue,  5 Mar 2019 07:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551772167;
	bh=kg5uZGB8XZdk7cYW2OTP7v06j+mw1OPi3Q8MWVE8QSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XPrrc/YPlTUaiTu8udX2KcEiGk7ltUuVPFp7D7FpzkvJZeZIfp5Arl5wechCLW03v
	 8cobph9s5Vp7KHjOQUDVWm84QbgWCw2LEd8MHl5nErHgdKG8TMwnwDoFPK9ev/a7Xw
	 lcbpYClyZxidpVe9SWrNlehKq1bX53E9j1qQAYxY=
Date: Tue, 5 Mar 2019 08:49:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: octeon-usb: Add brackets around parameter
Message-ID: <20190305074925.GA6956@kroah.com>
References: <20190304175954.782-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190304175954.782-1-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 04, 2019 at 11:29:54PM +0530, Nishka Dasgupta wrote:
> Add brackets around macro parameter to avoid precedence issues. Issue
> found by checkpatch.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/octeon-usb/octeon-hcd.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/octeon-usb/octeon-hcd.h b/drivers/staging/octeon-usb/octeon-hcd.h
> index 0ee74f63fdbf..073d679e292c 100644
> --- a/drivers/staging/octeon-usb/octeon-hcd.h
> +++ b/drivers/staging/octeon-usb/octeon-hcd.h
> @@ -86,9 +86,9 @@
>  #define CVMX_USBNXBID1(bid) (((bid) & 1) * 0x10000000ull)
>  #define CVMX_USBNXBID2(bid) (((bid) & 1) * 0x100000000000ull)
>  
> -#define CVMX_USBNXREG1(reg, bid) \
> +#define CVMX_USBNXREG1((reg), bid) \
>  	(CVMX_ADD_IO_SEG(0x0001180068000000ull | reg) + CVMX_USBNXBID1(bid))
> -#define CVMX_USBNXREG2(reg, bid) \
> +#define CVMX_USBNXREG2((reg), bid) \
>  	(CVMX_ADD_IO_SEG(0x00016F0000000000ull | reg) + CVMX_USBNXBID2(bid))

Change is not needed :(


