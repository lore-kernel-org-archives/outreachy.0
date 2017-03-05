X-GM-THRID: 6393343309495926784
X-Received: by 10.99.48.73 with SMTP id w70mr4606130pgw.76.1488721196432;
        Sun, 05 Mar 2017 05:39:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls10008605otg.18.gmail; Sun, 05 Mar
 2017 05:39:56 -0800 (PST)
X-Received: by 10.129.50.12 with SMTP id y12mr5276270ywy.111.1488721196055;
        Sun, 05 Mar 2017 05:39:56 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0102.hostedemail.com. [216.40.44.102])
        by gmr-mx.google.com with ESMTPS id g205si1312095ita.2.2017.03.05.05.39.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 05:39:55 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.102 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.102;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.102 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 77CBE352005;
	Sun,  5 Mar 2017 13:39:55 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::,RULES_HIT:41:69:355:379:541:599:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3870:4321:4605:5007:7903:10004:10400:10848:11232:11658:11914:12043:12663:12683:12740:12760:12895:13069:13311:13357:13439:14096:14097:14181:14659:21060:21080:21451:30029:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: water40_1be289e329011
X-Filterd-Recvd-Size: 1826
Received: from XPS-9350 (92.sub-70-211-150.myvzw.com [70.211.150.92])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Sun,  5 Mar 2017 13:39:51 +0000 (UTC)
Message-ID: <1488721188.2179.52.camel@perches.com>
Subject: Re: [PATCH 0/3] multiple checkpatch issues
From: Joe Perches <joe@perches.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>, 
	sudipm.mukherjee@gmail.com
Cc: teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com, 
	gregkh@linuxfoundation.org, linux-fbdev@vger.kernel.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Sun, 05 Mar 2017 05:39:48 -0800
In-Reply-To: <20170305112450.9066-1-arushisinghal19971997@gmail.com>
References: <20170305112450.9066-1-arushisinghal19971997@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2017-03-05 at 16:54 +0530, Arushi Singhal wrote:
> Improve readability by fixing multiple checkpatch.pl
> issues in sm750fb driver. 

Remember to prefix the subject of the 0/n patch with the subsystem.

> Arushi Singhal (3):
>   staging: sm750fb: fixes add blank line after function/struct/union/enum declarations
>   staging: sm750fb: function prototype argument should have an identifier name
>   staging: sm750fb: Alignment should match open parenthesis
> 
>  drivers/staging/sm750fb/ddk750_display.h |  3 +-
>  drivers/staging/sm750fb/ddk750_mode.c    | 69 ++++++++++++++++----------------
>  drivers/staging/sm750fb/ddk750_mode.h    |  4 +-
>  drivers/staging/sm750fb/ddk750_power.h   |  3 +-
>  drivers/staging/sm750fb/sm750.h          |  2 +-
>  drivers/staging/sm750fb/sm750_cursor.c   |  3 ++
>  6 files changed, 45 insertions(+), 39 deletions(-)
> 

