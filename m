X-GM-THRID: 6808625193830842368
X-Received: by 2002:a05:6512:1109:: with SMTP id l9mr8138003lfg.50.1585572745889;
        Mon, 30 Mar 2020 05:52:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:91d5:: with SMTP id u21ls4047504ljg.5.gmail; Mon, 30 Mar
 2020 05:52:24 -0700 (PDT)
X-Google-Smtp-Source: APiQypLuAbVtZ1jymDGhSKT0FxLfNOH2ljfl3ImEEPIIOdC4JE2T7eBnaARwPua46VGpS0F9LxpH
X-Received: by 2002:a2e:90c6:: with SMTP id o6mr6472289ljg.18.1585572744190;
        Mon, 30 Mar 2020 05:52:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585572744; cv=none;
        d=google.com; s=arc-20160816;
        b=Na8By7yfSuz6RTizQxJzGFUnDf2qh6eQpECgritQMR/yAUdiEs1gBbgoozYq24V1rZ
         KfsGtXX7Ea+s9k/x43a7osPKSS0DyiFTWJMcwITliFdfV024tNjS4NdJVQWAYlUzFdDd
         jCOqoo9EfgeNFkNZLVdq2j3ZDNlRXW03BvQ7i6luYsCGAxvWRC7rExmf0tHIF8O++7KD
         4jwgtld0q4dSiAVu30fCbHBFdAOWIvkjy0TJ1NEOMZaaJik6t6M1E90uuHF3gE2gJP1h
         u0WU1WV2HpDK3UHi4E6W4q3D72Sf/2NsmJRwzufoMDIwGpIha0WjvaJzjO1R6xsKXQuO
         yJDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=zacJsGoeMCEaFou54WZ/L8k2ys21fXAN3o6MR5WSIvE=;
        b=r55fpX3zVS6QgtQAea1eIUJOfYaNbdo+4IYpaQmOXQ28F4apIzl5zM3uLcMLgJPn5x
         Fw+IIdTdaD7rjQ+IR9G5BNrcgyfYG5e1BuonPpjlMeVzucFSlTJfBVuKRVlXw4MFGNC8
         SESxTSXW37b07gyDs+WF2cX4aumMOiIjySq/qtif6R+VhxjUjQyTH5BjiP19klQVvpYb
         lvCaepOoN0LrMDyCNnW/6GUExBBN3HURocmJ8wweQvZBu24LK2isUnwOHkJtirod+hw3
         Whs49FV9CYXEYT4KELggqm8PZx4ptTRAqusrfAGnohbQM2kbxMqbe9OFcMbCgMeu8b5S
         jNRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h8si813239lfm.5.2020.03.30.05.52.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 05:52:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,324,1580770800"; 
   d="scan'208";a="442961342"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2020 14:52:23 +0200
Date: Mon, 30 Mar 2020 14:52:23 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Stefano Brivio <sbrivio@redhat.com>, 
    Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: omap4iss: Use BIT()
 macro.
In-Reply-To: <7a9b3798f3bbdbce728883e933a53d1280f09d41.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003301451560.2432@hadrien>
References: <20200326210247.4746-1-jane.pnx9@gmail.com>   <20200330101107.1c84b8f6@elisabeth>  <d09f3d39c7fc8326711119c73954bfbd8c92091a.camel@gmail.com>  <alpine.DEB.2.21.2003301344570.2432@hadrien>
 <7a9b3798f3bbdbce728883e933a53d1280f09d41.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 30 Mar 2020, Sam Muhammed wrote:

> On Mon, 2020-03-30 at 13:46 +0200, Julia Lawall wrote:
> > > > > diff --git a/drivers/staging/media/omap4iss/iss_regs.h b/drivers/staging/media/omap4iss/iss_regs.h
> > > > > index 09a7375c89ac..7adc944e1a5d 100644
> > > > > --- a/drivers/staging/media/omap4iss/iss_regs.h
> > > > > +++ b/drivers/staging/media/omap4iss/iss_regs.h
> > > > > @@ -38,7 +38,7 @@
> > > > >  #define ISS_CTRL_CLK_DIV_MASK				(3 << 4)
> > > > >  #define ISS_CTRL_INPUT_SEL_MASK				(3 << 2)
> > > > >  #define ISS_CTRL_INPUT_SEL_CSI2A			(0 << 2)
> > > > > -#define ISS_CTRL_INPUT_SEL_CSI2B			(1 << 2)
> > > > > +#define ISS_CTRL_INPUT_SEL_CSI2B			(BIT(2))
> > > > >  #define ISS_CTRL_SYNC_DETECT_VS_RAISING			(3 << 0)
> > > >
> > > > The existing code is saying: there are three bits to select the input,
> > > > starting from bit number 2. For those three bits, 0 means the CSI2A
> > > > input is selected, and 1 means CSI2B is selected.
> > > >
> > > > You're changing it to: there are three bits to select the input,
> > > > starting from bit number 2. For those three bits, 0 means the CSI2A
> > > > input is selected. CSI2B is a special case, though: register bit 2 needs
> > > > to be set.
> > > >
> > >
> > > Oh, So defining BIT(2) totally changed the logic?
> >
> > I'm not sure what you mean by "the logic". BIT is nice to use when there
> > area a lot of 1 << X, because it makes clear which different its are
> > relevant.  When 1 << X is mixed with other things, it breaks the pattern to
> > suddenly use BIT for one of them.
>
> I should have said "the implicit meaning".
>
> Or as i questioned it's about the pattern to better leave it and choose
> the pattern over the change in cases like this?

Yes, it's better to respect the local pattern.

julia

