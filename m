X-GM-THRID: 6474142163405897728
X-Received: by 10.46.80.25 with SMTP id e25mr180636ljb.26.1507389682570;
        Sat, 07 Oct 2017 08:21:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.17 with SMTP id u17ls163606ljd.9.gmail; Sat, 07 Oct 2017
 08:21:21 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDT85RNAW6jfBO93kKZjEHn+mHEiTavmIKNZXhPs6NBzI0Oy9zGfWTd+y3DNM9tpiFnYcKD
X-Received: by 10.46.23.70 with SMTP id l67mr181558lje.11.1507389681139;
        Sat, 07 Oct 2017 08:21:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507389681; cv=none;
        d=google.com; s=arc-20160816;
        b=AAOUmIXb13jG1IgSr0t4QywYKiB0Lop+vs/z1XwOsoLA2Li++urQBWHdvTzcpo6KXJ
         R2/xdbTiFiCEGG+2dSLc3mHY1UM9zUmKd82iyAh+sDBHtd9bavrDXPrkcLpZxhmgdUg8
         X397WgcxYLP3QijTtIwLfnHmN5YffiomquAL1wA0BoXsGotu19eGQmfEYdGx/O6MQOSh
         N3ZNHblpyJ67N/vQMYOueSinPDqzKX1zf3ElBMK0RYPZEKQi+CVVC5I1AZj1CLXhQpmX
         p/bO2HJWxHfjYIkDJaM+ZcGdh0BzEiqfltDQ1Gb5rIuQF3ae7mCXZolHVEygchwm9fPV
         EV3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=bE8Ij0TioheQFwf+XDaRl8dIcrRbvAZ0CyAlofh6w70=;
        b=d5UCt7xPAmF8FOa7r9uJ2PjpiDPiiJTr37+WKG+XqmLpP6EfNgU1eSFf8ny4WuWpxH
         Mc9F3npWE2FWDU70DR2wUu9fcPgPiF/mI9OdZuE23r/9SJ9OTOswwU4TF2/ufcAZ9rbJ
         9ASO4rU6z5PIo97xaD+fZxuIwhiiKa5sfP9hB2v5XIWGvExwvd1RxF/SDXF80C4TupSd
         89+k4NpLVmCHQ7+WpNI525W1vQUjjJ39Cw5Re4ASrzmW/gIBhKZD0VE5H8qjQf6bIQDO
         ZgK2bvLOZf06bTEj/C5vs0W699ehtnHt3TPQBH8txgv/45Zj1Av44bglj8kL6sX5L2Uz
         k+gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id i68si242711lfk.6.2017.10.07.08.21.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 08:21:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:58934 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1e0qum-0001DP-0W; Sat, 07 Oct 2017 17:21:20 +0200
Subject: Re: Need more info for this task
To: Aastha Gupta <aastha.gupta4104@gmail.com>,
 outreachy-kernel@googlegroups.com, daniel@ffwll.ch
References: <CAHXiS5_HmWS_7=uu0ZQUAXLoBd6h-n4HO-OJkd1u_vfB_1OaZg@mail.gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <22840d9c-8aca-fa0a-e547-f04dbeb434d5@tronnes.org>
Date: Sat, 7 Oct 2017 17:21:17 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAHXiS5_HmWS_7=uu0ZQUAXLoBd6h-n4HO-OJkd1u_vfB_1OaZg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 07.10.2017 14.18, skrev Aastha Gupta:
> "spi helpers, probably best put into spi core/helper code. Thierry
> said the spi maintainer is fast&reactive, so shouldn’t be a big
> issue."
>
> Can you explain a bit more about what needs to be done?

tinydrm_spi_transfer() is the big function.

It does the following:
- Optionally prepend a header to the spi message. No driver use this now,
   but will be needed when porting some of the drivers from staging/fbtft.
- Optionally set a different speed than max_speed. This is used to
   send commands at a lower speed.
- Set bits per word on transfer. This is used for emulation purposes.
   Pixel data is 16-bit, but not all spi controllers can do 16-bit
   (Raspberry Pi), so since SPI is big endian and memory is little endian
   (ARM) we need to swap the bytes. The driver can choose to swap the
   bytes before hand when touching the buffer to cut out a rectangle for
   instance and would thus set bpw=8.
- Swap bytes if bpw=16 and the controller can't do that.
- Split spi transfer into chunks of a certains size determined by
   tinydrm_spi_max_transfer_size().
- Debug print transfer info using tinydrm_dbg_spi_message().

The low hanging fruit here is removing the chunk splitting.
IIRC the spi core will split a buffer into max_dma_len chunks for the
spi controller driver to handle. The problem is Raspberry Pi and
drivers/spi/spi-bcm2835.c which has an upper bound check on dma transfer
length in bcm2835_spi_can_dma(). No other driver except one does this.
Without a Raspberry Pi and a display, this is difficult to verify.

Maybe automatic byte swapping could be done in the spi core, I don't know.

Another function is tinydrm_spi_bpw_supported(). It checks if a certain
bits per word is supported by the spi controller (master) driver.
This could be moved to the spi subsystem.

Then we have tinydrm_dbg_spi_message().
Maybe this can be done using tracepoints like in i2c:
- Documentation/trace/tracepoints.txt
- drivers/i2c/i2c-core-base.c __i2c_transfer()
- include/trace/events/i2c.h

The mi0283qt driver can be used without any display connected, which means
that you can verify some of the functionality by looking at debug messages.

Noralf.


