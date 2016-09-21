X-GM-THRID: 6330560970566402048
X-Received: by 10.200.50.246 with SMTP id a51mr7573295qtb.41.1474466409309;
        Wed, 21 Sep 2016 07:00:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls4301442otw.27.gmail; Wed, 21 Sep
 2016 07:00:08 -0700 (PDT)
X-Received: by 10.129.121.70 with SMTP id u67mr18869626ywc.2.1474466408915;
        Wed, 21 Sep 2016 07:00:08 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 63si1661317ywe.1.2016.09.21.07.00.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 07:00:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 76BC789E;
	Wed, 21 Sep 2016 14:00:07 +0000 (UTC)
Date: Wed, 21 Sep 2016 16:00:12 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ronald Rojas <ronladred@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v7] Staging: octeon: Fix blank lines warnings
Message-ID: <20160921140012.GA17886@kroah.com>
References: <20160918230417.GA5289@fedora.home>
 <20160920115119.GA14587@kroah.com>
 <20160921124938.GB28807@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160921124938.GB28807@fedora>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Wed, Sep 21, 2016 at 08:49:39AM -0400, Ronald Rojas wrote:
> On Tue, Sep 20, 2016 at 01:51:19PM +0200, Greg KH wrote:
> > On Sun, Sep 18, 2016 at 07:04:19PM -0400, Ronald Rojas wrote:
> > > Fixes several of the checkpatch.pl warnings to
> > > not use multiple blank lines
> > > 
> > > Signed-off-by: Ronald Rojas <ronladred@gmail.com>
> > > ---
> > > v7: changed to staging tree instead of torvalds tree
> > >  drivers/staging/octeon/ethernet.c | 2 --
> > >  1 file changed, 2 deletions(-)
> > 
> > What branch are you using?  This still doesnt apply.  Please use the
> > staging-next or better yet, staging-testing.
> I'd like to confirm that I'm doing this correctly so that the next patch 
> I send to you will be correct. This is what I have done: 
> I cloned your repository directly under gregkh/staging.git

Good.

> I've checked out staging-testing and created my own branch I called
> ronald-branch.

Good.

> Then, when I had ronald-branch checked out, I ran "git merge staging-testing", 
> to make sure ronald-branch was up to date.

Hm, ok.  But now you have a merge, not your patch on top of my
changes...

> Then I make the appropriate changes and resubmit patch the patch?

How are you generating the patch?  If you do something like:
	git diff staging-testing..HEAD > my.patch
great.
but if you do something like:
	git format-patch staging-testing..HEAD
then you will end up with a mess.

What you might want to do is just rebase your branch on top of mine,
when changes come into it.

To do this, in your repo:
	git fetch --all
	git checkout staging-testing
	git pull
	git checkout ronald-branch
	git rebase staging-testing

that will update staging-testing to the latest, and then rebase whatever
you had in your branch on top of it.  I like to use the '-i' option to
rebase to see what you are doing, but that's up to you.

Hope this helps,

greg k-h

