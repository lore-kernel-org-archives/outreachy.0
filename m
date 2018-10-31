X-GM-THRID: 6618628196583604224
X-Received: by 2002:aca:6b89:: with SMTP id g131-v6mr5080471oic.17.1541071482659;
        Thu, 01 Nov 2018 04:24:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:2cd5:: with SMTP id e21ls650683otd.0.gmail; Thu, 01 Nov
 2018 04:24:42 -0700 (PDT)
X-Received: by 2002:a9d:2350:: with SMTP id k16mr4080619otd.63.1541071482057;
        Thu, 01 Nov 2018 04:24:42 -0700 (PDT)
Received: by 2002:aca:c202:0:0:0:0:0 with SMTP id s2-v6msoif;
        Wed, 31 Oct 2018 16:30:19 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dg4gOdSE9eBIO2QCpFBpxeuwHOD3SVEOvf/XFB/vaqwTrWTC77Ar7x/+FNky4hY+eHBqCr
X-Received: by 2002:a6b:3b4b:: with SMTP id i72-v6mr1624160ioa.6.1541028619578;
        Wed, 31 Oct 2018 16:30:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541028619; cv=none;
        d=google.com; s=arc-20160816;
        b=aPVImzFlubhOexiijS8VjPYPUXKOJcgqwsEoLsWL3/lnmZug/N43UkMBWTCcHxC1Tq
         yzPg9igI+5D8X7vEQ3g945YGYmBUSgtG6/BtHQn2+3yTAeFmRw8NvL1Y/RQOkX0N342N
         msXEIGFkyn8ISfLYiB92y+d9z3vErXx+0yZPCA200zlKEYpwg1GShHi7rwazAtvg+yjK
         y2hrKIcWeGLQpYF/+Xr6hCE2KJekQ//YmwtvN8ubwzMJ98R8lgp43rQEd29bfRt9jZJd
         6AGpIfMdGia3HkdUX3cf783lGvQkfu92igJGe4EvcVfESOTJVGzXGdyfg8MkyfOc4wJL
         IVHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OtQH7+VlIPJvqHuErN8wezZ8VBDVAx5jnhNjxzFm3kA=;
        b=VyLsBUP+qRi2Wtko13e0XxTgn7Ivuvcsp/b/ZURXJqUf42KIiu4vdxBrK4DDUKOqeP
         tHZHxln1595Xg4eP8XvT30AOgDphBR6zmdojGT8+kSb56335ebzatb1V8OvZeXtp53uj
         eMkG4gfoNRvoDR8ShxU7Eon3arlKlfp9EgRvgzfHYK4+FKzpYSmFBMF7Y3q5gR4k/uP8
         OQRI8OXk5bk0sNIkBmk4WPq51FR8p1lbMbw1npdOqc/OKvBtuoEYr+laHQ8YkTDMPwL5
         H3/376i51MfvYPwQ9nU3SHSpQKsj27h/4tlzC9frhGdkauf8pf2aNEJBlrs6eui/rxqO
         Q6oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qrEsewnY;
       spf=pass (google.com: domain of emil.l.velikov@gmail.com designates 2607:f8b0:4864:20::e29 as permitted sender) smtp.mailfrom=emil.l.velikov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <emil.l.velikov@gmail.com>
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com. [2607:f8b0:4864:20::e29])
        by gmr-mx.google.com with ESMTPS id m5-v6si459685iok.3.2018.10.31.16.30.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 16:30:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of emil.l.velikov@gmail.com designates 2607:f8b0:4864:20::e29 as permitted sender) client-ip=2607:f8b0:4864:20::e29;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qrEsewnY;
       spf=pass (google.com: domain of emil.l.velikov@gmail.com designates 2607:f8b0:4864:20::e29 as permitted sender) smtp.mailfrom=emil.l.velikov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe29.google.com with SMTP id l6so11154758vsj.13
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 16:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OtQH7+VlIPJvqHuErN8wezZ8VBDVAx5jnhNjxzFm3kA=;
        b=qrEsewnY+t4jX4U05jF/Kx4jTbnEe38Z2ihgWj77fURbXyk+e6LLFsBpcmavx68skf
         OGEIwQLKR8iD+WyW42XZS6MSkDMbegQfik2GGRHVB2zZdVgqFGHtGwB/IxhntvBd1+5J
         32Rcg/KK9mza3H29w7X9kF7TeC8g9YlTFbDhatsHePgsrKyMFAQ+j/9OL4R4RUK0OyX8
         uiCxGBZi9m+e5qji+4C/Oq/vmKDvWPE6mm4Fqh37UYrWug3gBHtDIJ8yED2ztWJYWKtp
         aZ4fANm03MGwOp3rTS3cF6sn5WRJe98blNqhSMmq1XK683b08rkaHVTIMQONuL8SByVv
         JVTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OtQH7+VlIPJvqHuErN8wezZ8VBDVAx5jnhNjxzFm3kA=;
        b=sAlYkjpadaIamwQ8cGJZyppvHjKKIuKSbSbJ9TaSVnmP1WJwwonlmEBddPn2Qj6AvY
         8hm5Vgml3/JQrS0j8cSIvfAwTvo4JSCJ+RXA78+pj/IDxHsFrfBMMO/sxeYJfhXgQ/XW
         sYQeGwyEWO40WwK5jUd7tc8S/kFBg+OCEoyPrSwrv61PFT7HvDRC+N4/F5hbMnaMt9x1
         hpFQLUKEgr6k2BGDS0/iuGk7ob/kQi5OBfxQn/g9V+uZ6SvMz8SnDCwtKcj5BZNzWufL
         IcvP/K3Ui7FP6Omsi/WaioFHCd4NDRRMiSNmmVizEiTAEU/TyjrMOJdhvLuutnbi/Gs5
         layQ==
X-Gm-Message-State: AGRZ1gKuFvYN38OgP1oZh7iapQ0vC+w9JpXe9VUTe6oTHyXgJ3SvCIzS
	7ujEBrjhp9efxBziCi8mZlzpdNNXK86j1HvUTLM=
X-Received: by 2002:a67:60c7:: with SMTP id u190mr2253775vsb.85.1541028619223;
 Wed, 31 Oct 2018 16:30:19 -0700 (PDT)
MIME-Version: 1.0
References: <20181031205737.cingeaqget7hkbs6@smtp.gmail.com>
In-Reply-To: <20181031205737.cingeaqget7hkbs6@smtp.gmail.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Wed, 31 Oct 2018 23:28:59 +0000
Message-ID: <CACvgo535WoPfiaHzwd=UW11iKid7a2VPg+fYX1_VTLjO-WRzMg@mail.gmail.com>
Subject: Re: [PATCH] drm: Rename crtc_idr as object_idr to KMS cleanups
To: shayenneluzmoura@gmail.com
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>, 
	David Airlie <airlied@linux.ie>, outreachy-kernel@googlegroups.com, 
	"Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>, 
	ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"

Hi Shayenne,

Welcome to DRM.

As far as I can see you're a newcomer to kernel development, so I'd
recommend watch a recent talk from Marc [1]
He provides a very good introduction, both for newbies and for people
willing the know the deeper reasons behind.

That said, here's some suggestions:

On Wed, 31 Oct 2018 at 20:58, Shayenne da Luz Moura
<shayenneluzmoura@gmail.com> wrote:
>
I'd rename the title to "drm: rename drm_mode_config::crtc_idr to object_idr"
The "... as ... to KMS cleanups" translation is very strange in
English. It confused me and I've read the TODO over a dozen times ;-)

> Rename 'drm_mode_config.crtc_idr' as 'drm_mode_config.object_idr',
> as proposed in the task description in TODO list for KMS cleanups.
>
Similarly here.

> Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> ---
>  drivers/gpu/drm/drm_lease.c       | 6 +++---
>  drivers/gpu/drm/drm_mode_config.c | 4 ++--
>  drivers/gpu/drm/drm_mode_object.c | 8 ++++----
>  3 files changed, 9 insertions(+), 9 deletions(-)
>
As pointed out in the talk - always self review and ensure patches
don't break things.
Here, DRM doesn't build which is obviously not correct and breaks things.

HTH
Emil
[1] https://www.youtube.com/watch?v=LIdznotOxvg

