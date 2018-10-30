X-GM-THRID: 6615419425157808128
X-Received: by 2002:a63:2c8a:: with SMTP id s132-v6mr374504pgs.75.1540891684703;
        Tue, 30 Oct 2018 02:28:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:89d4:: with SMTP id n81-v6ls3281305pfk.8.gmail; Tue, 30
 Oct 2018 02:28:03 -0700 (PDT)
X-Google-Smtp-Source: AJdET5ddGnSpLrUhmDkgXGnCZh+BBMMILonjLIR5DWYbidUI79ASNhnexWJ6tTFc7Q0k2M5T/qVp
X-Received: by 2002:a63:e412:: with SMTP id a18-v6mr1040896pgi.139.1540891683947;
        Tue, 30 Oct 2018 02:28:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540891683; cv=none;
        d=google.com; s=arc-20160816;
        b=X2a0r1jzPj8reKLs4O7b0VpUeeKlf7L1XZqcvTG+CS9U1gp8gYf3EcBxUIDrhUzYRO
         N/4bHIkdUdfGGtmBpt2rsNugrO2UIVqiFcZxiIHy9G65NCbZEs6WId2UTYG9JwiuTmXN
         UoweaXKuaOrdLsmmoNy7PvmBEeYr2NObWQvtkd9BMf2MpfJsXw47ZouVlslcjy+lpwb8
         BgkjCEGLTFd3ZIJ0Hdqbp21lRqI9zqjE1ZaL4YHtC6rImTV+CS4ddRgZcSS9zWbWd0SE
         V3TYjV+9rzer8/GQKfx8iZur3QZ/2TPz8ivhdO/SL42e/v2VMV8zz0u41ASD5Mc5WdVo
         5n7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bFiQGNysJi9oBkOXC5hlI42xLnbkamPXFrXLV1Loee4=;
        b=ECaAuyL5gosdR2StDrPWcAXqb83uY0G2C1ySat/x8U0nglTOjF8nEqV0z2FZ7YvWEl
         fOMHK65wnfVqjLFB6s1G/5C/lbTHI22xpSCE5LLzgsJ28OY2HVcAGwf1UZVYeq7p4scr
         c/16nweR2XHlH+xko4cl+DARKKcLaLfU971Me/3enaczH298NT3oqXKOEpECm94TVWUG
         3IJqe4oYMBxytrIzHhbgDUS4tzrEDXu3AP7/n+qVZVM0NYTXsMQtYAKzIBkPsh7+wOS2
         macECXv5viHJGAYWfrJSeinz2JQYNsBCuUbhprTNgVom4E+vRLbL6HHibKyPS9LxiFEc
         aWGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WSaCmQ25;
       spf=pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ay5-v6si859425plb.3.2018.10.30.02.28.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 02:28:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WSaCmQ25;
       spf=pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 31FDC20827;
	Tue, 30 Oct 2018 09:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540891683;
	bh=8tTZIbVKn6Y7ZkvQaiVPIt70EE9VihBhGEEmsclzmC0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WSaCmQ25UgvqE4+QO0cT0e5alWqxhC/38jtAkU8fqV9CbbRLOMZ9rSP4247cZWE4d
	 UzG4opudmNSS1rrnnc0nP2pAzxwq+Wya1VSnvR8qM5UuTV3orsj+e9UqnTRx2paBPa
	 hfi3S88faflG569TQCSYf2xBEsk6ogTTQoN1AV5A=
Date: Tue, 30 Oct 2018 10:28:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Zach Turner <turnerzdp@gmail.com>
Cc: hwentland@gmail.com, manasi.d.navare@intel.com, daniel.vetter@ffwl.ch,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8192e: Add SPDX-License-Identifier - Style
Message-ID: <20181030092829.GA25103@kroah.com>
References: <20181023052559.GA12944@venus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181023052559.GA12944@venus>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Mon, Oct 22, 2018 at 11:25:59PM -0600, Zach Turner wrote:
> Add SPDX-License-Identifier tag to the start of the file. This is
> a coding style change which should not impact runtime code execution.
> 
> Signed-off-by: Zach Turner <turnerzdp@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
> index bc45cf098b04..8cfc2a1a5c48 100644
> --- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
> +++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
> @@ -1,5 +1,5 @@
> -/*
> - * Host AP crypt: host-based CCMP encryption implementation for Host AP driver
> +// SPDX-License-Identifier: GPL-2.0-or-later

Please read Documentation/process/license-rules.rst for the proper
string to put here (hint do not use "or-later" in it...)

thanks,

greg k-h

