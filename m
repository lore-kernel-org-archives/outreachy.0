X-GM-THRID: 6390824128052461568
X-Received: by 10.107.128.169 with SMTP id k41mr366217ioi.72.1488262309226;
        Mon, 27 Feb 2017 22:11:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.22.129 with SMTP id c1ls391062ote.14.gmail; Mon, 27 Feb
 2017 22:11:48 -0800 (PST)
X-Received: by 10.157.57.137 with SMTP id y9mr213161otb.88.1488262308839;
        Mon, 27 Feb 2017 22:11:48 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0212.hostedemail.com. [216.40.44.212])
        by gmr-mx.google.com with ESMTPS id g205si1952365ita.2.2017.02.27.22.11.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 22:11:48 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.212 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.212;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.212 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 3BDFFC1F83;
	Tue, 28 Feb 2017 06:11:48 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:355:379:541:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:2914:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:3874:4321:4605:5007:7903:8957:10004:10400:10848:11232:11658:11914:12043:12438:12740:12760:12895:13069:13311:13357:13439:14093:14097:14181:14659:14721:21060:21080:30012:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: geese41_2cb1b390aca1f
X-Filterd-Recvd-Size: 2252
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Tue, 28 Feb 2017 06:11:47 +0000 (UTC)
Message-ID: <1488262305.25838.18.camel@perches.com>
Subject: Re: [PATCH v5] staging: xgifb: correct the multiple line dereference
From: Joe Perches <joe@perches.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>, 
	arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Mon, 27 Feb 2017 22:11:45 -0800
In-Reply-To: <20170228022524.GA12198@arushi-HP-Pavilion-Notebook>
References: <20170228022524.GA12198@arushi-HP-Pavilion-Notebook>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2017-02-28 at 07:55 +0530, Arushi Singhal wrote:
> Error reported by checkpatch.pl as "avoid multiple line dereference".
> Addition of new variables to make the code more readable and also to
> correct about mentioned error as by itroducing new variables line is
> not exceeding 80 characters.
[]
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
[]
> @@ -221,8 +221,11 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>  
>  	for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
>  	       tempbx; (*i)--) {
> -		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> -				Ext_InfoFlag;
> +		int j;
> +
> +		j = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
> +		infoflag = j;

Better would be to introduce a temporary like:

	const struct XGI_Ext2Struct *ext2;

	[code...]

	ext2 = &XGI330_RefIndex[RefreshRateTableIndex];

	and then index that like

	for (; ext2[*i].ModeID == tempbx; (*i)--) {
		infoflag = ext2[*i].Ext_InfoFlag;

> +
>  		if (infoflag & tempax)
>  			return 1;
>  
> @@ -231,8 +234,11 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>  	}
>  
>  	for ((*i) = 0;; (*i)++) {
> -		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> -				Ext_InfoFlag;

etc...


