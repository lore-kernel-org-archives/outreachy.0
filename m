X-GM-THRID: 6749590937101402112
X-Received: by 2002:a37:a416:: with SMTP id n22mr7329339qke.96.1571560982706;
        Sun, 20 Oct 2019 01:43:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:3809:: with SMTP id q9ls329088qtb.5.gmail; Sun, 20 Oct
 2019 01:43:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwOMJBK3gw+FFzWpfptiQ/kJ99pOGVdGPROjFR2fo04Ft56j2+xuflJwQez9ezbio/VQnnH
X-Received: by 2002:ac8:1871:: with SMTP id n46mr5935518qtk.240.1571560981907;
        Sun, 20 Oct 2019 01:43:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571560981; cv=none;
        d=google.com; s=arc-20160816;
        b=JyRFvrwWQEVPjn/wanXuYlpfi6bz1QayF6hFeo+JxAdNOi6vpW6ZS3/kiez/1lGIKB
         WrP3sxJMqWXN0Oe/xDkECrxCsKybq58tVVbN6oT+YNl/UxtqF3ol/wqhe7lg7BQYS5i2
         L4pQZoQioUfPjAT5b9orFr23HYxamkpIzEgFrUXbfDvv/WX+PMBNWeu3uL+Ru/A0yhIO
         gLWhlUIOBw9L9CIl4kozB0MOJ/gEncdXnQNsJEnady9cEbEJ24TNURMElzoVA6lR2Ddu
         diZpFTVxKrzP914JLB6PvjhwVi8eTkZ5eaDTgXTmskvUP5sSaoVOekZZaAhBKTTwl9lk
         HJIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=8ve0F6Zb0d1UlSpBzJIi9PNKnRIPYlHwMc0CuGxx60M=;
        b=uFwamIiNPn9EpOjOJjJKwycA8EP/GtwDUi1TfjLEJlWuN4OOXGqB/C2jstYerCPAqB
         /bmvLuT3dtOqbGHKytWlI0YLGb7P4Jfd532f+Z03rJ1rlmWjUwW8Bf8RJUdXq/eK9L3u
         t2r28hf/yw46gx0fcqb99aubc+wyHXaStv2wmVGjZUj8sUDYS/BLKb0R16ZYXeT2zomq
         kdFLoA/NfIXJPvLL0CnKkeYhQIbjmyPA1S1tFXJXNxMtqLyT+sPvrultp9hEFjpDdfGi
         YwCZ2s8+yZmhXOvNrLoIrBHgh8NoZmDq7uJOAq6ZMKRK+ohIJLmJpMoPtd4USCnU6dPW
         xHKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rzvaI31+;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id y41si498117qtb.5.2019.10.20.01.43.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2019 01:43:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rzvaI31+;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id y24so1065598plr.12
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Oct 2019 01:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8ve0F6Zb0d1UlSpBzJIi9PNKnRIPYlHwMc0CuGxx60M=;
        b=rzvaI31+IWMrlL1cYlTpzSlbvNI+iJndVLDFbAj+4hrsLI4DTuPd6q3jFQUnM0D0X1
         +TmohPiEqce9WkblPO4mtXJYh7Y/y2e9amIPkHTvs/0Xl4oa1k1zh28QgQMdTd+liaDK
         ZriwQjSVpWySHd6DtNVVzRz5jWHv5pWemaGHP/3ECCxOO0a7frWswfdjxvTDR9cl9Y8P
         WwibppXERtmvuDkLhhuLCsFhv3oekd3kX4WjKvewqZSDgGsKKsrzOQs8u5Iu5MqMdHvE
         DAF+1qjz01U76jo4awMEsiHR8XJWG//pnC53BH7BngWAd3QdNo/B0UJD8GKv115XB7ja
         O75g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=8ve0F6Zb0d1UlSpBzJIi9PNKnRIPYlHwMc0CuGxx60M=;
        b=IhD1sr/QTThllSNpYapn5bC8o0IW2MCV9eUTA4aFRkPPL3QReZrHy7afDbKvWGKjKF
         j0R5wQSzpQkZ5/DrWfMi+hV+5rQv64JIJHt2CoV5GFNOFuUCu0zl6zSyRgX2va3kneNR
         wbnwnSEc50WjFCD/x3NOwZwwaYj5UiMv6VbjyFOsC3tysWMF2E9ku1q1kQq+di4UWATZ
         46w3W7EfOOhh/BLDfq9Ftdom2TkNy/y7U2pgmfD/+Jui9ObuuKDqxbNCyhAxxRA7Lv+e
         J07ffniaolWe8Djv9Jqy2CTMyWJvAqOQYcecZYgUpl5dP42KLC5Qzup6Ui09JsAirDtR
         f/NA==
X-Gm-Message-State: APjAAAWD7iAXTLWi7KkvmFLXRSQvu/KLBxXsUyuTYlkwG/7DFwHOOGlM
	RwzPb3/tyr4aD9CFegROfnTA4+fSEl4=
X-Received: by 2002:a17:902:47:: with SMTP id 65mr18154199pla.94.1571560980958;
        Sun, 20 Oct 2019 01:43:00 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui ([154.79.227.113])
        by smtp.gmail.com with ESMTPSA id j25sm12771437pfi.113.2019.10.20.01.42.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2019 01:43:00 -0700 (PDT)
Date: Sun, 20 Oct 2019 11:42:46 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drm: remove unnecessary return
 variable
Message-ID: <20191020084246.GA2576@wambui>
Reply-To: alpine.DEB.2.21.1910192102410.5888@hadrien
References: <20191019071840.16877-1-wambui@karuga.xyz>
 <alpine.DEB.2.21.1910192102410.5888@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910192102410.5888@hadrien>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sat, Oct 19, 2019 at 09:04:31PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 19 Oct 2019, Wambui Karuga wrote:
> 
> > From: Wambui Karuga <wambui.karugax@gmail.com>
> >
> > Remove unnecessary variable `ret` in drm_dp_atomic_find_vcpi_slots()
> > only used to hold the function return value and have the function
> > return the value directly.
> 
> This patch applies for me, but with a huge offset.  What tree are you
> using?
> 
> Also, Greg won't apply this, because it's not targeting staging.  Is this
> for a specific outreachy project?
> 
> julia
> 

Yes, this is for the GPU subsystem project. The project has its own tree
here: https://cgit.freedesktop.org/drm/drm-misc/
I thought we should also cc the mailing list to project-specific patches.

wambui

