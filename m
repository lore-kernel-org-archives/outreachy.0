X-GM-THRID: 6476749325903855616
X-Received: by 10.31.130.65 with SMTP id e62mr3950297vkd.49.1508179194733;
        Mon, 16 Oct 2017 11:39:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.160.76 with SMTP id j73ls3499449vke.12.gmail; Mon, 16 Oct
 2017 11:39:53 -0700 (PDT)
X-Received: by 10.31.107.157 with SMTP id k29mr5461261vki.72.1508179193775;
        Mon, 16 Oct 2017 11:39:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508179193; cv=none;
        d=google.com; s=arc-20160816;
        b=G7ZWGPKCcaNiWPCvL+G2t4Y5ykd2YR4dYt8O70ERQk5KKoebeJATbwDhKgaL3Ecp2u
         wa1M8n/2Z/Ep/xa2Wr5Efo5MVm4fjTYYBfI19J7e3olnp0B/8FsHYT+0nyQYfss5yZxB
         cBV8+zz4RxChInA0mOe1271bvz/CqlVQ1MgMG9xX5E8xgn+yWuNIerAWPDoVfoIYUttq
         KdOGzY2sVQ5zZPzZDtj1OMI5f1XW+oo3SclczlTlRMbY4PbGEK/oHZRsemE5crKsVamh
         MwklxbWjJgRy5PjJwMFfbdIwf76NazDgQBd7Y0qEcGPru1yQpmjTy1KfZRYjHtXW45L2
         5Pqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=GNQMmwjQ+bofR5fkQnjlYoWXZPe9KH4WuzX1c93LFJ0=;
        b=p74AsnHNeh23wz875fchHeNBvDU2VrKIKhCfWam39DgMDvhttaqBuo8s63qIVpV51C
         YkQQiFvD5V70bSVMnvTjk2plihbNI54JVhL/LNLuJdju7cAgyGysp7fG1FPviiX79YKU
         SxJP4oFg4c7UJrSvQHNP2lse9HBb34Xo1B64WlmgZtos5EEF3vfWQA5i9NmkYU1v6SWG
         p83VOTKUxOYRi8wkiu9An5Mdwe88taa1cY9Tb6I9AJjMkK0Xg0lP/1hSpXPIFA7Njess
         pE8WSoGJSp4jkTgG7dTuv+T2QKuWEaz6ZwSn1Z00ZdoauLfT1OLfNBqXK+gS4xwpyRmr
         PVqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JbwqJL66;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::232 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-qt0-x232.google.com (mail-qt0-x232.google.com. [2607:f8b0:400d:c0d::232])
        by gmr-mx.google.com with ESMTPS id u89si461335uau.1.2017.10.16.11.39.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 11:39:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::232 as permitted sender) client-ip=2607:f8b0:400d:c0d::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JbwqJL66;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::232 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-qt0-x232.google.com with SMTP id k31so33729275qta.6
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 11:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=GNQMmwjQ+bofR5fkQnjlYoWXZPe9KH4WuzX1c93LFJ0=;
        b=JbwqJL66WglYUvYpZYBeqp2UB56L5WKuNLqigrTxH+iitZ9RaOTYyzPqx6HMqdXQR0
         m/Ewb3Ps8/TPQGNmDqRlgIfRPsNbObqk6hQG65vCWXNZlDZrpIf1t86MJiUmBHoUeKk8
         hKGV3oZPq9sSAYtPGEKejoob7f2N7H2Cc1YJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=GNQMmwjQ+bofR5fkQnjlYoWXZPe9KH4WuzX1c93LFJ0=;
        b=QKSMaiauJW3J+Yxa0rkkj0awjp86cBgFuB2C/XWJZrYE8wlOZzGEsmtkuP4mFthgHm
         LEEwZbF3LfQLJhz4ARUTyQDEMqbAATbCrN6qNFOGtQG5JHfVid5rFS1/FLv+hklZPvYE
         UsK1ee4uQz4NYVqtLhfv08nNns1BjKsWIB1o+CCO7ikok+HDaC5RTokpYvci4w6944JD
         jbOVJbdKaciRePgJS6aGuSX92CC2njN3rDyjgtcfJijjQ11+wZ7+H8kkCviofM++1o8y
         K4/to6a2z0pDNBgfAOJY7OnVJBjWIhEKG9x9BzJ2PGpw2hA8hZrQStTsv/DfRoNikw6z
         jZyA==
X-Gm-Message-State: AMCzsaV7Sr3TJyAkx2OSO/orpOeRvyB/brRCzj87A4oK07w47MxmW7UX
	KSZbLruu1FMHS4idiiqtUBWQnwudsg8=
X-Received: by 10.129.77.195 with SMTP id a186mr1065088ywb.490.1508179193438;
        Mon, 16 Oct 2017 11:39:53 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com. [209.85.223.176])
        by smtp.gmail.com with ESMTPSA id x21sm2596551ywg.85.2017.10.16.11.39.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 11:39:52 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id 97so17165986iok.7
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 11:39:52 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDRpNkaIWim77imYoNxdHIOdF1iKViqEQnr4/oE9ro7gFCHzA60khTnpNmMInzyvpkCeja8AIO15rx+SiEvWk8=
X-Received: by 10.107.134.216 with SMTP id q85mr13358177ioi.197.1508179192060;
 Mon, 16 Oct 2017 11:39:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.174.66 with HTTP; Mon, 16 Oct 2017 11:39:31 -0700 (PDT)
In-Reply-To: <cover.1507985001.git.georgiana.chelu93@gmail.com>
References: <cover.1507985001.git.georgiana.chelu93@gmail.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Mon, 16 Oct 2017 14:39:31 -0400
X-Gmail-Original-Message-ID: <CAOw6vbJX-zfR0d=xR=gtxQ6on=Q94gcTS2_O+13kmPEOERW1hA@mail.gmail.com>
Message-ID: <CAOw6vbJX-zfR0d=xR=gtxQ6on=Q94gcTS2_O+13kmPEOERW1hA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] Drivers: gpu: drm: Fix coccinelle
 and checkpatch issues
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Julia Lawall <julia.lawall@lip6.fr>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	David Airlie <airlied@linux.ie>
Content-Type: text/plain; charset="UTF-8"

On Sat, Oct 14, 2017 at 8:54 AM, Georgiana Chelu
<georgiana.chelu93@gmail.com> wrote:
> The first two patches fix coccinelle issues and the last patch fix
> a checkpatch issue.
>
> First patch: The return value of kzalloc does not need a cast because
> the assignment operator will take care of this.
>
> Second patch: The 'result' variable does not change its value until the
> end of the function. Instead of using the variable, return its default value.
>
> Third patch: Placing the constant on the right side will make the code easier
> to read, as most of the people read from right to left.
>
> Georgiana Chelu (3):
>   Drivers: gpu: drm: Don't cast kzalloc() return value
>   Drivers: gpu: drm: Remove useless variable
>   Drivers: gpu: drm: Place the constant on the right side of the test
>

Hi Georgiana,
Thank you for your patches.

A couple things:
- Please look at git log for the file(s) you're changing when choosing
your subject prefix. In this instance, it should be
"drm/amd/powerplay:"
- Please cc dri-devel@lists.freedesktop.org on drm patches
- Please post the cocci script or the path to it when submitting
cocci-generated patches.

I look forward to your v2!

Sean


>  .../amd/powerplay/hwmgr/vega10_processpptables.c   | 35 ++++++++--------------
>  1 file changed, 13 insertions(+), 22 deletions(-)
>
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1507985001.git.georgiana.chelu93%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

