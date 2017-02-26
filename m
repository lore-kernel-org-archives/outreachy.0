X-GM-THRID: 6390824128052461568
X-Received: by 10.31.92.83 with SMTP id q80mr2695555vkb.14.1488125535748;
        Sun, 26 Feb 2017 08:12:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.218 with SMTP id i26ls349839ote.48.gmail; Sun, 26 Feb
 2017 08:12:15 -0800 (PST)
X-Received: by 10.157.54.142 with SMTP id h14mr4736635otc.38.1488125535423;
        Sun, 26 Feb 2017 08:12:15 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0137.hostedemail.com. [216.40.44.137])
        by gmr-mx.google.com with ESMTPS id 13si1312455iti.0.2017.02.26.08.12.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 08:12:15 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.137 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.137;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.137 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id D19A812BA13;
	Sun, 26 Feb 2017 16:12:14 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:355:379:541:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1362:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:3872:3873:3874:4321:4605:5007:7903:10004:10400:10848:11026:11232:11658:11914:12043:12438:12555:12740:12760:12895:12986:13069:13311:13357:13439:14181:14659:14721:21060:21080:21365:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: nut83_4da85ff16b45d
X-Filterd-Recvd-Size: 2050
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Sun, 26 Feb 2017 16:12:13 +0000 (UTC)
Message-ID: <1488125531.9188.1.camel@perches.com>
Subject: Re: [PATCH v3] staging: xgifb: correct the multiple line dereference
From: Joe Perches <joe@perches.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>, 
	arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Sun, 26 Feb 2017 08:12:11 -0800
In-Reply-To: <20170226155329.GA19949@arushi-HP-Pavilion-Notebook>
References: <20170226155329.GA19949@arushi-HP-Pavilion-Notebook>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2017-02-26 at 21:23 +0530, Arushi Singhal wrote:
> Error was reported by checkpatch.pl as "Avoid multiple line
> dereference".And If there is boolean operator then it is 
> fixed by Splitting line at boolean operator to satisfy coding 
> style.
[]
> diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
[]
> @@ -878,30 +878,18 @@ static void XGIfb_post_setmode(struct xgifb_video_info *xgifb_info)
> 
[]
>  				xgifb_reg_set(
> -					XGIPART2,
> -					0x37,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][2]));
> +					XGIPART2, 0x35, f[0]);
> +			        xgifb_reg_set(
> +					XGIPART2, 0x36, f[1]);
> +			        xgifb_reg_set(
> +					XGIPART2, 0x37, f[2]);

0        1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890

				xgifb_reg_set(XGIPART2, 0x37, f[2]);

All of these fit nicely on a single line and you should
submit patches that make the most sense and do not need
revision when reformatting.

Please reformat all instances as above and resubmit.


