X-GM-THRID: 6534405823463948288
X-Received: by 10.223.208.204 with SMTP id z12mr1000053wrh.31.1521457599030;
        Mon, 19 Mar 2018 04:06:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.208.195 with SMTP id z3ls3447370wrh.13.gmail; Mon, 19 Mar
 2018 04:06:37 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt/NQtPI4FfsBJQhW+xaRxrwTme6dhhBNbFTvldbfZ2yJaQXTg3D53wj3sfv3v0n8lbkEB6
X-Received: by 10.223.130.21 with SMTP id 21mr404659wrb.2.1521457597920;
        Mon, 19 Mar 2018 04:06:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521457597; cv=none;
        d=google.com; s=arc-20160816;
        b=QCFWfkdLMiVSeOEZczyxUFJv2LnF22RXv6VNoTrQW0WzLO4sBORSLzYLvRiqu5k6Oz
         sUu6R7bBzIX9xvtuf3aiQkjsYEciRBFktufNUPej61iu0/NnPkt4ur1oB5rKxpehegEd
         EsurYREDcSiVX/ot2YanuJ5Fo8E3DKPM6oH0/mbeXdzx1YDW3rqtMtbsGmdO+W5dJgYj
         kyAqzpGvWWEpbgRa7tOclwH2PC/HvdZ+EigfaW9BhWcVWTzao4BoKcbEfAflPL2Gd8iz
         Obsk8O7JWIqVllU+IbPSj6+SU7Aiv8guVZSuSvB7NYdJBVbqH6W9l42sXYiTFBBXK6dm
         E6XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=V3E5N+AmP6pfzusU54/PFC+v8NdoMmSFWOUiqch9PD4=;
        b=tq5Ddy+UIsfE1ew29x+9uKyTiT3PerVwyS3XIjuCNGNzFaLaIIJchAelseCB5djbH/
         u7b1wE+MZhENphmMdOsiPoHhnBrBfuS2bUHvn1jMOKwNaf1SF8LThOqJSR82HPrAlX6p
         dpm6CIrVOk0pWlaSscu/2mfuqdXlo3LEIpBGJ7fhHwx3ZFBAa4CtX1ahegAB56IN2L5r
         kXLliXfhcnqMEji8C60JfbLvCJEFk7Ly6cUKWAvXWBR1lI4EHFeWTwyxTT1No6m07hhi
         5dI6MoPAyujECcQXlBWuKzmLNjegyHy33SHoA18ouJDpbrrLo9DKOxuoIET4rcw3rIF3
         pulA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w16si3002wmw.1.2018.03.19.04.06.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 04:06:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,330,1517871600"; 
   d="scan'208";a="318780748"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2018 12:06:37 +0100
Date: Mon, 19 Mar 2018 12:06:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Christian_K=F6nig?= <christian.koenig@amd.com>
cc: Arushi Singhal <arushisinghal19971997@gmail.com>, 
    alexander.deucher@amd.com, David Airlie <airlied@linux.ie>, 
    linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
    outreachy-kernel@googlegroups.com, Tomi Valkeinen <tomi.valkeinen@ti.com>, 
    amd-gfx@lists.freedesktop.org
Subject: Re: [Outreachy kernel] Re: [PATCH] gpu: drm: Use list_first_entry
 instead of list_entry
In-Reply-To: <8b1e22f8-7a05-b66b-8825-7d4d97e46dac@amd.com>
Message-ID: <alpine.DEB.2.20.1803191204550.3392@hadrien>
References: <20180318215105.GA15431@seema-Inspiron-15-3567> <8b1e22f8-7a05-b66b-8825-7d4d97e46dac@amd.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-369822278-1521457591=:3392"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-369822278-1521457591=:3392
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 19 Mar 2018, Christian König wrote:

> Mhm, actually that patch isn't correct. What we grab get here is the next
> entry, not the first one.
>
> We don't have an alias list_next_entry for list_first_entry?

As compared to the semantic patch I proposed earlier today, it would seem
that list_first_entry is useful when the types are different?  One would
have to check the result of course, but a list eleemnt with the same type
as the structure that contains the list might be unlikely?

julia

>
> Regards,
> Christian.
>
> Am 18.03.2018 um 22:51 schrieb Arushi Singhal:
> > This patch replaces list_entry with list_first_entry as it makes the
> > code more clear.
> > Done using coccinelle:
> >
> > @@
> > expression e;
> > @@
> > (
> > - list_entry(e->next,
> > + list_first_entry(e,
> >    ...)
> > |
> > - list_entry(e->prev,
> > + list_last_entry(e,
> >    ...)
> > )
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> >   drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c | 4 ++--
> >   drivers/gpu/drm/omapdrm/dss/display.c  | 4 ++--
> >   drivers/gpu/drm/radeon/radeon_sa.c     | 4 ++--
> >   3 files changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c
> > b/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c
> > index 3144400..646f593 100644
> > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c
> > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c
> > @@ -158,7 +158,7 @@ static void amdgpu_sa_bo_try_free(struct
> > amdgpu_sa_manager *sa_manager)
> >   	if (sa_manager->hole->next == &sa_manager->olist)
> >   		return;
> >   -	sa_bo = list_entry(sa_manager->hole->next, struct amdgpu_sa_bo,
> > olist);
> > +	sa_bo = list_first_entry(sa_manager->hole, struct amdgpu_sa_bo,
> > olist);
> >   	list_for_each_entry_safe_from(sa_bo, tmp, &sa_manager->olist, olist) {
> >   		if (sa_bo->fence == NULL ||
> >   		    !dma_fence_is_signaled(sa_bo->fence)) {
> > @@ -183,7 +183,7 @@ static inline unsigned amdgpu_sa_bo_hole_eoffset(struct
> > amdgpu_sa_manager *sa_ma
> >   	struct list_head *hole = sa_manager->hole;
> >     	if (hole->next != &sa_manager->olist) {
> > -		return list_entry(hole->next, struct amdgpu_sa_bo,
> > olist)->soffset;
> > +		return list_first_entry(hole, struct amdgpu_sa_bo,
> > olist)->soffset;
> >   	}
> >   	return sa_manager->size;
> >   }
> > diff --git a/drivers/gpu/drm/omapdrm/dss/display.c
> > b/drivers/gpu/drm/omapdrm/dss/display.c
> > index 0c9480b..fb9ecae 100644
> > --- a/drivers/gpu/drm/omapdrm/dss/display.c
> > +++ b/drivers/gpu/drm/omapdrm/dss/display.c
> > @@ -158,8 +158,8 @@ struct omap_dss_device *omap_dss_get_next_device(struct
> > omap_dss_device *from)
> >   				goto out;
> >   			}
> >   -			dssdev = list_entry(l->next, struct omap_dss_device,
> > -					panel_list);
> > +			dssdev = list_first_entry(l, struct omap_dss_device,
> > +						  panel_list);
> >   			omap_dss_get_device(dssdev);
> >   			goto out;
> >   		}
> > diff --git a/drivers/gpu/drm/radeon/radeon_sa.c
> > b/drivers/gpu/drm/radeon/radeon_sa.c
> > index 197b157..66c0482 100644
> > --- a/drivers/gpu/drm/radeon/radeon_sa.c
> > +++ b/drivers/gpu/drm/radeon/radeon_sa.c
> > @@ -158,7 +158,7 @@ static void radeon_sa_bo_try_free(struct
> > radeon_sa_manager *sa_manager)
> >   	if (sa_manager->hole->next == &sa_manager->olist)
> >   		return;
> >   -	sa_bo = list_entry(sa_manager->hole->next, struct radeon_sa_bo,
> > olist);
> > +	sa_bo = list_first_entry(sa_manager->hole, struct radeon_sa_bo,
> > olist);
> >   	list_for_each_entry_safe_from(sa_bo, tmp, &sa_manager->olist, olist) {
> >   		if (sa_bo->fence == NULL ||
> > !radeon_fence_signaled(sa_bo->fence)) {
> >   			return;
> > @@ -182,7 +182,7 @@ static inline unsigned radeon_sa_bo_hole_eoffset(struct
> > radeon_sa_manager *sa_ma
> >   	struct list_head *hole = sa_manager->hole;
> >     	if (hole->next != &sa_manager->olist) {
> > -		return list_entry(hole->next, struct radeon_sa_bo,
> > olist)->soffset;
> > +		return list_first_entry(hole, struct radeon_sa_bo,
> > olist)->soffset;
> >   	}
> >   	return sa_manager->size;
> >   }
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/8b1e22f8-7a05-b66b-8825-7d4d97e46dac%40amd.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-369822278-1521457591=:3392--

