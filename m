X-GM-THRID: 6470705412124442624
X-Received: by 10.28.153.144 with SMTP id b138mr392690wme.28.1507175645250;
        Wed, 04 Oct 2017 20:54:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.142.79 with SMTP id n73ls40225wrb.3.gmail; Wed, 04 Oct
 2017 20:54:04 -0700 (PDT)
X-Received: by 10.223.138.151 with SMTP id y23mr2361013wry.21.1507175644434;
        Wed, 04 Oct 2017 20:54:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507175644; cv=none;
        d=google.com; s=arc-20160816;
        b=aVkC5Ffjv0DAGNC1n15eEFjlyLePjNbfj4EI+RGO96Lx32BgL0eV6tAHQMkhPpoxri
         W74aMcW+powjTERo2axckEQWs4TyXMxqRBoEnaJDihK/PL5FHvTJzfHJ7LnbswJB4BWA
         ZfK3I2GwWz62Kc3Zliec3ZWRkK9j//EQ2fLswOGEU2vLZsCNvpmhbBOHmadsOgrfTdzK
         5fvf6xvqGXFnRFxurRalp+mA71d3Sbn7FdORB7W6aYxMJlkueb/8VeRqyoG+rtmqitbh
         8rrtdc5fRond1P80eioVUKX++0E0zczq8glR0KOArxBe2103RnxGIz4pNK1ttqm5t3Hy
         NUSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=q6xNbxKW47Pg6bvNvwWvTxuTgQYJmVdXpSatx7YGV44=;
        b=xU86nW8OBBy6Jj9zv1DWo0ySsJ1TSmyXmz+Lk1cyFNENC9TFYn7BNKVQyrJ/IVKee/
         O+rgmuYQmg2VahyObttRB79+wbL5NdFjISc7fGt3yyqZSUwVQEwh+t2s1pFZRlMsfHxk
         Z9/QeMZSuJBjRr3/WSjvXpTXlkIaiqUE/xeheL+QBwleYUsQcum0aIhchU4xmBMAHwgk
         oQ7K7gAIToOU84X+0dTL+39kADxvk8Mf+4e3NA7N4h/t7mMsOLPQaTdJrFYaRCRIPNl9
         m/3KCTBBMlc1Z2l9Jb1sPq+uT3/8Q0TY/po+Xaa7oq8oqSGiBDY3JDRxrRORiK+Tpixw
         5IpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wu4BNCWT;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-wm0-x229.google.com (mail-wm0-x229.google.com. [2a00:1450:400c:c09::229])
        by gmr-mx.google.com with ESMTPS id l133si2089397wmb.3.2017.10.04.20.54.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 20:54:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) client-ip=2a00:1450:400c:c09::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wu4BNCWT;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x229.google.com with SMTP id b189so22274349wmd.4
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Oct 2017 20:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=q6xNbxKW47Pg6bvNvwWvTxuTgQYJmVdXpSatx7YGV44=;
        b=Wu4BNCWTfgRSjngwc1+bGuGpRgzoNLNvBBy1GvZZDx6YwuxnVQ9nAIcguspI0M8BRa
         Irnbk7Luf3zIcrAeQNLXxxu66Xeb9WhrwU/igMdKjeHrTMFly6NT86Osx0cNj7TL6uEE
         /nN7tRl8m15884tIivb9k7P0tkdk2mn8BNKP6xJ6jWE8KnYGGEg5t8pfQf+gf3C3zOKZ
         rWYV/tBA/IgGRo/ZgoyhxOaUFE277b4ZPv8sqahJDrtqt4+ucopEWLrWGCm38gcihOSw
         E+FP2epS2QkqRz3e4naN0ddKehMJ7R9uIfEQvT+x+K7UEJRuvf3nC8wcA8HeApb8eSm5
         FOpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=q6xNbxKW47Pg6bvNvwWvTxuTgQYJmVdXpSatx7YGV44=;
        b=h2t/+IEmBJWZZnwAdrLktf6c8BjHvqlJvKobWu/m2N9o5UqhB+KPtDLd/d/TbbKw0S
         ovB2mEdJXskn0aIWtccLooYa6uhlH2dZ9wSalJH2ikS2pl7nlDJ2US4AefMmr9PWmECz
         lm0H7Ou3JfSWjirUP4idJI7W4+AnB3Z8joKj6NvuKum8yo/WudKEpu9+sEKRmGPpxeBA
         75uRhXWsONa9kFk5y9C6OmInuDGkEOqovkReklQGqn1r7xFc0Fg3NlUIsimH6QnDEjxF
         GgL2VKbmBtjTXL3ffaIeG/l/bV82GZZ6BYbzzAP3JmvUfgekdUtcPwbROvwUD+5CIArS
         8AYQ==
X-Gm-Message-State: AHPjjUj/MapZG41oyeMfUzH07QL3msDft3iiRkXnug19Xr2Snc1fMR0c
	Hi0ogvlgcgLyLNjpUqqmf3dXtZ+6
X-Google-Smtp-Source: AOwi7QAJOG5HExMtFtJCyQMCuSI5H1N8FFcBjPOpPdd1kxQRR1DPCVJtoscvyJEXcJCH0ZYvLTi9jA==
X-Received: by 10.80.177.141 with SMTP id m13mr31577309edd.114.1507175644049;
        Wed, 04 Oct 2017 20:54:04 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([111.93.157.115])
        by smtp.gmail.com with ESMTPSA id i61sm391057edc.32.2017.10.04.20.53.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 20:54:03 -0700 (PDT)
Date: Thu, 5 Oct 2017 09:23:53 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>, daniel@ffwll.ch,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <20171005035350.GB28390@meghana-HP-Pavilion-Notebook>
References: <b87bff83-e9af-e095-2b58-8a0b3fb642e0@tronnes.org>
 <20170929122025.GA29498@meghana-HP-Pavilion-Notebook>
 <4b32d910-f0af-e9cb-feb7-4bc4174bc9c3@tronnes.org>
 <20170929141324.GA30107@meghana-HP-Pavilion-Notebook>
 <08dd8e6a-3028-098e-e193-9f408c6a9633@tronnes.org>
 <20171002074718.jinjkmc76igo2lkx@phenom.ffwll.local>
 <87y3ou55nx.fsf@intel.com>
 <3b0e7a80-fe29-1732-63c7-3a84568e617e@tronnes.org>
 <bf92a0e6-66e4-b830-aa32-b4c6d899f4de@tronnes.org>
 <623db97b-5b65-88d2-0ff6-69abd8602b0d@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <623db97b-5b65-88d2-0ff6-69abd8602b0d@tronnes.org>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 03, 2017 at 07:38:29PM +0200, Noralf Tr�nnes wrote:
> 
> Den 03.10.2017 18.02, skrev Noralf Tr�nnes:
> >
> >Den 03.10.2017 16.58, skrev Noralf Tr�nnes:
> >>
> >>Den 02.10.2017 10.13, skrev Jani Nikula:
> >>>On Mon, 02 Oct 2017, Daniel Vetter <daniel@ffwll.ch> wrote:
> >>>>Also adding Jani, who looked at the backlight Kconfig mess in the
> >>>>past.
> >>>I've even sent patches to fix some of the dependency mess, but the
> >>>problem is social not technical. The problem is that people think
> >>>"select" is more convenient than "depends" because they can just enable
> >>>a config that way, while "depends" would require finding and enabling
> >>>all the dependencies before the menu option even shows up.
> >>>
> >>>I don't deny, that's annoying. But it's also abuse of select, see
> >>>Documentation/kbuild/kconfig-language.txt:
> >>>
> >>>�� Note:
> >>>����select should be used with care. select will force
> >>>����a symbol to a value without visiting the dependencies.
> >>>����By abusing select you are able to select a symbol FOO even
> >>>����if FOO depends on BAR that is not set.
> >>>����In general use select only for non-visible symbols
> >>>����(no prompts anywhere) and for symbols with no dependencies.
> >>>����That will limit the usefulness but on the other hand avoid
> >>>����the illegal configurations all over.
> >>>
> >>>The real fix would be making finding and enabling dependencies
> >>>recursively more convenient, but I don't see that happening anytime
> >>>soon.
> >>
> >>If we don't select BACKLIGHT in drivers, we can end up with CONFIG_DRM=y
> >>and CONFIG_BACKLIGHT_CLASS_DEVICE=m.
> >>
> >>So we can either do:
> >>
> >>menuconfig DRM
> >>��� depends on (BACKLIGHT_CLASS_DEVICE || BACKLIGHT_CLASS_DEVICE=n)
> >>
> >
> >No, this was the thing that didn't work:
> >
> >drivers/gpu/drm/Kconfig:7:����� symbol DRM depends on
> >BACKLIGHT_CLASS_DEVICE
> >drivers/video/backlight/Kconfig:158:��� symbol BACKLIGHT_CLASS_DEVICE is
> >selected by DRM_RADEON
> >drivers/gpu/drm/Kconfig:164:��� symbol DRM_RADEON depends on DRM
> >
> 
> How about putting the dependency in the driver combined with IS_REACHABLE,
> but not in backlight.h as I first proposed, that won't work:
> 
> �menuconfig DRM_TINYDRM
> -��� select BACKLIGHT_LCD_SUPPORT
> -��� select BACKLIGHT_CLASS_DEVICE
> +��� depends on (BACKLIGHT_CLASS_DEVICE || BACKLIGHT_CLASS_DEVICE=n)
> 
> 
> struct backlight_device *drm_of_find_backlight(struct device *dev)
> {
> ��� struct backlight_device *backlight;
> ��� struct device_node *np;
> 
> ��� if (!IS_REACHABLE(CONFIG_BACKLIGHT_CLASS_DEVICE))
> ��� ��� return NULL;
> [...]
> }
> 
> But the IS_REACHABLE doesn't feel right.
> 
> Maybe the problem is putting a function in DRM that really doesn't
> belong there. How about calling it of_find_backlight() instead and
> put it in backlight.[hc]?

Wouldn't it make more sense to put the function in DRM ? Because all of
the callers are located in DRM and so I'd think it makes more sense to
put it in DRM along with the other _of functions.

> Noralf.
> 
> >>Or we can:
> >>
> >>-#ifdef CONFIG_OF
> >>+#if IS_ENABLED(CONFIG_OF) &&
> >>IS_REACHABLE(CONFIG_BACKLIGHT_CLASS_DEVICE)
> >>�struct backlight_device *of_find_backlight_by_node(struct device_node
> >>*node);
> >>�#else
> >>�static inline struct backlight_device *

I have one question. Why isn't your previous solution a good solution?
i.e IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE) which was part of v7

> >>Using the second one it won't be obvious to users why backlight doesn't
> >>work,
> >>they have after all enabled backlight (but as module and DRM builtin).
> >>
> >>So I suppose the first one is preferred.
> >>What effect will such a change have on an existing configuration where
> >>DRM=y and BACKLIGHT_CLASS_DEVICE=m? Will DRM become a module or will it
> >>be disabled?

Why would it be disabled in this case ?

Thanks and regards,
Meghana

> >>Noralf.
> >>
> >>_______________________________________________
> >>dri-devel mailing list
> >>dri-devel@lists.freedesktop.org
> >>https://lists.freedesktop.org/mailman/listinfo/dri-devel
> >>
> >
> >_______________________________________________
> >dri-devel mailing list
> >dri-devel@lists.freedesktop.org
> >https://lists.freedesktop.org/mailman/listinfo/dri-devel
> >
> 

