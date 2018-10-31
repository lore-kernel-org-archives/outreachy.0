X-GM-THRID: 6618628196583604224
X-Received: by 2002:a2e:9b42:: with SMTP id o2-v6mr485486ljj.23.1541021461620;
        Wed, 31 Oct 2018 14:31:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:42da:: with SMTP id n26-v6ls1188516lfl.11.gmail; Wed, 31
 Oct 2018 14:31:00 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dwuB5sQi6MyF8QAppkljJNAHXKxa0/gML8D6xeVbL43OotHRRvX0vL2lRkxKw83peYZmun
X-Received: by 2002:ac2:434b:: with SMTP id o11-v6mr438755lfl.5.1541021460524;
        Wed, 31 Oct 2018 14:31:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541021460; cv=none;
        d=google.com; s=arc-20160816;
        b=Vhvla3uqa/j0dBCW6FHyJ/GQWNu0jCvtPQAF2k+yL/6E1vwDNgPC4L9gJRFIRBk25P
         CzkVtM1XBj2EdVsKDroYpK3RKM/MveQw9mm6xpFwj/7Q4FzqoZMfLcpeo/NzF83YGHFR
         dv/98Fa0MBKTTa1ipSvWkxnXLWkMdRYPMB6Y+ADhja4FQMthW8/bWvk5gJSpOcxSHT98
         5nCdak3yEeEeUV5+nJDQz78HnP4dYLXV3N9VhISAyfpwgUBUqxd30h0E/Z/t6KTbVmI3
         Axk9cXsGB9lfP+laQn0/P9vcUVTGgiZBIsYlhBqCPlmcaiJuVV4WwWplwMW5bZ7EWp6G
         EjAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=TOMUgSxGHh3F9Ted/rOAfV21f1lJf4xHBTHLtVMYoR4=;
        b=AJsdIUfO2i8MU4tsFrcGf2KX1J8l28IENFvw2VOOoX+f2NGzHosnVzrfFcsaaJphdo
         IhY1eJDsSJeMmmaTrj6m9qZpknecVwmAPPwqKFJAjhUR0Wmh/sN8yV4vrl9LhQXdl1qU
         czSIJK3IjpN+Z9UoxvN8Upk7xL3yBijSz/0QxcmCswt2KzouQ974i0DA8CwEKmYggQE0
         MPMucmUObl8IyybA2NdlQE1mrukLoaBkL2K2ZAFYviVo1pU3iN9TSstnnN9ySqjLiV4p
         nSfMzciUQBeHM+hz310SU76pDSdhXfrkLgKFdGDQJvhhuQeFBwWfa1CbSbV0HIdxMVJS
         IEoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d9-v6si709870lfi.5.2018.10.31.14.31.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 14:31:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,449,1534802400"; 
   d="scan'208";a="283990917"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2018 22:30:59 +0100
Date: Wed, 31 Oct 2018 22:30:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shayenne Moura <shayenneluzmoura@gmail.com>
cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
    Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>, 
    David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drm: Rename crtc_idr as object_idr
 to KMS cleanups
In-Reply-To: <20181031211935.p2pxr7fh26m5dc7v@smtp.gmail.com>
Message-ID: <alpine.DEB.2.21.1810312229530.5416@hadrien>
References: <20181031205737.cingeaqget7hkbs6@smtp.gmail.com> <alpine.DEB.2.21.1810312200520.2391@hadrien> <20181031211935.p2pxr7fh26m5dc7v@smtp.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 31 Oct 2018, Shayenne Moura wrote:

> On 10/31, Julia Lawall wrote:
> >
> >
> > On Wed, 31 Oct 2018, Shayenne da Luz Moura wrote:
> >
> > > Rename 'drm_mode_config.crtc_idr' as 'drm_mode_config.object_idr',
> > > as proposed in the task description in TODO list for KMS cleanups.
> >
> > Is object_idr a field that already exists?  If so, "Rename" is not the
> > best choice of words.  It should be something like "use the object_idr
> > field instead of the crtc_idr field" and then explain why.  "task
> > description in TODO list for KMS cleanups" isn't very helpful to
> > understand why the change should be made.
> >
> > julia
>
> Hi Julia,
>
> Thank you for your review!
>
> This patch is to solve this TODO task:
>  drm_mode_config.crtc_idr is misnamed, since it contains all KMS object.
>  Should be renamed to drm_mode_config.object_idr.
>
> Do you think I need to use this description in my commit message?

That seems more helpful.

But it seems that the name should actually be changed.  Which means that
the structure definition should be changed too.  Was that done?

julia

>
> Best,
> Shayenne
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181031211935.p2pxr7fh26m5dc7v%40smtp.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

