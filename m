X-GM-THRID: 6390855341335117824
X-Received: by 10.99.113.11 with SMTP id m11mr2379256pgc.94.1488000606504;
        Fri, 24 Feb 2017 21:30:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.218 with SMTP id v87ls2362751iov.10.gmail; Fri, 24 Feb
 2017 21:30:05 -0800 (PST)
X-Received: by 10.99.7.209 with SMTP id 200mr2331435pgh.49.1488000605694;
        Fri, 24 Feb 2017 21:30:05 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pg0-x22a.google.com (mail-pg0-x22a.google.com. [2607:f8b0:400e:c05::22a])
        by gmr-mx.google.com with ESMTPS id u12si2113153pfd.3.2017.02.24.21.30.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 21:30:05 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c05::22a is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c05::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c05::22a is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pg0-x22a.google.com with SMTP id z128so20137361pgb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 21:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wnycFxIdw5SwAzrnENsMgbwXfuuiycqDmnoEuUE9clA=;
        b=CBe7thk5gsazxin+BBFrFJXeyMABc/j3GFvau3Ap6SgQS7FHKth9mPizRSEyRaRn83
         AOeDL8Pf0aFPhbgBE9l27n8ZavBeNY26vD2G2WalLBCzQqy++a3Y4iq1Kriv0K++O/8p
         xMGZGMDce3QeIKUxtdJu9IXXxNh5KUbwB28Xbz/ZPTazKKsbKkC2NrRLw5pMxiLnqRDr
         qFExMwYEM68iW8PtYVgekQ4YhWh2DFkgSnFQUi34WLDl2R7+AscOqmcQEC+sCDI4eppA
         /3BGcJRFcB2zyn1iyyOpb5NJWdYuKJrrPhaKNhQMfibn1WC9JxTLNcrwhjfpk9nb7Pnf
         Eo1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wnycFxIdw5SwAzrnENsMgbwXfuuiycqDmnoEuUE9clA=;
        b=uCjvZjSc2t+H9/EBlwiwYDZNwka4dVYLiCQoA7TEeKQJ5IH5JG/D5uWncztPgsOHhV
         AiMAWCWnlTmGw673NbhPxn0/wXYPNQ50WchpYS2SlgUN8kAgjpmQBAktyPFjTOkNh40N
         AH9Dx/2Hba/IZCsj3MZtxv4rzALx7dCx6kodrWRE4sLk3sgtP/65z5wb6CpEFA0IyXo0
         DixrrX5euhMPT8IVfHA1VrkH1zT/pjuhaWHVbdmYnQDu4Di/9Gn2FNAZwBtUH+4AyD8w
         7E0JXj0U2azjFGD5jiokz/JvyGycgufvaXYoHOwwK1SFu8yKPh/k2miI6s/4vwRd5XyR
         sWEA==
X-Gm-Message-State: AMke39kmbs02n2+6SVDtJw34vYNvGWIE5y3z3/c7zOFpcAa9Ig1uKuhVfU8XnwTxy+W8HJJD
X-Received: by 10.98.44.10 with SMTP id s10mr8123892pfs.161.1488000605277;
        Fri, 24 Feb 2017 21:30:05 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id n8sm18101343pgd.5.2017.02.24.21.30.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 21:30:04 -0800 (PST)
Date: Fri, 24 Feb 2017 21:27:52 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Clean-up idea: IIO Headers
Message-ID: <20170225052752.GA6960@katie-Inspiron-5748>
References: <20170225014231.GA3395@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170225014231.GA3395@d830.WORKGROUP>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 24, 2017 at 05:42:40PM -0800, Alison Schofield wrote:
> Hi Outreachy Applicants,
> 
> Here is a clean-up task for staging/iio you might like to try.
> 
> Staging IIO Header file (re-)organization:
> 
> Guidelines to follow:
> 
> (Reference  https://kernelnewbies.org/KernelHeaders)
> 
> Three cases you may find:
> 1) If it's a single source file, its header info should be in that source file.
>    *** Do this!
> 
> 2) Interfaces between source files in a single module can have a header file
>    in same dir as the source files.
>    *** Leave this alone.
> 
> 3) Interfaces shared between modules go in a header file in include/linux/iio
>    *** Leave this alone. We will do this when the driver is moving out of
> 	staging 
> 
> Here's an example patchset:
> https://groups.google.com/forum/#!searchin/outreachy-kernel/header$20file$20ad5933%7Csort:relevance/outreachy-kernel/THYpgGyOgsI/iz8lrqwfDAAJ
> 
> Note that when you pull the header file in, there's a customary order to it
> that the drivers in staging may not be following.  In the example one above,
> I moved the #defines to be before the chip structure definitions.  So, you'll
> do best if you look at similar drivers in the same directory upstream, to
> see how they order their header information.  Always good to look at a few,
> because one may not be the perfect role model.  

Hi Alison,

I noticed in looking at the iio/accel driver upstream, there are no comments
around register definitions. In the staging driver, all of the header
files I've looked at have a comment for each definition. Are comments
something that should be pushed forward? Even though the register names are
descriptive, it seems wrong to take out comments.

Best,
Katie

> 
> It is customary to alphabetize the #includes, and to separate the kernel
> and IIO subsystem #includes with a blank line.  So, although we wouldn't
> send in a patch just to alphabetize #includes, while you are moving them
> to the .c file, and while you are checking that they are actually needed,
> sure - go ahead and alphabetize them.  (Example patch didn't alphabetize,
> you'll do better ;)
>  
> To verify the patch(set), I'd suggest applying it to a clean tree and
> rebuilding.  
> 
> Questions?  Just ask on this thread.
> 
> alisons
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170225014231.GA3395%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.

