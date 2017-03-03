X-GM-THRID: 6393234614676094976
X-Received: by 10.99.107.1 with SMTP id g1mr1917165pgc.100.1488572029383;
        Fri, 03 Mar 2017 12:13:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls11458052otc.30.gmail; Fri, 03 Mar
 2017 12:13:48 -0800 (PST)
X-Received: by 10.157.33.117 with SMTP id l50mr1832134otd.57.1488572028973;
        Fri, 03 Mar 2017 12:13:48 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0151.hostedemail.com. [216.40.44.151])
        by gmr-mx.google.com with ESMTPS id n145si600797vkf.1.2017.03.03.12.13.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 12:13:48 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.151 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.151;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.151 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 5ED096B5B0;
	Fri,  3 Mar 2017 20:13:45 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::,RULES_HIT:41:152:355:379:541:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2689:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3873:3874:4321:5007:7903:9545:10004:10400:10848:11026:11232:11657:11658:11914:12043:12740:12895:13069:13163:13229:13311:13357:13894:14181:14659:14721:21080:21434:21451:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: field13_29c365fe8e44
X-Filterd-Recvd-Size: 2373
Received: from XPS-9350 (193.sub-70-197-78.myvzw.com [70.197.78.193])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Fri,  3 Mar 2017 20:13:37 +0000 (UTC)
Message-ID: <1488572013.2179.34.camel@perches.com>
Subject: Re: [PATCH v3 0/5] Fixed compilation error
From: Joe Perches <joe@perches.com>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: Larry.Finger@lwfinger.net, Florian Schilhabel
 <florian.c.schilhabel@googlemail.com>, Greg KH
 <gregkh@linuxfoundation.org>,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, oleg.drokin@intel.com,  marvin24@gmx.de,
 outreachy-kernel@googlegroups.com
Date: Fri, 03 Mar 2017 12:13:33 -0800
In-Reply-To: <CALrZqyMKJvhQMAdjtLWWKTtxOP+icRZ6bctB0bTtzA8gJi+wNA@mail.gmail.com>
References: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com>
	 <1488556204.2179.32.camel@perches.com>
	 <CALrZqyMKJvhQMAdjtLWWKTtxOP+icRZ6bctB0bTtzA8gJi+wNA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Fri, 2017-03-03 at 21:35 +0530, SIMRAN SINGHAL wrote:
> On Fri, Mar 3, 2017 at 9:20 PM, Joe Perches <joe@perches.com> wrote:
> > On Fri, 2017-03-03 at 17:05 +0530, simran singhal wrote:
> > > Fixed compilation warning in lustre/lustre/llite/range_lock.c
> > 
> > Really?  What compilation warning was removed?
> 
> CC [M]  drivers/staging/lustre/lustre/mgc/mgc_request.o
> drivers/staging/lustre/lustre/mgc/mgc_request.c: In function
> ‘mgc_set_info_async’:
> drivers/staging/lustre/lustre/mgc/mgc_request.c:1036:115: warning:
> format ‘%s’ expects argument of type ‘char *’, but argument 3 has type
> ‘void *’ [-Wformat=]
> 
> I was getting this warning because of changing (char *)val to val
> where val is a pointer to void.
> So I fixed this by reverting this change.

Wrong thought.

Your original defective patches were not applied and
this is a simple revision to those defective patches
that do not include defects.

As Julia has said, you should use the imperative and
describe the change that this patch series implements.

i.e:

Subject: [PATCH V3 0/5] staging: Remove unnecessary casts

Casting void pointers to another undereferenced type is
generally unnecessary so remove the unnecessary casts.


