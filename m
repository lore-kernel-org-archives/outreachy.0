X-GM-THRID: 6389791832562204672
X-Received: by 10.36.34.144 with SMTP id o138mr987877ito.14.1487831076250;
        Wed, 22 Feb 2017 22:24:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.66.83 with SMTP id i80ls890662itb.6.gmail; Wed, 22 Feb 2017
 22:24:35 -0800 (PST)
X-Received: by 10.99.241.69 with SMTP id o5mr11244810pgk.167.1487831075306;
        Wed, 22 Feb 2017 22:24:35 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0079.hostedemail.com. [216.40.44.79])
        by gmr-mx.google.com with ESMTPS id n127si560466ita.3.2017.02.22.22.24.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 22:24:35 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.79 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.79;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.79 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id A1F779EA13;
	Thu, 23 Feb 2017 06:24:34 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::,RULES_HIT:41:355:379:541:599:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1381:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:1981:2194:2199:2393:2553:2559:2562:2692:2693:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3873:3874:4321:5007:6119:6691:7903:10004:10400:10848:11232:11658:11914:12048:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:21080:30012:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: steam38_a9ab360c5300
X-Filterd-Recvd-Size: 1672
Received: from XPS-9350 (134.sub-70-197-84.myvzw.com [70.197.84.134])
	(Authenticated sender: joe@perches.com)
	by omf02.hostedemail.com (Postfix) with ESMTPA;
	Thu, 23 Feb 2017 06:24:32 +0000 (UTC)
Message-ID: <1487831066.14159.17.camel@perches.com>
Subject: Re: [PATCH v2] staging: wilc1000: renames struct tstrRSSI and its
 members u8Index, u8Full
From: Joe Perches <joe@perches.com>
To: Arend Van Spriel <arend.vanspriel@broadcom.com>, Tahia Khan
	 <tahia.khan@gmail.com>, outreachy-kernel@googlegroups.com, 
	aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
	gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Wed, 22 Feb 2017 22:24:26 -0800
In-Reply-To: <838d3e67-646d-b2d3-ef7d-5812675db6db@broadcom.com>
References: <20170222171403.GA20626@coolbox>
	 <838d3e67-646d-b2d3-ef7d-5812675db6db@broadcom.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2017-02-22 at 20:50 +0100, Arend Van Spriel wrote:
> On 22-2-2017 18:14, Tahia Khan wrote:
> > Fixes multiple camel case checks on struct tstrRSSI from checkpatch.pl:
[]
> Just a generic remark that may help you with other changes you will be
> making in the linux kernel. Warnings from checkpatch.pl and other tools
> are useful, but try to look further than just fixing a warning.
> Understand what the code is doing is just as important.

I'd assert understanding what the code is doing is
_more_ important.  Style consistency simply helps
improve the speed of a new reader's understanding.


