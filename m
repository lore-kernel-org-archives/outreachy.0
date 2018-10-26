X-GM-THRID: 6616381756005154816
X-Received: by 2002:adf:f8cc:: with SMTP id f12-v6mr945269wrq.2.1540587276300;
        Fri, 26 Oct 2018 13:54:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:96c9:: with SMTP id y192-v6ls488040wmd.5.canary-gmail;
 Fri, 26 Oct 2018 13:54:35 -0700 (PDT)
X-Google-Smtp-Source: AJdET5ebfKWppG8K40lp9ki918EaIjusSL4bgG3ZGY9PQlP1CjYy2/W8FRGYYxKIsS7lKbJS+2/Z
X-Received: by 2002:a1c:c18a:: with SMTP id r132-v6mr1027585wmf.13.1540587275217;
        Fri, 26 Oct 2018 13:54:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540587275; cv=none;
        d=google.com; s=arc-20160816;
        b=gvrhDqxwT3eV/lYyBc4K0F3RsaWrLaLDwXRD6qC/EVwxZ9Dh3LDjZurNpwYDv+rjKP
         VKQ8hpVGXPOVJHWEqD8Mi2tFn6qtWtyCsF0ijlc+Og80hj8iS3tD7QbnOjlxWt9eS35G
         qBrF3IkxDNglQDk29+ADUsL4A4iReJNz2b/SqWAe8T++ALn8XX6uVNnd0SBN+M/Z5Gss
         dE4PYowujK8Yle94F82KfZMxx5QXZ61S1JVQvXtt3US7rZelCe5X/V0O2j0IZXCTGZGO
         wLyFvg5CXrcFEXK2ktSyxXviL56aKOvRt9tnUBiPZFVYayrCvEpnPvovDcDRVvTsVe2l
         lCsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8J8vAWdWqYBph4BB0fn6i8Vr4XOJK8S0LyqlEkMZ1hg=;
        b=iWvvn14xoBTHzz+zW19KGbjAnt+ttM8LL/hmsmtGPzJXSKPsJI6sTZrppYrVtiw1hp
         PY8gZoKHGe5HLp9d/dlyiaZOUX4TWMp21Bt9U5HyqdtXpuhhX97LhR46qN/3QgP2wzJ4
         bG8u2phLU41mDZjZHwX/Mk1Cbx2vcfJnmw4p8/5aVUd9Rrg6gEYrjS2N0NL3JExqTqSY
         cJLWIO+Q4Cn/mcz40O04ZLssTX9DzEhV6ySrO1YmZ01ZuLd+pP//7W8EQRREBaAV+MQJ
         63nlIG1MY84p5m8oNTuuZdQ2trL0Q9beI0GrP0GHw+RO4SR1gbCf0Z90V/ceQWX3Mu0U
         uxOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u13-v6si327893wrn.3.2018.10.26.13.54.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Oct 2018 13:54:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,429,1534802400"; 
   d="scan'208";a="353046059"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Oct 2018 22:54:34 +0200
Date: Fri, 26 Oct 2018 22:54:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sasha Levin <sashal@kernel.org>
cc: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Hans de Goede <hdegoede@redhat.com>, 
    Michael Thayer <michael.thayer@oracle.com>, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
    joe@perches.com
Subject: Re: [Outreachy kernel] [RESEND PATCH 2/2] staging: vboxvideo: Use
 unsigned int instead bool
In-Reply-To: <20181026204225.GH2015@sasha-vm>
Message-ID: <alpine.DEB.2.21.1810262252550.2791@hadrien>
References: <cover.1540580493.git.shayenneluzmoura@gmail.com> <211701e4ae42acd95afb24713314bce5a4c58ecf.1540580493.git.shayenneluzmoura@gmail.com> <20181026204225.GH2015@sasha-vm>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

[Adding Joe Perches]

On Fri, 26 Oct 2018, Sasha Levin wrote:

> On Fri, Oct 26, 2018 at 04:04:45PM -0300, Shayenne da Luz Moura wrote:
> > This change was suggested by checkpath.pl. Use unsigned int with bitfield
> > allocate only one bit to the boolean variable.
> >
> > CHECK: Avoid using bool structure members because of possible alignment
> > issues
> >
> > Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> > ---
> > drivers/staging/vboxvideo/vbox_drv.h        | 14 +++++++-------
> > drivers/staging/vboxvideo/vboxvideo_guest.h |  2 +-
> > 2 files changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/staging/vboxvideo/vbox_drv.h
> > b/drivers/staging/vboxvideo/vbox_drv.h
> > index 594f84272957..7d3e329a6b1c 100644
> > --- a/drivers/staging/vboxvideo/vbox_drv.h
> > +++ b/drivers/staging/vboxvideo/vbox_drv.h
> > @@ -81,7 +81,7 @@ struct vbox_private {
> > 	u8 __iomem *vbva_buffers;
> > 	struct gen_pool *guest_pool;
> > 	struct vbva_buf_ctx *vbva_info;
> > -	bool any_pitch;
> > +	unsigned int any_pitch:1;
> > 	u32 num_crtcs;
> > 	/** Amount of available VRAM, including space used for buffers. */
> > 	u32 full_vram_size;
>
> Using bitfields for booleans in these cases is less efficient than just
> using "regular" booleans for two reasons:
>
> 1. It will use the same amount of space. Due to alignment requirements,
> the compiler can't squeeze in anything into the 7 bits that are now
> "free". Each member, unless it's another bitfield, must start at a whole
> byte.
>
> 2. This is actually less efficient (slower) for the compiler to work
> with. The smallest granularity we have to access memory is 1 byte; we
> can't set individual bits directly in memory. For the original code, the
> assembly for 'vbox_private.any_pitch = true' would look something like
> this:
>
> 	movl   $0x1,-0x10(%rsp)
>
> As you can see, the compiler can directly write into the variable.
> However, when we switch to using bitfields, the compiler must preserve
> the original value of the other 7 bits, so it must first read them from
> memory, manipulate the value and write it back. The assembly would
> look something like this:
>
> 	movzbl -0x10(%rsp),%eax
> 	or     $0x1,%eax
> 	mov    %al,-0x10(%rsp)
>
> Which is less efficient than what was previously happening.

Maybe checkpatch could be more precise about what kind of bools should be
changed?

julia

