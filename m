X-GM-THRID: 6393330913423392768
X-Received: by 10.129.161.132 with SMTP id y126mr3115137ywg.91.1488642738216;
        Sat, 04 Mar 2017 07:52:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.124.81 with SMTP id a78ls1427837itd.2.canary-gmail; Sat, 04
 Mar 2017 07:52:17 -0800 (PST)
X-Received: by 10.107.53.232 with SMTP id k101mr3147776ioo.36.1488642737496;
        Sat, 04 Mar 2017 07:52:17 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0233.hostedemail.com. [216.40.44.233])
        by gmr-mx.google.com with ESMTPS id i189si946849iti.0.2017.03.04.07.52.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 07:52:17 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.233 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.233;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.233 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id EF536C1F71;
	Sat,  4 Mar 2017 15:52:16 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::,RULES_HIT:41:355:379:541:599:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3872:4321:4605:5007:6119:7903:9545:10004:10400:10848:11232:11658:11914:12043:12740:12760:12895:13069:13161:13229:13311:13357:13439:14096:14097:14659:14721:21080:21434:21451:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: crow38_6b071d4c32a54
X-Filterd-Recvd-Size: 2551
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Sat,  4 Mar 2017 15:52:15 +0000 (UTC)
Message-ID: <1488642734.2179.51.camel@perches.com>
Subject: Re: [PATCH v5 0/5] Remove unnecessary cast on void pointer
From: Joe Perches <joe@perches.com>
To: simran singhal <singhalsimran0@gmail.com>, Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 oleg.drokin@intel.com,  marvin24@gmx.de, outreachy-kernel@googlegroups.com
Date: Sat, 04 Mar 2017 07:52:14 -0800
In-Reply-To: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>
References: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sat, 2017-03-04 at 21:00 +0530, simran singhal wrote:
> This patch-series removes unnecessary cast on void pointer in various
> drivers.

Much better, thanks.

Trivia: (and it's probably not necessary to resend)

The cover letter should describe the subsystem being
changed or ideally something like "treewide" if the
series touches files throughout the kernel sources.

So this cover letter ideally would have a subject like:

Subject: [PATCH v5 0/5] staging: Remove unnecessary casts of void pointer

> v5:
>   -Fixed compliation warning in lustre/lustre/llite/range_lock.c
>    which remain unfixed in v3.
> v4:
>   -change the cover-letter subject
> v3:
>   -Fixed compilation warning in lustre/lustre/llite/range_lock.c	
> 
> simran singhal (5):
>   staging: nvec: Remove unnecessary cast on void pointer
>   staging: lustre: Remove unnecessary cast on void pointer
>   staging: lustre: lustre: Remove unnecessary cast on void pointer
>   staging: rts5208: Remove unnecessary cast on void pointer
>   staging: rtl8712: Remove unnecessary cast on void pointer

Some of these are acting on multiple instances.

Please try to use plural and singular descriptions
where appropriate.

>  drivers/staging/lustre/lustre/llite/range_lock.c |  2 +-
>  drivers/staging/lustre/lustre/lmv/lmv_obd.c      |  4 ++--
>  drivers/staging/nvec/nvec_kbd.c                  |  2 +-
>  drivers/staging/rtl8712/rtl8712_recv.c           | 11 +++++------
>  drivers/staging/rts5208/rtsx_transport.c         |  3 +--
>  5 files changed, 10 insertions(+), 12 deletions(-)


