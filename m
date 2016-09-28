X-GM-THRID: 6335466366571642880
X-Received: by 10.129.177.194 with SMTP id p185mr8856647ywh.115.1475094304816;
        Wed, 28 Sep 2016 13:25:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.11 with SMTP id 11ls774792iog.26.gmail; Wed, 28 Sep 2016
 13:25:02 -0700 (PDT)
X-Received: by 10.66.81.132 with SMTP id a4mr5638283pay.61.1475094302831;
        Wed, 28 Sep 2016 13:25:02 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id a3si22777paw.1.2016.09.28.13.25.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 13:25:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id q2so20759592pfj.3
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 13:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=W1BA+ut0Ti2synPjQPUlRxNc2IYdiRYGA0Lx+DuJ3GQ=;
        b=LPF6Q3VXWQD7Y15BIg34LQTC1CxeZ15Ur36gRtCopK2qcJNaCO0dsjVk4eIKVUSwr3
         9yeyqyeEXhFW/FrA2gY8rY3Zoh1GgFCuDfPiqKQwKWfMp4sL1dTJQ9f0BcdczmaiDGzc
         IhBeFu5pNwLB/hNL5502yf+Tys/wmcceN7DDpwKtfvk1fboLnhXjP4dW/EauPDeBENOl
         WxYNdVhTjOPrHc+0cYCaTNoVLCYT4F0ZHsN/bUbfbJnBSkEni0EqaYRqj+n4SvqVAs2s
         suPe8fh0uopSGpAPCMmrD5F7RxpvUyV1lIIlk2CZR/EH6nBar/ROlSjqozb1Mr9rxzv8
         xQiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=W1BA+ut0Ti2synPjQPUlRxNc2IYdiRYGA0Lx+DuJ3GQ=;
        b=AkSWJDT08DkfOFC2g88VkhaEP0Yp0bct+VqUJQ8SAWpZuL4KWqLIIi9YhGbd4d112N
         k0K2M479keDQ90y2wFXkcIrJYEwloIl34skFjkc85so4u+DMiHpNjYOwUHT9UuFW8m2k
         d356GuDmJLcwpx55b/ke7RU+7LugGa7yDtT53rOgkojPFlrfWF/nT+OwadtAFaSA0eGO
         ObGDF9mwRhEuS9bN2cinAeQaewcjkRKcx8ifHtxBCZMijxFtY+T6HF/97QyUGqqaJ4Yp
         //HPDuzClMt0mAaoUG/WVgI0ib9NbKuZ8+y5dg8oXLtLNNbNqQXcu6rmsHOicNwP9B+J
         EsEg==
X-Gm-Message-State: AE9vXwOb+oogtMKA5lWQ2SyVk4E7yalL0cAiqVpQ9p4kQG6VerhVL8TZRv7l86njodKSHw==
X-Received: by 10.98.79.27 with SMTP id d27mr60697981pfb.127.1475094302635;
        Wed, 28 Sep 2016 13:25:02 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id t5sm14570316pfi.26.2016.09.28.13.25.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Sep 2016 13:25:02 -0700 (PDT)
Date: Wed, 28 Sep 2016 13:25:01 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: Rebase/line wrap question
Message-ID: <20160928202500.GA11599@d830.WORKGROUP>
References: <20160928192508.GB2193@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160928192508.GB2193@localhost>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 28, 2016 at 12:25:08PM -0700, Elizabeth Ferdman wrote:
> Hey Alison,
> 
> I received some feedback from Greg that I want
> to fix and I have a bunch of questions. The plus side is that maybe
> some of the answers could go into the tutorial.
> 
> First he said "please wrap your changelog comments at 72 columns."
> 
> Is this something I add to my .vimrc? I've been using "git commit -m".
> Is that causing the issue? I thought git commit messages were supposed
> to be less than 50 chars anyway. I'm confused.

"commit message" is that one line message in your Subject line and it
needs to fit in 80chars.  The tutorial tells you about using git with
git log --pretty=oneline --abbrev-commit' to see style used for that
particular file/subsystem.

"changelog" is the next section in the body of the patch. I saw Greg's
message yesterday, and I went off and looked at that a bit.  I think
I always dodge that just by luck and the way I visually like to line
things up.  I googled a bit and see lots of little widgets for
linewrapping text to a certain column size.   Don't know how to
integrate any of those with git commit editing.  Maybe someone else
here does.

w.r.t. using "git commit -m"  - just curious why you are not doing
"git commint -s -v"  per the tutorial?
> 
> The other issue was that my commit didn't apply to his tree. He says
> please rebase and resend. I think I need to do:
> 
assuming you are in your staging tree
> $ git fetch origin
> $ git rebase origin/staging-testing

When this happens git will try to place any commits it finds
in your tree on top of all the stuff it grabbed from greg.
If it doesn't apply nicely, it will give you message to repair.

> Then reformat the patch?

Caveat - if the rebase failed and you had to tweak your patch,
then you may end up needing to git commit --amend -v to update
your changelog.

> $ git format-patch -o ~/mypatches/ HEAD^
> $ mutt -H <file>
> 
> So I don't need to uncommit/recommit?
No, that git rebase does that for you.

Another aside: Whenever Greg sends out a message that he's caught
up on patches, that's certainly a time to rebase.  Also, it could
be part of your daily routine, to make sure you on "top" each
day before you start working on your patches.

Hope that gets you further along,
alisons

> 
> Thanks,
> Liz
> 

