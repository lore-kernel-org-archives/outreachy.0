X-GM-THRID: 6391852583766458368
X-Received: by 10.107.163.194 with SMTP id m185mr6384005ioe.23.1488228204329;
        Mon, 27 Feb 2017 12:43:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.110 with SMTP id 101ls13896919oti.43.gmail; Mon, 27 Feb
 2017 12:43:23 -0800 (PST)
X-Received: by 10.129.1.197 with SMTP id 188mr6499741ywb.3.1488228203951;
        Mon, 27 Feb 2017 12:43:23 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0219.hostedemail.com. [216.40.44.219])
        by gmr-mx.google.com with ESMTPS id z191si1649613itc.0.2017.02.27.12.43.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 12:43:23 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.219 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.219;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.219 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 56F5C2341C;
	Mon, 27 Feb 2017 20:43:23 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:541:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3870:3871:3874:4321:4605:5007:10004:10400:10848:11026:11232:11657:11658:11914:12043:12438:12740:12760:12895:13069:13095:13161:13229:13311:13357:13439:14181:14659:14721:21080:21433:30054:30070:30080:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: coach33_1d60d2c5f3815
X-Filterd-Recvd-Size: 2233
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Mon, 27 Feb 2017 20:43:21 +0000 (UTC)
Message-ID: <1488228200.25838.14.camel@perches.com>
Subject: Re: [PATCH 1/5] staging: lustre: Remove unnecessary else after
 return
From: Joe Perches <joe@perches.com>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	linux-fbdev@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Mon, 27 Feb 2017 12:43:20 -0800
In-Reply-To: <CALrZqyMTTk4o5Y5e3DzH_cqXxvHsHDtByG0oYwWMjekZSR7Kkw@mail.gmail.com>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
	 <1488223529.25838.8.camel@perches.com>
	 <CALrZqyMTTk4o5Y5e3DzH_cqXxvHsHDtByG0oYwWMjekZSR7Kkw@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2017-02-28 at 01:51 +0530, SIMRAN SINGHAL wrote:
> On Tue, Feb 28, 2017 at 12:55 AM, Joe Perches <joe@perches.com> wrote:
> > On Mon, 2017-02-27 at 23:44 +0530, simran singhal wrote:
> > > This patch fixes the checkpatch warning that else is not generally
> > > useful after a break or return.
> > 
> > checkpatch doesn't actually warn for this style
> > 
> >         if (foo)
> >                 return bar;
> >         else
> >                 return baz;
> > 
> 
> ok, My bad
> so, I have to change commit message as checkpatch doesn't warn for this style.

Perhaps better would be to leave them unchanged instead.

> > > diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
[]
> > > @@ -1806,8 +1806,7 @@ ksocknal_close_matching_conns(struct lnet_process_id id, __u32 ipaddr)
> > > 
> > >       if (!count)
> > >               return -ENOENT;
> > > -     else
> > > -             return 0;
> > > +     return 0;

There might be a case for this one.
error returns are generally in the form

{
	[...]

	err = func(...);
	if (err < 0)
		return err;

	return 0;
}

