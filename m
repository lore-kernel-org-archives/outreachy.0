X-GM-THRID: 6391475391095111680
X-Received: by 10.31.41.15 with SMTP id p15mr3731005vkp.19.1488206801712;
        Mon, 27 Feb 2017 06:46:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls12814965otc.22.gmail; Mon, 27 Feb
 2017 06:46:41 -0800 (PST)
X-Received: by 10.200.57.131 with SMTP id v3mr5547754qte.9.1488206801347;
        Mon, 27 Feb 2017 06:46:41 -0800 (PST)
Received: by 10.202.215.6 with SMTP id o6msoig;
        Mon, 27 Feb 2017 06:46:04 -0800 (PST)
X-Received: by 10.99.56.30 with SMTP id f30mr852763pga.121.1488206764092;
        Mon, 27 Feb 2017 06:46:04 -0800 (PST)
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id c123si2926765pfa.4.2017.02.27.06.46.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 06:46:04 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com
Received: from userv0021.oracle.com (userv0021.oracle.com [156.151.31.71])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v1REjpdh013358
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 27 Feb 2017 14:45:52 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userv0021.oracle.com (8.14.4/8.14.4) with ESMTP id v1REjnZ7029426
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Mon, 27 Feb 2017 14:45:50 GMT
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
	by aserv0121.oracle.com (8.13.8/8.13.8) with ESMTP id v1REjhtn030236;
	Mon, 27 Feb 2017 14:45:44 GMT
Received: from mwanda (/154.0.138.2)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 27 Feb 2017 06:45:40 -0800
Date: Mon, 27 Feb 2017 17:44:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Scott Branden <scott.branden@broadcom.com>, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, f.fainelli@gmail.com,
        sbranden@broadcom.com, swarren@wwwdotorg.org, eric@anholt.net,
        linux-arm-kernel@lists.infradead.org, rjui@broadcom.com,
        Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>, lee@kernel.org,
        linux-kernel@vger.kernel.org, mzoran@crowfest.net,
        bcm-kernel-feedback-list@broadcom.com, daniel.baluta@spamfreegmail.com,
        gregkh@linuxfoundation.org, Joe Perches <joe@perches.com>,
        danielperezdeandres@gmail.com, linux-rpi-kernel@lists.infradead.org
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: Fixed spacing
 around '&'
Message-ID: <20170227144425.GA4315@mwanda>
References: <1488131271-2908-1-git-send-email-narcisaanamaria12@gmail.com>
 <alpine.DEB.2.20.1702261901180.2056@hadrien>
 <1488134072.9188.3.camel@perches.com>
 <alpine.DEB.2.20.1702261956070.2056@hadrien>
 <1488137824.9188.7.camel@perches.com>
 <alpine.DEB.2.20.1702262038560.2056@hadrien>
 <1488146211.9188.10.camel@perches.com>
 <3ed05e4f-b00a-8a4b-f4f2-de23ff9b461e@broadcom.com>
 <alpine.DEB.2.20.1702270724430.2187@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1702270724430.2187@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Source-IP: userv0021.oracle.com [156.151.31.71]

On Mon, Feb 27, 2017 at 07:25:30AM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 26 Feb 2017, Scott Branden wrote:
> 
> >
> >
> > On 17-02-26 01:56 PM, Joe Perches wrote:
> > > On Sun, 2017-02-26 at 20:40 +0100, Julia Lawall wrote:
> > > > On Sun, 26 Feb 2017, Joe Perches wrote:
> > > > > On Sun, 2017-02-26 at 19:59 +0100, Julia Lawall wrote:
> > > > > > On Sun, 26 Feb 2017, Joe Perches wrot
> > > > > > > Mailing lists _should_ be copied on patch submissions.
> > > > > > The idea of outreachy is that it should be a place for people to get
> > > > > > started without too much criticism from the outside.  Originally, only
> > > > > > the
> > > > > > outreachy mailing list received patches.  But staging maintainers were
> > > > > > confused to have their drivers receiving patches that they had not
> > > > > > seen.
> > > > > > So we expanded it to maintainers.
> > > > >

It was mostly me being annoyed because outreachy reviews are not that
good frankly.  We just were just looking at outreachy code from 2013
where they "fixed" sparse endian notations by removing the endian
conversions.  It was so obviously wrong just from reading the changelog
before you even got to the patch itself...

> > > > > That also doesn't make much sense as patches
> > > > > should not be applied that have not reached
> > > > > a mailing list for review.
> > > > >
> > > > > As long as initial outreachy patches are not
> > > > > applied and are just for internal review by
> > > > > any outside person but the outreachy list and
> > > > > are not be applied by maintainers, then perhaps
> > > > > it's best if neither maintainers nor lists are
> > > > > cc'd on the patches.
> > > >
> > > > The patches are applied by Greg.  Greg suggested the policy of adding
> > > > maintainers but not including mailing lists.  I'll let him consider
> > > > whether the policy should be changed.
> > >
> > > Well, I will comment on patches sent to the kernel list.
> > >
> > > I'm not subscribed to outreachy and I don't want to be
> > > subscribed to that list either.
> > >
> > I would prefer this outreachy work uses their own mailing list and reviews
> > their patches first.  Then once they have everything sorted out they send out
> > the patch series to the proper maintainers/mailing lists. That way we're not
> > spammed with all these emails of people as they are learning how to format and
> > send out proper patches.
> 

Outreachy emails are not really worse than normal staging patches so
I don't mind the spam.  But it would be good if driver-devel were always
CC'd on the final patch.

I know Greg feels differently.

regards,
dan carpenter


