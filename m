X-GM-THRID: 6465205340686254080
X-Received: by 10.129.120.21 with SMTP id t21mr3111079ywc.96.1505931203030;
        Wed, 20 Sep 2017 11:13:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.98.8 with SMTP id w8ls174821ywb.0.gmail; Wed, 20 Sep 2017
 11:13:22 -0700 (PDT)
X-Received: by 10.13.202.5 with SMTP id m5mr3502007ywd.190.1505931202120;
        Wed, 20 Sep 2017 11:13:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505931202; cv=none;
        d=google.com; s=arc-20160816;
        b=VFP/y3rv6wvU4GRZRNxJurm03M159tdify1uzr4wpxL0vBNAk+N0mqbxC2QMOJQoil
         9hA0/iseCceU78RJkjeYPADFQykKwvq6dzfky8dUIhIg+eXRS9lISaq9vA05GD5Un85q
         IiUTkSF8BLpbhMslY2E/v2JK3GazJ/mL8zuPd3rtW4rwjGKM0haUwxlyl9jGxSYDAcq1
         ssWm/X1axbrb2M1gWEV9qqe5GucgFCWM1I5N0EZgyADUJCfMCVzWv3TFj7vKn8fHN842
         GDbZgpZNhqovYms+05oQM+qtzIXYZNLEVDJJ69AE+6/iUazotA13WjMD/l6wYWcKNadW
         ySWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=DfnyemQTR02I5eqPFHYCKYGR8pMqEwERW2RWvWhRbhk=;
        b=b2d63XMFPl9YI2kv40/pDCSmBqC4DHp6AI19zpXQGP0jwfZi9b1nZ/FzlUwp8AaekP
         F4LJKeopW98ndNhAI/ngzUi6k4jsXXdlSSjW9nmAJPtOz3qkrvYPImIcsjGz7duc9nWl
         sgpd6VB+SBnOZf+JZlm2+Ant2xvCpVk2TZwGcJAM+jGStbxwmMuug3B+fZkPP3ivQr/E
         HIWbJq1KphrF4JHv2q9N3L4tq1HSuS3rbd/5OL9uLZQ1bbX3YymkgqtZPJCnwDUXeu1s
         6uNZ+47iwi31UICazcuzK7NDBX8SV8nKGFrinUizeIb01jzwM8mlwFud0VYZy36ad0In
         mnfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=A7ZxWX78;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22d as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-yw0-x22d.google.com (mail-yw0-x22d.google.com. [2607:f8b0:4002:c05::22d])
        by gmr-mx.google.com with ESMTPS id v85si116915ywc.0.2017.09.20.11.13.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 11:13:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22d as permitted sender) client-ip=2607:f8b0:4002:c05::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=A7ZxWX78;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22d as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw0-x22d.google.com with SMTP id o143so2475430ywd.12
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 11:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=DfnyemQTR02I5eqPFHYCKYGR8pMqEwERW2RWvWhRbhk=;
        b=A7ZxWX78vxX2KvhmV7Q+JmeZ/ssC2RVMrVW62a5BHnsvYLLmz39JZlTTmEaIE3fNwV
         URvKqX8fUuB2ZB54Dc3B+TUS5gpIFRc133a+O01Lhtt/MT28R3nUl4I6G05kkiMl/fUv
         hdGqZXnog72xejdzzZbnovWFcdYFDHQP8OuM8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=DfnyemQTR02I5eqPFHYCKYGR8pMqEwERW2RWvWhRbhk=;
        b=X594BTs/r9toaTGB+SZKdgjWgjlE529YdN2B4NyToVf1QOrhdP1/AmBOjS5vPJEJR+
         IvU9z7NPoZdjProgyW9vZI3BL/XpLvkNqmWkd8rZ/SL3g2zk7XrC8JWFFzFizZc8j1H7
         3Ywg+X2VcyajbjKMYl/WqvSgOJWEtI1YUVqwNOwMPMZJheNfB7et8ts0N5iBTKWQ7ssO
         Vum8TvyPiF3SLuqQcUgGzLcF8nllsNyP045c8YgP6NPO80kSy9RJFyLlsJ0Pnh1+qjst
         cDLCXwMP+DGZvJgqPlnrT4CSAzxdcIx0bcJbfLoCpJAPe5jIBWNZ87lfnyhqg0a42HBI
         assw==
X-Gm-Message-State: AHPjjUg+E+rUj36O5YkTQsoh6zR4Vy5DbC0Wt6A21Dnxd44ZYFdsMZg9
	R+8S8wV79TNwou9aEyHm9NrDvbzRHp4=
X-Received: by 10.129.182.15 with SMTP id u15mr4739958ywh.348.1505931201646;
        Wed, 20 Sep 2017 11:13:21 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com. [209.85.223.176])
        by smtp.gmail.com with ESMTPSA id c11sm982674ywb.89.2017.09.20.11.13.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 11:13:21 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id k101so5552182iod.0
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 11:13:21 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAdF4+UeiLGZFwqle1xjdZS/ms60NuY3e9YVEnszRtJy3JXSafhjEtcNYj/hmWphoR3FqJpCpI6+0KdM1ssC+Q=
X-Received: by 10.107.157.129 with SMTP id g123mr8605908ioe.182.1505931200628;
 Wed, 20 Sep 2017 11:13:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.156.195 with HTTP; Wed, 20 Sep 2017 11:13:00 -0700 (PDT)
In-Reply-To: <20170920174828.GA25248@dvetter-linux.ger.corp.intel.com>
References: <cover.1505296813.git.meghana.madhyastha@gmail.com>
 <alpine.DEB.2.20.1709131352550.26484@hadrien> <87wp52iwl0.fsf@nikula.org>
 <1505775934.6581.6.camel@intel.com> <20170920174828.GA25248@dvetter-linux.ger.corp.intel.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Wed, 20 Sep 2017 11:13:00 -0700
X-Gmail-Original-Message-ID: <CAOw6vbKm-Nkc8vvXSyJSSTDCXtx8Lfp__TeKTMrY-Lb=g1W34g@mail.gmail.com>
Message-ID: <CAOw6vbKm-Nkc8vvXSyJSSTDCXtx8Lfp__TeKTMrY-Lb=g1W34g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] GPU: DRM: drm_agpsupport.c: Code cleanup
To: Daniel Vetter <daniel@ffwll.ch>
Cc: "Vetter, Daniel" <daniel.vetter@intel.com>, 
	"meghana.madhyastha@gmail.com" <meghana.madhyastha@gmail.com>, 
	"jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>, 
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 20, 2017 at 10:48 AM, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Mon, Sep 18, 2017 at 11:05:39PM +0000, Vetter, Daniel wrote:
>> On Wed, 2017-09-13 at 15:58 +0300, Jani Nikula wrote:
>> > On Wed, 13 Sep 2017, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > > On Wed, 13 Sep 2017, Meghana Madhyastha wrote:
>> > >
>> > > > These patches fix the checkpath warnings and errors
>> > > > in drm_agpsupport.c
>> > > >
>> > > > Meghana Madhyastha (3):
>> > > >   GPU: DRM: Moved EXPORT_SYMBOL so that it immediately followed
>> > > > its
>> > > >     function
>> > > >   GPU: DRM: Replace "foo * bar" with "foo *bar"
>> > > >   GPU: DRM: Remove assignment in if condition
>> > > >
>> > > >  drivers/gpu/drm/drm_agpsupport.c | 41 ++++++++++++++++++++++--
>> > > > ----------------
>> >
>> > Please try 'git log --oneline -- drivers/gpu/drm/drm_agpsupport.c'
>> > and
>> > observe the commit subject prefix used. Please try to follow the
>> > style
>> > in the area you're changing, not some generic rules.
>> >
>> > > >  1 file changed, 23 insertions(+), 18 deletions(-)
>> > >
>> > > Are the DRM people going to pick this up?  Because Greg will
>> > > not.  If you
>> > > do something that is outside staging at a mentor's suggestion it
>> > > could be
>> > > good to make explicit that the mentor will make sure that the patch
>> > > will
>> > > be applied.
>> >
>> > I'm not generally fond of pure checkpatch fixes, but patch 3 alone I
>> > want enough to pick them all up. ;)
>> >
>> > But please do submit the series to dri-devel@lists.freedesktop.org.
>> > As a
>> > matter of policy, we don't apply patches not posted to our subsystem
>> > mailing list.
>>
>> Yeah, stuff needs to go through dri-devel when it's a drm patch (or
>> anything else in drivers/gpu). That's why we don't recommend it for the
>> very first patch (I guess I should update the text a bit, but I'm
>> travelling and don't have login creds nearby).
>
> Hm, not all of these landed. Haneen, can you pls resend the remaining
> patches with dri-devel (and maintainers, per scripts/get_maintainer.pl) on
> cc?

Looks like we got our wires crossed! I just applied v3 of this set, so
we're allll good :)

Sean

>
> Thanks, Daniel
>
>
>> -Daniel
>>
>> > The scripts/get_maintainer.pl script will help you with the lists,
>> > but
>> > do use discretion. The script is sometimes misguided, adding *way*
>> > too
>> > many lists and people. Just the main subsystem list and
>> > supporters/maintainers are usually enough.
>> >
>> >
>> > Thanks,
>> > Jani.
>> >
>> >
>> Intel Semiconductor AG
>> Registered No. 020.30.913.786-7
>> Registered Office: Badenerstrasse 549, 8048 Zurich, Switzerland
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505775934.6581.6.camel%40intel.com.
>> For more options, visit https://groups.google.com/d/optout.
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170920174828.GA25248%40dvetter-linux.ger.corp.intel.com.
> For more options, visit https://groups.google.com/d/optout.

