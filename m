X-GM-THRID: 6390855341335117824
X-Received: by 10.107.24.67 with SMTP id 64mr3053177ioy.52.1488047036031;
        Sat, 25 Feb 2017 10:23:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.130 with SMTP id o124ls2577664ioe.53.gmail; Sat, 25
 Feb 2017 10:23:55 -0800 (PST)
X-Received: by 10.107.18.213 with SMTP id 82mr3127020ios.77.1488047035407;
        Sat, 25 Feb 2017 10:23:55 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s64si2287354pfk.0.2017.02.25.10.23.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 10:23:55 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id z128so7342513pgb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 10:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1/EOc3E32Wbx2+I5zt1eILOeKnnliDQBQ/nVFWOk6zU=;
        b=OjWGOHviUiISyv99k0BhXEThsOifiw4PVE9tQwUSMHKgGseaZAnQ+6tT4cv7zWAUHR
         58FNz2vpBfSL4emK/Pcfm3/6CtnxJ3Gpw9buPCxR1FCN45KQNhyBSDxXTR5mT2+pYvdm
         TXoHWSykNW8ILo5Cb5gRQyDJBUaWrYI8W4qJ1+vT2tr/XTlf3luGSqH88x9+qIPk1hku
         S1d7i9H6ERxRz8W0pVS7H7WcyrpmqdV4/taZbpGEjaoqZmpuLzwSI1YeWQV3jLqMK23H
         6axhnDB2NjqrTp3V3dSlIl/2qWnb+UTbvDvSj+GdWmwOp+KjiTqnkDgkdp2xfT9K1G6V
         5rew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1/EOc3E32Wbx2+I5zt1eILOeKnnliDQBQ/nVFWOk6zU=;
        b=Imm8/KLe3cziRktwlkQMgU7aelgNkHUwLEcj6xpMD1LVz+qJgCVB2bEl71Atjoark9
         MEjrc+xvWxWbr3Hh/mDu9fx0UMxMG4g96k0Fxs6IFvBrv9/YgjcPKgP8dTTspQFxpF1v
         gVAngwQeis+Pi+Ii6mfMypU8fOd5IrPKf7gKFaJ3QG5yBxQ1pxpS/qOVL4YBZco2ECJW
         9Ne0k01/gJe+wMGGFe7tQf5oyOiKN+/aXP03BSHZFK/+mnK3LKSC2bZBAQj9HKYEXJNX
         wRjF/fdOtueN4pLVEgw+Giv2LCMwB5UsfSuh06u+ThPV3g6D/dhvYdQLVLBVE5S7GI83
         TamQ==
X-Gm-Message-State: AMke39m3oAwzn7iPeg2GYEH2URYWr1pTSntj2NTBtZS1mRvQnkjhZl3AlnawsOXTzLIhaw==
X-Received: by 10.84.140.36 with SMTP id 33mr12840884pls.136.1488047035105;
        Sat, 25 Feb 2017 10:23:55 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id t12sm21754984pfg.14.2017.02.25.10.23.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 10:23:54 -0800 (PST)
Date: Sat, 25 Feb 2017 10:23:53 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Katie Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Clean-up idea: IIO Headers
Message-ID: <20170225182353.GA2165@d830.WORKGROUP>
References: <20170225014231.GA3395@d830.WORKGROUP>
 <20170225052752.GA6960@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170225052752.GA6960@katie-Inspiron-5748>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 24, 2017 at 09:27:52PM -0800, Katie Dunne wrote:
> On Fri, Feb 24, 2017 at 05:42:40PM -0800, Alison Schofield wrote:
> > Hi Outreachy Applicants,
> > 
> > Here is a clean-up task for staging/iio you might like to try.
> > 
> > Staging IIO Header file (re-)organization:
> > 
> > Guidelines to follow:
> > 
> > (Reference  https://kernelnewbies.org/KernelHeaders)
> > 
> > Three cases you may find:
> > 1) If it's a single source file, its header info should be in that source file.
> >    *** Do this!
> > 
> > 2) Interfaces between source files in a single module can have a header file
> >    in same dir as the source files.
> >    *** Leave this alone.
> > 
> > 3) Interfaces shared between modules go in a header file in include/linux/iio
> >    *** Leave this alone. We will do this when the driver is moving out of
> > 	staging 
> > 
> > Here's an example patchset:
> > https://groups.google.com/forum/#!searchin/outreachy-kernel/header$20file$20ad5933%7Csort:relevance/outreachy-kernel/THYpgGyOgsI/iz8lrqwfDAAJ
> > 
> > Note that when you pull the header file in, there's a customary order to it
> > that the drivers in staging may not be following.  In the example one above,
> > I moved the #defines to be before the chip structure definitions.  So, you'll
> > do best if you look at similar drivers in the same directory upstream, to
> > see how they order their header information.  Always good to look at a few,
> > because one may not be the perfect role model.  
> 
> Hi Alison,
> 
> I noticed in looking at the iio/accel driver upstream, there are no comments
> around register definitions. In the staging driver, all of the header
> files I've looked at have a comment for each definition. Are comments
> something that should be pushed forward? Even though the register names are
> descriptive, it seems wrong to take out comments.
> 
> Best,
> Katie
>
Thanks for pointing that out Katie.
You are right.  Let's not remove any comments in the reorg.  Caveat -
if they are poorly aligned/spelled/formatted as you move them, then
you have another patch in your set to correct that!

alisons

> > 
> > It is customary to alphabetize the #includes, and to separate the kernel
> > and IIO subsystem #includes with a blank line.  So, although we wouldn't
> > send in a patch just to alphabetize #includes, while you are moving them
> > to the .c file, and while you are checking that they are actually needed,
> > sure - go ahead and alphabetize them.  (Example patch didn't alphabetize,
> > you'll do better ;)
> >  
> > To verify the patch(set), I'd suggest applying it to a clean tree and
> > rebuilding.  
> > 
> > Questions?  Just ask on this thread.
> > 
> > alisons
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170225014231.GA3395%40d830.WORKGROUP.
> > For more options, visit https://groups.google.com/d/optout.

