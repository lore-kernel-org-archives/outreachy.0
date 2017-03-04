X-GM-THRID: 6393429839339061248
X-Received: by 10.129.112.83 with SMTP id l80mr3955016ywc.45.1488666114787;
        Sat, 04 Mar 2017 14:21:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.1 with SMTP id a1ls1310504otd.37.gmail; Sat, 04 Mar
 2017 14:21:54 -0800 (PST)
X-Received: by 10.13.249.2 with SMTP id j2mr3417008ywf.86.1488666114459;
        Sat, 04 Mar 2017 14:21:54 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id y90si687863pfa.6.2017.03.04.14.21.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 14:21:54 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id v190so8031471pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 14:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3MsWSnW0OE5WuAq/qHRROfRiDrxx9TcgqE/id012p48=;
        b=iyTZxylz9eYqo3ga0PdmSeNBf8CYltdSIJs3uV6K4tO/W7zfk+GX47ZW+KaFiEFun+
         dbo2WGl/MN//wwlcm5Aq5uWPq+7Vox3Lcx7/oY72weqHTup+6p0mwXHjs1ijXe11b+5+
         feasflUG5iPr2b8vsmwdn/atFkQkezSQbcNS5acWRUmlx2mmtUQQNtSdE7ggMypJLRrm
         E/j93tDpEWcweZBsnNdLAypw/p8WHcMqV0oBHu4xZs0LTaLaV/dA+cZ483S3nLwFClHc
         QepBywM8pedHD6CwCVKhaJdQXK1i8knd52NshFeQ9nPSRheKxaaTlxlvHHgNvsMAdquH
         tNvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3MsWSnW0OE5WuAq/qHRROfRiDrxx9TcgqE/id012p48=;
        b=bPL0Rdpz2hNDgSFV8OybdcO3FePNVNZw+AaReqBH20ZPbwxIng1fErE6tnz7Ypmkyq
         y3wHMduoGfsh+rCdGqQlK+So2o0xJjOhZ7r8iGtzdtCzwHiPub/1b/kJfq3jIhkHG/gJ
         ORAtXv/9wY9YDLYrk5chwLy6qggGFySq8yarUC1WsiXgFjDLDBtFfD22cBFX8WLpgA4D
         e6/AdhguE/KlwZkW16zn81H8E4n8r3sqy2WwZm4ci2ZSqdfN2wTdKs2EDO5+bW8zgXlI
         alb4IOXdW+b4exsDxX1VjXNrI5vWYt/v/ZA/v8iLPkBHVVzSlumtswICnB4qj4ypjXRR
         9sgw==
X-Gm-Message-State: AMke39mX+ALelfz+DkzPh4VHPLd0LIhqPJf/c0F2DtP9uievEqLaumiimKP6UPyqQ2a8UQ==
X-Received: by 10.98.56.2 with SMTP id f2mr11900267pfa.130.1488666113980;
        Sat, 04 Mar 2017 14:21:53 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id x2sm30898486pfb.49.2017.03.04.14.21.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 14:21:53 -0800 (PST)
Date: Sat, 4 Mar 2017 14:21:52 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Joe Perches <joe@perches.com>, outreachy-kernel@googlegroups.com
Subject: Re: checkpatch post-commit hook
Message-ID: <20170304222150.GA3857@d830.WORKGROUP>
References: <20170304001259.GA4417@d830.WORKGROUP>
 <1488590146.2179.39.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1488590146.2179.39.camel@perches.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 03, 2017 at 05:15:46PM -0800, Joe Perches wrote:
> On Fri, 2017-03-03 at 16:13 -0800, Alison Schofield wrote:
> > I'm thinking of adding a git post-commit hook to our First Patch Tutorial.
> > 
> > Recently, Joe Perches (checkpatch author) showed us a spelling error
> > in a log message found by checkpatch and it made me realize we may be
> > under-utilizing checkpatch in the workflow as defined in the first patch
> > tutorial.
> > 
> > If you use it pre-commit (and while working a file) it shows you
> > issues in your files.  But, if you use it on the built patch, you
> > can also see WARNINGS like:
> > 
> > WARNING: Do not use whitespace before Signed-off-by:
> > WARNING: please write a paragraph that describes the config symbol fully
> > WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?
> > 
> > Here's a post commit hook: 
> > 
> > .git/hooks$ cat post-commit
> > #!/bin/sh
> > exec git show HEAD | scripts/checkpatch.pl --nosummary
> 
> exec git show --format=email HEAD | ./scripts/checkpatch.pl --strict

Thanks Joe.  Added the codespell option too.

exec git show --format=email HEAD | ./scripts/checkpatch.pl --strict --codespell

codespell option uses this dictionary: /usr/share/codespell/dictionary.txt
get it like this:  apt-get install codespell

alisons

> 
> 
> > If someone will verify this and agree we should add it - I'll add it to
> > the first patch tutorial.
> > 
> > And, of course, you'll let me know if there's another/better way
> > to do it!
> > 
> > alisons

