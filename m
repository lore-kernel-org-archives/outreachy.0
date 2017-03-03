X-GM-THRID: 6393343309495926784
X-Received: by 10.157.12.97 with SMTP id 88mr1717547otr.122.1488572203769;
        Fri, 03 Mar 2017 12:16:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls7303662otg.18.gmail; Fri, 03 Mar
 2017 12:16:43 -0800 (PST)
X-Received: by 10.157.56.155 with SMTP id p27mr1906605otc.124.1488572203389;
        Fri, 03 Mar 2017 12:16:43 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0100.hostedemail.com. [216.40.44.100])
        by gmr-mx.google.com with ESMTPS id 13si1223589iti.0.2017.03.03.12.16.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 12:16:43 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.100 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.100;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.100 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id D44DFC211F;
	Fri,  3 Mar 2017 20:16:42 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::,RULES_HIT:41:69:355:379:541:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1431:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3868:3872:3873:3874:4277:4321:5007:7514:7903:10004:10400:10471:10848:11026:11232:11658:11914:12043:12296:12438:12555:12740:12760:12895:12986:13069:13255:13311:13357:13439:14096:14097:14181:14659:14721:21060:21080:21451:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: use54_1cc0e182afb0e
X-Filterd-Recvd-Size: 2142
Received: from XPS-9350 (193.sub-70-197-78.myvzw.com [70.197.78.193])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Fri,  3 Mar 2017 20:16:36 +0000 (UTC)
Message-ID: <1488572194.2179.36.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: speakup: fixes braces
 {} should be used on all arms of this statement
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Arushi Singhal
	 <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, 
 outreachy-kernel@googlegroups.com, kirk@reisers.ca,
 samuel.thibault@ens-lyon.org,  gregkh@linuxfoundation.org,
 speakup@linux-speakup.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Fri, 03 Mar 2017 12:16:34 -0800
In-Reply-To: <alpine.DEB.2.20.1703031940410.2133@hadrien>
References: <20170303183707.14830-1-arushisinghal19971997@gmail.com>
	 <20170303183707.14830-7-arushisinghal19971997@gmail.com>
	 <alpine.DEB.2.20.1703031940410.2133@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2017-03-03 at 19:40 +0100, Julia Lawall wrote:
> On Sat, 4 Mar 2017, Arushi Singhal wrote:
> > This patch fixes the checks reported by checkpatch.pl
> > for braces {} should be used on all arms of this statement.
> > 
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> >  drivers/staging/speakup/main.c | 29 +++++++++++++++++++----------
> >  1 file changed, 19 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> > index 7915e75664f4..6179e0aafa25 100644
> > --- a/drivers/staging/speakup/main.c
> > +++ b/drivers/staging/speakup/main.c
> > @@ -640,8 +640,9 @@ static void say_prev_word(struct vc_data *vc)
> >  				break;
> >  			spk_y--;
> >  			spk_x = vc->vc_cols - 1;
> > -		} else
> > +		} else{
> 
> else needs a space after it.

And if you had scanned this suggested patch with
checkpatch, you would have known that.



