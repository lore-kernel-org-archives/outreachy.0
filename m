X-GM-THRID: 6342441922054848512
X-Received: by 10.25.196.207 with SMTP id u198mr294481lff.27.1476857911925;
        Tue, 18 Oct 2016 23:18:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.154.75 with SMTP id c72ls256631wme.10.canary; Tue, 18 Oct
 2016 23:18:31 -0700 (PDT)
X-Received: by 10.28.184.17 with SMTP id i17mr328905wmf.18.1476857911393;
        Tue, 18 Oct 2016 23:18:31 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id h64si120802wmg.2.2016.10.18.23.18.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Oct 2016 23:18:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id g16so2378663wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 18 Oct 2016 23:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mk7ba2BkI+3U4RKztAZtQrlCirNnTXRdbbfTsMXuCoU=;
        b=Wc+5DDja/0AFX7oOq0nbgeWjxAZ46DL4yv5d/sIidvtmsp94EAoINxQZHy7HBKtexr
         Qk+gRFzAwVmsGsMQbqCs2a9QSy934qfOEltX+57aKRfGUuaF5CPg6JGvaydh9t1+kl1w
         CfjiaGHe3PU/+/WC688GvMDjpvSFsBtfifpvlOAzVAjyRBWRAMTjyIP2ir8Ei0DNEAPk
         HpTOVg6yY3rlov3j23uRPTict452tM4TXsh31PLJboLYpLOpfSM9tbFp3KoQ7+xFdyJF
         /+3zJ8lKwDl/gE+Smf0vQfI2kt1JE28LJRoTWq5mcu33hEUt8vXaZrd3k0Ta6lZ0NMj7
         uG/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mk7ba2BkI+3U4RKztAZtQrlCirNnTXRdbbfTsMXuCoU=;
        b=N3wD84gbNeL3xaApMzqhblwD5A5p5BCTPm1BVGJoow8m752OewN2kCx/l9edVQ/dWx
         9V+dXT4s2ZRznpVmKULRo8VWlJadyRtwafYEwrncGqLMZ7s49UMATT45F4fogCeTwAI+
         hWnald0TOqOugw1IhocQexqpMsk5EBPKD04I8drAxzpWLqZPXkJ4XSUPcC//iRHkAO6F
         AdghenWA2nRXcjvcGdKJoUp9CiqJ1/Gaw6meUYRegBJmAMDq//kADWutR2QMrXzkt9Gr
         sHumBki4IUeeMVXbXdh1Iclxdw5nVDP5EnKDsgyNMI5utppDDwPkwtz21722tFWTEkp2
         4m1Q==
X-Gm-Message-State: AA6/9RmNXU9G05bVxgNrhc52tZLF4ULB9jlewaEbncX6liw4MeucvMo8FQSeJeyNC3+/1g==
X-Received: by 10.194.127.161 with SMTP id nh1mr2881407wjb.61.1476857911107;
        Tue, 18 Oct 2016 23:18:31 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id g12sm3159485wmc.21.2016.10.18.23.18.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 18 Oct 2016 23:18:30 -0700 (PDT)
Date: Wed, 19 Oct 2016 09:18:29 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: emxx_udc: Make a
 read-only structure
Message-ID: <20161019061829.GA25420@domino-MS-16Y1>
References: <20161018204221.GA7799@domino-MS-16Y1>
 <alpine.DEB.2.20.1610182247190.2247@hadrien>
 <20161018213912.GA14750@domino-MS-16Y1>
 <alpine.DEB.2.20.1610190800410.2721@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1610190800410.2721@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 19, 2016 at 08:01:40AM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 19 Oct 2016, Muraru Mihaela wrote:
> 
> > On Tue, Oct 18, 2016 at 10:48:54PM +0200, Julia Lawall wrote:
> > > On Tue, 18 Oct 2016, Mihaela Muraru wrote:
> > >
> > > > This patch add const qualifier at the declaration of the structure,
> > > > because it contains information about usb hardware device and those
> > > > values shoud not be overwritten.
> > >
> > > This focuses on the intent, which makes sense, but one really wants to be
> > > sure that we won't end up with a const value floating into a modification
> > > context, which would cause a runtime error.  So it would be good to
> > > describe how the structure is used.  For example, is it only passed to
> > > another function where the corresponding parameter is declared as const?
> >
> > The structure is declared and used only in emxx_udc.c. I searched it in all
> > staging driver.
> >
> > And is passed as a patameter only to the sizeof operetor,
> > that doesn't change the variable of the structure.
> >
> > To be 100% sure I will search on all the files of the kernel,
> > it would take some time, and I will tell you what is the result, if is
> > ok for you.
> 
> If the structure is static, then there is normally no need to check other
> files.  The question though is how is it used in the current file.  Sizeof
> is indeed not an issue, but what are the other ways in which it is used.

As I mentioned  it is not used in the current file. Now, I am
wondering why is declared.

mihaela
> julia

