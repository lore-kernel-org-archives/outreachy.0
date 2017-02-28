X-GM-THRID: 6390824128052461568
X-Received: by 10.200.57.65 with SMTP id t1mr491967qtb.62.1488281397260;
        Tue, 28 Feb 2017 03:29:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.1 with SMTP id e1ls336504ite.16.gmail; Tue, 28 Feb 2017
 03:29:56 -0800 (PST)
X-Received: by 10.98.26.82 with SMTP id a79mr356800pfa.8.1488281396582;
        Tue, 28 Feb 2017 03:29:56 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0123.hostedemail.com. [216.40.44.123])
        by gmr-mx.google.com with ESMTPS id g205si2036620ita.2.2017.02.28.03.29.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 03:29:56 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.123 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.123;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.123 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 1F28729DDA0;
	Tue, 28 Feb 2017 11:29:56 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:541:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:1801:2393:2559:2562:2828:2895:2899:3138:3139:3140:3141:3142:3352:3608:3622:3865:3866:3867:3868:3870:3871:3872:4321:4605:5007:6119:7903:8660:8957:10004:10400:10848:11232:11658:11914:12043:12438:12740:12760:12895:13069:13148:13230:13255:13311:13357:13439:14659:21080:30012:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: work86_3975613e44546
X-Filterd-Recvd-Size: 1719
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Tue, 28 Feb 2017 11:29:54 +0000 (UTC)
Message-ID: <1488281393.25838.27.camel@perches.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v7] staging: xgifb: correct the
 multiple line dereference
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Arushi Singhal <arushisinghal19971997@gmail.com>, 
 arnaud.patard@rtp-net.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 outreachy-kernel@googlegroups.com
Date: Tue, 28 Feb 2017 03:29:53 -0800
In-Reply-To: <alpine.DEB.2.20.1702281220220.3056@hadrien>
References: <20170228104507.GA30448@arushi-HP-Pavilion-Notebook>
	 <1488280264.25838.26.camel@perches.com>
	 <alpine.DEB.2.20.1702281220220.3056@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2017-02-28 at 12:24 +0100, Julia Lawall wrote:
> It's drifting a little bit from the original issue, but the whole *i thing
> is not very nice.  The function is used in only one place, and the call
> looks like this:
> 
>                temp = XGI_AjustCRT2Rate(ModeIdIndex, RefreshRateTableIndex,
> 	                                 &i, pVBInfo);
> 
> immediately followed by:
> 
> return RefreshRateTableIndex + i;
> 
> temp is never used.  Could the function be made to return a negative error
> code on failure and the updated value of i on success?  The (*i) could
> become just i, which would even be a little shorter.

I don't see why not.

