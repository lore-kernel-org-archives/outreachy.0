X-GM-THRID: 6388519093491728384
X-Received: by 10.200.36.187 with SMTP id s56mr1854818qts.40.1487991192895;
        Fri, 24 Feb 2017 18:53:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.232 with SMTP id 95ls1421170ots.19.gmail; Fri, 24 Feb
 2017 18:53:12 -0800 (PST)
X-Received: by 10.13.245.194 with SMTP id e185mr2167588ywf.61.1487991192354;
        Fri, 24 Feb 2017 18:53:12 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0238.hostedemail.com. [216.40.44.238])
        by gmr-mx.google.com with ESMTPS id i189si570034iti.0.2017.02.24.18.53.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 18:53:12 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.238 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.238;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.238 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id BC84E268E14;
	Sat, 25 Feb 2017 02:53:11 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::,RULES_HIT:41:355:379:541:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2731:2828:2895:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3874:4321:5007:7514:7903:10004:10400:10848:11232:11658:11914:12663:12740:12760:12895:13069:13311:13357:13439:14096:14097:14181:14659:14721:14777:21080:21433:21451:30022:30054:30070:30083:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: voice05_1bbfacea71530
X-Filterd-Recvd-Size: 2207
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Sat, 25 Feb 2017 02:53:10 +0000 (UTC)
Message-ID: <1487991188.14159.56.camel@perches.com>
Subject: Re: [PATCH v2 6/6] staging: rtl8192e: Removed unnecessary
 parentheses
From: Joe Perches <joe@perches.com>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>, Greg KH
	 <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Fri, 24 Feb 2017 18:53:08 -0800
In-Reply-To: <CALrZqyPpeCm1zj3aqAhAQXe3Q=TouHdFv7qY_4ijNNDBzqJZNA@mail.gmail.com>
References: <20170220171147.GA15849@singhal-Inspiron-5558>
	 <20170224171711.GA3159@kroah.com>
	 <CALrZqyPpeCm1zj3aqAhAQXe3Q=TouHdFv7qY_4ijNNDBzqJZNA@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sat, 2017-02-25 at 04:18 +0530, SIMRAN SINGHAL wrote:
> On Fri, Feb 24, 2017 at 10:47 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Mon, Feb 20, 2017 at 10:41:47PM +0530, simran singhal wrote:
> > > Extra parentheses were causing checkpatch issues
> > > and were removed.
> > > 
> > > Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> > > ---
> > > 
> > >  v2:
> > >    -Removed parentheses around argument of cast
> > >    -Removed cast
> > 
> > I can't keep track of random patches in the middle of a series that is
> > updated.
> > 
> > Please fix up and resend the whole series, as a series, that are linked
> > together in an email client, not as independent emails (i.e. use
> > git-send-email properly).
> 
>  I am using mutt for sending patches. In mutt I have to send each patch
>  of a particular patch series one by one. So, they come as independent
>  emails.
> 
>  And, they all get mix because of the reason, if I started sending new patch
>  series and at the same time sending new versions of patches of previous
>  patch series, so because of which their order changes.
> 
>  So, please suggest me some better way, considering I am using mutt.

git send-email


