X-GM-THRID: 6391475391095111680
X-Received: by 10.13.252.194 with SMTP id m185mr4660837ywf.145.1488134078717;
        Sun, 26 Feb 2017 10:34:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.92 with SMTP id u28ls7383715otd.12.gmail; Sun, 26 Feb
 2017 10:34:38 -0800 (PST)
X-Received: by 10.129.88.85 with SMTP id m82mr4710400ywb.97.1488134078281;
        Sun, 26 Feb 2017 10:34:38 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0118.hostedemail.com. [216.40.44.118])
        by gmr-mx.google.com with ESMTPS id n127si985411ita.3.2017.02.26.10.34.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 10:34:38 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.118 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.118;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.118 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id BE9B529DD9A;
	Sun, 26 Feb 2017 18:34:37 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::::,RULES_HIT:41:355:379:541:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6691:6742:7514:7903:8957:9010:9025:10004:10400:10848:11232:11658:11914:12043:12346:12740:12760:12895:13069:13161:13199:13229:13311:13357:13439:14096:14097:14181:14659:14721:21080:21451:30054:30060:30083:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:4,LUA_SUMMARY:none
X-HE-Tag: blade51_ab427a7b8c4d
X-Filterd-Recvd-Size: 2724
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Sun, 26 Feb 2017 18:34:33 +0000 (UTC)
Message-ID: <1488134072.9188.3.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: Fixed
 spacing around '&'
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Narcisa Ana Maria Vasile
	 <narcisaanamaria12@gmail.com>
Cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net,
 f.fainelli@gmail.com,  rjui@broadcom.com, sbranden@broadcom.com,
 daniel.baluta@spamfreegmail.com,  gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com,  bcm-kernel-feedback-list@broadcom.com,
 mzoran@crowfest.net,  danielperezdeandres@gmail.com,
 dan.carpenter@oracle.com,  devel@driverdev.osuosl.org,
 linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Sun, 26 Feb 2017 10:34:32 -0800
In-Reply-To: <alpine.DEB.2.20.1702261901180.2056@hadrien>
References: <1488131271-2908-1-git-send-email-narcisaanamaria12@gmail.com>
	 <alpine.DEB.2.20.1702261901180.2056@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2017-02-26 at 19:03 +0100, Julia Lawall wrote:
> 
> On Sun, 26 Feb 2017, Narcisa Ana Maria Vasile wrote:
> 
> > This was reported by checkpatch.pl
> > 
> > Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> 
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> 
> Actually, the outreachy tutorial says not to send patches to mailing
> lists, only to people (except in the case of IIO, where the maintainers
> asked for patches to be sent to mailing lists as well).  The
> get_maintainer command to use is shown here:
> 
> https://kernelnewbies.org/FirstKernelPatch#submit_a_patch

That doesn't make any sense to me.
Mailing lists _should_ be copied on patch submissions.

And the displayed output of that command-line does not match
the actual behavior.

The command-line is:
$ perl scripts/get_maintainer.pl --separator , --nokeywords --nogit --nogit-fallback --norolestats --nol -f drivers/staging/most/aim-sound/sound.c

And the output shown is:
Greg Kroah-Hartman <gregkh@linuxfoundation.org>,devel@driverdev.osuosl.org,linux-kernel@vger.kernel.org

That's not what's actually output by that command-line
as it would not show the mailing list.

$ perl scripts/get_maintainer.pl --separator , --nokeywords --nogit --nogit-fallback --norolestats --nol -f drivers/staging/most/aim-sound/sound.c
Greg Kroah-Hartman <gregkh@linuxfoundation.org>


