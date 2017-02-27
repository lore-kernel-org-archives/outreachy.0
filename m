X-GM-THRID: 6391852583766458368
X-Received: by 10.99.154.9 with SMTP id o9mr7068024pge.6.1488224472870;
        Mon, 27 Feb 2017 11:41:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.200 with SMTP id a191ls3639021ioa.7.gmail; Mon, 27 Feb
 2017 11:41:12 -0800 (PST)
X-Received: by 10.99.210.21 with SMTP id a21mr7110857pgg.44.1488224472193;
        Mon, 27 Feb 2017 11:41:12 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0086.hostedemail.com. [216.40.44.86])
        by gmr-mx.google.com with ESMTPS id f73si1717197ita.1.2017.02.27.11.41.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 11:41:12 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.86 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.86;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.86 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 9DA6A12BA12;
	Mon, 27 Feb 2017 19:41:11 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:541:599:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3871:3874:4321:4605:5007:10004:10400:10848:11026:11232:11658:11914:12043:12296:12740:12760:12895:13069:13095:13101:13311:13357:13439:14659:14721:21080:21433:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:17,LUA_SUMMARY:none
X-HE-Tag: cream74_446f3eeb57758
X-Filterd-Recvd-Size: 1738
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Mon, 27 Feb 2017 19:41:10 +0000 (UTC)
Message-ID: <1488224468.25838.11.camel@perches.com>
Subject: Re: [PATCH 5/5] staging: gdm724x: Remove unnecessary else after
 return
From: Joe Perches <joe@perches.com>
To: simran singhal <singhalsimran0@gmail.com>, gregkh@linuxfoundation.org
Cc: lustre-devel@lists.lustre.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Mon, 27 Feb 2017 11:41:08 -0800
In-Reply-To: <1488219268-3006-5-git-send-email-singhalsimran0@gmail.com>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
	 <1488219268-3006-5-git-send-email-singhalsimran0@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2017-02-27 at 23:44 +0530, simran singhal wrote:
> This patch fixes the checkpatch warning that else is not generally
> useful after a break or return.

> This was done using Coccinelle:
> @@
> expression e2;
> statement s1;
> @@
> if(e2) { ... return ...; }
> -else
>          s1
[]
> diff --git a/drivers/staging/gdm724x/gdm_endian.c b/drivers/staging/gdm724x/gdm_endian.c
[]
> @@ -26,30 +26,26 @@ __dev16 gdm_cpu_to_dev16(struct gdm_endian *ed, u16 x)
>  {
>  	if (ed->dev_ed == ENDIANNESS_LITTLE)
>  		return (__force __dev16)cpu_to_le16(x);
> -	else
> -		return (__force __dev16)cpu_to_be16(x);
> +	return (__force __dev16)cpu_to_be16(x);

again, not a checkpatch message for any of the
suggested modified hunks.


