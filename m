X-GM-THRID: 6475592721521180672
X-Received: by 10.46.41.200 with SMTP id p69mr568368ljp.37.1508859267618;
        Tue, 24 Oct 2017 08:34:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.85.202 with SMTP id g71ls93273lje.5.gmail; Tue, 24 Oct 2017
 08:34:26 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+STdPSxjGKzpEU1U/mmeMFbSybdKstU7DPpzupRv0x8NXGvuUTOSkPdwHChG+qqp3BTJz9m
X-Received: by 10.46.101.7 with SMTP id z7mr552930ljb.38.1508859266420;
        Tue, 24 Oct 2017 08:34:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508859266; cv=none;
        d=google.com; s=arc-20160816;
        b=Dc6+ZxOmQvTr6ciYYGO7rZ+RGxiY4P850i3NW1Z1cOz+S8HPnLobppxQ/72lASon12
         FpcA4JS7OS+4Gdnw+faTYzkuMspIT2/WfK+bj0q4h6EY71FLnOJLRQuLdIa6axO/4AGN
         h0KOEHINgnugJ8di4KrEwjoPA7/2/ruGGvR2iyXhhkJQTYPhE6rPsEQR4laj2Xpg06Ay
         Bq2LWu+nMAbkGw+EMayVC56QRIx0MSdlZzs8TC1UgxlgKKWWeQxzG37z0GmMQEeSu8qZ
         cJvXVwPAY9grqBm50BvX4GAdaKsMFhFOwcLwvyTf6ikGuDnDLbkbEDzNtEjame7hRv78
         hIew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=iIrM+4GIuaOWPRTAE4Zu14e8ME61qQzmHxOSxuKdj0s=;
        b=R10oHPXtT5//OFAzwYFCyGXXWHLyj4fwJIEmK83lSv7+C/VygJiiEltLti4I2g2Db0
         Tu0BlXy29HnPR+b4CTC9qxDQbV/fKFeE3wu4zefQvLIPE11sztjiJ4UNZIzvOdRgcMpU
         3gQEE6cpgne/UUEaGnckJ1f7LszxvXak5Hu4rzCsM5rJaVsC7zpbbFxxLSw+LVycWvD1
         8lt7OfIN5y8vIve8EHniFXSpWVJSCsE4KnHSDTPL2UjcwZ7x/jPIMt4s4/G/dFsCX5co
         hxGtIJAxXiIthxyagdGpOJa8yymHnZ6//rHpcvkqQZddpYzfFFsATJqcaLjlLT8+ro0L
         3lhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UQ+i8Dvi;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c0c::236 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-wr0-x236.google.com (mail-wr0-x236.google.com. [2a00:1450:400c:c0c::236])
        by gmr-mx.google.com with ESMTPS id g190si17242lfg.4.2017.10.24.08.34.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 08:34:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c0c::236 as permitted sender) client-ip=2a00:1450:400c:c0c::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UQ+i8Dvi;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c0c::236 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-wr0-x236.google.com with SMTP id r79so21132261wrb.13
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 08:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=iIrM+4GIuaOWPRTAE4Zu14e8ME61qQzmHxOSxuKdj0s=;
        b=UQ+i8DviC7DxmBewdDusyMx7Oh4fccrb7sfXgTuvA197WHaGHF0Vh5Am3ML2omwEQs
         0qLjgVqS6gABElDBnrp/bv+QAnbTj9eABSvEPbvMrfS1TBdouUHo6tOwLh+OUY6wCLA9
         J7bkC2EuLtPUNkW4V3nz4Hvk0zj/CMhiqQlKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=iIrM+4GIuaOWPRTAE4Zu14e8ME61qQzmHxOSxuKdj0s=;
        b=bsomOSajRnUTqG6xO0+ktBJw/CTZ1gqXN6pIzT09P5bIqZ1so6LGplwAVS163cYivL
         jqtfiLlB29vRXm2fylo5wP7Qd10D5XHZZPggPFuzC/HLiiUtlm7OvV3OIEK5F5+/K0pb
         47xzUqkmz7JvDpyx4GymxF3ZugAovvsYRUwb7fi4OZmgxw44IkRNUwxr6WRc6hN5iisJ
         liJxcc/l7RTBtwN70S7ken8TnwgcX8DcIw7xTCa+Oq20ZPe6j9XZ4JMW8nCcsmmWOSn3
         v/ihIMRE0WRmHXjz8a9E5nFyDzcosoV9JgwKaLVlKxfoVxZGQrCgPpT5rOJoZ4IBmnbK
         I6EA==
X-Gm-Message-State: AMCzsaX+d7tai4N8fM/vNafEupXE7UVm+jHzxfFrVHWipYcY67vh7QQl
	G7ezJGHAWIpVJ55pKJSbDSUUnw==
X-Received: by 10.223.134.154 with SMTP id 26mr15623265wrx.137.1508859266039;
        Tue, 24 Oct 2017 08:34:26 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([62.168.35.106])
        by smtp.gmail.com with ESMTPSA id b9sm662318wrf.59.2017.10.24.08.34.24
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 08:34:25 -0700 (PDT)
Date: Tue, 24 Oct 2017 11:34:24 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Cc: Sean Paul <seanpaul@chromium.org>,
	Meghana Madhyastha <meghana.madhyastha@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	dri-devel <dri-devel@lists.freedesktop.org>
Subject: Re: [Outreachy kernel] [PATCH v13 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
Message-ID: <20171024153424.dxafhnd3f33zjijx@art_vandelay>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
 <20171013202557.s7r2ec67sl646vtj@art_vandelay>
 <e2772dfa-f62b-619f-e186-79ea2819aea3@tronnes.org>
 <CAOw6vb+j+KFXaeRyog9sROvzxYDhgx+GP97bPokFNNO-By5Hvg@mail.gmail.com>
 <20171018171132.GA8116@meghana-HP-Pavilion-Notebook>
 <CAOw6vbKjhx7b72tAQLkv7fmyv_Q3wcK72PPTAzeQ=XHe_bNL1w@mail.gmail.com>
 <0aaf90a3-640c-e772-d0bb-17149ca52aa7@linaro.org>
 <20171024121635.xoebjoxtvezdzgnu@art_vandelay>
 <f1b206d9-50e8-830b-6f50-5e360098db16@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f1b206d9-50e8-830b-6f50-5e360098db16@linaro.org>
User-Agent: NeoMutt/20170306-97-7656f1-dirty (1.8.0)

On Tue, Oct 24, 2017 at 01:51:45PM +0100, Daniel Thompson wrote:
> On 24/10/17 13:16, Sean Paul wrote:
> > On Mon, Oct 23, 2017 at 11:35:42AM +0100, Daniel Thompson wrote:
> > > On 20/10/17 18:20, Sean Paul wrote:
> > > > On Wed, Oct 18, 2017 at 1:11 PM, Meghana Madhyastha
> > > > <meghana.madhyastha@gmail.com> wrote:
> > > > > On Mon, Oct 16, 2017 at 02:26:00PM -0400, Sean Paul wrote:
> > > > > > On Fri, Oct 13, 2017 at 6:42 PM, Noralf Tr�nnes <noralf@tronnes.org> wrote:
> > > > > > > 
> > > > > > > Den 13.10.2017 22.25, skrev Sean Paul:
> > > > > > > > 
> > > > > > > > On Fri, Oct 13, 2017 at 04:11:43PM +0530, Meghana Madhyastha wrote:
> > > > > > > > > 
> > > > > > > > > Rename tinydrm_of_find_backlight to backlight_get and move it
> > > > > > > > > to linux/backlight.c so that it can be used by other drivers.
> > > > > > > > 
> > > > > > > > [apologies if this has been brought up in previous versions, I haven't
> > > > > > > > been
> > > > > > > > following closely]
> > > > > > > > 
> > > > > > > > I don't think "backlight_get" is a good name for this function. How about
> > > > > > > > of_find_backlight_by_name (since there's already
> > > > > > > > of_find_backlight_by_node)?
> > > > > > > 
> > > > > > > 
> > > > > > > I came up with that name modelled after gpiod_get() and gpiod_put() and I
> > > > > > > deliberately kept the of_ part out of the name like the gpio functions.
> > > > > > > gpiod_get() checks OF, ACPI and platform for gpios and calling it
> > > > > > > backlight_get() would keep the door open for other ways of connecting
> > > > > > > backlight devices in the future, other than Device Tree.
> > > > > > > 
> > > > > > 
> > > > > > Thanks for the background, Noralf! Apologies for stepping on top of
> > > > > > your previous reviews.
> > > > > > 
> > > > > > > I think of_find_backlight() would be better than *_by_name(), since
> > > > > > > 'backlight' is the common DT property name, so it wouldn't make much sense
> > > > > > > to require every caller to pass in the same name.
> > > > > > > 
> > > > > > 
> > > > > > of_find_backlight() sounds like a good compromise.
> > > > > > 
> > > > > > Sean
> > > > > 
> > > > > Are there any changes that need to be made to this patchset now ?
> > > > > 
> > > > 
> > > > I still prefer s/backlight_get/of_find_backlight/ and it seems Noralf
> > > > is Ok with that too. I think there were also review comments
> > > > surrounding the _put function?
> > > 
> > > How did this conversation result in a new patchset with the name changed?
> > > 
> > > Did I miss something.
> > > 
> > 
> > I asked the name be changed to of_find_backlight and that backlight_put be
> > removed.
> 
> Quite so.
> 
> Sorry, I was filtering my mail way too fast and misread your comment as "I
> still prefer backlight_get" :-O

I can certainly relate to that problem! I'm happy we got this sorted out :-)

Sean

> That was my problem with reading, not your problem with writing.
> 
> 
> Daniel.

-- 
Sean Paul, Software Engineer, Google / Chromium OS

