X-GM-THRID: 6335466366571642880
X-Received: by 10.36.246.71 with SMTP id u68mr3201719ith.17.1475103073785;
        Wed, 28 Sep 2016 15:51:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.171 with SMTP id 40ls1375736otd.49.gmail; Wed, 28 Sep
 2016 15:51:13 -0700 (PDT)
X-Received: by 10.157.6.229 with SMTP id 92mr7165773otx.134.1475103073328;
        Wed, 28 Sep 2016 15:51:13 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id e66si2624879pfk.2.2016.09.28.15.51.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 15:51:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id l25so21779383pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 15:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bHPlgJCtKbs6v58dSV5ap4zLUMbej7iHrdtP7FDxZ3c=;
        b=JLQ4c1zdh+IWwX3ijNL+rpdG03IE1LrWEW8mGkrOhE5dTFPc83jYnKHeNQJkfcM4qQ
         UbBX05Q7ezq+6jI6pT4yzjkmvGEuIWYZFGQzSgLWm40r8C8ql6hjvuefu7AaynsjyWT7
         R/fsRKhudUeGdXWT/lWG5PmuGGVZPBbwa3EM+uP46/ADFnlhFiGhmy0uAuFxY9TTbA/N
         NDrf9yXZP/W1jy0xyRGzpD6hu4+Ovy+ZLmbXldK6uHC/zVaFq6NMMZezIA4W7HlLkf3B
         ofTILdyT2HUWT3BWgmr7wGUoC2nQSc7zy5icoGpRmPugijTnmWO6M2Z2tm757yCzEZpX
         QG6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bHPlgJCtKbs6v58dSV5ap4zLUMbej7iHrdtP7FDxZ3c=;
        b=StkxqM/p/NeLG9gQaKrtgWC5c/w7eC5u3XEgCkcay+Enf5jZ75sqFTWdMZRgQQZvua
         DqWljheg8tfMTil1Wd36jt/xdvTPnsfL7gn0WhF03dq16pR3huzo/dgu5n1t4ziQbTRt
         uw0w2Bq2NMfYNJaaE7UD45E4GXhMCU7s2u8w71MCt10iCMR5W58bAwu4V4G0W5uHQCYs
         aTXJErEgXaWzjTCkatqVLAt3BvdG24U16u5gYHFCzWyjgwpjFElc+pISPkJSmnpdB21j
         pUTrPFJDf7HSOflbgEsVaSDzWobUWLuwE1F+DohpsVIjVqN/fHD1MxKJX9BmWrw6O1e0
         qpBw==
X-Gm-Message-State: AA6/9Rk3uApgg2vwPpCrBuNbjxlmiYQzr9R7mRY2BzTyH1nGz1L3BNBnP0X684nge8PvKQ==
X-Received: by 10.98.72.88 with SMTP id v85mr1971203pfa.162.1475103072863;
        Wed, 28 Sep 2016 15:51:12 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id 27sm14865069pfr.29.2016.09.28.15.51.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Sep 2016 15:51:12 -0700 (PDT)
Date: Wed, 28 Sep 2016 15:51:10 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: Rebase/line wrap question
Message-ID: <20160928225109.GA13399@d830.WORKGROUP>
References: <20160928192508.GB2193@localhost>
 <20160928202500.GA11599@d830.WORKGROUP>
 <20160928214914.GA3263@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160928214914.GA3263@localhost>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 28, 2016 at 02:49:15PM -0700, Elizabeth Ferdman wrote:
> On Wed, Sep 28, 2016 at 01:25:01PM -0700, Alison Schofield wrote:
> > On Wed, Sep 28, 2016 at 12:25:08PM -0700, Elizabeth Ferdman wrote:
> > > Hey Alison,
> > > 
> > > I received some feedback from Greg that I want
> > > to fix and I have a bunch of questions. The plus side is that maybe
> > > some of the answers could go into the tutorial.
> > > 
> > > First he said "please wrap your changelog comments at 72 columns."
> > > 
> > > Is this something I add to my .vimrc? I've been using "git commit -m".
> > > Is that causing the issue? I thought git commit messages were supposed
> > > to be less than 50 chars anyway. I'm confused.
> > 
> > "commit message" is that one line message in your Subject line and it
> > needs to fit in 80chars.  The tutorial tells you about using git with
> > git log --pretty=oneline --abbrev-commit' to see style used for that
> > particular file/subsystem.
> > 
> > "changelog" is the next section in the body of the patch. I saw Greg's
> > message yesterday, and I went off and looked at that a bit.  I think
> > I always dodge that just by luck and the way I visually like to line
> > things up.  I googled a bit and see lots of little widgets for
> > linewrapping text to a certain column size.   Don't know how to
> > integrate any of those with git commit editing.  Maybe someone else
> > here does.
> > 
> > w.r.t. using "git commit -m"  - just curious why you are not doing
> > "git commint -s -v"  per the tutorial?
> 
> I meant to say that I have been doing "git commit -s -v -m <msg>"
> But I just realized that was pointless and just causing me more work.
> > > 
> > > The other issue was that my commit didn't apply to his tree. He says
> > > please rebase and resend. I think I need to do:
> > > 
> > assuming you are in your staging tree
> > > $ git fetch origin
> > > $ git rebase origin/staging-testing
> > 
> > When this happens git will try to place any commits it finds
> > in your tree on top of all the stuff it grabbed from greg.
> > If it doesn't apply nicely, it will give you message to repair.
> > 
> > > Then reformat the patch?
> > 
> > Caveat - if the rebase failed and you had to tweak your patch,
> > then you may end up needing to git commit --amend -v to update
> > your changelog.
> > 
> got it, thanks!
> > > $ git format-patch -o ~/mypatches/ HEAD^
> > > $ mutt -H <file>
> > > 
> > > So I don't need to uncommit/recommit?
> > No, that git rebase does that for you.
> > 
> > Another aside: Whenever Greg sends out a message that he's caught
> > up on patches, that's certainly a time to rebase.  Also, it could
> > be part of your daily routine, to make sure you on "top" each
> > day before you start working on your patches.
> > 
> yes, I had a feeling I should've been rebasing more often but the
> tutorial didn't explicitly say that. When we say "rebase" should you
> always assume that we're doing both of these commands?
> $ git fetch origin 
> $ git rebase origin/staging-testing

That a Yes, from me, because I still follow the routines I learned in that
first patch tutorial.  I've seen other methods, but I keep doing this 
simple method that works for me.  
> 
> And would it also be a good idea to actually do those 2 before sending the
> patch...?
Yes.  

> 
> > Hope that gets you further along,
> > alisons
> >
> Thanks so much for all your help.
> Liz
> > > 
> > > Thanks,
> > > Liz
> > > 

