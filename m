X-GM-THRID: 6390824128052461568
X-Received: by 10.157.47.173 with SMTP id r42mr2104186otb.15.1487991859434;
        Fri, 24 Feb 2017 19:04:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls372155otx.21.gmail; Fri, 24 Feb
 2017 19:04:19 -0800 (PST)
X-Received: by 10.157.31.102 with SMTP id x35mr2093375otx.61.1487991859061;
        Fri, 24 Feb 2017 19:04:19 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0061.hostedemail.com. [216.40.44.61])
        by gmr-mx.google.com with ESMTPS id a17si516309itd.1.2017.02.24.19.04.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 19:04:18 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.61 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.61;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.61 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 825542341C;
	Sat, 25 Feb 2017 03:04:18 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:69:355:379:541:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1431:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3868:3870:3871:3872:3874:4321:4605:5007:7514:7875:7903:8957:10004:10400:10848:11026:11232:11658:11783:11914:12043:12438:12555:12740:12895:12986:13069:13311:13357:13439:13894:14181:14659:14721:21060:21080:21451:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: glass11_7cc597a96a126
X-Filterd-Recvd-Size: 2838
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Sat, 25 Feb 2017 03:04:17 +0000 (UTC)
Message-ID: <1487991856.14159.58.camel@perches.com>
Subject: Re: [PATCH v2] staging: xgifb: correct the multiple line dereference
From: Joe Perches <joe@perches.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>, 
	arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Fri, 24 Feb 2017 19:04:16 -0800
In-Reply-To: <20170224234130.GA608@arushi-HP-Pavilion-Notebook>
References: <20170224234130.GA608@arushi-HP-Pavilion-Notebook>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Sat, 2017-02-25 at 05:11 +0530, Arushi Singhal wrote:
> Error was reported by checkpatch.pl as
> WARNING: Avoid multiple line dereference...
> And If there is boolean operator then it is fixed by Splitting line at
> boolean operator.This is a coding style error.
> The changes are made such that the other errors does not generate
> beacause of this change like line exceeding 80 characters length.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  changes in v2
>  - changes done such that no other errors can generate.
> ---
>  drivers/staging/xgifb/XGI_main_26.c | 21 +++++++++------------
>  drivers/staging/xgifb/vb_setmode.c  | 14 +++++++-------
>  2 files changed, 16 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
> index 6930f7eb741b..651987398d42 100644
> --- a/drivers/staging/xgifb/XGI_main_26.c
> +++ b/drivers/staging/xgifb/XGI_main_26.c
> @@ -878,30 +878,27 @@ static void XGIfb_post_setmode(struct xgifb_video_info *xgifb_info)
>  			}
>  
>  			if ((filter >= 0) && (filter <= 7)) {
> +				const u8 *f = XGI_TV_filter[filter_tb].filter[filter];
> +
>  				pr_debug("FilterTable[%d]-%d: %*ph\n",
>  					 filter_tb, filter,
> -					 4, XGI_TV_filter[filter_tb].
> -						   filter[filter]);
> +					 4, f);

Do please rewrap these appropriately.  i.e.:

				pr_debug(""FilterTable[%d]-%d: %*ph\n",
�					�filter_tb, filter, 4, f);

>  				xgifb_reg_set(
>  					XGIPART2,
>  					0x35,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][0]));
> -				xgifb_reg_set(
> +					(f[0]));


and:
				xgifb_reg_set(XGIPART2, 0x35, f[0]);

> +			        xgifb_reg_set(
>  					XGIPART2,
>  					0x36,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][1]));
> -				xgifb_reg_set(
> +					(f[1]));

				xgifb_reg_set(XGIPART2, 0x36, f[1]);

etc...


