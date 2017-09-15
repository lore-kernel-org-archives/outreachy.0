X-GM-THRID: 6466114198556377088
X-Received: by 10.202.245.65 with SMTP id t62mr14638592oih.37.1505511112901;
        Fri, 15 Sep 2017 14:31:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.178.208 with SMTP id b199ls7437591iof.8.gmail; Fri, 15 Sep
 2017 14:31:52 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCADS9iYIfq18C0CQeOW+tazEI/YEW2yFiX8PrY1V12rMWzTQj/6mnPQx+IGm2B0eqfQ78a
X-Received: by 10.31.155.76 with SMTP id d73mr15318258vke.35.1505511112041;
        Fri, 15 Sep 2017 14:31:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505511111; cv=none;
        d=google.com; s=arc-20160816;
        b=E97nWT+Fipvd2/xA1IjxfHf2UBRTdzJEd5sN1cMXatiW8mEV7v5gBzwlT+4mFCjCdq
         jkeYgretk7q3uNVlch+tRXFCzqBBx0ZpdQSjwLj8uBXzOzo1owsDwxfHnUXFnvkeVhsj
         fCLmKmqr2epsq1taLc9I9Gj3JwmUHd62+R/wie3UT7iT28zm5Nk/MJzZqPnWqopcMXGH
         vgp7ihiZnFQe47MABVxzm52z6ACuGjiS0QBSgBGoWCZWX5+R4GJs5jnXPCriNez7WmG7
         6LMwgLLKGfXqHtPnzyZpOt5jmoGhnunKcGhp9aZuwslpzKwQ6Ah8CMgtrcIVySfPSmMv
         MrTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:arc-authentication-results;
        bh=iB9gq9flaeC3tWqv1n53W08surH4BdZWsY14XlAhedY=;
        b=CZ0D0W6O0gMysj96pBIcJ2ZM/KLvgEMHuK2vaD6wSpKvctJj9nsvK25fz4mJlh9LBB
         hPLuN9JXIqpjXPnUs+njA5jDvE0MsSp9rD21KW8vyRpss1enzwQJ4VDR/WZXmOny2/RC
         RnxmketmQMyqT9QDcu7Zl0DcLdHGgGnKf7t8vBKIe8LVHHGpVVLB76QYl27RhwoHFTvf
         w+RvzMuJbFVlz3xKe1nay8LdPD471SoJp4pa8f7KC3LUxCsGhiLRk23Ih/UUqE6H6iXd
         7xtt0djyeFhBCpcF+jLg0rlT+TgOE5BInQ+ujhjxRqsX83Y8kBx/Cpy1glFFKH1TTPAF
         uGng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.60 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0060.hostedemail.com. [216.40.44.60])
        by gmr-mx.google.com with ESMTPS id m186si7082itd.9.2017.09.15.14.31.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 14:31:51 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.60 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.60;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.60 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 5B60D180A68B4;
	Fri, 15 Sep 2017 21:31:51 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:541:599:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:4321:5007:6119:7903:10004:10400:10848:11026:11232:11473:11657:11658:11914:12043:12295:12296:12555:12740:12760:12895:13069:13161:13229:13311:13357:13439:14659:14721:21080:21611:21627:30012:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:15,LUA_SUMMARY:none
X-HE-Tag: sort48_100690bd5ff5e
X-Filterd-Recvd-Size: 2225
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf03.hostedemail.com (Postfix) with ESMTPA;
	Fri, 15 Sep 2017 21:31:49 +0000 (UTC)
Message-ID: <1505511108.27581.16.camel@perches.com>
Subject: Re: [PATCH 2/2] Staging: irda: Remove parentheses on the right of
 assignment
From: Joe Perches <joe@perches.com>
To: Srishti Sharma <srishtishar@gmail.com>, samuel@sortiz.org
Cc: gregkh@linuxfoundation.org, netdev@vger.kernel.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Fri, 15 Sep 2017 14:31:48 -0700
In-Reply-To: <9380189edb2722544981c868699ade29ab5c297d.1505508423.git.srishtishar@gmail.com>
References: <cover.1505508423.git.srishtishar@gmail.com>
	 <9380189edb2722544981c868699ade29ab5c297d.1505508423.git.srishtishar@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.6-1ubuntu1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sat, 2017-09-16 at 02:36 +0530, Srishti Sharma wrote:
> Parentheses are not needed on the right hand side of assignment
> statement in most cases. Done using the following semantic
> patch by coccinelle.
[]
> @@
> identifier E,F,G,f;
> expression e,r;
> @@
> 
> (
> E = (G == F);
> > 
> 
> E = (e == r);
> > 
> 
> E =
> -(
> ...
> -)
> ;
> )
[]
> diff --git a/drivers/staging/irda/drivers/mcs7780.c b/drivers/staging/irda/drivers/mcs7780.c
[]
> @@ -605,7 +605,7 @@ static int mcs_speed_change(struct mcs_cb *mcs)
>  	if (mcs->new_speed <= 115200) {
>  		rval &= ~MCS_FIR;
>  
> -		rst = (mcs->speed > 115200);
> +		rst = mcs->speed > 115200;
>  		if (rst)
>  			mcs_set_reg(mcs, MCS_MINRXPW_REG, 0);

Coccinelle is a good tool, but its output is limited to
the correctness
and completeness of its input script.

Please look at the suggested modifications of the script
and examine the code for other similar uses.

The else if block immediately below this is:

	} else if (mcs->new_speed <= 1152000) {
		rval &= ~MCS_FIR;

		if ((rst = !(mcs->speed == 576000 || mcs->speed == 11520
00)))
			mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);

which should also be corrected by this patch.

