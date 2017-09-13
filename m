X-GM-THRID: 6465168256299696128
X-Received: by 10.107.30.8 with SMTP id e8mr11546254ioe.53.1505339910229;
        Wed, 13 Sep 2017 14:58:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.20.20 with SMTP id 20ls3591016iou.3.gmail; Wed, 13 Sep
 2017 14:58:29 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCL2lzCJWWmSa/+XAjZrwBuKS4tp85YgSnoJQ/5Ncd04Gj3Fx10HzbFBPqbqcMH23WUxyUY
X-Received: by 10.36.73.156 with SMTP id e28mr114468itd.7.1505339909524;
        Wed, 13 Sep 2017 14:58:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505339909; cv=none;
        d=google.com; s=arc-20160816;
        b=AydInFEATE3N6Qvc00kogbMrOTQ5CgMufwDlVNrj08zbEe4fIPQvfRVfbiB4YO/Ifu
         UEOg+KuNfH7cKdsT0Mkv5PF1hEtFB5T9fbbicXuTi/IVHuyZhupvR7BnnQNzYMeAo9lj
         TDOFEgJ44mRvcz8hsv935P6jWfGtZxKl7/13qiKjl0mIucCrnzyplQ6eAU3WF6VLhR00
         4T3TPbo2frO3uCcCd5qnPz4cnHrcNEar4Z3Acb5Fo/R0Zfkj/Zg0chBqzjk5IyVypAsW
         JqdbEiEP5PesSz813Z6wsPRIXloUUw6Ic9emFs/uEqtiMIxds0G0WJWllMTrC+7qmu+1
         c10w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:arc-authentication-results;
        bh=th6sGbeBimT8Ze5tzsv2PZaFC7VnsedmTNlkBlSccr4=;
        b=dKXY3Fyo+ZFdSsDkyuoosRxMSCiD5u9CTp4clnLXOkuWvV+ZPW2da9QoCFyBSpK54u
         VKOU84At6BSBrnhV5qSQN1YGdPtNqBy4jwboS61qxdlX/Cq7DXzXkvmILrkoUxu4yb08
         ettZN08VfJaEpCnx1k0UnRcxeWjGlULuMpVwyWrw93U5BZvIteDoOsbDPAmlk4GR098W
         1KpxcXVAZOTPcYnTyUFVLRBLXkvqOKA8VF7a+qwE4uK66hQ3S5FyCwD6SVYJGiRGiMwN
         JqcSA9ET2YtI2NHqhWMJri91fyn4KfkaSXTqCJWQ+Iks9iwBLIfXCnAg6fYokEwwQFg+
         jkuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.30 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0030.hostedemail.com. [216.40.44.30])
        by gmr-mx.google.com with ESMTPS id b186si1264ith.0.2017.09.13.14.58.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 14:58:29 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.30 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.30;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.30 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id D43299092;
	Wed, 13 Sep 2017 21:58:28 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::,RULES_HIT:41:355:379:541:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1538:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3350:3622:3865:3867:3868:3870:3871:3872:4321:5007:6742:7903:8660:10004:10400:10848:11232:11658:11914:12740:12760:12895:13069:13148:13230:13311:13357:13439:14181:14659:14721:21080:21434:21627:30012:30054:30091,0,RBL:error,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:error,Custom_rules:0:0:0,LFtime:2000,LUA_SUMMARY:none
X-HE-Tag: soup86_83a582d9e5c63
X-Filterd-Recvd-Size: 1931
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf12.hostedemail.com (Postfix) with ESMTPA;
	Wed, 13 Sep 2017 21:58:24 +0000 (UTC)
Message-ID: <1505339903.8969.20.camel@perches.com>
Subject: Re: [PATCH v2 1/2] include: linux: sysfs: Add __ATTR_NAMED macro
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Greg KH
	 <gregkh@linuxfoundation.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, devel@driverdev.osuosl.org, 
 daniel.baluta@gmail.com, Himanshi Jain <himshijain.hj@gmail.com>, 
 Michael.Hennerich@analog.com, linux-iio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, nick.desaulniers@gmail.com, 
 outreachy-kernel@googlegroups.com, pmeerw@pmeerw.net, knaack.h@gmx.de,
 Jonathan Cameron <jic23@kernel.org>
Date: Wed, 13 Sep 2017 14:58:23 -0700
In-Reply-To: <20170913214333.mcw4f24fkzndwh5k@mwanda>
References: <cover.1505291907.git.himshijain.hj@gmail.com>
	 <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com>
	 <20170913180310.27cbf1b1@archlinux> <20170913185805.GB26390@kroah.com>
	 <5e43ea4d-eab8-c4be-c5dc-2f862578d011@metafoo.de>
	 <20170913212952.GD9288@kroah.com> <20170913214333.mcw4f24fkzndwh5k@mwanda>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.6-1ubuntu1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2017-09-14 at 00:43 +0300, Dan Carpenter wrote:
> He was exagerating a bit to call it a "static checker" warning...

Not really.

False positives and false negatives exist in just about
every static
checker.

> It's just checkpatch.pl complaining about adding spaces around the -
> operator.

checkpatch is a brain-damaged by design static checker.
regexes can only be sensitive to patterns, not compiled code.

> The sysfs file has a hyphen in the middle.

Another option would be to use an underscore instead.


