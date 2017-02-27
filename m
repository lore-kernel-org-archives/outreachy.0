X-GM-THRID: 6391475391095111680
X-Received: by 10.129.179.136 with SMTP id r130mr3826610ywh.162.1488176739763;
        Sun, 26 Feb 2017 22:25:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.92 with SMTP id u28ls8282417otd.12.gmail; Sun, 26 Feb
 2017 22:25:39 -0800 (PST)
X-Received: by 10.157.52.218 with SMTP id t26mr5908772otd.63.1488176739410;
        Sun, 26 Feb 2017 22:25:39 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v134si877759vke.3.2017.02.26.22.25.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 22:25:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,212,1484002800"; 
   d="scan'208";a="214799346"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2017 07:25:32 +0100
Date: Mon, 27 Feb 2017 07:25:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Scott Branden <scott.branden@broadcom.com>
cc: Joe Perches <joe@perches.com>, Julia Lawall <julia.lawall@lip6.fr>, 
    Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>, 
    swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net, 
    f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com, 
    daniel.baluta@spamfreegmail.com, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, bcm-kernel-feedback-list@broadcom.com, 
    mzoran@crowfest.net, danielperezdeandres@gmail.com, 
    dan.carpenter@oracle.com, devel@driverdev.osuosl.org, 
    linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: Fixed spacing
 around '&'
In-Reply-To: <3ed05e4f-b00a-8a4b-f4f2-de23ff9b461e@broadcom.com>
Message-ID: <alpine.DEB.2.20.1702270724430.2187@hadrien>
References: <1488131271-2908-1-git-send-email-narcisaanamaria12@gmail.com> <alpine.DEB.2.20.1702261901180.2056@hadrien> <1488134072.9188.3.camel@perches.com> <alpine.DEB.2.20.1702261956070.2056@hadrien> <1488137824.9188.7.camel@perches.com>
 <alpine.DEB.2.20.1702262038560.2056@hadrien> <1488146211.9188.10.camel@perches.com> <3ed05e4f-b00a-8a4b-f4f2-de23ff9b461e@broadcom.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 26 Feb 2017, Scott Branden wrote:

>
>
> On 17-02-26 01:56 PM, Joe Perches wrote:
> > On Sun, 2017-02-26 at 20:40 +0100, Julia Lawall wrote:
> > > On Sun, 26 Feb 2017, Joe Perches wrote:
> > > > On Sun, 2017-02-26 at 19:59 +0100, Julia Lawall wrote:
> > > > > On Sun, 26 Feb 2017, Joe Perches wrot
> > > > > > Mailing lists _should_ be copied on patch submissions.
> > > > > The idea of outreachy is that it should be a place for people to get
> > > > > started without too much criticism from the outside.  Originally, only
> > > > > the
> > > > > outreachy mailing list received patches.  But staging maintainers were
> > > > > confused to have their drivers receiving patches that they had not
> > > > > seen.
> > > > > So we expanded it to maintainers.
> > > >
> > > > That also doesn't make much sense as patches
> > > > should not be applied that have not reached
> > > > a mailing list for review.
> > > >
> > > > As long as initial outreachy patches are not
> > > > applied and are just for internal review by
> > > > any outside person but the outreachy list and
> > > > are not be applied by maintainers, then perhaps
> > > > it's best if neither maintainers nor lists are
> > > > cc'd on the patches.
> > >
> > > The patches are applied by Greg.  Greg suggested the policy of adding
> > > maintainers but not including mailing lists.  I'll let him consider
> > > whether the policy should be changed.
> >
> > Well, I will comment on patches sent to the kernel list.
> >
> > I'm not subscribed to outreachy and I don't want to be
> > subscribed to that list either.
> >
> I would prefer this outreachy work uses their own mailing list and reviews
> their patches first.  Then once they have everything sorted out they send out
> the patch series to the proper maintainers/mailing lists. That way we're not
> spammed with all these emails of people as they are learning how to format and
> send out proper patches.

If you consider that you are getting too much outreachy mail at the
moment, just let me know what subsystem you want me to add an exception
for.

thanks,
julia

