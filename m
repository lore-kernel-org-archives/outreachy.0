X-GM-THRID: 6664414939270086656
X-Received: by 2002:a9d:7a44:: with SMTP id z4mr4555728otm.36.1551895085394;
        Wed, 06 Mar 2019 09:58:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3bb6:: with SMTP id k51ls684309otc.9.gmail; Wed, 06 Mar
 2019 09:58:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqzU71bgFLaseurogr//BlJbPYAPv/ApDcmgGn++UB9d9SGj4hjuFz1gQY2KhF2p7cAQ5vj0
X-Received: by 2002:a9d:7b55:: with SMTP id f21mr4671997oto.43.1551895084384;
        Wed, 06 Mar 2019 09:58:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551895084; cv=none;
        d=google.com; s=arc-20160816;
        b=OsAIqU4WSrma7DrwRZc7GSwQS8ng8rE9FhWXkk0LLWCmLYSMGYk8CoA0Qas0NAtWsf
         saxFhUf3QvFhPMzHKDyafQr8I5coYjX2jcEFGchwu5y0sQ4bTk0h8SnEcGSNVIWOvEDT
         OMAfQeSZIY8fIC+hMFlAMag3jlqSiZ6S1phFcOACF4ApcwjjCYMsG0YyQv0Ugh+BtWBW
         vF5zYbkSg0Hw9xrblzJm3usFqA/LvUmYJHB6LXjqxH5TjWSjuoOt3P+4oaLAZPhv8DYU
         CXmBhYlvHfQXJrCPj/5JMMgk0pj17sOvjGLoIVrXAp1xRts/3QmAb+dymBwcLFu/cR9Q
         M5Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZsULuohxEWAsnJcmexHLqmuiBU9njY7WE0PgxRsj6L4=;
        b=pa1rYs8MO3J+zABV8u79lQGaRASP4mD+RERA4yAtX2vBp/9lh+Z+zvdNaFpc94uhSy
         A2ZuhLVuiorZyz+JFZhju7yeEZ9EMqILXnUPRWyIU9tLZvUfbhSaFW3FwRUQ1cFz8o7q
         MViPZB9KVPznaGsmbeJzNqORCn4kuVE8PCI0iexm/uijdVP5fkhLWaHCuuQY+tYYDbVz
         12s591IQ8w245WGEOGplkzuBACkvGS+zlv1QqADRXvo9tTQudjfTIB/EEIypsGdnpyjn
         kAKpUuVV/nUYQFWc83XIzHjagq6kKAwSqXmuvr1Du/JgCgSP7I3ZPspg4kjM0tI23GG8
         V4og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jXvTRHwx;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l6si118829otn.5.2019.03.06.09.58.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 09:58:04 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jXvTRHwx;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E9FB420652;
	Wed,  6 Mar 2019 17:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551895083;
	bh=rc1D8g32BAGckNIziL2hjs6a5a6IU3vnQs69eds6xgM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jXvTRHwxvdfh+HaxGEkOsD0krIZUJYhKERtqWp3Ui/ifR0QEYnPYJBU9xjGA4+0Oe
	 h2/8NqWFtmSCshOia+H9jhE85Ti314ID3FzsOfVpxKwu2L3tjqJv4nA+wwllP3J7sl
	 7jc6crokKjSvnxFYSOGPJ1D4fBrKWsdlnPi3Zj/Q=
Date: Wed, 6 Mar 2019 18:57:58 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [RESEND PATCH] staging: fbtft: line over 80 characters.
Message-ID: <20190306175758.GA19537@kroah.com>
References: <20190306130624.GA12872@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190306130624.GA12872@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Mar 06, 2019 at 06:36:24PM +0530, Bhagyashri Dighole wrote:
> Fix coding style issues, which solves checkpatch.pl warning:
> "WARNING: line over 80 characters".
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/fbtft/fb_ssd1306.c |  3 ++-
>  drivers/staging/fbtft/fb_ssd1331.c |  3 ++-
>  drivers/staging/fbtft/fbtft.h      | 14 ++++++++++----
>  drivers/staging/fbtft/flexfb.c     |  3 ++-
>  4 files changed, 16 insertions(+), 7 deletions(-)

Why was this resent?

Is this v2?  If so, you always need to say what changed from the
previous version.

Remember, maintainers have no short term memory :)

thanks,

greg k-h

