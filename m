X-GM-THRID: 6391475391095111680
X-Received: by 10.25.210.76 with SMTP id j73mr1418595lfg.15.1488135559487;
        Sun, 26 Feb 2017 10:59:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.6 with SMTP id i6ls374627ljb.3.gmail; Sun, 26 Feb 2017
 10:59:17 -0800 (PST)
X-Received: by 10.46.21.91 with SMTP id 27mr1382341ljv.0.1488135557796;
        Sun, 26 Feb 2017 10:59:17 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h198si546748wmg.1.2017.02.26.10.59.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 10:59:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,209,1484002800"; 
   d="scan'208";a="262141774"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2017 19:59:16 +0100
Date: Sun, 26 Feb 2017 19:59:16 +0100 (CET)
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
In-Reply-To: <1488134072.9188.3.camel@perches.com>
Message-ID: <alpine.DEB.2.20.1702261956070.2056@hadrien>
References: <1488131271-2908-1-git-send-email-narcisaanamaria12@gmail.com>  <alpine.DEB.2.20.1702261901180.2056@hadrien> <1488134072.9188.3.camel@perches.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 26 Feb 2017, Joe Perches wrote:

> On Sun, 2017-02-26 at 19:03 +0100, Julia Lawall wrote:
> >
> > On Sun, 26 Feb 2017, Narcisa Ana Maria Vasile wrote:
> >
> > > This was reported by checkpatch.pl
> > >
> > > Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> >
> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> >
> > Actually, the outreachy tutorial says not to send patches to mailing
> > lists, only to people (except in the case of IIO, where the maintainers
> > asked for patches to be sent to mailing lists as well).  The
> > get_maintainer command to use is shown here:
> >
> > https://kernelnewbies.org/FirstKernelPatch#submit_a_patch
>
> That doesn't make any sense to me.
> Mailing lists _should_ be copied on patch submissions.

The idea of outreachy is that it should be a place for people to get
started without too much criticism from the outside.  Originally, only the
outreachy mailing list received patches.  But staging maintainers were
confused to have their drivers receiving patches that they had not seen.
So we expanded it to maintainers.

>
> And the displayed output of that command-line does not match
> the actual behavior.
>
> The command-line is:
> $ perl scripts/get_maintainer.pl --separator , --nokeywords --nogit --nogit-fallback --norolestats --nol -f drivers/staging/most/aim-sound/sound.c
>
> And the output shown is:
> Greg Kroah-Hartman <gregkh@linuxfoundation.org>,devel@driverdev.osuosl.org,linux-kernel@vger.kernel.org
>
> That's not what's actually output by that command-line
> as it would not show the mailing list.
>
> $ perl scripts/get_maintainer.pl --separator , --nokeywords --nogit --nogit-fallback --norolestats --nol -f drivers/staging/most/aim-sound/sound.c
> Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Thanks for the report, I will fix the output.

julia

> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488134072.9188.3.camel%40perches.com.
> For more options, visit https://groups.google.com/d/optout.
>

