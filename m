X-GM-THRID: 6470825285154504704
X-Received: by 10.13.217.204 with SMTP id b195mr757534ywe.7.1507577489813;
        Mon, 09 Oct 2017 12:31:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.217.195 with SMTP id b186ls421310ywe.9.gmail; Mon, 09 Oct
 2017 12:31:29 -0700 (PDT)
X-Received: by 10.129.210.9 with SMTP id x9mr738603ywi.38.1507577489082;
        Mon, 09 Oct 2017 12:31:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507577489; cv=none;
        d=google.com; s=arc-20160816;
        b=fpVuOWzOYWAV1njEBG/loqvtFxeaUD3Uc+8qHal8a3WMt9sgOQ9c1HswBoUwxCkvVH
         2XDg7nZqzy9JDHHY1fbECanXUtXoQRVzPGGK6y083Kxu68txk8ZOxzMEI55BpO8p0r+E
         ao3UeVodI0TPXHi1RggHjPHrK4G7slkhnKkuHGRgwigERzL0DkUki1JCKknCtiYJ3WLu
         JAR0nvra0attK0eqk6VAK9Cvgdm59M9e4w+gm5tFaNddWQR+w4kZeO0eVs8QK96FboQN
         EoK3dk//Ha5U3HaFrVb8IjJVdalC4sPaPGamWhShcsLmrwAoD1nvPC8+ZaElYWcTKM3/
         Qo6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=vXjKRV7kklCOP7tqXXb/xvl1RmgoJWKYaGRnulRCbh8=;
        b=aExPB5ED/L13R8MtSUFayvSmuX7dPNQDoLxaJR+bq0rlAyA10vZY4pldDiGzKRH2nO
         eGLeuwB7dxnbJhxoFET2o4HfppEooRVMNOMd1gES8Ac/8vXe/3TXweIzFDB/YkadIpu0
         1LpxcAddVMFBXfl0p9klkv7kVeB6YX+TMtKhZNtv3aVKlqpVkfWmCoyXVl2ytDYVKCFs
         5hknUvN8CxijaS/uKgAeLEt1E128dQDutmopkp5coz0bH83BWn8tSJmnCD9MXse6Xa8Z
         qJ84kCpjcVqM+7jmD9NmHefnqajusXYMy5/+uQfVzoSgSpLvmxcKy/l3BOadAdZ+opKk
         5F1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UkvKg1v7;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::230 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-qt0-x230.google.com (mail-qt0-x230.google.com. [2607:f8b0:400d:c0d::230])
        by gmr-mx.google.com with ESMTPS id w81si474418ywb.30.2017.10.09.12.31.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 12:31:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::230 as permitted sender) client-ip=2607:f8b0:400d:c0d::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UkvKg1v7;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::230 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-qt0-x230.google.com with SMTP id i13so45195970qtc.11
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Oct 2017 12:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=vXjKRV7kklCOP7tqXXb/xvl1RmgoJWKYaGRnulRCbh8=;
        b=UkvKg1v7MWk7rOx45UAx2qkIJgNcW3X5ZBCTIFcVjw2D7KL4adJFKuU0sX0bhSAoIG
         rQkp4zPdA7MGSkYoKCt3lhVEP23CAqJeaVaXW7ZDH9iSgkGV4vQZXO//8d94QgTLcjIi
         h+z2QBqeT7h13VusnkGC4Q6+HnhCTVL99eL2s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=vXjKRV7kklCOP7tqXXb/xvl1RmgoJWKYaGRnulRCbh8=;
        b=ogfOGdhDQ64Rz3UIJNLmtBClfKNv0pu9Trc2pLBCqKGMlEHh0T0Lbtr1qQVCNbgBS7
         dL/v0+l1rqedwnnSVzOrP65gb5aq4xfqm9CQK+KjlmRHax3ffXibeItFXWw8mZuNjs2g
         N1MJMxipKiToIzemj45FuvtXd0Xg4hyQl3PjQPEfOrbSEQMrTIw1wzMZHIBVtoRLqKGC
         l11d/EEmIV5cZBVF/BG1LNCtQqFfXc12rlowdACXQezo/lQ1jEoaB2rsL0SxTR76uRAe
         i4dLU9bn06VAUCjIx3torH8AUEsxr+gcDObTQm4lyBL/7bLLcwjmrpGCPMp9LGEFKRJu
         p8Fg==
X-Gm-Message-State: AMCzsaX0rYopnGrfMZw4G7TLcgd5eVa+tCJICkEgzYBkxaFpBk0U3UiZ
	2fxHWu+rtMGaxvuWzOffHmzGcm8NC4U=
X-Received: by 10.37.179.195 with SMTP id x3mr480690ybf.113.1507577488521;
        Mon, 09 Oct 2017 12:31:28 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com. [209.85.223.173])
        by smtp.gmail.com with ESMTPSA id i184sm3440525ywc.77.2017.10.09.12.31.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 12:31:27 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id f202so6941933ioe.0
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Oct 2017 12:31:27 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAt5OZ2cO6R12t1Gfj6+butum23Qp1CGSsnznspYH/C92wPuG5dzVdIadZ/xtIUxPeq32JSVdmLZwwpcljXMr4=
X-Received: by 10.107.200.136 with SMTP id y130mr14435420iof.74.1507577487103;
 Mon, 09 Oct 2017 12:31:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.174.66 with HTTP; Mon, 9 Oct 2017 12:31:06 -0700 (PDT)
In-Reply-To: <20171009085957.nwfree4igdhiqtuf@phenom.ffwll.local>
References: <20171008140407.13927-1-harshasharmaiitr@gmail.com>
 <150747381515.24532.16488907175098177864@mail.alporthouse.com> <20171009085957.nwfree4igdhiqtuf@phenom.ffwll.local>
From: Sean Paul <seanpaul@chromium.org>
Date: Mon, 9 Oct 2017 15:31:06 -0400
X-Gmail-Original-Message-ID: <CAOw6vb+e4dkLPL11gdyN2RhV0w5OemkcKoGD7mMAVKA9RQBwoA@mail.gmail.com>
Message-ID: <CAOw6vb+e4dkLPL11gdyN2RhV0w5OemkcKoGD7mMAVKA9RQBwoA@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Replace *_reference/unreference()
 or *_ref/unref with _get/put()
To: Chris Wilson <chris@chris-wilson.co.uk>, Harsha Sharma <harshasharmaiitr@gmail.com>, 
	Sean Paul <seanpaul@chromium.org>, Jani Nikula <jani.nikula@linux.intel.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Intel Graphics Development <intel-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 9, 2017 at 4:59 AM, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Sun, Oct 08, 2017 at 03:43:35PM +0100, Chris Wilson wrote:
>> Quoting Harsha Sharma (2017-10-08 15:04:07)
>> > @@ -624,7 +624,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
>> >         ifbdev->preferred_bpp = fb->base.format->cpp[0] * 8;
>> >         ifbdev->fb = fb;
>> >
>> > -       drm_framebuffer_reference(&ifbdev->fb->base);
>> > +       drm_framebuffer_put(&ifbdev->fb->base);
>>
>> Whoops.
>
> Hm yeah, how did this happen? Does cocci really do this, or is that an
> accident from manually fixing stuff up?


Running the spatch from the commit message gives me the correct substitution:
@@ -627,7 +627,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
        ifbdev->preferred_bpp = fb->base.format->cpp[0] * 8;
        ifbdev->fb = fb;

-       drm_framebuffer_reference(&ifbdev->fb->base);
+       drm_framebuffer_get(&ifbdev->fb->base);

        /* Final pass to check if any active pipes don't have fbs */
        for_each_crtc(dev, crtc) {


Probably just finger slip since this is the last chunk before the
omitted selftests changes.

Harsha: the "better" way to omit the selftests without hand tuning the
patch would be to run the cocci spatch on i915 as normal, and then run
"git checkout -- drivers/gpu/drm/i915/selftests/" before committing.
It's dangerous to edit patches by hand, or to misrepresent a patch as
being the result of a cocci spatch when it's not.

Sean



> -Daniel
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

