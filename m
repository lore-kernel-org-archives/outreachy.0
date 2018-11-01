X-GM-THRID: 6618628196583604224
X-Received: by 2002:a50:a702:: with SMTP id h2-v6mr1025378edc.6.1541053758664;
        Wed, 31 Oct 2018 23:29:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:fb93:: with SMTP id e19-v6ls111459edq.4.gmail; Wed, 31
 Oct 2018 23:29:17 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fzPLvFfPu7hHt+odn+nxLaZh06YCw6R5XX7IWyimfpKrifvxMCGWjmIAdwxb7rx8KiQXUW
X-Received: by 2002:a50:be0b:: with SMTP id a11-v6mr459071edi.10.1541053757844;
        Wed, 31 Oct 2018 23:29:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541053757; cv=none;
        d=google.com; s=arc-20160816;
        b=stbsssxqdCIdzxorV0KzXnyGH+1FX++0Hj5i+XeYqIfTHXq/7dAQEsWSwRz/N8BkSY
         dbKA2aGV+sEz74T7DJVeqkdoP5OXm2rj1NoRTTZKL/cH+bFMbDLFB+vDXFzfu1m/ASrZ
         Y7TqEVF291YKrT72fYUOu79x7npd/VdkkRLYjDhOYhid850MJXTwUTjFL8YC64rA4eJk
         /ul7Sboowv2anQ9q/pE5oHq5xZRIM7IMuOQLsfFP4f04jl7TcpFmY0VqkWtDcJMZaSwm
         NsojQEkAXxNH+vh1bo8q8ytkCVA7K6Cb42yNQT9JEOhUK3qtaA8nrc1blqzcLwIGGfMU
         YE+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=l1cSIeL6DKeQXNKnsh4i1tsW7uQYdRDCPpyZFqUvAuI=;
        b=V3CHEYYib6Tgx+Uk05k76QJc+KcW0SLCSRKLxwuy5WIsq08o9l1KJN9fC+I8MGkP6x
         fQKaaLwF292MD7MphyH8Veq7OVmseLNtREodBYg8GLsOjZpI0AzLAuqxOe+T8gevCdqW
         d6a51JfsiA9fMqKzVcbbRAxx5XMOMVUHvUvhVlWxnSPICYxBnyg7MrHY1xqiI7OVH7Qj
         hWM8FJJugM1DDJxPMoOwCQCrFuvZ4DfnfTsi65uAfq9lmcAgsNlbRurX2Q02++R6rS0t
         8+JWQtqWL3d4M1Cywsj6H8Be5k1PViLZq0N6diKt+RyB5w2jyQXID6McncPlgCpDOZMI
         OkaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m25-v6si856890ejb.1.2018.10.31.23.29.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 23:29:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,451,1534802400"; 
   d="scan'208";a="353738443"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Nov 2018 07:28:59 +0100
Date: Thu, 1 Nov 2018 07:28:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shayenne Moura <shayenneluzmoura@gmail.com>
cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
    Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>, 
    David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drm: Rename crtc_idr as object_idr
 to KMS cleanups
In-Reply-To: <20181031232915.rvni33tf6m2orbbx@smtp.gmail.com>
Message-ID: <alpine.DEB.2.21.1811010728140.2790@hadrien>
References: <20181031205737.cingeaqget7hkbs6@smtp.gmail.com> <alpine.DEB.2.21.1810312200520.2391@hadrien> <20181031211935.p2pxr7fh26m5dc7v@smtp.gmail.com> <alpine.DEB.2.21.1810312229530.5416@hadrien> <20181031232915.rvni33tf6m2orbbx@smtp.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 31 Oct 2018, Shayenne Moura wrote:

> On 10/31, Julia Lawall wrote:
> >
> >
> > On Wed, 31 Oct 2018, Shayenne Moura wrote:
> >
> > > On 10/31, Julia Lawall wrote:
> > > >
> > > >
> > > > On Wed, 31 Oct 2018, Shayenne da Luz Moura wrote:
> > > >
> > > > > Rename 'drm_mode_config.crtc_idr' as 'drm_mode_config.object_idr',
> > > > > as proposed in the task description in TODO list for KMS cleanups.
> > > >
> > > > Is object_idr a field that already exists?  If so, "Rename" is not the
> > > > best choice of words.  It should be something like "use the object_idr
> > > > field instead of the crtc_idr field" and then explain why.  "task
> > > > description in TODO list for KMS cleanups" isn't very helpful to
> > > > understand why the change should be made.
> > > >
> > > > julia
> > >
> > > Hi Julia,
> > >
> > > Thank you for your review!
> > >
> > > This patch is to solve this TODO task:
> > >  drm_mode_config.crtc_idr is misnamed, since it contains all KMS object.
> > >  Should be renamed to drm_mode_config.object_idr.
> > >
> > > Do you think I need to use this description in my commit message?
> >
> > That seems more helpful.
> >
> > But it seems that the name should actually be changed.  Which means that
> > the structure definition should be changed too.  Was that done?
> >
> > julia
>
> Yes, you are right. I did not add the header file.

Compilation should have given an error message.  If you thought you
compiled, then you don't have the right configuration to actually compile
the code that you changed.

julia

