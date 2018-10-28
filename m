X-GM-THRID: 6616381756005154816
X-Received: by 2002:a1c:7ecf:: with SMTP id z198-v6mr1511027wmc.24.1540705284064;
        Sat, 27 Oct 2018 22:41:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9341:: with SMTP id v62-v6ls969094wmd.24.gmail; Sat, 27
 Oct 2018 22:41:23 -0700 (PDT)
X-Google-Smtp-Source: AJdET5f0KVJ2g4LBr/koMj8lRanEfrZDFIoCTK5TthdB4PXSiPvkJm1+dolrtoevwiwoX70BEcEi
X-Received: by 2002:a1c:b5c9:: with SMTP id e192-v6mr1513143wmf.22.1540705283087;
        Sat, 27 Oct 2018 22:41:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540705283; cv=none;
        d=google.com; s=arc-20160816;
        b=bzTZr8OCen0K2y7NGFKk4rxbSbhk0HyEjEoNEfU8g9k3eBIVMXhtlVkAvf8/Z4q8u4
         rJ8p4nwbuEICElKT0oFazchaWcEneeUkiexiJtPSrL/HZP97k4foogdVYZpA7n/t1I6x
         whg2gwfa8VLS/o5am7k5KwRdRZI16i/Wz0rvDIm8MbJ8xbjuM2Jt3EL9MfrUzG7UFl99
         r6sbHwA6tMUPtr6CcEMUHp7/H9qlOpd9/f5DSjLHX5DzVBA324hOw17pLHzhn38yWK3J
         hQfm8qeglKRfs7k/XkRr++VuH8wuGOAL+EbLXzFoV7UcYnsaaLNw1T4QqznOxQbVkJui
         jXMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Sn83iyw6SoCz89+p0EjRRDFggavKMURf1Lf2XCZPWEE=;
        b=hbG47cEisvyYe0Ng/7INiiwrGVPxa7TajrDC3wqEBem9qU81fxg9oTSEkbcSMWEIq5
         rnK4G0VFGC3Gop0SOIpQhy3PMfSUnsVm4+MtlUbtRa5EKKjh1hkXwFU4f/+xGCaoXxLt
         paAr+Yae66qUZMy9MYtglq9RcmbEN+9Kr0f8RNldZZWhDUjZD+nXQ02iKkrcMNLxL5uj
         hAv6VQLKCZR/FKIJlgwiYqr4HYjaJJk3P2rZTHEg8+HsRyZE5zKYw4XJdoeXvGBVGJ1d
         Gy0rrt645Kjz2CgGtEglrRZnwdak/rWAxIAiIMj9UREnVazZyJsfQ5rifPQyHWA6dj0G
         FpwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v6-v6si521955wrn.0.2018.10.27.22.41.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Oct 2018 22:41:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,434,1534802400"; 
   d="scan'208";a="353118905"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Oct 2018 06:41:22 +0100
Date: Sun, 28 Oct 2018 06:41:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, Sasha Levin <sashal@kernel.org>, 
    Shayenne da Luz Moura <shayenneluzmoura@gmail.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Hans de Goede <hdegoede@redhat.com>, 
    Michael Thayer <michael.thayer@oracle.com>, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH 2/2] staging: vboxvideo: Use
 unsigned int instead bool
In-Reply-To: <5ac9cc7060a4a942a7c362cfe35515bd3c7820fb.camel@perches.com>
Message-ID: <alpine.DEB.2.21.1810280639150.2450@hadrien>
References: <cover.1540580493.git.shayenneluzmoura@gmail.com>  <211701e4ae42acd95afb24713314bce5a4c58ecf.1540580493.git.shayenneluzmoura@gmail.com>  <20181026204225.GH2015@sasha-vm>  <alpine.DEB.2.21.1810262252550.2791@hadrien>
 <5ac9cc7060a4a942a7c362cfe35515bd3c7820fb.camel@perches.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 27 Oct 2018, Joe Perches wrote:

> On Fri, 2018-10-26 at 22:54 +0200, Julia Lawall wrote:
> > [Adding Joe Perches]
> >
> > On Fri, 26 Oct 2018, Sasha Levin wrote:
> >
> > > On Fri, Oct 26, 2018 at 04:04:45PM -0300, Shayenne da Luz Moura wrote:
> > > > This change was suggested by checkpath.pl. Use unsigned int with bitfield
> > > > allocate only one bit to the boolean variable.
> > > >
> > > > CHECK: Avoid using bool structure members because of possible alignment
> > > > issues
> > > >
> > > > Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> > > > ---
> > > > drivers/staging/vboxvideo/vbox_drv.h        | 14 +++++++-------
> > > > drivers/staging/vboxvideo/vboxvideo_guest.h |  2 +-
> > > > 2 files changed, 8 insertions(+), 8 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/vboxvideo/vbox_drv.h
> > > > b/drivers/staging/vboxvideo/vbox_drv.h
> > > > index 594f84272957..7d3e329a6b1c 100644
> > > > --- a/drivers/staging/vboxvideo/vbox_drv.h
> > > > +++ b/drivers/staging/vboxvideo/vbox_drv.h
> > > > @@ -81,7 +81,7 @@ struct vbox_private {
> > > > 	u8 __iomem *vbva_buffers;
> > > > 	struct gen_pool *guest_pool;
> > > > 	struct vbva_buf_ctx *vbva_info;
> > > > -	bool any_pitch;
> > > > +	unsigned int any_pitch:1;
> > > > 	u32 num_crtcs;
> > > > 	/** Amount of available VRAM, including space used for buffers. */
> > > > 	u32 full_vram_size;
> > >
> > > Using bitfields for booleans in these cases is less efficient than just
> > > using "regular" booleans for two reasons:
> > >
> > > 1. It will use the same amount of space. Due to alignment requirements,
> > > the compiler can't squeeze in anything into the 7 bits that are now
> > > "free". Each member, unless it's another bitfield, must start at a whole
> > > byte.

Since this is between a pointer and a u32, won't the compiler put a lot
more padding, in both cases?

> > >
> > > 2. This is actually less efficient (slower) for the compiler to work
> > > with. The smallest granularity we have to access memory is 1 byte; we
> > > can't set individual bits directly in memory. For the original code, the
> > > assembly for 'vbox_private.any_pitch = true' would look something like
> > > this:
> > >
> > > 	movl   $0x1,-0x10(%rsp)
> > >
> > > As you can see, the compiler can directly write into the variable.
> > > However, when we switch to using bitfields, the compiler must preserve
> > > the original value of the other 7 bits, so it must first read them from
> > > memory, manipulate the value and write it back. The assembly would
> > > look something like this:
> > >
> > > 	movzbl -0x10(%rsp),%eax
> > > 	or     $0x1,%eax
> > > 	mov    %al,-0x10(%rsp)
> > >
> > > Which is less efficient than what was previously happening.
> >
> > Maybe checkpatch could be more precise about what kind of bools should be
> > changed?
>
> Probably so, what verbiage would you suggest?

I don't know what are the conditions.  Sasha?

julia

> Also, any conversion from bool to int would
> have to take care than any assigment uses !!
> where appropriate.
>
>
>

