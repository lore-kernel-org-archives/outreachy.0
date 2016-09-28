X-GM-THRID: 6335466366571642880
X-Received: by 10.157.26.73 with SMTP id u9mr4606950otu.143.1475099358570;
        Wed, 28 Sep 2016 14:49:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.50.244 with SMTP id u107ls1975468otb.37.gmail; Wed, 28 Sep
 2016 14:49:18 -0700 (PDT)
X-Received: by 10.13.250.129 with SMTP id k123mr9951914ywf.1.1475099358081;
        Wed, 28 Sep 2016 14:49:18 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id f12si2580449pfk.0.2016.09.28.14.49.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 14:49:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id 21so21401736pfy.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 14:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gA3YeOAdlCpEjLFjLwxlzZ2OL9VlgPp23DvbQPoEgXw=;
        b=UifsIiKXRfBN5VbcPOko1oro9jLu0sP8AkTEuYsI63JkWtcOj+Fu6R4S8pVadznabV
         PVrFW66rKjVmWCCZMe6SoEQD+MiKSlXJw+WOk2JNUWsg6QbixbuAd4dGs9BpbT0KBAPL
         +71tR00mXa2jtq20ugTeO9hEQixO9NiQeXkMgrxI9Knyd5eBW0CILgOPId2+zfbJzAPY
         DIcVQis4climWXOo00hUUHE0Q71YRSH60h+VBEUNwQpG9fA7mXNO37k67Sk8hMyXaRn8
         Z9T0nmLt49KAtxJShL1Y63BLczZVY62rkl1vTNXnoUPjsWtRrt3T//+XoZSV8q51Fwks
         teHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gA3YeOAdlCpEjLFjLwxlzZ2OL9VlgPp23DvbQPoEgXw=;
        b=X8nS6BwQPRa1a4d7M8btfwM1ybEzOzwLjpZt11EzvJzMkhmtZHYTRna1mF/U6VLGNz
         94ViU6ML0P1hMvMXv2oFYUbWlIdSKhxRCUSrl1NNRvkfcpSllZhOeTt/3+y5UWQHif1z
         RCgeQ5UaJQ6Fjvn5kVI+k/DtiOnx9lAoWK3TRgpsD1iLnRBYsz4zsFWNH+UhYqqN+Co5
         wltIQ3D5gL43d9NdR2dFr8LBvnU8M3RIIWwRSmb9k4oZxgoDPoo2j7Pw8sr/WGTa9G2H
         WNaiLWvOpkpFWQajsF/KVHtW7XSMtA48V3wzTMh5dXNST0pSl0liFg4XIgXeMLmhbSlE
         6OfQ==
X-Gm-Message-State: AE9vXwMLKRlnhR2INExemc/8gCzonKpp+oXuMe765DrYKA0v+CUOCzSD/hCSPcxClKuEEA==
X-Received: by 10.98.99.67 with SMTP id x64mr60468246pfb.26.1475099357859;
        Wed, 28 Sep 2016 14:49:17 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id a137sm14726202pfa.72.2016.09.28.14.49.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 14:49:17 -0700 (PDT)
Date: Wed, 28 Sep 2016 14:49:15 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: Rebase/line wrap question
Message-ID: <20160928214914.GA3263@localhost>
References: <20160928192508.GB2193@localhost>
 <20160928202500.GA11599@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160928202500.GA11599@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 28, 2016 at 01:25:01PM -0700, Alison Schofield wrote:
> On Wed, Sep 28, 2016 at 12:25:08PM -0700, Elizabeth Ferdman wrote:
> > Hey Alison,
> > 
> > I received some feedback from Greg that I want
> > to fix and I have a bunch of questions. The plus side is that maybe
> > some of the answers could go into the tutorial.
> > 
> > First he said "please wrap your changelog comments at 72 columns."
> > 
> > Is this something I add to my .vimrc? I've been using "git commit -m".
> > Is that causing the issue? I thought git commit messages were supposed
> > to be less than 50 chars anyway. I'm confused.
> 
> "commit message" is that one line message in your Subject line and it
> needs to fit in 80chars.  The tutorial tells you about using git with
> git log --pretty=oneline --abbrev-commit' to see style used for that
> particular file/subsystem.
> 
> "changelog" is the next section in the body of the patch. I saw Greg's
> message yesterday, and I went off and looked at that a bit.  I think
> I always dodge that just by luck and the way I visually like to line
> things up.  I googled a bit and see lots of little widgets for
> linewrapping text to a certain column size.   Don't know how to
> integrate any of those with git commit editing.  Maybe someone else
> here does.
> 
> w.r.t. using "git commit -m"  - just curious why you are not doing
> "git commint -s -v"  per the tutorial?

I meant to say that I have been doing "git commit -s -v -m <msg>"
But I just realized that was pointless and just causing me more work.
> > 
> > The other issue was that my commit didn't apply to his tree. He says
> > please rebase and resend. I think I need to do:
> > 
> assuming you are in your staging tree
> > $ git fetch origin
> > $ git rebase origin/staging-testing
> 
> When this happens git will try to place any commits it finds
> in your tree on top of all the stuff it grabbed from greg.
> If it doesn't apply nicely, it will give you message to repair.
> 
> > Then reformat the patch?
> 
> Caveat - if the rebase failed and you had to tweak your patch,
> then you may end up needing to git commit --amend -v to update
> your changelog.
> 
got it, thanks!
> > $ git format-patch -o ~/mypatches/ HEAD^
> > $ mutt -H <file>
> > 
> > So I don't need to uncommit/recommit?
> No, that git rebase does that for you.
> 
> Another aside: Whenever Greg sends out a message that he's caught
> up on patches, that's certainly a time to rebase.  Also, it could
> be part of your daily routine, to make sure you on "top" each
> day before you start working on your patches.
> 
yes, I had a feeling I should've been rebasing more often but the
tutorial didn't explicitly say that. When we say "rebase" should you
always assume that we're doing both of these commands?
$ git fetch origin 
$ git rebase origin/staging-testing

And would it also be a good idea to actually do those 2 before sending the
patch...?

> Hope that gets you further along,
> alisons
>
Thanks so much for all your help.
Liz
> > 
> > Thanks,
> > Liz
> > 

