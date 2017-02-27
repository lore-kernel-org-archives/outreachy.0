X-GM-THRID: 6391852583766458368
X-Received: by 10.31.65.78 with SMTP id o75mr4047264vka.27.1488223878174;
        Mon, 27 Feb 2017 11:31:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.105.8 with SMTP id e8ls2370150itc.3.canary-gmail; Mon, 27
 Feb 2017 11:31:17 -0800 (PST)
X-Received: by 10.36.38.203 with SMTP id v194mr4566448itv.33.1488223877437;
        Mon, 27 Feb 2017 11:31:17 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0151.hostedemail.com. [216.40.44.151])
        by gmr-mx.google.com with ESMTPS id i189si1592404iti.0.2017.02.27.11.31.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 11:31:17 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.151 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.151;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.151 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id D01989EA13;
	Mon, 27 Feb 2017 19:31:16 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:541:599:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3871:3872:3874:4321:5007:10004:10400:10848:11232:11658:11914:12043:12740:12760:12895:13069:13311:13357:13439:14659:21080:21324:30012:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: coast73_7f5fba4ea273d
X-Filterd-Recvd-Size: 1670
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf03.hostedemail.com (Postfix) with ESMTPA;
	Mon, 27 Feb 2017 19:31:15 +0000 (UTC)
Message-ID: <1488223868.25838.10.camel@perches.com>
Subject: Re: [PATCH 4/5] staging: sm750fb: Remove unnecessary else after
 return
From: Joe Perches <joe@perches.com>
To: simran singhal <singhalsimran0@gmail.com>, gregkh@linuxfoundation.org
Cc: lustre-devel@lists.lustre.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Mon, 27 Feb 2017 11:31:08 -0800
In-Reply-To: <1488219268-3006-4-git-send-email-singhalsimran0@gmail.com>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
	 <1488219268-3006-4-git-send-email-singhalsimran0@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2017-02-27 at 23:44 +0530, simran singhal wrote:
> This patch fixes the checkpatch warning that else is not generally
> useful after a break or return.
[]
> diff --git a/drivers/staging/sm750fb/ddk750_swi2c.c b/drivers/staging/sm750fb/ddk750_swi2c.c
[]
> @@ -295,8 +294,7 @@ static long sw_i2c_write_byte(unsigned char data)
>  
>  	if (i < 0xff)
>  		return 0;
> -	else
> -		return -1;
> +	return -1;

Assuming -1 is some sort of error,
it'd be a more common style to use

	if (i >= 0xff)
		return -1;

	return 0;

Looking at the code, it might make
sense to use something like:

	/* SDA still != 0 */
	if (i >= 0xff)
		return -1;

	return 0;
}

