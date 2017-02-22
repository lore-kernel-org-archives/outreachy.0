X-GM-THRID: 6389636871256801280
X-Received: by 10.99.38.199 with SMTP id m190mr10864444pgm.42.1487758079248;
        Wed, 22 Feb 2017 02:07:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.20.73 with SMTP id 70ls232105iou.37.gmail; Wed, 22 Feb
 2017 02:07:58 -0800 (PST)
X-Received: by 10.36.68.70 with SMTP id o67mr373265ita.19.1487758078614;
        Wed, 22 Feb 2017 02:07:58 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0131.hostedemail.com. [216.40.44.131])
        by gmr-mx.google.com with ESMTPS id a17si253445itd.1.2017.02.22.02.07.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 02:07:58 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.131 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.131 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 021BC350C3D;
	Wed, 22 Feb 2017 10:07:57 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:355:379:541:599:960:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1538:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3350:3622:3866:3867:4321:5007:6642:8603:10004:10400:10848:11026:11232:11473:11658:11914:12485:12740:12760:12895:13069:13311:13357:13439:14659:14721:14879:21080:30012:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: frogs97_b2c77d58ec2a
X-Filterd-Recvd-Size: 1459
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Wed, 22 Feb 2017 10:07:56 +0000 (UTC)
Message-ID: <1487758075.14159.3.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/7] staging: most: Using macro
 DIV_ROUND_UP
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, simran singhal
	 <singhalsimran0@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Wed, 22 Feb 2017 02:07:55 -0800
In-Reply-To: <alpine.DEB.2.20.1702221025550.3145@hadrien>
References: <20170222091015.GA11058@singhal-Inspiron-5558>
	 <alpine.DEB.2.20.1702221025550.3145@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2017-02-22 at 10:27 +0100, Julia Lawall wrote:
> > @@ -117,7 +118,7 @@ static int alloc_dbr(u16 size)
> >  		return DBR_SIZE; /* out of memory */
> > 
> >  	for (i = 0; i < DBR_MAP_SIZE; i++) {
> > -		u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
> > +		u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
> >  		u32 mask = ~((~(u32)0) << blocks);
> 
> Totally unrelated to DIV_ROUND_UP, would this code be a candidate for
> GENMASK?

Maybe "(1 << blocks) - 1" would be more intelligible.


