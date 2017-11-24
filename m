X-GM-THRID: 6491286193203838976
X-Received: by 10.55.23.216 with SMTP id 85mr23475622qkx.14.1511483142686;
        Thu, 23 Nov 2017 16:25:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.197.17 with SMTP id p17ls3909804qki.13.gmail; Thu, 23 Nov
 2017 16:25:42 -0800 (PST)
X-Google-Smtp-Source: AGs4zMbeH6CiRIVBMBItiwl4BXgyNfwZCn/y8F5n7IjgVMVuToTAEWAaf+mG8KEWqwzQj/HAHNxb
X-Received: by 10.200.40.56 with SMTP id 53mr10238435qtq.6.1511483142017;
        Thu, 23 Nov 2017 16:25:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511483141; cv=none;
        d=google.com; s=arc-20160816;
        b=H4KyxexxVUtohv8jFNuUvXohInuLwgABsYPQpGnQT3Lr1NtZ0aCw5zGoP/UCjzMqS7
         TGE/dw+JbChUeFm7DuPIkqZwyBJCUtt6+4nDsEwgGzR14uefi5bCUsr4ZSnXEKmM4fmX
         MH0cwF8IgeDexnoUIbXf1QW5tIVC8qBh9rWW9qh6Su0N4Kjwrbon+JNVxuLT/NorNJ85
         jJh/YjIka8XqDCsuWKgoonpY44QOHb3dM8q5800adtWt1W0DD3ED9XIQyMNMpwuYceNB
         BMmGA1BpWIk6S3/ylqCP94zLZnPh7h1wYGC7NNDTpqwIDr9ZtmvKdpVuth/X1O4Wtiwb
         X3jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:arc-authentication-results;
        bh=rDCKUw4wcGpSLVCOAdBNvPViEsiPJju2TW5OU83kBRA=;
        b=f5PJ7kuPbpSHY6Ki22xlRvV+lklzVaR/soaAy7tOtj4SVh4nkRExFTXMrov9T47l6a
         qRbelET56b3nzIZorTSTxyDNp8qI9O8LbBlC5Adi4r+LngO+D+2v7/CB3mw6YUVAQv/3
         m7Q/wVbCE+yj7azMPn3C0RBSI5nrGJYUZtbVLOyKAaNobvFL58M7r+LT+yAkABI1jh7z
         e51GIF3VSHb6iSmd7rrr7rvwsaYIWKMyIrFwtpwnriwNsIXlPVu8xPNA9QCma+0KWxPd
         YX+n04T1pIe18tdfg3Snl2m/kcrocxbK0UtnLxT/r5v24Jby8ZKT3hIjGGXriJ5wummL
         9Ukw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.230 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0230.hostedemail.com. [216.40.44.230])
        by gmr-mx.google.com with ESMTPS id q34si1296647qtg.2.2017.11.23.16.25.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Nov 2017 16:25:41 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.230 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.230;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.230 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 0E61B182CED28;
	Fri, 24 Nov 2017 00:25:41 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::,RULES_HIT:41:355:379:541:599:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1515:1516:1518:1534:1537:1560:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3653:3867:4321:5007:6642:10004:10400:10848:11026:11658:11914:12555:12740:12760:12895:12986:13069:13311:13357:13439:14659:21080:21627:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: camp95_143f85e329f24
X-Filterd-Recvd-Size: 1453
Received: from XPS-9350 (cpe-23-242-70-174.socal.res.rr.com [23.242.70.174])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Fri, 24 Nov 2017 00:25:39 +0000 (UTC)
Message-ID: <1511483137.5308.8.camel@perches.com>
Subject: Re: [PATCH] net: usb: hso.c: remove unneeded DRIVER_LICENSE #define
From: Joe Perches <joe@perches.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: netdev@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>, cocci
 <cocci@systeme.lip6.fr>, outreachy-kernel@googlegroups.com, "David S.
 Miller" <davem@davemloft.net>, Andreas Kemnade <andreas@kemnade.info>,
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org, Philippe
 Ombredanne <pombredanne@nexb.com>, linux-usb@vger.kernel.org
Date: Thu, 23 Nov 2017 16:25:37 -0800
In-Reply-To: <1511479801.5308.6.camel@perches.com>
References: <20171117141939.GD17880@kroah.com>
	 <1511370336.6989.100.camel@perches.com> <20171122171201.GA6528@kroah.com>
	 <1511479801.5308.6.camel@perches.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.26.1-1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2017-11-23 at 15:30 -0800, Joe Perches wrote:
> --- /dev/null	2017-11-23 06:19:12.943046739 -0800
> +++ single_use_module.pl	2017-11-23 15:23:11.729812156 -0800
> @@ -0,0 +1,15 @@
[]
> +$data =~ s~$var~$string~;

this needs to be:

$data =~ s~\b$var\b~$string~;

