X-GM-THRID: 6388887439725821952
X-Received: by 10.237.42.125 with SMTP id k58mr5378670qtf.7.1487531919529;
        Sun, 19 Feb 2017 11:18:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.13 with SMTP id j13ls8768879otb.40.gmail; Sun, 19 Feb
 2017 11:18:39 -0800 (PST)
X-Received: by 10.129.114.130 with SMTP id n124mr6422565ywc.151.1487531919132;
        Sun, 19 Feb 2017 11:18:39 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0140.hostedemail.com. [216.40.44.140])
        by gmr-mx.google.com with ESMTPS id z191si1108412itc.0.2017.02.19.11.18.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 11:18:39 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.140 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.140;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.140 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 978A912BA15;
	Sun, 19 Feb 2017 19:18:38 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:355:379:541:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3870:3871:3872:3873:3874:4321:4605:5007:7903:10004:10400:10848:11026:11232:11658:11914:12043:12740:12760:12895:13069:13095:13255:13311:13357:13439:14181:14659:14721:21060:21080:21433:30003:30012:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: stick74_8582df361b82e
X-Filterd-Recvd-Size: 2335
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf12.hostedemail.com (Postfix) with ESMTPA;
	Sun, 19 Feb 2017 19:18:37 +0000 (UTC)
Message-ID: <1487531915.2198.38.camel@perches.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] staging: ks7010: Unnecessary
 parentheses are removed.
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Arushi Singhal <arushisinghal19971997@gmail.com>, 
	gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Sun, 19 Feb 2017 11:18:35 -0800
In-Reply-To: <alpine.DEB.2.20.1702191955530.2363@hadrien>
References: <20170219182607.GA17005@arushi-HP-Pavilion-Notebook>
	 <1487529117.2198.36.camel@perches.com>
	 <alpine.DEB.2.20.1702191955530.2363@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2017-02-19 at 19:58 +0100, Julia Lawall wrote:
> On Sun, 19 Feb 2017, Joe Perches wrote:
> > On Sun, 2017-02-19 at 23:56 +0530, Arushi Singhal wrote:
> > > Unnecessary parentheses should be avoided as reported by checkpatch.pl.
> > > Remove unnecessary parentheses, as reported by checkpatch as are nicer
> > > to read.For example:-
> > > It's often nicer to read if &(foo[0]) is converted to foo like:
> > >      memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
> > >      memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);
> > []
> > > diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> > []
> > > @@ -212,7 +212,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
> > >  	memset(ap, 0, sizeof(struct local_ap_t));
> > > 
> > >  	/* bssid */
> > > -	memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
> > > +	memcpy(&ap->bssid[0], &ap_info->bssid[0], ETH_ALEN);
> > 
> > This code doesn't match the suggested style of
> > your commit message.
> 
> Is what is suggested in the commit message correct?  That is, is the 0th
> element of an array always at the same address as a pointer to the array
> itself?

I think your wording is a little fuzzy.

Assuming you mean not a pointer to the array,
but the array itself, yes.


