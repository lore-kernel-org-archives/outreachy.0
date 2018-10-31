X-GM-THRID: 6618532112309944320
X-Received: by 2002:a25:cc03:: with SMTP id l3-v6mr1836712ybf.35.1540999500242;
        Wed, 31 Oct 2018 08:25:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:250f:: with SMTP id l15-v6ls8731932ywl.6.gmail; Wed, 31
 Oct 2018 08:24:59 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fAJpM4iOTRVc7K9CbsTvftP5jeGUhgfMqDoPEPJOoyscgAtcpNyQ4BSaYEp1q9WbZJWXcS
X-Received: by 2002:a0d:db82:: with SMTP id d124-v6mr1818370ywe.4.1540999499330;
        Wed, 31 Oct 2018 08:24:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540999499; cv=none;
        d=google.com; s=arc-20160816;
        b=dOfmHPxsJInBhu5cb/7KTsv6sPc3EmwMlOB+UauZUqxBkJog7cki9SJsvBEvu88Iqc
         /s3tIpdO76/x4VOj8hakh8mES98qwuW9vZCLjc0N+bWPfp1zBZt+AyWKFY4nQrWunKiW
         3Lbq22Uf3ki1jZBmD11t6SzhRJt7N7kmzGkqi3V/nI9ZmZa626pJIDWqssMYEHNWTMlB
         CBvlwoCJ3M2gNyBfz2O0Xeuhh/V/GvpkJzPmt1fvNzRAmaP/UEgZfr1XisfJRTtyyVvT
         SZnGCaeqagTfvOtKeqybmBwW1vxkpzvofTnzo/L8tdtx2QIz7QoN4cjhF8AZK5fPOxXP
         1WCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vgenT2Soa9mmY/bdvrCtxQ22Z3aySwfrg8haduGAxrI=;
        b=vRa9BG6ZxfJ99+TBO84fkeko9O5NI6+paTF6cDY3+Y+sg+RMTeCtq1yrAVMNpO183f
         LPdkmTQGdsKLVzcAUrbmhUId1yKm6DCmkG0A9qiBaw2u3Wx7fGxG4tpBniitetLepNW9
         YpC4P4aIQhRvETVl+KlqrCKEU+F2+K68xeFqPgMi5gl6CIXWvIdsweqebTUHIa0ZcEBG
         Uq0EyF9MQkY5nQbxzFcwpidooYmTUHszHoOhc99yxopHa824enGgtFlGShIrLT9S1mi4
         8h5HhkuI9o1T/n2beXzMbu1CVYFVs4BBwCWZidtYS7FRPWCabgyApvCVh2SaLBHFaCxV
         rcnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=CsUMLxnw;
       spf=neutral (google.com: 2607:f8b0:4864:20::12b is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Return-Path: <daniel.vetter@ffwll.ch>
Received: from mail-it1-x12b.google.com (mail-it1-x12b.google.com. [2607:f8b0:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id o8-v6si489215ywb.0.2018.10.31.08.24.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 08:24:59 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::12b is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) client-ip=2607:f8b0:4864:20::12b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=CsUMLxnw;
       spf=neutral (google.com: 2607:f8b0:4864:20::12b is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Received: by mail-it1-x12b.google.com with SMTP id h13so5954064itl.1
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 08:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vgenT2Soa9mmY/bdvrCtxQ22Z3aySwfrg8haduGAxrI=;
        b=CsUMLxnwaHo9al1T74rMXus65CC78c9qynLPUwpF/6uas4QGxgsjiAajl7MzH5NalL
         XmEv7zSq1Mxu+tHUHlS8lQikE9A21KOMwwJ3u6MFWt4/Wdck9vCWme5MwBbXQYnvaSau
         p5E+RG+pkX+90TbBEZVmn/mqHJhlDVApR6nYM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vgenT2Soa9mmY/bdvrCtxQ22Z3aySwfrg8haduGAxrI=;
        b=sdoISeksL5wDfg3gD+fn8Iq4jAboAQ116/ph7gY47iQR/+XDla4FRoUO8NF01KCl9T
         g7Tckdr2k49lIMB8H6vMzIH33h5kL0/fQG6kOwpkmV9O5wZHdbMNdBXknmSvuziM1wn/
         +PUOcDCsCJw5K1xk6XeJDZRKm+Hu0tnuKwJQDQnNaKbyxXxoYNOVMvehqSokLBkkQtiT
         ABaIiN0AArLAP1zPqpwGXqPVjumbdGO0R4VxV0t18ncWkT9v6Y4SVrE59dTxQh8XARar
         VVKm50P8DsBXgp8eeTB0SWgAGJqiCUEhTUi0QqYAEef2Lrjxiv/tA1i5axgX73445bvP
         87PA==
X-Gm-Message-State: AGRZ1gJ38RvBdddsxdTAocQsRex2y1DYPNBQbA+ruyi7MsyDZ+mr5CVJ
	nBtmgTffPd7AhN6oD1ks71Y5lUKU+93XPgheCh4OyQ==
X-Received: by 2002:a02:590:: with SMTP id 16-v6mr2739698jal.70.1540999498762;
 Wed, 31 Oct 2018 08:24:58 -0700 (PDT)
MIME-Version: 1.0
References: <20181031144445.vrdngzj3jclforta@smtp.gmail.com> <87a7mudu8t.fsf@intel.com>
In-Reply-To: <87a7mudu8t.fsf@intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 31 Oct 2018 16:24:45 +0100
Message-ID: <CAKMK7uEuoNRT7g+iRVTmcjt6zS5dotATrFgV4QTLxs2Fg33OYQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] drm: Remove 80-column line in drm_mode_object.c
To: "Nikula, Jani" <jani.nikula@linux.intel.com>
Cc: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>, 
	Dave Airlie <airlied@linux.ie>, outreachy-kernel@googlegroups.com, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 31, 2018 at 4:13 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Wed, 31 Oct 2018, Shayenne da Luz Moura <shayenneluzmoura@gmail.com> wrote:
> > Add a new variable to make the drm_mode_object comparison before
> > idr_alloc and decrease line size.
> >
> > Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> > ---
> >  drivers/gpu/drm/drm_mode_object.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/drm_mode_object.c b/drivers/gpu/drm/drm_mode_object.c
> > index be8b754eaf60..4b9eafddb409 100644
> > --- a/drivers/gpu/drm/drm_mode_object.c
> > +++ b/drivers/gpu/drm/drm_mode_object.c
> > @@ -36,9 +36,10 @@ int __drm_mode_object_add(struct drm_device *dev, struct drm_mode_object *obj,
> >                         void (*obj_free_cb)(struct kref *kref))
> >  {
> >       int ret;
> > +     struct drm_mode_object *obj_tmp = register_obj ? obj : NULL;
> >
> >       mutex_lock(&dev->mode_config.idr_mutex);
> > -     ret = idr_alloc(&dev->mode_config.crtc_idr, register_obj ? obj : NULL, 1, 0, GFP_KERNEL);
> > +     ret = idr_alloc(&dev->mode_config.crtc_idr, obj_tmp, 1, 0, GFP_KERNEL);
>
> Please don't send checkpatch "fixes" to adhere to the 80-column rule. Or
> at least use --max-line-length=100 or something to look for worse
> offenders than this.
>
> And if you insist, please just add a newline and proper indentation
> after "NULL," instead of adding a temporary variable.

Breaking the line after NULL, seems reasonable, I'd be happy to merge that.
-Daniel

>
>
> BR,
> Jani.
>
> >       if (ret >= 0) {
> >               /*
> >                * Set up the object linking under the protection of the idr
>
> --
> Jani Nikula, Intel Open Source Graphics Center
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/87a7mudu8t.fsf%40intel.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

