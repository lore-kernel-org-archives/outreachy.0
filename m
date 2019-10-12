X-GM-THRID: 6746720218426376192
X-Received: by 2002:a9d:12f1:: with SMTP id g104mr14741453otg.358.1570846032467;
        Fri, 11 Oct 2019 19:07:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:2101:: with SMTP id 1ls1794312oiz.9.gmail; Fri, 11 Oct
 2019 19:07:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwZnBshflHY2PtjVcENJ+gOM8ssIX79cPQr/L4DNuren3xbyDhPeeFueRTflTURCGVims6p
X-Received: by 2002:aca:620a:: with SMTP id w10mr15354422oib.0.1570846031487;
        Fri, 11 Oct 2019 19:07:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570846031; cv=none;
        d=google.com; s=arc-20160816;
        b=NxRkjsZUJ0UPKyBtIbCCk01lgl1E2pH/B4wYBfCHuh6cj5juhq/GBmmClCv+/TbZRw
         lHk5DolSCBqENMxOWyl8Snd4pXW30IdsB91EYNpzXH5ro8DHIEvSTM9jDeSx6Nw/N/Pr
         ltDq3+JED63Gz7QW0YkAL8hAHtSv0IchlDHUuK4sqgA2bHlXkCEGzcz4lePjvcfnIt5p
         V5nKpnB58/snwZC1YOA9CtxSH1OeQM3fy5My6Ml041HvqHjwwMZAba/4ULWg8uQPqEOL
         u/FJif0Fj3LEtH2LNDJz5VZZxp1gD4mQWydHUKv3bUsPewnZ30PeXMxRL2hlcCvuEEVD
         t0gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id;
        bh=Omn1sK629wOewURzdauokW0nAh8sEHW7KjETfEe3W6A=;
        b=x5WfC9lB/tTvdIRBw4DmXSVo00ufpNP3sWDO3b7TUvTUff3LD6bqimAOXtXmLTxgAE
         bs+lNVt8uYrMpgSs/uwGvDr6kJisYPxag0d33D1oGWCaeFA456H2YrFfzbMzY02YELcI
         v731SmWFglEoIdbP0cf+j52JLGFLP85Ypu5cAJR57MOrjDUxBHR8T9F6pE9p6EkH26if
         QaZua+y8RgjxVEW5SlXCtUq89MyaWKP12jVlm7UbJmdImxIusdi5LJhsHjFT22E9bsrm
         Cwq1/lqH9e0LmRz7PHcqNUrb8fkx/ABa3+REu54QL2tInT2WDFUsMULAU7DT0LylxlPL
         af3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.105 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0105.hostedemail.com. [216.40.44.105])
        by gmr-mx.google.com with ESMTPS id i19si120311otk.0.2019.10.11.19.07.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 19:07:11 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.105 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.105;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.105 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 8DE79182CED2A;
	Sat, 12 Oct 2019 02:07:10 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 80,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::,RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:4321:4605:5007:8957:10004:10400:11232:11658:11914:12043:12048:12296:12297:12740:12760:12895:13069:13311:13357:13439:14096:14097:14659:14721:21080:21451:21627:30003:30054:30091,0,RBL:23.242.70.174:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:28,LUA_SUMMARY:none
X-HE-Tag: bite17_4300371d6934
X-Filterd-Recvd-Size: 2049
Received: from XPS-9350 (cpe-23-242-70-174.socal.res.rr.com [23.242.70.174])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Sat, 12 Oct 2019 02:07:08 +0000 (UTC)
Message-ID: <8886b98ca936e7150abf36aa3c9d167073eaba86.camel@perches.com>
Subject: Re: [PATCH] staging: sm750fb: align arguments with open parenthesis
From: Joe Perches <joe@perches.com>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>, 
 outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com, 
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org, 
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
Date: Fri, 11 Oct 2019 19:07:06 -0700
In-Reply-To: <20191012011956.9452-1-gabrielabittencourt00@gmail.com>
References: <20191012011956.9452-1-gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2019-10-11 at 22:19 -0300, Gabriela Bittencourt wrote:
> Cleans up checks of "Alignment should match open parenthesis" in tree sm750fb
[]
> diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
[]
> @@ -289,7 +289,7 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
>  }
>  
>  int sm750_hw_imageblit(struct lynx_accel *accel,
> -		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
> +		       const char *pSrcbuf, /* pointer to start of source buffer in system memory */
>  		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */

checkpatch only warns on the first unaligned argument, but
all statement lines are meant to align to the open parenthesis.

>  		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
>  		 u32 dBase,    /* Address of destination: offset in frame buffer */



