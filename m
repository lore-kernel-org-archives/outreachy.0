X-GM-THRID: 6950254518663643136
X-Received: by 2002:a7b:c0c4:: with SMTP id s4mr233475wmh.184.1618249011384;
        Mon, 12 Apr 2021 10:36:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls345579wrb.1.gmail; Mon, 12
 Apr 2021 10:36:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw5IV+gmW3hcsx3+rsOLKZsc0dVA+MA4xfV24To+SFCQMmxrcDLw8CkIAPfHTjLV3qWdc0e
X-Received: by 2002:a5d:5047:: with SMTP id h7mr33576353wrt.111.1618249009850;
        Mon, 12 Apr 2021 10:36:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618249009; cv=none;
        d=google.com; s=arc-20160816;
        b=RRwnXO/9NSV23m9W9VbUbnY4RHJgYyOrrENHJggzoXI/xbuyds5j2DhcSVNZC+qC0E
         iAh7FwBnkLksJwbOOPFiwGXl2jLvO7g2Q/4hs+Iv7Jmo0BbBQE19b4efua6/6zD4iOLE
         Dvg8hCRoGHUPXtszKg86jclVNFgkkfUXrLqp8+MhrY4cXjDsCwvZzPQjRRKh82XoE2Va
         PMZc5ZezgBmxXa1OVpXU2+DDyJDS+aFUmiVjpaPW67JYJnWlGv/zEJIMpcdukI31IFDU
         nLV7oRNikympd/ffADtWGpHFkBpBKzEUAAP+pXPLCFW/OGdvy5PWMNAkPgR9sKeweN7H
         KbPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=xtUy6lwDvmfxrhFaAjVIeezXp58mcbOUkRk2nvIcC3Y=;
        b=NOKSLoH5O5vBBRTgXc8sy+UXQ0LQdJfgHOb7bxUSjjQlu5ixPccjdvnv8La3WdT4iO
         qytDm/tH4kWil+VMHcVvkjbPAzXfjnlTA2lmnTztiJ/zW1NGDYJwtFV2v/6UUKTg7hiS
         DD4Who8skkyNRG7OudZVygS/npeKo74NSoqMGeOCPEulk6MX1bLeCmy7RIQ28MaoyMQR
         sXuC1eoA2HdITCzODHAvXwKiu8cSbeyVVFg+MbyxYicnMKrDrS83h7xMUsvlzHfD+SCs
         fRzo6NUmcdYssuGLsm1DOi26ZUy4K9baiwEBzPQM1HFk0m/y3QEaYHVtyNI75CWadMH3
         BgkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n35si4485wmp.0.2021.04.12.10.36.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 10:36:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AB6KvC6ktcv9yupI+gmW6Ea262EDpDfLN3DAb?=
 =?us-ascii?q?vn1ZSRFFG/GwvcaogfgdyFvImC8cMUtQ/eyoFaGcTRrnnqJdzpIWOd6ZNjXOmG?=
 =?us-ascii?q?ztF4166Jun/juIIUzD38p88YslTKRkEt33CjFB/KPHyS21CcwpztXC0I3Av4fj?=
 =?us-ascii?q?5kxgRw1rdK1shj0RYjqzKUF4SBJLApA0DvOnl6l6jgC9cncaZNnTPBc4dtXEzu?=
 =?us-ascii?q?emqLvbexIcQzYo5A6S5AnYioLSIlyomi0TVD5C2t4ZnFTtmQaR3Mqej80=3D?=
X-IronPort-AV: E=Sophos;i="5.82,216,1613430000"; 
   d="scan'208";a="378452073"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 19:36:49 +0200
Date: Mon, 12 Apr 2021 19:36:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: ascordeiro <alinesantanacordeiro@gmail.com>
cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel][PATCH 1/4 v2] staging: media: omap4iss:
 Replace macro function by static inline function in file iss.c
In-Reply-To: <babb019f0950cf11857a4bcf20a572f2eace1777.camel@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104121935590.19780@hadrien>
References: <cover.1618231618.git.alinesantanacordeiro@gmail.com>  <e302566a3d9e5180ab27eb2c2824fd1b678a6d99.1618231618.git.alinesantanacordeiro@gmail.com>  <YHRNzq3h3LEp3Dgc@pendragon.ideasonboard.com>  <7457fd4eb5afbf66b3a6f2fed4dd1e440e6ed422.camel@gmail.com>
  <YHRjPpMVVrhTF7Tc@pendragon.ideasonboard.com> <babb019f0950cf11857a4bcf20a572f2eace1777.camel@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1464564743-1618249009=:19780"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1464564743-1618249009=:19780
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 12 Apr 2021, ascordeiro wrote:

> Em seg, 2021-04-12 às 18:11 +0300, Laurent Pinchart escreveu:
> > Hi Aline,
> >
> > On Mon, Apr 12, 2021 at 10:58:45AM -0300, ascordeiro wrote:
> > > Em seg, 2021-04-12 às 16:40 +0300, Laurent Pinchart escreveu:
> > > > While testing on a device isn't a requirement as you can't be
> > > > expected
> > > > to have the necessary hardware, changes are expected to be at
> > > > least
> > > > compile-tested before being submitted.
> > >
> > > Hi Laurent,
> > >
> > > I thought recompiling the kernel would be enough in this case.
> > > I recompiled it in native Ubuntu 16.04 without errors.
> >
> > Did it compile the driver you modified ?
> >
> I'm sorry, It didn't. I forgot to enable the option to compile the
> driver as a module in "make menuconfig" and now I'm seeing the problems
> I generated.

You can easily compile a single file using make path/foo.o and a single
directory using make path/.

julia
--8323329-1464564743-1618249009=:19780--

