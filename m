X-GM-THRID: 6391475391095111680
X-Received: by 10.107.168.13 with SMTP id r13mr4890701ioe.58.1488137831691;
        Sun, 26 Feb 2017 11:37:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.43.135 with SMTP id h129ls1720851ita.4.canary-gmail; Sun,
 26 Feb 2017 11:37:10 -0800 (PST)
X-Received: by 10.99.8.196 with SMTP id 187mr4953335pgi.115.1488137830918;
        Sun, 26 Feb 2017 11:37:10 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0055.hostedemail.com. [216.40.44.55])
        by gmr-mx.google.com with ESMTPS id n127si998480ita.3.2017.02.26.11.37.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 11:37:10 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.55 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.55;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.55 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 26B819EA15;
	Sun, 26 Feb 2017 19:37:10 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::::,RULES_HIT:41:355:379:541:599:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2553:2559:2562:2828:2902:2911:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:3872:3873:3874:4321:4425:5007:6691:6742:7903:9010:9108:10004:10400:10848:11232:11658:11914:12740:12760:12895:13069:13161:13229:13311:13357:13439:14096:14097:14659:21080:21326:30054:30060:30090:30091,0,RBL:error,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:error,Custom_rules:0:0:0,LFtime:2000,LUA_SUMMARY:none
X-HE-Tag: snake08_7816a88156d31
X-Filterd-Recvd-Size: 2409
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Sun, 26 Feb 2017 19:37:05 +0000 (UTC)
Message-ID: <1488137824.9188.7.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: Fixed
 spacing around '&'
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>, 
 swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net,
 f.fainelli@gmail.com,  rjui@broadcom.com, sbranden@broadcom.com,
 daniel.baluta@spamfreegmail.com,  gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com,  bcm-kernel-feedback-list@broadcom.com,
 mzoran@crowfest.net,  danielperezdeandres@gmail.com,
 dan.carpenter@oracle.com,  devel@driverdev.osuosl.org,
 linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Sun, 26 Feb 2017 11:37:04 -0800
In-Reply-To: <alpine.DEB.2.20.1702261956070.2056@hadrien>
References: <1488131271-2908-1-git-send-email-narcisaanamaria12@gmail.com>
	 <alpine.DEB.2.20.1702261901180.2056@hadrien>
	 <1488134072.9188.3.camel@perches.com>
	 <alpine.DEB.2.20.1702261956070.2056@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2017-02-26 at 19:59 +0100, Julia Lawall wrote:
> On Sun, 26 Feb 2017, Joe Perches wrote:
> > Mailing lists _should_ be copied on patch submissions.
> 
> The idea of outreachy is that it should be a place for people to get
> started without too much criticism from the outside.  Originally, only the
> outreachy mailing list received patches.  But staging maintainers were
> confused to have their drivers receiving patches that they had not seen.
> So we expanded it to maintainers.

That also doesn't make much sense as patches
should not be applied that have not reached
a mailing list for review.

As long as initial outreachy patches are not
applied and are just for internal review by
any outside person but the outreachy list and
are not be applied by maintainers, then perhaps
it's best if neither maintainers nor lists are
cc'd on the patches.

And the link you sent is for newbies, not for
outreachy.

The "don't cc lists" --nol use is inappropriate
there.


