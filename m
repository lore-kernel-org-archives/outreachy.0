X-GM-THRID: 6256430192250585088
X-Received: by 10.194.84.40 with SMTP id v8mr1188788wjy.2.1456689238689;
        Sun, 28 Feb 2016 11:53:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.130 with SMTP id i124ls227777wmf.0.canary; Sun, 28 Feb
 2016 11:53:58 -0800 (PST)
X-Received: by 10.28.128.204 with SMTP id b195mr712519wmd.7.1456689238262;
        Sun, 28 Feb 2016 11:53:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s141si607807wmd.1.2016.02.28.11.53.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:53:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,516,1449529200"; 
   d="scan'208";a="166251559"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 20:53:57 +0100
Date: Sun, 28 Feb 2016 20:53:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 0/6] Remove NULL test before vfree
In-Reply-To: <CAFNHFT_j5ORVAnEXJYWLAHikbRNjf5+YKKG3EcAS0GOs9WWmWA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602282053160.2075@localhost6.localdomain6>
References: <20160228194139.GA1694@Karyakshetra> <alpine.DEB.2.02.1602282045040.2075@localhost6.localdomain6> <CAFNHFT_j5ORVAnEXJYWLAHikbRNjf5+YKKG3EcAS0GOs9WWmWA@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 29 Feb 2016, Bhaktipriya Shridhar wrote:

> Hello Julia,
> 
> Well, you caught me there :)
> Path names were the same for some patches because the files belonged
> to the same directory.
> Can you suggest a different subject?

If need be, you could go down to the file name (without the .c).  Or just 
put the patches for two files together.  None of the patches are that big.

julia

> 
> Thanks,
> Bhaktipriya
> 
> 
> 
> 
> On Mon, Feb 29, 2016 at 1:16 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Mon, 29 Feb 2016, Bhaktipriya Shridhar wrote:
> >
> >> This patch-set removes NULL tests before vfree.
> >>
> >> Bhaktipriya Shridhar (6):
> >>   staging: rts5208: Remove NULL test before vfree
> >>   staging: rtl8192e: Remove NULL test before vfree
> >>   staging: rts5208: Remove NULL Test before vfree
> >>   staging: rtl8188eu: core: Remove NULL test before vfree
> >>   staging: rtl8188eu: core: Remove NULL Test before vfree
> >
> > I think that turning test into Test is a slightly subtle way of making the
> > subject lines different.  It could be better to use a bit more of the path
> > name.
> >
> > julia
> >
> >>   staging: rtl8188eu: os_dep: Remove NULL test before vfree
> >>
> >>  drivers/staging/rtl8188eu/core/rtw_recv.c    |  3 +--
> >>  drivers/staging/rtl8188eu/core/rtw_sta_mgt.c |  3 +--
> >>  drivers/staging/rtl8188eu/os_dep/usb_intf.c  |  2 +-
> >>  drivers/staging/rtl8192e/rtl8192e/rtl_core.c |  6 ++---
> >>  drivers/staging/rts5208/ms.c                 | 30 ++++++++---------------
> >>  drivers/staging/rts5208/xd.c                 | 36 ++++++++++------------------
> >>  6 files changed, 27 insertions(+), 53 deletions(-)
> >>
> >> --
> >> 2.1.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160228194139.GA1694%40Karyakshetra.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
> 

