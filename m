X-GM-THRID: 6664599066779844608
X-Received: by 2002:a5d:8c97:: with SMTP id g23mr503138ion.0.1551726196279;
        Mon, 04 Mar 2019 11:03:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:194d:: with SMTP id b74ls98241itb.3.canary-gmail; Mon,
 04 Mar 2019 11:03:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqzanXg1dzA/f7LpcnfrxzAuAEe9Y2esZXNMZpGk5PgXB6xzpuBhq94wPd8lUVStyB39TTPX
X-Received: by 2002:a24:9884:: with SMTP id n126mr398226itd.4.1551726195376;
        Mon, 04 Mar 2019 11:03:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551726195; cv=none;
        d=google.com; s=arc-20160816;
        b=0bZX4D+ZlSqo4cdx0UEPGY7W1WuJHnfQw6nfwyHflkZTD/pkZU3kE/wsUgn/feaZP3
         m1djih19Y35rOLS9vmrMLMVZSxWFP5wDD5Zueq26a4UgWFOaubWsVW4SDOT/nQJq5kjf
         hjBLBIr7VO42ro0oPt3oU78lMWOxDELCuh+BBvh7H3j18q0En+ZPjmIJqRgiZdUBUKmd
         +Q1me1s+XFGNsKoURIkyh2ARglDqb/+yx/J++AFKNHzahscn8+WFf1pkz49ApaCriogZ
         lZc1m33q3fRpjQe0MODTnDEL0IVU86gvU79lJpsN7VJxD/I7SVFW9VkmI6Hxg5tYRppB
         oEYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BNctOJ0dleAi5G6Y+YmgCCcPD1hhD9zyMinETn0NNJY=;
        b=kU5MvrkRJTVje0h9rH6lNKh9h75e7q8aMA9Xjf4Nz9m2t38Zh4uqS2G2n0sHcKFw5B
         ng36/wqypmQ32aHPHIvmTa99FAyeOVY8BcUKP04kdX7/l+PP1C3BvOPaBiMPGUMuwtbO
         DZ/OBVPCWAjIqjMGdTIs3hp1BodXhnf8kxdkSoyRiflHl83GIpWVDCos23WGEXCdtib6
         zgb6so71X2DndYKwBaECppm/FDPQRsqvdlWRuWK0Yxha/KH0P8/rE1fx7J/9QlNhEs5Q
         KP2bkfz9tnMXC4LriOWBagTgHaFuBdgpzP8KBTSvCbATYt0YRc2EubTLZxU219QQNYM9
         5u/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hGwAAS3y;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f19si402603iol.4.2019.03.04.11.03.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 11:03:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hGwAAS3y;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1D04820663;
	Mon,  4 Mar 2019 19:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551726194;
	bh=FfgPzvfJYluhfAN7YlIUT4i2mZX1/gjXuyf+2AFPKmQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hGwAAS3yVFYaPCTXA+YxXWyww4H4wJX0Sqp6tVjI8VInT0o5tLCZNQElfqUMqACsE
	 e84/z594kQJUIwtOtcZE0LitcUdk62blA+DqO5KZwzUoCPNcMgJx4svLNHi4A3GR3R
	 Lw6M7VNXZ0pOFOKyNAAuiyhb+3MEOjL69o1W3LIY=
Date: Mon, 4 Mar 2019 20:03:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: octeon-usb: Add brackets to avoid precedence
 issues
Message-ID: <20190304190311.GE13830@kroah.com>
References: <20190304175753.543-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190304175753.543-1-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 04, 2019 at 11:27:53PM +0530, Nishka Dasgupta wrote:
> Add parentheses around macro arguments to avoid precedence issues. Issue
> found with Checkpatch.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/octeon-usb/octeon-hcd.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/octeon-usb/octeon-hcd.h b/drivers/staging/octeon-usb/octeon-hcd.h
> index ae7ae50071ae..0ee74f63fdbf 100644
> --- a/drivers/staging/octeon-usb/octeon-hcd.h
> +++ b/drivers/staging/octeon-usb/octeon-hcd.h
> @@ -51,10 +51,10 @@
>  #include <asm/bitfield.h>
>  
>  #define CVMX_USBCXBASE 0x00016F0010000000ull
> -#define CVMX_USBCXREG1(reg, bid) \
> +#define CVMX_USBCXREG1((reg), bid) \

I really do not think you changed any "precedence issues" here at all :(


