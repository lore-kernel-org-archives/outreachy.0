X-GM-THRID: 6749590935912316928
X-Received: by 2002:a19:4318:: with SMTP id q24mr3768915lfa.12.1572032197174;
        Fri, 25 Oct 2019 12:36:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8806:: with SMTP id x6ls1388393ljh.11.gmail; Fri, 25 Oct
 2019 12:36:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwkJCySuwPDhDz2IzlHH1wFsfmbRxb70kMy1xNolntLKrAoEto44vk/LuQvmjhAmd4YDQaE
X-Received: by 2002:a2e:9d83:: with SMTP id c3mr3610114ljj.237.1572032196187;
        Fri, 25 Oct 2019 12:36:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572032196; cv=none;
        d=google.com; s=arc-20160816;
        b=FeAmaLtzPv/eGYTc+OBAr5755wSixC4l5atFQrfCn/jOoTZqIPlNSht5RwWAkZfZYr
         RhWHS/AAppeQCs6NUunnJ9Y57L+eJDox0pQacVd6BzYtKw+veXwqUnriE5JaQGppSaUR
         BZ8BogTWryXoINF5xcLxhKCaDu8hj+ZQhwVR1IOgWKdYQBtV8aUvD/l3YTfJu1z04jnq
         owvVVnAmBVgEga64Rv+3fE2Nyv6iTWQrZlVXGmlo9O5R/AdVeSExBimjTmHjCKmEC2pg
         rB6Kx6DvjsEHAGtQccRwM5mcXdBYGtugAOZJFffcVIf8WRaSmPp97wFYDZyPmeBuQm3E
         ZMtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vKgsFbx8Ep6iOXlXatCgfl2QJqYHidBhx0D+NEJMyLo=;
        b=keWT9+FwBbuXGobQoQM98Ozms2kgH5gpZ1lMu9Me4YpoDz8rMEl3caosd5yK0aTuRf
         5L2lmxutppCQnG8aDbrXaIP5OSYcMM3qaVNI0ZCRr29MYwD0ZYAtHsZFoFxcYhR3A3JF
         /PbFnZi9axVw9P66d5H043VDYzQjjuEj+jwktAJdjbGtl4/asIYSR17UZUZtq+0yGQgC
         u5NU7U3Zvf2uz9YrYF/lXKUbObZ7uLGfpARpCeyOwpJnUW/qmuIZLhJGs8bx1uwR+VfJ
         WOpjJ3JKJNihTly+4oSJgTOlxnJT2Y0FAKRZi4vFHCrRYqrkLHaUpzINFfcH9ea+zXNR
         A+EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OYW0esZZ;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alexdeucher@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c25si162713lji.2.2019.10.25.12.36.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 12:36:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OYW0esZZ;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id l10so3633997wrb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 12:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vKgsFbx8Ep6iOXlXatCgfl2QJqYHidBhx0D+NEJMyLo=;
        b=OYW0esZZ6B8EKsDTY2vGfRPRy99SJ3ZPr9FUu3Pu00ygV96AVxKm2XvVThu2GBAKBE
         IP8FqmojtSAn97B4Lnko6Vl/CndCsFkjQRCZk0Qxwx9aYtaPvvzHsKjf1zUQjW0VfNR/
         WtSXgiVb0XdlwJ/9mBbEY/qE/44PoZJUbuVFtiHJjj/PSHL4+SSu77q6wDgeS91MArDg
         CFKAaEIYWSsWWAjy1u4icShmr+I5DJekVSuWShrkT7XD0obab0nMc9O4eML32tB31tqm
         ebfh++CM8OfUbK+c4gTIw2SnurUjVhfdzazZWgqY7dIsctZ870wOjpFN4wqwrhNzpQnM
         5eXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vKgsFbx8Ep6iOXlXatCgfl2QJqYHidBhx0D+NEJMyLo=;
        b=Nw2kFFcti87RmeuE3qxLGlZoxBKTW2l4VilWjCOPp5V538C0JXCFOznayrcEAHTdYR
         y7PYkpKT+5aBe3TjvCmy0+NrhEissQZUrd4saqmWJzLuaEGsGMhqAro6pr6DF3pSAiZQ
         wNaNxg8j9u4gy3Q4x4ZWBOctxceZXR1qaYvilP6V4TfjdgZ9y2MBmJGrBbGrAK1MmAir
         9SxEkIMyhBRfLhfwLknpqvwLHpDcixvHVz54Y7CONAVDkijHf7bKQ8MCArTY3mITsSC2
         Z8/OjkTo5RwRvye2uFAzeyc1yahzldYEx674jWr/1iDtKbYd+Ag3/l4YpTImZFyvLgXD
         zQ3w==
X-Gm-Message-State: APjAAAVM7Is83th1DqK9ZQ9z/tHL7AAALncIsXh6vfhn4B1JmlRNwiU1
	HIj8Xj8ZqeYBYsiFFRYbwgZ4eGeiyLRc3sIm5EG2eA==
X-Received: by 2002:a5d:6ac3:: with SMTP id u3mr4661857wrw.206.1572032195543;
 Fri, 25 Oct 2019 12:36:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191019073242.21652-1-wambui@karuga.xyz> <2bed3fab-e84d-226d-b552-1ac088fc5d9c@amd.com>
In-Reply-To: <2bed3fab-e84d-226d-b552-1ac088fc5d9c@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 25 Oct 2019 15:36:23 -0400
Message-ID: <CADnq5_PeCmE-rmUaVDXtLNi20aMzYkeoLUtxHr9yT7P0Nix+qw@mail.gmail.com>
Subject: Re: [PATCH] drm/radeon: remove assignment for return value
To: Harry Wentland <hwentlan@amd.com>
Cc: Wambui Karuga <wambui@karuga.xyz>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "airlied@linux.ie" <airlied@linux.ie>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, 
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, 
	"Deucher, Alexander" <Alexander.Deucher@amd.com>, "Koenig, Christian" <Christian.Koenig@amd.com>
Content-Type: text/plain; charset="UTF-8"

Applied.  Thanks!

Alex

On Wed, Oct 23, 2019 at 11:09 AM Harry Wentland <hwentlan@amd.com> wrote:
>
> On 2019-10-19 3:32 a.m., Wambui Karuga wrote:
> > Remove unnecessary assignment for return value and have the
> > function return the required value directly.
> > Issue found by coccinelle:
> > @@
> > local idexpression ret;
> > expression e;
> > @@
> >
> > -ret =
> > +return
> >      e;
> > -return ret;
> >
> > Signed-off-by: Wambui Karuga <wambui@karuga.xyz>
>
> Thanks for your patch.
>
> Reviewed-by: Harry Wentland <harry.wentland@amd.com>
>
> Harry
>
>
> > ---
> >  drivers/gpu/drm/radeon/cik.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/radeon/cik.c b/drivers/gpu/drm/radeon/cik.c
> > index 62eab82a64f9..daff9a2af3be 100644
> > --- a/drivers/gpu/drm/radeon/cik.c
> > +++ b/drivers/gpu/drm/radeon/cik.c
> > @@ -221,9 +221,7 @@ int ci_get_temp(struct radeon_device *rdev)
> >       else
> >               actual_temp = temp & 0x1ff;
> >
> > -     actual_temp = actual_temp * 1000;
> > -
> > -     return actual_temp;
> > +     return actual_temp * 1000;
> >  }
> >
> >  /* get temperature in millidegrees */
> > @@ -239,9 +237,7 @@ int kv_get_temp(struct radeon_device *rdev)
> >       else
> >               actual_temp = 0;
> >
> > -     actual_temp = actual_temp * 1000;
> > -
> > -     return actual_temp;
> > +     return actual_temp * 1000;
> >  }
> >
> >  /*
> >
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

