X-GM-THRID: 6952150809139216384
X-Received: by 2002:a05:6512:2143:: with SMTP id s3mr6346013lfr.556.1618675501253;
        Sat, 17 Apr 2021 09:05:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a785:: with SMTP id c5ls2518469ljf.8.gmail; Sat, 17 Apr
 2021 09:04:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwb1f255/VLdloye4txfp5WHSfLJJQu5VvC6e6cMwTqlpNVc2uat6sGlLpFwNtygEepZW9i
X-Received: by 2002:a05:651c:1ae:: with SMTP id c14mr1592522ljn.100.1618675499333;
        Sat, 17 Apr 2021 09:04:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618675499; cv=none;
        d=google.com; s=arc-20160816;
        b=WwYrXXd0jgq5KUgvMEGgJZVtPkNfNXGL7rZTfogFbIndTRz1ceHPLmekwBRdQpadoe
         PgQCO9f3Hb4/ScJ2IuZ1SRGlBxZVBsMIn6//DpUJ7mZv5JS56q6glK+S80kiuPMKULik
         3yPskNk/XyAXxNGxyIXrh8M5nln5lyKr8h+eYB471ZJ1/ZTrgzzwDVy6Bn2KuUiSF8F+
         TFOI+PSDBB04mzkHL8F7/Ax163HVKdkL3NEw51ORjFRtL2oHZA4TokajPsMtjzhap0Fk
         hbCD5COWphQPoXsqFRFiw5vml6WxUkLAK7zpgMVSBNiUIuyocEu51Iqs602TRd/unmcg
         WI1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=DfFxKfidJiNL0jwR7LALFlyGQk5otZUykcpjvV5IIRY=;
        b=bqsQkCBdmhlrqoPW/q8Ffmh/xLOOValKRfOVL9zYogroKwh24guE9+KIPyQmnVzWd8
         5AdyI1EpqzfNIQblysaOUmYRbqzVZ6LT0ZpZJa9/5RsUe0zjf/Svr/+STbffp6MnX02Q
         IMSBcqvyZ16HWA0UZ+1z026Yrf49VZBHH3hgPO3DZObkExPd0vOZymOYch9pMCzZXYQH
         kIKfjJyT1epeDKy0Jrs5SZliYXBsRWq2dwzdSA1Q+KwQyWFelWaJp3cfmgULeGyyTE2k
         bUK26lzO0djCG/x0X+p9JXB0ZtdcBbkaDl8/TdfbkqVK26DRJr85lNorKy5MQkAnHnhH
         RJEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a36si277722ljq.5.2021.04.17.09.04.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Apr 2021 09:04:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AUi16O6nAYfUX/OHWO1XgbpJGVK7pDfLN3DAb?=
 =?us-ascii?q?vn1ZSRFFG/GwvcaogfgdyFvImC8cMUtQ/eyoFaGcTRrnnqJdzpIWOd6ZNjXOmG?=
 =?us-ascii?q?ztF4166Jun/juIIUzD38p88YslTKRkEt33CjFB/KPHyS21CcwpztXC0I3Av4fj?=
 =?us-ascii?q?5kxgRw1rdK1shj0RYjqzKUF4SBJLApA0DvOnl6l6jgC9cncaZNnTPBc4dtXEzu?=
 =?us-ascii?q?emqLvbexIcQzYo5A6S5AnYioLSIlyomi0TVD5C2t4ZnFTtmQaR3Mqej80=3D?=
X-IronPort-AV: E=Sophos;i="5.82,230,1613430000"; 
   d="scan'208";a="378941452"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Apr 2021 18:04:58 +0200
Date: Sat, 17 Apr 2021 18:04:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, 
    Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
    Maxime Ripard <mripard@kernel.org>, 
    Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, 
    Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] [PATCH Resend] drm/drm_bufs.c: In switch,
 add break in default case
In-Reply-To: <3022803.ysd8NKUkcf@linux.local>
Message-ID: <alpine.DEB.2.22.394.2104171804140.2982@hadrien>
References: <20210417153540.22017-1-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104171745391.2982@hadrien> <3022803.ysd8NKUkcf@linux.local>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 17 Apr 2021, Fabio M. De Francesco wrote:

> On Saturday, April 17, 2021 5:45:46 PM CEST Julia Lawall wrote:
> > On Sat, 17 Apr 2021, Fabio M. De Francesco wrote:
> > > Added a 'break' in the default case of a switch selection statement.
> >
> > Why?
> >
> GCC issues a warning, even if it is not strictly necessary for the code to
> work properly. Do you think that I have to explain in the patch log the reason
> why I made that change?

It would be helpful.

julia

>
> Thanks,
>
> Fabio
> >
> > julia
> >
> > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > ---
> > >
> > >  drivers/gpu/drm/drm_bufs.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/drm_bufs.c b/drivers/gpu/drm/drm_bufs.c
> > > index e3d77dfefb0a..fc40aa0adf73 100644
> > > --- a/drivers/gpu/drm/drm_bufs.c
> > > +++ b/drivers/gpu/drm/drm_bufs.c
> > > @@ -79,7 +79,7 @@ static struct drm_map_list *drm_find_matching_map(struct
> > > drm_device *dev,>
> > >  				return entry;
> > >
> > >  			break;
> > >
> > >  		default: /* Make gcc happy */
> > >
> > > -			;
> > > +			break;
> > >
> > >  		}
> > >  		if (entry->map->offset == map->offset)
> > >
> > >  			return entry;
> > >
> > > --
> > > 2.31.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups
> > > "outreachy-kernel" group. To unsubscribe from this group and stop
> receiving
> > > emails from it, send an email to
> > > outreachy-kernel+unsubscribe@googlegroups.com. To view this discussion on
> > > the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/20210417153540.22017-1-f
> > > mdefrancesco%40gmail.com.
>
>
>
>
>

