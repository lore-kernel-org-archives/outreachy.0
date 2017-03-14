X-GM-THRID: 6397135108875223040
X-Received: by 10.237.33.236 with SMTP id m41mr5737661qtc.15.1489450280380;
        Mon, 13 Mar 2017 17:11:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.73.132 with SMTP id g4ls15819937otf.39.gmail; Mon, 13 Mar
 2017 17:11:19 -0700 (PDT)
X-Received: by 10.129.88.85 with SMTP id m82mr16712797ywb.97.1489450279937;
        Mon, 13 Mar 2017 17:11:19 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id u12si3402558pfd.3.2017.03.13.17.11.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 17:11:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id g2so15930887pge.2
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 17:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hr38X7b83B881wcFO6mk5a6UU2dmjDKZ4/dGybn6NQk=;
        b=BRSoCp3uGIMMFqHmzlUv8HUJMPITsJVkIBubQNEr7scbOJad3hcxaqADP7TlKgRWUm
         PmPqaKMoh1mIeE850P0+WSQcV42fDzvLVjHLYRhISx8+OniDsh9fl3UlLt5bpsrWwDDP
         DQq0B+CsrXOV93uLcCuHLjjdFA6NmKev0byscHBYNpeppOzs6vhkv+KZvUuv0zJ3D2o1
         BjNIXpYl7ec+BU05eVom4irf2xlGzRp8VjvLXlmatS2mwm24i5pXomBrvQB6WmL4Krpx
         Y24vM7fDDBErQILPcIJgWa4FCMh871v6tRFp6uVLKSh2xsl7Dlwj94E7hyRhBM/9J7Xd
         ZSFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hr38X7b83B881wcFO6mk5a6UU2dmjDKZ4/dGybn6NQk=;
        b=pE89DTShop/Nwud+5Z3lhN6/X9z0XGqFRm6cXJjV6M+Z/uRWVqow/1chhFW8EE52GK
         mYUUAwvHdxdo6AIOtUb8rIfe7zD+E1jA7UHmt9hP7Gt6wCdcnqe4O2XlgbEXulDM8jpJ
         t3OHnXCeNXn+MtcCzj1ZX+K0b03jzEtHJUepTActGN6IqNC1kvYeWNohFg3VFZ62xtYu
         TtVBwVLA0qO/ZZrh4ugIEYoeWugZ0HazuUJSdzwMV7ewMwGtIRjl0nc3MJNT8+qYJ8oR
         hfoHDrRTd3azvgtkc9GOaQ4Aeb3nrGIIZ2EmRdyYeeEEmqt1XS+W/Aw+E1ZOSCIjB/4u
         zvyw==
X-Gm-Message-State: AMke39mAHYKW6cPlKHjqd/TkrcUM2ER7USjDdFh4Bp3e5Bsh349XRqcnQLhpNyOAH5TkZw==
X-Received: by 10.84.139.67 with SMTP id 61mr51660217plq.61.1489450279717;
        Mon, 13 Mar 2017 17:11:19 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id 75sm34633351pfp.80.2017.03.13.17.11.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 17:11:19 -0700 (PDT)
Date: Mon, 13 Mar 2017 17:11:18 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: rebasing...
Message-ID: <20170314001117.GA8901@d830.WORKGROUP>
References: <CALks+gA_BQe4HEYdpYdD2b3QsWP48-UU5i3sJJZLhqQQff=Kdg@mail.gmail.com>
 <20170313235121.GA8442@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170313235121.GA8442@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 13, 2017 at 04:51:22PM -0700, Alison Schofield wrote:
> On Mon, Mar 13, 2017 at 11:19:32PM +0000, Tamara Diaconita wrote:
> > Hi,
> > I just received a feedback from Greg. He me this about the last path set I
> > sent : "This patch does not apply to my staging-testing branch at all.  Can
> > you
> > please rebase all of these and resend them?"
> > Does it mean that I have to make the changes again? And which could be the
> > reason for not applyng to his staging-testing branch?
> 
> Hi Tamara, 
> 
> CC'ing outreachy group. This comes up periodically.
> 
> First, take a peek here to get a feel for the rate of change in staging-testing:
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing
> 
> Greg is constantly applying patches, not just from Outreachy.  This
> means you need to fetch and rebase often.  Most of the time, you'll
> get a bunch of updates that don't touch the thing you're working on,
> but sometimes, and that's when it counts, the files you are working
> have been changed.  The git rebase process will attempt to lay your
> commits back on top after rebasing.  If it can't, it walks you thru
> the merge conflicts.
> 
> Look back at the first patch tutorial - "Update your kernel"
> section for the fetch and rebase steps.
> 
> alisons

Worth mentioning, it's not a [RESEND PATCH] Those are only used when
nothing has changed in the patch.   It will be the next version of 
the patchset.
and 

> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> > 
> > Thanks,
> > Tamara

