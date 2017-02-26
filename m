X-GM-THRID: 6390855341335117824
X-Received: by 10.107.143.14 with SMTP id r14mr4319237iod.34.1488135804659;
        Sun, 26 Feb 2017 11:03:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls11952069otc.30.gmail; Sun, 26 Feb
 2017 11:03:24 -0800 (PST)
X-Received: by 10.13.192.1 with SMTP id b1mr4864130ywd.54.1488135804191;
        Sun, 26 Feb 2017 11:03:24 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id f7si2715112pfk.5.2017.02.26.11.03.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 11:03:24 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::234 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::234 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x234.google.com with SMTP id p185so5750639pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 11:03:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nhOi1AB22FB6x30Mer60PhIMU74pDlrALjlzx5yigGg=;
        b=BKl6QBGNxKQGTwXKU7BgL2+KXU1l5cJq7I5RVFvsr0MbzuaX1v5FJXCNZAPTroGGNq
         FWIGgjYw5hilSdAu9dhAWutZrnwFWM1bLD4UK2J8AJzjQE1WKXKM3CEitbhMOtzxitwA
         +c7tLM60esT0HLR/8r9OSKwXB8LI4U3FyI5wRO0jpwnI9PanqC0WZSgBJAf/cOGOIC4y
         GpJnKxttvhhBx/WOb625t5ZFYVqH0ReJzhYutCoC7z3nPt9hqexQbvsZVOkwzjQ8xiRn
         kkVAowyeWntc++99X5ClRtySEDQ0FslB6I1kwOKPAtaUjVyClVgp2fxARYDmy9cvLN1g
         kMLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nhOi1AB22FB6x30Mer60PhIMU74pDlrALjlzx5yigGg=;
        b=mBAMkChC0r7oOwKbAlQe4xnj+b0ocK8YPJgwb/UsYa1T86ILGjs8GuDUAgYxmOM1qu
         e6ETXhu/2PK3ayPWIOMyMntoU80320pnvZv/MLqeYPo5ETdf6oN/9Ni8e+UwwAosOHtT
         QXcVT+uZMPuIICQZNloi7zh2G2CT9eSs7qVkjliNMJiAV4WMy3moVMXKHMvzOL9NVxeP
         C58F9d1KQraXSqKr5kgmZxLDOB1vCLPHVUzm14mv2MhXGqUCyMQTv66PAghpf97C8mcn
         fc+rq20qb3MZ8f+AVcIPfwTF4GozRCuDK+2PsIk3j+f8iubvfsLbHNKDRr9jsJ8bhi8a
         9SQA==
X-Gm-Message-State: AMke39nRcTYCRfUJZPCE6knvlMXbU77I08aap40MtRjTujBS9MWQw6yTj2uIyZYBv91Ytbsl
X-Received: by 10.99.67.1 with SMTP id q1mr16559128pga.210.1488135803742;
        Sun, 26 Feb 2017 11:03:23 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id l22sm26063437pgc.35.2017.02.26.11.03.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 11:03:23 -0800 (PST)
Date: Sun, 26 Feb 2017 11:01:11 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Clean-up idea: IIO Headers
Message-ID: <20170226190111.GA4424@katie-Inspiron-5748>
References: <20170225014231.GA3395@d830.WORKGROUP>
 <20170225052752.GA6960@katie-Inspiron-5748>
 <20170225182353.GA2165@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170225182353.GA2165@d830.WORKGROUP>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 25, 2017 at 10:23:53AM -0800, Alison Schofield wrote:
> On Fri, Feb 24, 2017 at 09:27:52PM -0800, Katie Dunne wrote:
> > On Fri, Feb 24, 2017 at 05:42:40PM -0800, Alison Schofield wrote:
> > > Hi Outreachy Applicants,
> > > 
> > > Here is a clean-up task for staging/iio you might like to try.
> > > 
> > > Staging IIO Header file (re-)organization:
> > > 
> > > Guidelines to follow:
> > > 
> > > (Reference  https://kernelnewbies.org/KernelHeaders)
> > > 
> > > Three cases you may find:
> > > 1) If it's a single source file, its header info should be in that source file.
> > >    *** Do this!
> > > 
> > > 2) Interfaces between source files in a single module can have a header file
> > >    in same dir as the source files.
> > >    *** Leave this alone.
> > > 
> > > 3) Interfaces shared between modules go in a header file in include/linux/iio
> > >    *** Leave this alone. We will do this when the driver is moving out of
> > > 	staging 
> > > 
> > > Here's an example patchset:
> > > https://groups.google.com/forum/#!searchin/outreachy-kernel/header$20file$20ad5933%7Csort:relevance/outreachy-kernel/THYpgGyOgsI/iz8lrqwfDAAJ
> > > 
> > > Note that when you pull the header file in, there's a customary order to it
> > > that the drivers in staging may not be following.  In the example one above,
> > > I moved the #defines to be before the chip structure definitions.  So, you'll
> > > do best if you look at similar drivers in the same directory upstream, to
> > > see how they order their header information.  Always good to look at a few,
> > > because one may not be the perfect role model.  
> > 
> > Hi Alison,
> > 
> > I noticed in looking at the iio/accel driver upstream, there are no comments
> > around register definitions. In the staging driver, all of the header
> > files I've looked at have a comment for each definition. Are comments
> > something that should be pushed forward? Even though the register names are
> > descriptive, it seems wrong to take out comments.
> > 
> > Best,
> > Katie
> >
> Thanks for pointing that out Katie.
> You are right.  Let's not remove any comments in the reorg.  Caveat -
> if they are poorly aligned/spelled/formatted as you move them, then
> you have another patch in your set to correct that!
> 
> alisons
> 
I also notice you deleted an unnecessary include (asm/div64). How do you
find unused includes? What I have found online is that no tools work
perfectly, and the best solutions are scripts that remove one include 
at time and compile at each step, which sounds terrible.

Katie

> > > 
> > > It is customary to alphabetize the #includes, and to separate the kernel
> > > and IIO subsystem #includes with a blank line.  So, although we wouldn't
> > > send in a patch just to alphabetize #includes, while you are moving them
> > > to the .c file, and while you are checking that they are actually needed,
> > > sure - go ahead and alphabetize them.  (Example patch didn't alphabetize,
> > > you'll do better ;)
> > >  
> > > To verify the patch(set), I'd suggest applying it to a clean tree and
> > > rebuilding.  
> > > 
> > > Questions?  Just ask on this thread.
> > > 
> > > alisons
> > > 
> > > -- 
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170225014231.GA3395%40d830.WORKGROUP.
> > > For more options, visit https://groups.google.com/d/optout.

