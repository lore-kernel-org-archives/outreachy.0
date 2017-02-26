X-GM-THRID: 6390855341335117824
X-Received: by 10.129.79.19 with SMTP id d19mr5062694ywb.19.1488143210306;
        Sun, 26 Feb 2017 13:06:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.241.9 with SMTP id c9ls1728400iti.5.canary-gmail; Sun, 26
 Feb 2017 13:06:49 -0800 (PST)
X-Received: by 10.99.105.201 with SMTP id e192mr2559663pgc.169.1488143209553;
        Sun, 26 Feb 2017 13:06:49 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x235.google.com (mail-pg0-x235.google.com. [2607:f8b0:400e:c05::235])
        by gmr-mx.google.com with ESMTPS id u12si2937350pfd.3.2017.02.26.13.06.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 13:06:49 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) client-ip=2607:f8b0:400e:c05::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x235.google.com with SMTP id s67so34551675pgb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 13:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=biXCIAtoTCu2uJeOeocleZO+AdliqD7dzSYSDI9tvDs=;
        b=Dzcne7NXDljuigspoqMHDQn0UjbCC8YH43BDJL7oeo2o9x3LBdNIi8r5GCrKYjM16H
         VVV1fWPHBvSJeF79uHXmNcN4js+WJr1psVJSUR/vtrOGRPhbsRUpA3S0/7KOSMMKxFgc
         YV1eg2Ga7g+BsjDLDH+4OLdof1mI3dpsXwJv5T6RnB1U1G+ew3r1QgPvAJDvQdbEpbbx
         niqeT41+BiGRrI6+9KAKNdBZBf9YLXicTyV/AXaJQKFA7oNAaMyl1ephFNI8vxAig6hQ
         fe9LOTHgIMCC/1qCOE0IbqWOR/768pYuI6IQXz5OdrBIdOURRWbA78uMk1EOxe+QQQ+p
         wDjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=biXCIAtoTCu2uJeOeocleZO+AdliqD7dzSYSDI9tvDs=;
        b=Azs9aABlPVNAoer3aSKakgdSqjOo/ib3EZVzvFfqDlsMDQ2AZitYjn0rYpniPcltZd
         eK5OLTzCllygz+GrH+4jLD0vy8/u/j/S/jiYfJc68tWYJmrB1uUg7nGWKhFi8l11GkiP
         /pW6ezTFTLPLlMEuhHRvB7687UoxqAjsetKWopbgV25LfpfS8jodY+tcRfj9fkyg+Hhx
         WN+HESJYZD5ftQ3840Dk7Gdho13McfRW+v0rGa6j4L0Tyr8d7Xc9EfpmeKX9FXj61GB8
         ekgUIcl0s4XyDLbZbZj7gRvuF589pgEJBu38yWJn4W55Fuo0I+wMvysaM8KhpNvzbcGz
         fe9g==
X-Gm-Message-State: AMke39l/gP1e3TbX8n2Z5NHxXNGLvhnOYFbF7T/OrFVmmAJD4NVmGM9T1fn1EXovUXCWbA==
X-Received: by 10.99.42.78 with SMTP id q75mr16841819pgq.144.1488143209258;
        Sun, 26 Feb 2017 13:06:49 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id l188sm26146476pfl.28.2017.02.26.13.06.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 13:06:48 -0800 (PST)
Date: Sun, 26 Feb 2017 13:06:47 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Katie Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Clean-up idea: IIO Headers
Message-ID: <20170226210645.GA2057@d830.WORKGROUP>
References: <20170225014231.GA3395@d830.WORKGROUP>
 <20170225052752.GA6960@katie-Inspiron-5748>
 <20170225182353.GA2165@d830.WORKGROUP>
 <20170226190111.GA4424@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170226190111.GA4424@katie-Inspiron-5748>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Feb 26, 2017 at 11:01:11AM -0800, Katie Dunne wrote:
> On Sat, Feb 25, 2017 at 10:23:53AM -0800, Alison Schofield wrote:
> > On Fri, Feb 24, 2017 at 09:27:52PM -0800, Katie Dunne wrote:
> > > On Fri, Feb 24, 2017 at 05:42:40PM -0800, Alison Schofield wrote:
> > > > Hi Outreachy Applicants,
> > > > 
> > > > Here is a clean-up task for staging/iio you might like to try.
> > > > 
> > > > Staging IIO Header file (re-)organization:
> > > > 
> > > > Guidelines to follow:
> > > > 
> > > > (Reference  https://kernelnewbies.org/KernelHeaders)
> > > > 
> > > > Three cases you may find:
> > > > 1) If it's a single source file, its header info should be in that source file.
> > > >    *** Do this!
> > > > 
> > > > 2) Interfaces between source files in a single module can have a header file
> > > >    in same dir as the source files.
> > > >    *** Leave this alone.
> > > > 
> > > > 3) Interfaces shared between modules go in a header file in include/linux/iio
> > > >    *** Leave this alone. We will do this when the driver is moving out of
> > > > 	staging 
> > > > 
> > > > Here's an example patchset:
> > > > https://groups.google.com/forum/#!searchin/outreachy-kernel/header$20file$20ad5933%7Csort:relevance/outreachy-kernel/THYpgGyOgsI/iz8lrqwfDAAJ
> > > > 
> > > > Note that when you pull the header file in, there's a customary order to it
> > > > that the drivers in staging may not be following.  In the example one above,
> > > > I moved the #defines to be before the chip structure definitions.  So, you'll
> > > > do best if you look at similar drivers in the same directory upstream, to
> > > > see how they order their header information.  Always good to look at a few,
> > > > because one may not be the perfect role model.  
> > > 
> > > Hi Alison,
> > > 
> > > I noticed in looking at the iio/accel driver upstream, there are no comments
> > > around register definitions. In the staging driver, all of the header
> > > files I've looked at have a comment for each definition. Are comments
> > > something that should be pushed forward? Even though the register names are
> > > descriptive, it seems wrong to take out comments.
> > > 
> > > Best,
> > > Katie
> > >
> > Thanks for pointing that out Katie.
> > You are right.  Let's not remove any comments in the reorg.  Caveat -
> > if they are poorly aligned/spelled/formatted as you move them, then
> > you have another patch in your set to correct that!
> > 
> > alisons
> > 
> I also notice you deleted an unnecessary include (asm/div64). How do you
> find unused includes? What I have found online is that no tools work
> perfectly, and the best solutions are scripts that remove one include 
> at time and compile at each step, which sounds terrible.
> 
> Katie

Katie,

My recollection is that I recognized it as unneeded and then 
did one compile at a time to try any others I questioned.

I don't know of a tool or script to share.

BTW - unneeded #includes aren't always a mistake in the original
driver.  I believe that some header files have evolved to include
other header files, and so over time the #include list for a
particular driver can have a redundancy.  Sorry - that's all so
vague...again, someone else might shed further light on it.

BTW BTW - i think we're OK with these IIO drivers, but I imagine
you could also have ARCH build dependencies.  Something to watch
out for and also something that gets caught by 0 day build testers
who will grab your patch and build it.

alisons 

> 
> > > > 
> > > > It is customary to alphabetize the #includes, and to separate the kernel
> > > > and IIO subsystem #includes with a blank line.  So, although we wouldn't
> > > > send in a patch just to alphabetize #includes, while you are moving them
> > > > to the .c file, and while you are checking that they are actually needed,
> > > > sure - go ahead and alphabetize them.  (Example patch didn't alphabetize,
> > > > you'll do better ;)
> > > >  
> > > > To verify the patch(set), I'd suggest applying it to a clean tree and
> > > > rebuilding.  
> > > > 
> > > > Questions?  Just ask on this thread.
> > > > 
> > > > alisons
> > > > 
> > > > -- 
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170225014231.GA3395%40d830.WORKGROUP.
> > > > For more options, visit https://groups.google.com/d/optout.

