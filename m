X-GM-THRID: 6475592721521180672
X-Received: by 10.46.66.133 with SMTP id h5mr541745ljf.43.1508847400084;
        Tue, 24 Oct 2017 05:16:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.224 with SMTP id g93ls15114lji.13.gmail; Tue, 24 Oct
 2017 05:16:38 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+TvzJLcEYm/Abzo067VapbhiMFQx2BIwLygFCyrsF9n39dP1ZOCzUxHt9V5gEW6uTGH0FFx
X-Received: by 10.25.233.74 with SMTP id g71mr463230lfh.12.1508847398729;
        Tue, 24 Oct 2017 05:16:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508847398; cv=none;
        d=google.com; s=arc-20160816;
        b=xE9tUH+XL+IdUgq5AYt/PjM085FqhruJoVcrhBVLM4ex+ZhLK67gHzkhkELnfp0fQu
         BWkkRtghR1t6X2319ZH0VRUt45X9kOTk9jqdUh7rrSCbUdjQNz7eRQ5I9KP/hpTNcZy2
         RUAmKXTyXy8bCembkaGbEpXMYV5QXqldE6L2arajxHiXzs71R028RlcSnoxuFOb9mQJj
         3AvhN4yuERQp4Fgpj8NQVZzLN+UNfcr8LyWBtbjHOlsMvKEUC4Frbq6sUodbajEqO5iC
         SX0zESsPGMEjB3treHVnlyFQsFKv8rR1CG+nnxpbpKHtDd0NSB/NnfeQi5eT+iRhW6gP
         9UAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=eebeby3era+bCk8wKyNoG8ROy85Ns1ecHk4fVR7MV28=;
        b=kYhxwntrM0uZHpOZ2+kp2g/sBigYTyVIMgeq9w2oJmHLch4pCm5oU8iP0qMZ7Q4x9W
         QATAB2qnu/U8OUI/KXRCYinUbcDcWwEXKmeT5kI2bpFqdKohPoT78HH7qEnUHCMJYOOU
         If7ySiqtwc51Y0pbfmqlurPtgKSomYLKoZYx46JZorV+1rD5wNwFbmu3vIVXVbY5bigf
         dxgoYa3ttsOOpdgWt6sV+/l2Tjj27KDBkfdFDu0UP2ddR+Qv2Rqgr3YiOW41+DWzS6cx
         cKS6hooGoiUwFHLvt35P/bw2mAQ6r+kG8jtY70sVefZdjggViUjk5ih1rqWqe+D/Bj+w
         CvLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AuRCfrDv;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c0c::22e as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-wr0-x22e.google.com (mail-wr0-x22e.google.com. [2a00:1450:400c:c0c::22e])
        by gmr-mx.google.com with ESMTPS id g84si6037lfl.3.2017.10.24.05.16.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 05:16:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c0c::22e as permitted sender) client-ip=2a00:1450:400c:c0c::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AuRCfrDv;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c0c::22e as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-wr0-x22e.google.com with SMTP id p96so6553353wrb.7
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 05:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=eebeby3era+bCk8wKyNoG8ROy85Ns1ecHk4fVR7MV28=;
        b=AuRCfrDvUHrw96vrvIMl8qtTPcCIcyMgcUBUyuqzydAto4NyGFi5axsM9W7g/Kk85e
         IC/4zexge91Nr2Hu85bvQVyRvgGsOYopc2cg3XsIsXvZV4bFQAIB/AUTLv0KNF2oAQqw
         xoIKvkfgAqFB67Fdn9ZgYjItxOC8/eoqr2COo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=eebeby3era+bCk8wKyNoG8ROy85Ns1ecHk4fVR7MV28=;
        b=oXapVOE89H76Yc3f93belDt8Tuw9lZQrbJGx9eOOqG1AGfhJNiAUJ2Ewd1FySvGu6a
         ERNrFdkr1y6aBtnEdeV90K7zDweE4B9Pesx/v41F0kqdS1X0xJpmgTCmZKl+p6V8iWXG
         eY5KUA3XT/N26+X/nlqZsIxr4tP/xa6+sxdy2DlUkN+UmLETONvf2elb9W9h1jf8ZQZQ
         Juj52J5EmlRPmiX4YJejlDsDDp7rBPQoXV7uHTrHEUFIyFzOoUFBoV5rCatbUHF5r4Fx
         h2lHeDZbOEPntw3WepyOD6o45aEQ6IlUYZSdwi98PX/TwspLFMHuvj8tOBTHAypiciIj
         BpNg==
X-Gm-Message-State: AMCzsaUd0UY6FdVFBur+hT2OnRLkju5y3X0pJDFW9mR6kdkOp9UvzChk
	wylb4weRa4IqK+xa7IG4tA+nRM65X44=
X-Received: by 10.223.131.65 with SMTP id 59mr13158558wrd.66.1508847398407;
        Tue, 24 Oct 2017 05:16:38 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([62.168.35.108])
        by smtp.gmail.com with ESMTPSA id m64sm193074wmb.10.2017.10.24.05.16.37
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 05:16:37 -0700 (PDT)
Date: Tue, 24 Oct 2017 08:16:35 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Cc: Sean Paul <seanpaul@chromium.org>,
	Meghana Madhyastha <meghana.madhyastha@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	dri-devel <dri-devel@lists.freedesktop.org>
Subject: Re: [Outreachy kernel] [PATCH v13 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
Message-ID: <20171024121635.xoebjoxtvezdzgnu@art_vandelay>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
 <20171013202557.s7r2ec67sl646vtj@art_vandelay>
 <e2772dfa-f62b-619f-e186-79ea2819aea3@tronnes.org>
 <CAOw6vb+j+KFXaeRyog9sROvzxYDhgx+GP97bPokFNNO-By5Hvg@mail.gmail.com>
 <20171018171132.GA8116@meghana-HP-Pavilion-Notebook>
 <CAOw6vbKjhx7b72tAQLkv7fmyv_Q3wcK72PPTAzeQ=XHe_bNL1w@mail.gmail.com>
 <0aaf90a3-640c-e772-d0bb-17149ca52aa7@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0aaf90a3-640c-e772-d0bb-17149ca52aa7@linaro.org>
User-Agent: NeoMutt/20170306-97-7656f1-dirty (1.8.0)

On Mon, Oct 23, 2017 at 11:35:42AM +0100, Daniel Thompson wrote:
> On 20/10/17 18:20, Sean Paul wrote:
> > On Wed, Oct 18, 2017 at 1:11 PM, Meghana Madhyastha
> > <meghana.madhyastha@gmail.com> wrote:
> > > On Mon, Oct 16, 2017 at 02:26:00PM -0400, Sean Paul wrote:
> > > > On Fri, Oct 13, 2017 at 6:42 PM, Noralf Tr�nnes <noralf@tronnes.org> wrote:
> > > > > 
> > > > > Den 13.10.2017 22.25, skrev Sean Paul:
> > > > > > 
> > > > > > On Fri, Oct 13, 2017 at 04:11:43PM +0530, Meghana Madhyastha wrote:
> > > > > > > 
> > > > > > > Rename tinydrm_of_find_backlight to backlight_get and move it
> > > > > > > to linux/backlight.c so that it can be used by other drivers.
> > > > > > 
> > > > > > [apologies if this has been brought up in previous versions, I haven't
> > > > > > been
> > > > > > following closely]
> > > > > > 
> > > > > > I don't think "backlight_get" is a good name for this function. How about
> > > > > > of_find_backlight_by_name (since there's already
> > > > > > of_find_backlight_by_node)?
> > > > > 
> > > > > 
> > > > > I came up with that name modelled after gpiod_get() and gpiod_put() and I
> > > > > deliberately kept the of_ part out of the name like the gpio functions.
> > > > > gpiod_get() checks OF, ACPI and platform for gpios and calling it
> > > > > backlight_get() would keep the door open for other ways of connecting
> > > > > backlight devices in the future, other than Device Tree.
> > > > > 
> > > > 
> > > > Thanks for the background, Noralf! Apologies for stepping on top of
> > > > your previous reviews.
> > > > 
> > > > > I think of_find_backlight() would be better than *_by_name(), since
> > > > > 'backlight' is the common DT property name, so it wouldn't make much sense
> > > > > to require every caller to pass in the same name.
> > > > > 
> > > > 
> > > > of_find_backlight() sounds like a good compromise.
> > > > 
> > > > Sean
> > > 
> > > Are there any changes that need to be made to this patchset now ?
> > > 
> > 
> > I still prefer s/backlight_get/of_find_backlight/ and it seems Noralf
> > is Ok with that too. I think there were also review comments
> > surrounding the _put function?
> 
> How did this conversation result in a new patchset with the name changed?
> 
> Did I miss something.
> 

I asked the name be changed to of_find_backlight and that backlight_put be
removed.

Sean

> 
> Daniel.

-- 
Sean Paul, Software Engineer, Google / Chromium OS

