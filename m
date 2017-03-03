X-GM-THRID: 6393234614676094976
X-Received: by 10.25.17.102 with SMTP id g99mr483410lfi.6.1488556210069;
        Fri, 03 Mar 2017 07:50:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.74 with SMTP id 10ls1005304lju.24.gmail; Fri, 03 Mar
 2017 07:50:09 -0800 (PST)
X-Received: by 10.46.15.2 with SMTP id 2mr568533ljp.31.1488556209288;
        Fri, 03 Mar 2017 07:50:09 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0069.hostedemail.com. [216.40.44.69])
        by gmr-mx.google.com with ESMTPS id b186si372169wme.1.2017.03.03.07.50.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:50:09 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.69 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.69;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.69 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id CF27C9EA12;
	Fri,  3 Mar 2017 15:50:07 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::,RULES_HIT:41:355:379:541:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3870:3876:4321:4605:5007:10004:10400:10848:11232:11658:11914:12043:12740:12760:12895:13069:13311:13357:13439:14096:14097:14659:14721:21080:21434:21451:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: show70_1e004b964a358
X-Filterd-Recvd-Size: 1940
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf02.hostedemail.com (Postfix) with ESMTPA;
	Fri,  3 Mar 2017 15:50:06 +0000 (UTC)
Message-ID: <1488556204.2179.32.camel@perches.com>
Subject: Re: [PATCH v3 0/5] Fixed compilation error
From: Joe Perches <joe@perches.com>
To: simran singhal <singhalsimran0@gmail.com>, Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 oleg.drokin@intel.com,  marvin24@gmx.de, outreachy-kernel@googlegroups.com
Date: Fri, 03 Mar 2017 07:50:04 -0800
In-Reply-To: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com>
References: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2017-03-03 at 17:05 +0530, simran singhal wrote:
> Fixed compilation warning in lustre/lustre/llite/range_lock.c

Really?  What compilation warning was removed?

> simran singhal (5):
>   staging: nvec: Remove unnecessary cast on void pointer
>   staging: lustre: Remove unnecessary cast on void pointer
>   staging: lustre: lustre: Remove unnecessary cast on void pointer
>   staging: rts5208: Remove unnecessary cast on void pointer
>   staging: rtl8712: Remove unnecessary cast on void pointer

What compiler warns about unnecessary casts?

>  drivers/staging/lustre/lustre/llite/range_lock.c |  2 +-
>  drivers/staging/lustre/lustre/lmv/lmv_obd.c      |  4 ++--
>  drivers/staging/lustre/lustre/mgc/mgc_request.c  |  2 +-
>  drivers/staging/nvec/nvec_kbd.c                  |  2 +-
>  drivers/staging/rtl8712/rtl8712_recv.c           | 11 +++++------
>  drivers/staging/rts5208/rtsx_transport.c         |  3 +--
>  6 files changed, 11 insertions(+), 13 deletions(-)
> 

