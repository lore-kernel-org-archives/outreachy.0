X-GM-THRID: 6389612389434654720
X-Received: by 10.157.28.175 with SMTP id l47mr9753015ota.58.1487702539758;
        Tue, 21 Feb 2017 10:42:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.71 with SMTP id 65ls13149051otc.33.gmail; Tue, 21 Feb
 2017 10:42:19 -0800 (PST)
X-Received: by 10.157.54.142 with SMTP id h14mr7028028otc.38.1487702539347;
        Tue, 21 Feb 2017 10:42:19 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0231.hostedemail.com. [216.40.44.231])
        by gmr-mx.google.com with ESMTPS id 13si265307iti.0.2017.02.21.10.42.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 10:42:19 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.231 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.231;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.231 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id BB308C1F72;
	Tue, 21 Feb 2017 18:42:16 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:541:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3871:3872:3874:4321:5007:7903:10004:10400:10471:10848:11026:11232:11473:11658:11783:11914:12740:12895:13069:13161:13229:13255:13311:13357:13439:13894:14181:14659:14721:21060:21080:30012:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: brake12_4dd4ea886423d
X-Filterd-Recvd-Size: 1813
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf08.hostedemail.com (Postfix) with ESMTPA;
	Tue, 21 Feb 2017 18:42:14 +0000 (UTC)
Message-ID: <1487702533.2853.23.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb: correct the multiple
 line dereference to fix coding stye errors
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Arushi Singhal
	 <arushisinghal19971997@gmail.com>
Cc: arnaud.patard@rtp-net.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  outreachy-kernel@googlegroups.com
Date: Tue, 21 Feb 2017 10:42:13 -0800
In-Reply-To: <alpine.DEB.2.20.1702211840010.3448@hadrien>
References: <20170221171920.GA18917@arushi-HP-Pavilion-Notebook>
	 <alpine.DEB.2.20.1702211840010.3448@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Tue, 2017-02-21 at 18:40 +0100, Julia Lawall wrote:
> 
> On Tue, 21 Feb 2017, Arushi Singhal wrote:
> 
> > Error was reported by checkpatch.pl as
> > WARNING: Avoid multiple line dereference...
> > if there is boolean operator then it is fixed by Splitting line at
> > boolean operator.
> 
> This is massively execeeding the 80 character boundary, and not for
> something trivial like a string.  Maybe the code can be reorganized in
> some other way.

The easiest way to do that is to change the test above it
to reduce indentation from

	if (xgifb_info->display2 == XGIFB_DISP_TV &&
	����xgifb_info->hasVB == HASVB_301) {
		[code...];
	}
}

to

	if (xgifb_info->display2 != XGIFB_DISP_TV ||
	����xgifb_in
fo->hasVB != HASVB_301)
		return;

	[code...];
}


