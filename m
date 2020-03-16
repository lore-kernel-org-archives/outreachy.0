X-GM-THRID: 6803797661564534784
X-Received: by 2002:adf:9071:: with SMTP id h104mr35678917wrh.359.1584352530366;
        Mon, 16 Mar 2020 02:55:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls9082129wrr.4.gmail; Mon, 16 Mar
 2020 02:55:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv0w+h3nU05tpuM7TMCziKpSc404dxEEtuOSj6ZXtl9WErp3ZNRWmL6KYSFVFj89LcR1yZl
X-Received: by 2002:adf:fe4c:: with SMTP id m12mr30903286wrs.96.1584352528989;
        Mon, 16 Mar 2020 02:55:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584352528; cv=none;
        d=google.com; s=arc-20160816;
        b=c92AYXPnjhsbB3w6NMfiMnM5ReicNphuLo5e6XUJDfUx+E5RrJj3iCtOUGnw/02yYH
         lGwL7HvvqIz7hS2VUxMMxlvHEUr681BNt5qDzvzXmrBkLDt5stMeiqFtip1H2s4kIZ/m
         wasurG3jyMO0d0/+eG6HOY8cQPcUIxl8e6uJuiMjX4Tu8/KgsBiL2TfL+F2vAD8Hz4ai
         aXfFSOrBuFl9WONrOFryACfwEwXXi/az8r3U/eaGhsjCjJzj7YCjedCdfzxjxLzyy1F9
         y+258EH+CM3VKAca+gdXcJw3yi5Py7boKomZ4lncJHqJSRHqrfD0KVDWcWcuURlq7jCt
         31kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=sK/DUx/yx0i7xUyyg7vIeJD9NppF+fL4p4Egu4MIUrA=;
        b=Ba7A7HlfKOwWaCs6ZdCvoIMlyUeHxQiqB94w5snh3qwO534HKQZe5t4Hfo8k3aQG4l
         IHLLe31ah4o31ybn56ujB29nJklrr/hsYwjvmVNTXfKHWQwI+mCeBrweXY1p6PaCaJ8A
         tjfLBF634kh46aHFjoTAAxWPnUWyoiu/hnExdWMFWZj2XG5FT1i7qXcAG//InoREfSGb
         mVFyPv97JUobCZdmOuAIeVkvEmJ6ZxoUvi5ozfheOHGRg3P64AK75v0vb4/SuxlcMVdU
         asGH9g+kIYqo4E+eaK0PUTQ9+kUPMFXWMaVuqyoz9xDzpw0/qRQoSl1tC00OVvWM+Slk
         MlCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 209.85.208.194 as permitted sender) smtp.mailfrom=jhovold@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <jhovold@gmail.com>
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com. [209.85.208.194])
        by gmr-mx.google.com with ESMTPS id m2si873449wmi.3.2020.03.16.02.55.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 02:55:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 209.85.208.194 as permitted sender) client-ip=209.85.208.194;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 209.85.208.194 as permitted sender) smtp.mailfrom=jhovold@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: by mail-lj1-f194.google.com with SMTP id r24so17896330ljd.4
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2020 02:55:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=sK/DUx/yx0i7xUyyg7vIeJD9NppF+fL4p4Egu4MIUrA=;
        b=V45K8ba4yNFv6hb6X84zlot4AdHFqoJv/A6PPNI7j93sT4m6D9tc+qMBAWaAz/XDr+
         G8we8wTjkw3h6tz1w+uun/sMazSPu49cj2Qn+xX8iiDIA30cmGmE69ABHOJamm1urnOT
         mO6w7IYLgcx3s74jDPrIJT5DNGLt9pg9iUXZmcgM7+Hhs0Fr+CLnvodtCYkPAfgSrYc5
         1KGyhn4eM3ef7T3cx369M8cfewCLMnws477+wCEzkSiTY2bS+yvrJXX+/OTdNSiMJc4S
         uVQ6JbZcMhQ/aMllQZLkSbL+yb5bqn3f1SkmKQAxC8YcTOOSG3qKak8pXZjI5sNecFq0
         bK5A==
X-Gm-Message-State: ANhLgQ0Sqkd+c4NADG57xRY/y5BwUQmSlihVQL3oz6+xJj3xsb3dRtfZ
	+D4lCiru4D03Nk1BnpN2N6k=
X-Received: by 2002:a2e:3a11:: with SMTP id h17mr8334341lja.110.1584352528447;
        Mon, 16 Mar 2020 02:55:28 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se. [85.228.170.18])
        by smtp.gmail.com with ESMTPSA id 127sm3090473lfl.29.2020.03.16.02.55.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 02:55:27 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
	(envelope-from <johan@kernel.org>)
	id 1jDmSl-0002zz-E4; Mon, 16 Mar 2020 10:55:11 +0100
Date: Mon, 16 Mar 2020 10:55:11 +0100
From: Johan Hovold <johan@kernel.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, rmfrfs@gmail.com, johan@kernel.org,
	elder@kernel.org, gregkh@linuxfoundation.org, vireshk@kernel.org
Subject: Re: [PATCH v2 1/2] staging: greybus: gpio: improve bit fields
 formatting.
Message-ID: <20200316095511.GV14211@localhost>
References: <cover.1584131593.git.lu@pplo.net>
 <88c5f940009f75813f026ebad57fc8865b242971.1584131593.git.lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <88c5f940009f75813f026ebad57fc8865b242971.1584131593.git.lu@pplo.net>

On Sat, Mar 14, 2020 at 09:40:20PM +0100, Lourdes Pedrajas wrote:
> Fix the formatting of bit fields on structure gb_gpio_line, in order to
> not confuse them with indented labels.
> Issue found with checkpatch.

This is not an in issue found by checkpatch. Rather, you've found an
issue *with* checkpatch, which gets confused by these bit fields.

I'd just leave this as is, since there's nothing wrong with the code.

> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
> v2: log message correction
> 
>  drivers/staging/greybus/gpio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/gpio.c b/drivers/staging/greybus/gpio.c
> index 36d99f9e419e..50e93a393dba 100644
> --- a/drivers/staging/greybus/gpio.c
> +++ b/drivers/staging/greybus/gpio.c
> @@ -20,9 +20,9 @@
>  struct gb_gpio_line {
>  	/* The following has to be an array of line_max entries */
>  	/* --> make them just a flags field */
> -	u8			active:    1,
> +	u8			active: 1,
>  				direction: 1,	/* 0 = output, 1 = input */
> -				value:     1;	/* 0 = low, 1 = high */
> +				value: 1;	/* 0 = low, 1 = high */
>  	u16			debounce_usec;
>  
>  	u8			irq_type;

Johan

