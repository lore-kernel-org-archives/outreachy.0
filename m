X-GM-THRID: 6391475391095111680
X-Received: by 10.99.160.69 with SMTP id u5mr3040041pgn.47.1488229891791;
        Mon, 27 Feb 2017 13:11:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.34 with SMTP id n31ls12946372ota.4.gmail; Mon, 27 Feb
 2017 13:11:31 -0800 (PST)
X-Received: by 10.159.48.19 with SMTP id h19mr4912484uab.23.1488229891415;
        Mon, 27 Feb 2017 13:11:31 -0800 (PST)
Received: by 10.202.59.84 with SMTP id i81msoia;
        Mon, 27 Feb 2017 12:47:05 -0800 (PST)
X-Received: by 10.159.32.79 with SMTP id 73mr4858976uam.32.1488228424948;
        Mon, 27 Feb 2017 12:47:04 -0800 (PST)
Return-Path: <mzoran@crowfest.net>
Received: from gw.crowfest.net (gw.crowfest.net. [52.42.241.221])
        by gmr-mx.google.com with ESMTP id s64si3449477pfk.0.2017.02.27.12.47.04
        for <outreachy-kernel@googlegroups.com>;
        Mon, 27 Feb 2017 12:47:04 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of mzoran@crowfest.net designates 52.42.241.221 as permitted sender) client-ip=52.42.241.221;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of mzoran@crowfest.net designates 52.42.241.221 as permitted sender) smtp.mailfrom=mzoran@crowfest.net
Received: from mail.crowfest.net (unknown [192.168.1.2])
	by gw.crowfest.net (Postfix) with ESMTP id 76B5E60152;
	Mon, 27 Feb 2017 12:47:01 -0800 (PST)
Received: from debian-quad-i7 (unknown [192.168.1.100])
	by mail.crowfest.net (Postfix) with ESMTP id 73871260293;
	Mon, 27 Feb 2017 12:47:04 -0800 (PST)
Message-ID: <1488228424.5276.1.camel@crowfest.net>
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: Fixed
 spacing around '&'
From: Michael Zoran <mzoran@crowfest.net>
To: Scott Branden <scott.branden@broadcom.com>, Julia Lawall
	 <julia.lawall@lip6.fr>
Cc: Joe Perches <joe@perches.com>, Narcisa Ana Maria Vasile
 <narcisaanamaria12@gmail.com>, swarren@wwwdotorg.org, lee@kernel.org, 
 eric@anholt.net, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com,  daniel.baluta@spamfreegmail.com,
 gregkh@linuxfoundation.org,  outreachy-kernel@googlegroups.com,
 bcm-kernel-feedback-list@broadcom.com,  danielperezdeandres@gmail.com,
 dan.carpenter@oracle.com,  devel@driverdev.osuosl.org,
 linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Mon, 27 Feb 2017 12:47:04 -0800
In-Reply-To: <954e0bc5-cd3c-c06f-dbfa-bed486b823c6@broadcom.com>
References: <1488131271-2908-1-git-send-email-narcisaanamaria12@gmail.com>
	 <alpine.DEB.2.20.1702261901180.2056@hadrien>
	 <1488134072.9188.3.camel@perches.com>
	 <alpine.DEB.2.20.1702261956070.2056@hadrien>
	 <1488137824.9188.7.camel@perches.com>
	 <alpine.DEB.2.20.1702262038560.2056@hadrien>
	 <1488146211.9188.10.camel@perches.com>
	 <3ed05e4f-b00a-8a4b-f4f2-de23ff9b461e@broadcom.com>
	 <alpine.DEB.2.20.1702270724430.2187@hadrien>
	 <954e0bc5-cd3c-c06f-dbfa-bed486b823c6@broadcom.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Mon, 2017-02-27 at 12:35 -0800, Scott Branden wrote:
> > 
> Hi Julia,
> 
> On 17-02-26 10:25 PM, Julia Lawall wrote:
> > 
> > If you consider that you are getting too much outreachy mail at the
> > moment, just let me know what subsystem you want me to add an
> > exception
> > for.
> 
> The emails seem to mostly be coming with bcm2835-audio.
> > 
> > thanks,
> > julia
> 
> Thanks,
>   Scott

I submitted the driver to stagging, so I feel a bit responsible for
this.  

I personally don't mind e-mails like this since people have to get
started somehow, and e-mail is rather easy to ignore or delete...

Perhaps it would make sense to either update the maintainer list for
this driver or move the driver somewhere else in staging?  I was
looking at the maintainer list for bcm2835, and it already marks
vc04_services as part of the bcm2835 files.  Perhaps another mark
should be added or the driver moved under vc04_services?




