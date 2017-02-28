X-GM-THRID: 6390824128052461568
X-Received: by 10.36.213.87 with SMTP id a84mr255726itg.2.1488262743888;
        Mon, 27 Feb 2017 22:19:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls240839otd.46.gmail; Mon, 27 Feb 2017
 22:19:03 -0800 (PST)
X-Received: by 10.157.44.171 with SMTP id p40mr217826otb.79.1488262743459;
        Mon, 27 Feb 2017 22:19:03 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0169.hostedemail.com. [216.40.44.169])
        by gmr-mx.google.com with ESMTPS id b188si1848097ite.3.2017.02.27.22.19.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 22:19:03 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.169 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.169;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.169 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id C41A89EA12;
	Tue, 28 Feb 2017 06:19:02 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:355:379:541:599:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2692:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3874:4321:5007:6248:7903:8957:10004:10400:10848:11232:11658:11914:12043:12438:12740:12760:12895:13019:13069:13311:13357:13439:14181:14659:14721:14777:21060:21080:21433:21451:30012:30030:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: egg35_6be39134bef5e
X-Filterd-Recvd-Size: 1947
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Tue, 28 Feb 2017 06:19:01 +0000 (UTC)
Message-ID: <1488262740.25838.20.camel@perches.com>
Subject: Re: [PATCH v6] staging: xgifb: correct the multiple line dereference
From: Joe Perches <joe@perches.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arushi Singhal
	 <arushisinghal19971997@gmail.com>
Cc: arnaud.patard@rtp-net.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Mon, 27 Feb 2017 22:19:00 -0800
In-Reply-To: <20170228055141.GB25790@kroah.com>
References: <20170228050530.GA13332@arushi-HP-Pavilion-Notebook>
	 <20170228055141.GB25790@kroah.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2017-02-28 at 06:51 +0100, Greg Kroah-Hartman wrote:
> On Tue, Feb 28, 2017 at 10:35:30AM +0530, Arushi Singhal wrote:
> > Error reported by checkpatch.pl as "avoid multiple line dereference".
> > Addition of new variables to make the code more readable and also to
> > correct about mentioned error as by itroducing new variables line is
> > not exceeding 80 characters.
[]
> Remember, coding style cleanups are to be done to make the code easier
> to understand and follow.  Not to blindly follow a perl script that
> can not think.  Sometimes it is not right...

Yeah, what Greg said.

Also very long identifier names like RefreshRateTableIndex
and simple dereferences like
	XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag
make using 80 columns silly.

Just ignore 80 column limits when there are 20+ character
identifiers.  Ideally shorten the identifiers to something
less verbose and/or use temporaries where appropriate like
I showed in my reply to your suggested V5 patch.




