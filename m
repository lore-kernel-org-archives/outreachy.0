X-GM-THRID: 6470705412124442624
X-Received: by 10.223.174.201 with SMTP id y67mr1646601wrc.7.1507021448110;
        Tue, 03 Oct 2017 02:04:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.229.10 with SMTP id c10ls2422013wmh.10.canary-gmail; Tue,
 03 Oct 2017 02:04:06 -0700 (PDT)
X-Received: by 10.28.24.207 with SMTP id 198mr2104732wmy.12.1507021446907;
        Tue, 03 Oct 2017 02:04:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507021446; cv=none;
        d=google.com; s=arc-20160816;
        b=VdeFK+eeNS7USHXtTh1lbeHYKynqzxYXgJBdPjVLxH0iQgUa0KLhq3qqBQAeWzeROV
         0bF9Ku2KBgoExNrddPYy48QqTYE4hq2TH7xB2mXNo/tchsbOGmT9Fuf92RT9AG42JYVl
         jpMKbr8Ko3AVsnNdx6xB/rKoztl8fYTiIgXSLyFyV3fGj7sAAEJglgNFmhD6IIgbur61
         uZsjJVHlv4D1o42cZaHu+8YzjVwovyUr+J7x18j65a8RR7C2GaQb6vE6xtm+pfajBqZp
         WB+ehViv0zQsgKEdLLsgJCz4tGWDXlIxbUfTZSzQkn/8W37gM14AM+vGVvg8xls9osqS
         UqBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=n+/S4FPKoFktXe9r6bR+G/asHhMANLIPWUQi9iTa9+M=;
        b=B6zhAb0cxAWDXHU0f9Yzk2nWQi3dpF1nTUyNUf+X1IV0aYsqoHDGFKGFP4Yfw2xTDC
         3XjgrFDr3r46BBmMTl1JAygpbi6483EyBYoiEVXoQeb37JjnbU1qw0ABekGcW6rMl7Fe
         1iUvtgpDTQDRH5y6hnV+S/okTy95xmKh3B5ucFRiUnFVkFZLNE01YInAwgaPg9TJceXe
         zKPnOCPJ0fJEWEdyqXSBgK6byo+PCnl+m2ezZEkjbe9xNriFn+BFugRO2rVtYMPrPPEx
         7ouNfTLrWcQFD5JEnRfn/kEFwud/yJn2RB+w9GcQLkJUk8NgK4P6Ce3uRuPlHAk9zZ4M
         6euw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=OS09C0/A;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id 191si1216475wmn.2.2017.10.03.02.04.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 02:04:06 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=OS09C0/A;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x242.google.com with SMTP id l10so2395386wmg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Oct 2017 02:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=n+/S4FPKoFktXe9r6bR+G/asHhMANLIPWUQi9iTa9+M=;
        b=OS09C0/A/AKDMYnIx6a5VO4dzYqdVqLXQ79jzCY/XDFNGpUzUDUSdLw+nSNDtPaDE7
         v/Bavtl4TrKfXBwGnm6GeSdu9hPwqwv5CNdgPBjzSImgswsLFtx7Bhi7Q4Qn3I79mmFJ
         mqsEvWO27mpMR/kvJLTVUyy/QHwRUZcgYnyHk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=n+/S4FPKoFktXe9r6bR+G/asHhMANLIPWUQi9iTa9+M=;
        b=RrFRXcGmRZa+msu/8v4qbbvcvVIO5j5azdVI6S5IxhHC/98r8j5ETR6Z5R3ASFBMNO
         5Iikci9BIln1qZJJbdBSFCDg0h6Pp/TpsZFt0Y+boTxYKGX1U/eMttVaxaqFzPdrX3yP
         Hb1ipd7ibh4j3KDc8/zSuc0H5AidVDCocF+UUcIogDdKdKdXQ0fuwxDp/qWAhvNm6l58
         B37cp0397SyHdWsDH3kmFomv871ZxXccx38bZ6xVGrgW5pqp4Pp/jdul00QM3FU0fHz/
         Oc6pB3UdcRF0/RMmuW/ll0Lm6+ueI2ntLZETeD9AGuVhMUtfV3eFckr1hoCVAN8iuyDb
         LLLw==
X-Gm-Message-State: AHPjjUiqsH/lF1xm83dZkqRUdWLdffV6SDIV6g2WGHJvx1kOuD/zXtGd
	cP4tnpCnhq4UcBLddd3D5T/gPQ==
X-Google-Smtp-Source: AOwi7QCauAQYSgWObOGTjZAPtePipj9O8I216VVLzfz5c/6mAX4kJJ/xKIq2rfb1jUmOQlwUoOW/WQ==
X-Received: by 10.80.142.216 with SMTP id x24mr23684196edx.285.1507021446226;
        Tue, 03 Oct 2017 02:04:06 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id j18sm896754edh.52.2017.10.03.02.04.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 03 Oct 2017 02:04:05 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 3 Oct 2017 11:04:03 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Daniel Thompson <daniel.thompson@linaro.org>
Cc: Daniel Vetter <daniel@ffwll.ch>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Meghana Madhyastha <meghana.madhyastha@gmail.com>,
	noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v7 1/3] backlight: Add
 IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
Message-ID: <20171003090403.5mpxu22lxu2f7x7g@phenom.ffwll.local>
References: <cover.1506878301.git.meghana.madhyastha@gmail.com>
 <7a6311819f8eea0b2845c25cca72324b25e63e13.1506878301.git.meghana.madhyastha@gmail.com>
 <527a54b8-d67a-651c-3326-4780b9f3cfc4@linaro.org>
 <87o9pp6i0p.fsf@intel.com>
 <20171003080341.wvdgtgw6uuwcpmj4@phenom.ffwll.local>
 <464023c9-9fef-1372-93df-a54f43524ebb@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <464023c9-9fef-1372-93df-a54f43524ebb@linaro.org>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Tue, Oct 03, 2017 at 09:51:49AM +0100, Daniel Thompson wrote:
> On 03/10/17 09:03, Daniel Vetter wrote:
> > On Mon, Oct 02, 2017 at 12:00:54PM +0300, Jani Nikula wrote:
> > > On Mon, 02 Oct 2017, Daniel Thompson <daniel.thompson@linaro.org> wrote:
> > > > So I'm coming to this patchset cold but can you explain *why* something
> > > > wants to call of_find_backlight_by_node() when there is no backlight
> > > > support enabled. Why isn't the code that called is conditional on
> > > > BACKLIGHT_CLASS_DEVICE?
> > > > 
> > > > The undefined symbol issue is a pain but to be honest I'd rather solve
> > > > the use of undefined symbols by avoiding declaring them; this making
> > > > them into compile errors rather than link errors.
> > > 
> > > Typically the kernel header files define static inline stubs of the
> > > functions when the actual functions aren't configured/built. The code
> > > using the functions looks the same regardless of the config option, and
> > > handles the -ENODEV or NULL or whatever returns from the stubs
> > > gracefully. With the inlines, the compiler can usually throw out much of
> > > the code anyway.
> > > 
> > > In this regard, the backlight interface is an exception, forcing the
> > > callers to wrap the code around IS_ENABLED(BACKLIGHT_CLASS_DEVICE), not
> > > the rule.
> > 
> > fwiw, I think it'd be great if we can move backlight over to the common
> > pattern, like everyone else. It's pretty big pain as-is ...
> 
> For sure, after Jani's mail yesterday I looked at the GMA500 driver and
> concluded I didn't want code related to backlight having to look like that!
> 
> Currently the three main patterns of use are:
> 
>  1. Standalone drivers simple depend on BACKLIGHT_CLASS_DEVICE,
>  2. Some compound drivers select BACKLIGHT_CLASS_DEVICE (the AMD DRM
>     driver is an example of this),
>  3. Other compound drivers perform heroics with the pre-processor.
> 
> The main reason I'm not just agreeing straight away is that, to adopt the
> static inline pattern for the whole API, we have to believe that #3 above is
> desirable. Given the size and scope of the compound drivers in #3 above, I
> don't entirely understand why they want to avoid the select.

People love to over-configure their kernels and shave off a few bytes. And
big gpu drivers might have backlight support, but not always need it (e.g.
if you run without a panel as e.g. a tv set-top-box). Same with e.g. a
driver that supports both OF/DT and pci to find its devices.

On the desktop gpu driver side we don't really subscribe to this idea of
making everything optional, hence select (mostly), except select is a huge
pain. On the mobile/soc gpu side, #3 seems to be the desired outcome.
Doing static inline helpers for backlights would make both easier (since
in the end for desktop you just get a distro kernel that enables
everything anyway).

So yeah, imo if you think backlight should be a Kconfig, then it should
have static inline dummy functions to make life simpler for everyone. Only
exception are pure driver-only subsystem code which aren't ever called by
anything outside of your subsystem. But since the point of the backlight
subsystem is to provide backlight support to other drivers (there's still
the dream that we don't offload this onto userspace, that just doesn't
work well) we really should have these static inline helpers.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

