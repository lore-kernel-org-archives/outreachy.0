X-GM-THRID: 6391475391095111680
X-Received: by 10.46.22.68 with SMTP id 4mr1589402ljw.14.1488138042741;
        Sun, 26 Feb 2017 11:40:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.227 with SMTP id f96ls275271lji.31.gmail; Sun, 26 Feb
 2017 11:40:41 -0800 (PST)
X-Received: by 10.46.6.26 with SMTP id 26mr1578397ljg.31.1488138041209;
        Sun, 26 Feb 2017 11:40:41 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si621054wmg.3.2017.02.26.11.40.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 11:40:41 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,210,1484002800"; 
   d="scan'208";a="262143745"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2017 20:40:40 +0100
Date: Sun, 26 Feb 2017 20:40:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, 
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
In-Reply-To: <1488137824.9188.7.camel@perches.com>
Message-ID: <alpine.DEB.2.20.1702262038560.2056@hadrien>
References: <1488131271-2908-1-git-send-email-narcisaanamaria12@gmail.com>  <alpine.DEB.2.20.1702261901180.2056@hadrien>  <1488134072.9188.3.camel@perches.com>  <alpine.DEB.2.20.1702261956070.2056@hadrien> <1488137824.9188.7.camel@perches.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 26 Feb 2017, Joe Perches wrote:

> On Sun, 2017-02-26 at 19:59 +0100, Julia Lawall wrote:
> > On Sun, 26 Feb 2017, Joe Perches wrote:
> > > Mailing lists _should_ be copied on patch submissions.
> >
> > The idea of outreachy is that it should be a place for people to get
> > started without too much criticism from the outside.  Originally, only the
> > outreachy mailing list received patches.  But staging maintainers were
> > confused to have their drivers receiving patches that they had not seen.
> > So we expanded it to maintainers.
>
> That also doesn't make much sense as patches
> should not be applied that have not reached
> a mailing list for review.
>
> As long as initial outreachy patches are not
> applied and are just for internal review by
> any outside person but the outreachy list and
> are not be applied by maintainers, then perhaps
> it's best if neither maintainers nor lists are
> cc'd on the patches.

The patches are applied by Greg.  Greg suggested the policy of adding
maintainers but not including mailing lists.  I'll let him consider
whether the policy should be changed.

> And the link you sent is for newbies, not for
> outreachy.

The link is part of the outreachy tutorial, which is hosted by the
kernelnewbies website.

julia

>
> The "don't cc lists" --nol use is inappropriate
> there.
>
>

