X-GM-THRID: 6393429839339061248
X-Received: by 10.157.5.168 with SMTP id 37mr2324754otd.0.1488590150650;
        Fri, 03 Mar 2017 17:15:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.54 with SMTP id 51ls9336400otv.20.gmail; Fri, 03 Mar
 2017 17:15:50 -0800 (PST)
X-Received: by 10.129.146.139 with SMTP id j133mr2331652ywg.173.1488590150205;
        Fri, 03 Mar 2017 17:15:50 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0049.hostedemail.com. [216.40.44.49])
        by gmr-mx.google.com with ESMTPS id e196si759056itc.2.2017.03.03.17.15.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 17:15:50 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.49 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.49;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.49 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id B0673C1F71;
	Sat,  4 Mar 2017 01:15:49 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::,RULES_HIT:41:334:355:368:369:379:541:599:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2693:2828:2915:3138:3139:3140:3141:3142:3353:3622:3653:3865:3866:3867:3868:3870:3872:3873:3874:4250:4321:5007:7903:9040:10004:10400:10848:11232:11658:11914:12663:12740:12760:12895:13069:13095:13311:13357:13439:14096:14097:14181:14659:14721:14777:21080:21433:21451:30022:30054:30069:30089:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: quiet50_15b2cf2c57308
X-Filterd-Recvd-Size: 1865
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Sat,  4 Mar 2017 01:15:48 +0000 (UTC)
Message-ID: <1488590146.2179.39.camel@perches.com>
Subject: Re: checkpatch post-commit hook
From: Joe Perches <joe@perches.com>
To: Alison Schofield <amsfield22@gmail.com>, 
	outreachy-kernel@googlegroups.com
Date: Fri, 03 Mar 2017 17:15:46 -0800
In-Reply-To: <20170304001259.GA4417@d830.WORKGROUP>
References: <20170304001259.GA4417@d830.WORKGROUP>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2017-03-03 at 16:13 -0800, Alison Schofield wrote:
> I'm thinking of adding a git post-commit hook to our First Patch Tutorial.
> 
> Recently, Joe Perches (checkpatch author) showed us a spelling error
> in a log message found by checkpatch and it made me realize we may be
> under-utilizing checkpatch in the workflow as defined in the first patch
> tutorial.
> 
> If you use it pre-commit (and while working a file) it shows you
> issues in your files.  But, if you use it on the built patch, you
> can also see WARNINGS like:
> 
> WARNING: Do not use whitespace before Signed-off-by:
> WARNING: please write a paragraph that describes the config symbol fully
> WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?
> 
> Here's a post commit hook: 
> 
> .git/hooks$ cat post-commit
> #!/bin/sh
> exec git show HEAD | scripts/checkpatch.pl --nosummary

exec git show --format=email HEAD | ./scripts/checkpatch.pl --strict


> If someone will verify this and agree we should add it - I'll add it to
> the first patch tutorial.
> 
> And, of course, you'll let me know if there's another/better way
> to do it!
> 
> alisons

