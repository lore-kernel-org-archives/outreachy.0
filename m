X-GM-THRID: 6463819726342586368
X-Received: by 10.200.14.79 with SMTP id j15mr3959973qti.51.1504995035282;
        Sat, 09 Sep 2017 15:10:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.110.141 with SMTP id w135ls3374738itc.18.gmail; Sat, 09 Sep
 2017 15:10:34 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7XzyPixZ5EagW7A/wjvLiLvDGG/Som0yjbRQO9qj3rnM1/E1tpZ3L+/6h/b3kBgXCpES18
X-Received: by 10.13.195.129 with SMTP id f123mr4650559ywd.21.1504995034440;
        Sat, 09 Sep 2017 15:10:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504995034; cv=none;
        d=google.com; s=arc-20160816;
        b=qs0MOaiO1LCsWBjtnOL2d5L7G9BfWJP0mnIVDSFS/HoAoEOE5Q9B7OB0juTL7uIMl+
         oocsqkWzQKJRD1uvwhZZAO4QsVvTLC8IMA8th/7XeTnxi0nhYBL3yHvuAXbCiOFevEJu
         0LJ+axx6aswYFVzKfYr2v2cEwRi1ud5uuBsgnVeddxTNFSo2YN7VOroFNR33IpaQPOdZ
         xw4UGjquBmPdALL7/9kJdfEk+stKwwF6gk21WKRaVxU6af6Kis6eRp4ZU7U+bx3qF4pf
         DU236w2oYbY1YEp2oyccpvN5crBN+oBp7OWJgrLil42+PA3AGscZFbfkisbV6HZXiwRp
         uMWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:arc-authentication-results;
        bh=7w153XopCiXFZDvzYAuLOWj2xlSlupoSQdeiGZKOOtY=;
        b=w66Koo+6vxAEm4lQfT4kBDsecaL7n/gvXWRUYyelErZjTQytoorsOJ04qrv/yO4dbe
         NKXYmHKEOhcLJ8YlVlPNzpq8zKi4HxRnCUMEE1CxeVgiMPKxO7TqplIRYEB+YItSvz60
         FNJsigNLNfv+xABjCCCJfP6QyUVqtMocs+Xy2JAEk3gVWDXHD8h2fkpJaELhp05Kfsp+
         FMtaQTlPOERxZld6h3PRexuUETIwARKWK4Pce+0HTWrgqNvuFolLjX6PvPwTfk/uEf9o
         oqcuKwlPM5RGjCYHddNOFvCjXTZ/f+5+4kdCLKAP8Q4dV37RmEUxhNvrlcfgffyOqs82
         NJzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.191 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0191.hostedemail.com. [216.40.44.191])
        by gmr-mx.google.com with ESMTPS id 143si113252itf.7.2017.09.09.15.10.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 15:10:34 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.191 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.191;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.191 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id C96C0100E8008;
	Sat,  9 Sep 2017 22:10:33 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::,RULES_HIT:41:355:379:541:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1537:1568:1593:1594:1711:1714:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3866:3867:3870:3871:3873:3874:4250:4321:5007:10004:10400:10848:11232:11658:11914:12740:12760:12895:13069:13311:13357:13439:14659:21080:21627,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: wave30_4c373ba29049
X-Filterd-Recvd-Size: 1263
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Sat,  9 Sep 2017 22:10:32 +0000 (UTC)
Message-ID: <1504995031.26889.0.camel@perches.com>
Subject: Re: [PATCH] staging: rtl8723bs: Change foo* bar to foo *bar
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Harsha Sharma
	 <harshasharmaiitr@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com, 
	linux-kernel@vger.kernel.org
Date: Sat, 09 Sep 2017 15:10:31 -0700
In-Reply-To: <20170909165056.GA6145@kroah.com>
References: <1504975177-11843-1-git-send-email-harshasharmaiitr@gmail.com>
	 <20170909165056.GA6145@kroah.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.6-1ubuntu1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sat, 2017-09-09 at 18:50 +0200, Greg KH wrote:
> On Sat, Sep 09, 2017 at 10:09:37PM +0530, Harsha Sharma wrote:
> > This coding style (foo *bar) is more common for the kernel code.
> 
> You also did something else in this patch that you did not mention here,
> which is not ok :(

what is that?

> Remember, only one type of thing per patch.

Seemed like only one thing to me.

