X-GM-THRID: 6752367287959814144
X-Received: by 2002:a17:902:fe89:: with SMTP id x9mr16853884plm.62.1572228855032;
        Sun, 27 Oct 2019 19:14:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:6204:: with SMTP id w4ls4860236pfb.6.gmail; Sun, 27 Oct
 2019 19:14:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxxRT1Xu/TjBn+K6+N0gKNOPkTON6m9YZZCWtlIlEC3otOtHI3UEPhS8UwmRkiLaBrkEmrA
X-Received: by 2002:aa7:8197:: with SMTP id g23mr17823594pfi.247.1572228854136;
        Sun, 27 Oct 2019 19:14:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572228854; cv=none;
        d=google.com; s=arc-20160816;
        b=EthaqEkjFMM+QMS1j2SJvGjWKKvBTdcgCrAvz0yisTdbbFiZHq1+0xKu5wQsliOK3S
         R3CRAZzRUSCN2B2XWwEjn2RkrD8XfsZJpzkqKkh9U49nLS5u2nU/wHkwW7na4S+XFM28
         xo5MqHQ1vJYZoQX1bAusRvYRBTkdziIJ+d+MWh/4gdrcyocHJsWJwJTwbW6Jpf/yU2EU
         KoXvfeeGVfwpsOJjG/sUb9n6Foo5k8+ECqa+sXgeuKQ9Q4WHRXoYxf1/AY8OvR55Pe0C
         MJWh93bjbn7hXfzeXUNso9PPQs+QUQUDZSq46OtMQzHGMBkHVMZbMMjCB8Rk5zY8IaCB
         8ojg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=a71dAf2aPMtkoGKBPmUwUOm5t5a21Uiv+U4/WotG504=;
        b=DHg7Irh8WlKmO2UR5hJRNvkr2c3zIRj37EGdJWjvAKSNKrH+O5Udjq0LForvpUHBAk
         u2mZYKqAN9V9mcxO7rbB1J7Wll7PXZqjxmBWi1J1FL0pnjS9cQA6j8EljIJpBerm8Vib
         FV6S9U0MTZHRIXErUNnG8QMxvpZDRqT13j5+0JPRLHG5Ovi+9tRuhoFxtXRxoeekYe2R
         bdPkwUWnkkAOX3n4kKKVjIOkZuqtss7529mizBiGQfR2EVy1ceOEr0xQxxkxUH4iHyo3
         PeuSVOP+PTNp7+PykCs+fqA+GwR8Pl49a0bWV5EXIzwAWp5coAatYDL03mXad6XosBez
         f9nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=SorquPtC;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id u13si552897pgf.4.2019.10.27.19.14.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Oct 2019 19:14:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=SorquPtC;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua1-x941.google.com with SMTP id q4so80093uap.8
        for <outreachy-kernel@googlegroups.com>; Sun, 27 Oct 2019 19:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=a71dAf2aPMtkoGKBPmUwUOm5t5a21Uiv+U4/WotG504=;
        b=SorquPtCBXWhu0nyfRrrcYCNUoV26m1KxfboGyGsFptYlq/EtFNqcOpOgtw+nSUlHq
         FEYbKZ4LajIKLXU6hMv+ZkU6LdNPWaEf+XAcOSNOLHG6xPOjAUzuN+b/ZGn2rC96U0ck
         Mo4kph6ur9eZwyJ7lP4WhEWpGKirfvXCJEsgJT4++N1HGPWOXEsb0hYO6JwyiZSkcFAc
         osSvOU7i/y9dkkw+CAxOjfhKFMyQZjG2PNZfCcP7uQQdaald5+Bz2RrySf6Y0y0o7qOG
         75xo4z8ko37NxipuYEP5Ir7igXLLrhYv4M27bBXElDhl73NYHzAAHXfs3LdySFSgGEIm
         NCLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=a71dAf2aPMtkoGKBPmUwUOm5t5a21Uiv+U4/WotG504=;
        b=kxeymz4k2j4xSGM0gQYch8Upz5SlAbFP0L4kV8gqDoCKMrX17VvCRDbr7vERD2uc3O
         bDRAY55YCupZJbTpMssJmnG8kI6PhgPCNJI6HcTQPzLfdDev+Ffw+hAlvWa9gDk7NVy1
         yG0m/zRzai3abigwo+CMXE+VKcygniAM+3MouChTTi7YZok3nrm/uiw37ILNwWJkqO9e
         BX5Pd0xca9hLedJw6J7OlFyJu51SQPfPv4zaQleJbWp8qDQbO6japBqwDBQB31hxzggL
         /bAytJ+BV1ySGrOc5Fj3ysQ2XnSqEIo15UMtHuE817odQ05ObB6Qehmgum4t4NAfa3vP
         WEug==
X-Gm-Message-State: APjAAAXXnRy2hgR596KadU5yNbaB+m6pHs/WxNGnF+fW5olEWn33xn+D
	7NsdoPlh2Neh+SYBv0vKXovENQ==
X-Received: by 2002:ab0:2319:: with SMTP id a25mr4447752uao.78.1572228852975;
        Sun, 27 Oct 2019 19:14:12 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id n23sm3171537uap.15.2019.10.27.19.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2019 19:14:12 -0700 (PDT)
Date: Mon, 28 Oct 2019 02:14:11 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>
Subject: Re: [PATCH] staging: greybus: Fix line ending with a '('
Message-ID: <20191028021411.zh22v3dvanbtynaz@linux-kernel-dev>
References: <20191027063338.GA27717@linux-kernel-dev>
 <20191027071240.GB1704509@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191027071240.GB1704509@kroah.com>
User-Agent: NeoMutt/20171215

On Sun, Oct 27, 2019 at 08:12:40AM +0100, Greg KH wrote:
> On Sun, Oct 27, 2019 at 06:33:38AM +0000, Frank A. Cancio Bello wrote:
> > checkpatch.pl message:
> > "CHECK:OPEN_ENDED_LINE: Lines should not end with a '('"
> > 
> > Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> > ---
> >  .../staging/greybus/audio_manager_module.c    | 32 ++++++++-----------
> >  .../staging/greybus/audio_manager_private.h   |  7 ++--
> >  2 files changed, 16 insertions(+), 23 deletions(-)
> > 
> > diff --git a/drivers/staging/greybus/audio_manager_module.c b/drivers/staging/greybus/audio_manager_module.c
> > index 2bfd804183c4..1b52dd116e38 100644
> > --- a/drivers/staging/greybus/audio_manager_module.c
> > +++ b/drivers/staging/greybus/audio_manager_module.c
> > @@ -70,9 +70,8 @@ static void gb_audio_module_release(struct kobject *kobj)
> >  	kfree(module);
> >  }
> >  
> > -static ssize_t gb_audio_module_name_show(
> > -	struct gb_audio_manager_module *module,
> > -	struct gb_audio_manager_module_attribute *attr, char *buf)
> > +static ssize_t gb_audio_module_name_show(struct gb_audio_manager_module *module,
> > +		struct gb_audio_manager_module_attribute *attr, char *buf)
> 
> Same thing here, your line is too long now, it's fine as-is.
>

Thank you one more time for your quick response.

frank a.

> thanks,
> 
> greg k-h

