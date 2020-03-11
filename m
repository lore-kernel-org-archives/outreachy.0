X-GM-THRID: 6802694026822680576
X-Received: by 2002:a05:600c:2947:: with SMTP id n7mr5901wmd.13.1583950509240;
        Wed, 11 Mar 2020 11:15:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls761181wme.3.gmail; Wed, 11 Mar
 2020 11:15:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtO81uE2CspVBCVegRRXuLJOcvcfdo3geVSvc6VY/ODb/Asw1Y90JDUgjIA1sIuRk4O8reS
X-Received: by 2002:a7b:c3cb:: with SMTP id t11mr15201wmj.154.1583950508017;
        Wed, 11 Mar 2020 11:15:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583950508; cv=none;
        d=google.com; s=arc-20160816;
        b=adoYDLb2ojYVqbBpkHuDOB/YkVjo+x+3os5JJZN5NpJRFy96PTo6X+JmKg7/qY1wks
         deb9O0k9Y+GVb+vQxDDRjRR1XS1jO5lIm3oVMaEFgPu3ag9xEWBCT8GRBvqWlwyWavj6
         FJfYX2mkBINQ5l+/de+9iQd76xy1qZHybRI4xNbWvPrUULKL6bfQLLj/ql9x/XZyfXQl
         8oos5Qr8nd0SnCVtsafuOyFmT0tYcISluoVNpX1SqiM9m0oIjErK0l9ikv8I6b7gw+C/
         z+0iQxKTaS7wMtqdNSbjG70DPfR4ZzSp3PCbXe4wazWP1L+grXMWSDB31qI7uQCAkzCP
         CqbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RPTiVXpN60uWmFu8wSrAlSU+RyYtGQ4ldZ1jURP5qCI=;
        b=zCr8GDULiFhElgI0GiP+uOkMod1XJifk7IgPN9nMrSBmVSMEBG2p2WnpuJZfja9U9d
         iZnTIl4UxyJqyDz2av+pyej+FDETJpim15se+WVgXzljIGIyFQnybyLYLm9wYsP1nufd
         vMObytf1jB2rY7FBLc0uojMUh4XTH79konv5r8P8A7ZT2FQJhmGLzNJXVE/4kipxjWdv
         xIS9aKA/gyVQ11GBDwytA8I7nhcsDlXiIkxkf5U+EABnxwZClXeRkfLRJJfhQVbALThW
         ibdgF8U6+bYhOyjOHy960Wp6Q3LGnwV1Q4EOj6J+JdhGs2vl1nCScV/Ou9AQobvmdRAC
         GtXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=e1yzcx93;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id n7si326157wmc.1.2020.03.11.11.15.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 11:15:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=e1yzcx93;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x544.google.com with SMTP id dc19so4009116edb.10
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 11:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RPTiVXpN60uWmFu8wSrAlSU+RyYtGQ4ldZ1jURP5qCI=;
        b=e1yzcx93dn45pn/MqlnpJa2X82LPpXYDH+r4WnMFzBEX4amUK4XKZt62kv+EqDhHpr
         aktDuD4Ct0qqMw7231Ii11FxQIRd3pxoeDLqruhQczoD0RlOVoS9Sp39auQOdi0MVJEt
         Sw8HzMEO6G8dWd8F3hSXlZu360LCkl558LHuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RPTiVXpN60uWmFu8wSrAlSU+RyYtGQ4ldZ1jURP5qCI=;
        b=OlfrJi1F4lNPvnrnxSm9qzcuxa8XkUcHgUCy3uVx1w55LOFOcjkD56IpzMo9GMdeEK
         Cb0PalDQF1lmy9nRgVNTb4kud3wKDDIEKT3uDFS3Vxl0VWF2xKXb0nARDmvQCWVdb5pX
         gAzftoWztLnHdbGYZgsi38gnTVBUBQmsxed048d8KlxDVWdaNLWLDIpYCiYspdLkXE+3
         ho1qCqM5N/jQRoWY/wvG8/9j8ZmOggeRqgOWfpcGDEP5xl8A8lpBSmokZl4jCgyj1BWK
         +o5vnJ0OQ8vhF8dM7nBAnuv+MRQS5wiqZ4weDE3CX1b1bOQPhrNwCIiKqU6SWLjlmEwp
         8JPg==
X-Gm-Message-State: ANhLgQ0E3O+qBLXCg5qGtpeawx21cXR447hWaOtLhaRCrh7hUbs9bBI3
	am4IvzMLc7Jgu9f6dSGNj3iQoQ==
X-Received: by 2002:aa7:c7c4:: with SMTP id o4mr4118227eds.134.1583950507736;
        Wed, 11 Mar 2020 11:15:07 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id v25sm4215413edx.89.2020.03.11.11.15.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 11 Mar 2020 11:15:07 -0700 (PDT)
Date: Wed, 11 Mar 2020 19:15:04 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	julia.lawall@inria.fr
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: r8192U_wx: use
 netdev_warn() instead of printk()
Message-ID: <20200311181504.GB17847@supernova>
References: <20200310212658.4075-1-lu@pplo.net>
 <20200310224317.0ea0a4c3@elisabeth>
 <20200310221018.GB2925@supernova>
 <20200310231505.5dfcdbbf@elisabeth>
 <20200310222844.GC2925@supernova>
 <20200311122253.7b57cb73@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311122253.7b57cb73@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 11, 2020 at 12:22:53PM +0100, Stefano Brivio wrote:
> On Tue, 10 Mar 2020 23:28:44 +0100
> Lourdes Pedrajas <lu@pplo.net> wrote:
> 
> > Indeed, also found dev_warn and dev_printk functions, but they are
> > similar, they expect a pointer to a network device.
> 
> Careful, those expect a more generic "struct device" instead, not a
> network device: a "struct net_device" embeds a "struct device".
> 
> About the representation of a "device", you can have a look at LDD3,
> chapter 14, page 381 (note: the book might be outdated, especially
> API-wise, but for general concepts I find it's still very actual):
> 	https://lwn.net/Kernel/LDD3/
> 
> a struct net_device is a complicated, horrible beast. Chapter 17 in
> LDD3 has some notes, but a quick look at:
> 	https://www.kernel.org/doc/htmldocs/networking/API-struct-net-device.html
> 
> should be enough to give you an idea. You don't need to understand all
> the details now, of course!
> 
> -- 
> Stefano
> 
Thank you, I'll read that :) About the patch, pr_warn() is better this
time.

