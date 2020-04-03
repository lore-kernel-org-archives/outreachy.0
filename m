X-GM-THRID: 6811027108156932096
X-Received: by 2002:a62:5c07:: with SMTP id q7mr6367125pfb.200.1585881555071;
        Thu, 02 Apr 2020 19:39:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6a00:c9:: with SMTP id e9ls4475320pfj.10.gmail; Thu, 02
 Apr 2020 19:39:13 -0700 (PDT)
X-Google-Smtp-Source: APiQypJjJxhKD9nQy9oOyoLI8HTUdXT7fHoLomZpW6pvJkMQwn1o3RC94XYVaahHGG7fiLpn8O+j
X-Received: by 2002:a05:6a00:8d:: with SMTP id c13mr6519184pfj.68.1585881553659;
        Thu, 02 Apr 2020 19:39:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585881553; cv=none;
        d=google.com; s=arc-20160816;
        b=uIawv1mgRXq2x4B26qnhv4THFUVypBkhUsEQl2Nh4/XKNfvZZ5vUzYeAGtVQsvm9ZL
         FnHkY61DaKZwpk4v1aM9YtaPTWJ2feiECQZqDhsWAQTMCB54Ok//A9Ycl9zfTSDZfDgf
         OQDhXoZizaSQQIEoONdJZqxgG/XJpxYIS1mKFCtRUzx6JMReqbKzDBdj2MPTY/klx1YT
         d+lvVgY71L5HPC67wAsk0si/nAJIMmOFUn6xejJhAnYaNz5LwtujEfIFuEQ5QydW6IIk
         QTIQEdjVihg5hVe1rebcZj6p/yMuf8g63YyMOALc51ZD7j+Es0GLm2LveGwxUqsVjVl4
         QJSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=7p3LKaJ9JsfyHjv6cSqYC7n2vZe1v54gjwHNqx3fqFQ=;
        b=wqSKCTeyDGY+IuicPoKvyVDjHnkwf2SfGh7PNtRhEkLPIlYf6ANcEk7MOlGn8b1MQJ
         6WSZUDqMjRyqrG8152UyJ+SEgJXU8MVVkcjXdQz7bcfh+rFdxHKtCLKbesrkVuGkW86J
         s5OPIGhZe+ZiYD3Jd9zu8dQ74zvGX7h/nU+tV889zzIDCgciRNE0Z+mTarPRNBXC5hTF
         Cpd8uGn/fn9bmXpezIbg6VHSD9DuPFqvQVC2do+wQRZaMl/clicM/9YFDRqVVxwRhL8D
         UPRv1Fkwk2xGkakA6TkhJKQVtF5n8fkAMFcE5Jndoq8qoSoOMV+HTm1uXB2OsCSNZUoZ
         LEDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.132 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0132.hostedemail.com. [216.40.44.132])
        by gmr-mx.google.com with ESMTPS id u14si63910pjn.2.2020.04.02.19.39.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 19:39:13 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.132 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.132;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.132 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 36479100E7B43;
	Fri,  3 Apr 2020 02:39:12 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:800:960:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2553:2559:2562:2693:2828:3138:3139:3140:3141:3142:3354:3622:3653:3865:3866:3867:3870:3871:3872:3873:4250:4321:5007:7514:7903:8957:9010:10004:10400:10471:10848:11026:11232:11658:11914:12043:12048:12296:12297:12555:12679:12740:12760:12895:13255:13439:13972:14181:14659:14721:21080:21324:21611:21627:21660:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:21,LUA_SUMMARY:none
X-HE-Tag: books65_501660ccbe054
X-Filterd-Recvd-Size: 3625
Received: from XPS-9350.home (unknown [47.151.136.130])
	(Authenticated sender: joe@perches.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Fri,  3 Apr 2020 02:39:10 +0000 (UTC)
Message-ID: <e7ce9bffed19f0aeb97bae0c589688f565cc4a3a.camel@perches.com>
Subject: checkpatch doesn't recognize register or volatile declarations (was
 Re: [Outreachy kernel] [PATCH] staging: ralink-gdma: Move blank line to fix
 warning)
From: Joe Perches <joe@perches.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>, Julia Lawall
	 <julia.lawall@inria.fr>, Andy Whitcroft <apw@canonical.com>, Dan Carpenter
	 <error27@gmail.com>, Andrew Morton <akpm@linux-foundation.org>
Cc: outreachy-kernel@googlegroups.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Harold =?ISO-8859-1?Q?Andr=E9?=
 <harold.andre@gmx.fr>, YueHaibing <yuehaibing@huawei.com>, "Gustavo A. R.
 Silva" <gustavo@embeddedor.com>, Nishka Dasgupta
 <nishka.dasgupta@yahoo.com>, Stephen Boyd <swboyd@chromium.org>
Date: Thu, 02 Apr 2020 19:37:13 -0700
In-Reply-To: <3492c120971177bb0b523d78565130981acd1eda.camel@gmail.com>
References: <20200402082309.839063-1-jbwyatt4@gmail.com>
	 <alpine.DEB.2.21.2004021129490.3014@hadrien>
	 <3492c120971177bb0b523d78565130981acd1eda.camel@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2020-04-02 at 18:21 -0700, John B. Wyatt IV wrote:
> On Thu, 2020-04-02 at 11:31 +0200, Julia Lawall wrote:
> > On Thu, 2 Apr 2020, John B. Wyatt IV wrote:
> > 
> > > Move a blank line within a struct to fix/silence a style warning.
> > > 
> > > Reported by checkpatch.
> > > 
> > > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > > ---
> > > Note:
> > > ralink-gdma does not build; even with make allyesconfig.
> > > I did not find a menu option with make menuconfig.
> > > 
> > >  drivers/staging/ralink-gdma/ralink-gdma.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c
> > > b/drivers/staging/ralink-gdma/ralink-gdma.c
> > > index eabf1093328e..9c398048daac 100644
> > > --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> > > +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> > > @@ -122,9 +122,9 @@ struct gdma_dma_dev {
> > >  	struct gdma_data *data;
> > >  	void __iomem *base;
> > >  	struct tasklet_struct task;
> > > +
> > 
> > Adding a blank line here is not correct. checkpatch is confused. 
> 
> It is not, but I was unsure of how this should be addressed. Thank you
> for letting me know.
> 
> The second version of the patch removes the blank line.
> 
> > Perhaps
> > it lacks a pattern considering wolatile to indicate a type.
> 
> I have CC'ed Joe Perches on this.
> 

Well, perhaps this, but it might cause other undesired change.
I haven't tested it much.

Maybe for older c, this list should even include "auto" too.

btw: the linux kernel sources do not have a single instance of
     auto as far as I can tell with a trivial search.

---
 scripts/checkpatch.pl | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index d64c67..e906a8 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -372,6 +372,8 @@ our $InitAttribute = qr{$InitAttributeData|$InitAttributeConst|$InitAttributeIni
 # We need \b after 'init' otherwise 'initconst' will cause a false positive in a check
 our $Attribute	= qr{
 			const|
+			volatile|
+			register|
 			__percpu|
 			__nocast|
 			__safe|



