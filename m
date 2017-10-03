X-GM-THRID: 6470705412124442624
X-Received: by 10.46.80.65 with SMTP id v1mr819638ljd.14.1507042742291;
        Tue, 03 Oct 2017 07:59:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.17 with SMTP id u17ls2421182ljd.9.gmail; Tue, 03 Oct
 2017 07:59:00 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBBf4CBNEmfazAIwwXjWoMNyt2GkF+hinF6rLdNIO8VejEAdU6H5XEJAmO2fJLGb0N+o3yO
X-Received: by 10.46.21.29 with SMTP id s29mr820592ljd.25.1507042740671;
        Tue, 03 Oct 2017 07:59:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507042740; cv=none;
        d=google.com; s=arc-20160816;
        b=ikEEZ/G9syUzKXQHvmIvXkAbCPhbqmUDSb4pNi27Xo/eGboanGLas5Y8ik0Wa12xhC
         SGJKVgNeKD5GANA02NOzN42/NHqWUvUqxoKF+aatWMG7S9FHWvHAcn+PusxTKT3p1lGH
         UiPqdFPrUPUf4z+o7KRGIGSrwb//PIqDrH5rLRNZacXPFIiEVqbDYYb3oSrngAMrdchG
         tOmOTl49Y2b/aeML9YN8ppouENwZyryl7oSw8q4o3zMn9as1xnrJLI0diKFP8DCQwtu+
         f8GgZMlYW3zHJUFnK5aaRrKNJ9Pw2rg0lHVeg4EB9YG9DzhvKFADBV+nK0w/mEE8y6mb
         UQmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:arc-authentication-results;
        bh=YMGzkyPllojE8bBXYgwZdaQkGyfNLbjuyvmT1mpmNCM=;
        b=tI08BvFP6uQ2fbqw2SA4r3DJbPoRK5t1xhRXM23rpMQ+5oSgmIs2Zj+w5ie0ZstN8a
         AQO4IzwTXOqx0KSH+2FWuG+Es5NnqICQVDfj3WF1iIMe0kL/k5NFp/IuojdvqRKwKrfZ
         NJgrxujH+Hg8TbWGmmOJOZe6IFfAa/RLs9sScbU1SZefXE8qYFtbsPdJIlLoeo98x4ZB
         RLWpaY3MYFN+FVewWShvKLT3lwJaOnpGeXoiNbzB6uH2owsW8ALGLmDpOu2ZR9may4UK
         6dOjzzhXQpxzgonpFRd3RUQZlGa4o39iAUGUjsrUeIl9n4XaB95J2rHkxh1mo5RtOMn8
         KiMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id i68si374456lfk.6.2017.10.03.07.59.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 07:59:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:65438 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dzOex-00051V-I8; Tue, 03 Oct 2017 16:58:59 +0200
Subject: Re: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
To: Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
 <e423bdc15522a0109bb98a479eac70409850c5be.1506589807.git.meghana.madhyastha@gmail.com>
 <20170928140836.ja5dcovqxsmbdnha@phenom.ffwll.local>
 <37f72839-d110-da4a-467a-cbae6cc0abc7@tronnes.org>
 <20170929032231.GB9859@meghana-HP-Pavilion-Notebook>
 <b87bff83-e9af-e095-2b58-8a0b3fb642e0@tronnes.org>
 <20170929122025.GA29498@meghana-HP-Pavilion-Notebook>
 <4b32d910-f0af-e9cb-feb7-4bc4174bc9c3@tronnes.org>
 <20170929141324.GA30107@meghana-HP-Pavilion-Notebook>
 <08dd8e6a-3028-098e-e193-9f408c6a9633@tronnes.org>
 <20171002074718.jinjkmc76igo2lkx@phenom.ffwll.local>
 <87y3ou55nx.fsf@intel.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <3b0e7a80-fe29-1732-63c7-3a84568e617e@tronnes.org>
Date: Tue, 3 Oct 2017 16:58:56 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <87y3ou55nx.fsf@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 02.10.2017 10.13, skrev Jani Nikula:
> On Mon, 02 Oct 2017, Daniel Vetter <daniel@ffwll.ch> wrote:
>> Also adding Jani, who looked at the backlight Kconfig mess in the past.
> I've even sent patches to fix some of the dependency mess, but the
> problem is social not technical. The problem is that people think
> "select" is more convenient than "depends" because they can just enable
> a config that way, while "depends" would require finding and enabling
> all the dependencies before the menu option even shows up.
>
> I don't deny, that's annoying. But it's also abuse of select, see
> Documentation/kbuild/kconfig-language.txt:
>
>    Note:
> 	select should be used with care. select will force
> 	a symbol to a value without visiting the dependencies.
> 	By abusing select you are able to select a symbol FOO even
> 	if FOO depends on BAR that is not set.
> 	In general use select only for non-visible symbols
> 	(no prompts anywhere) and for symbols with no dependencies.
> 	That will limit the usefulness but on the other hand avoid
> 	the illegal configurations all over.
>
> The real fix would be making finding and enabling dependencies
> recursively more convenient, but I don't see that happening anytime
> soon.

If we don't select BACKLIGHT in drivers, we can end up with CONFIG_DRM=y
and CONFIG_BACKLIGHT_CLASS_DEVICE=m.

So we can either do:

menuconfig DRM
     depends on (BACKLIGHT_CLASS_DEVICE || BACKLIGHT_CLASS_DEVICE=n)

Or we can:

-#ifdef CONFIG_OF
+#if IS_ENABLED(CONFIG_OF) && IS_REACHABLE(CONFIG_BACKLIGHT_CLASS_DEVICE)
  struct backlight_device *of_find_backlight_by_node(struct device_node 
*node);
  #else
  static inline struct backlight_device *

Using the second one it won't be obvious to users why backlight doesn't 
work,
they have after all enabled backlight (but as module and DRM builtin).

So I suppose the first one is preferred.
What effect will such a change have on an existing configuration where
DRM=y and BACKLIGHT_CLASS_DEVICE=m? Will DRM become a module or will it
be disabled?

Noralf.


