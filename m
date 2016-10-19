X-GM-THRID: 6342441922054848512
X-Received: by 10.157.32.97 with SMTP id n88mr724940ota.126.1476890447153;
        Wed, 19 Oct 2016 08:20:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.32.129 with SMTP id g123ls918763iog.31.gmail; Wed, 19 Oct
 2016 08:20:42 -0700 (PDT)
X-Received: by 10.107.145.4 with SMTP id t4mr967421iod.38.1476890442962;
        Wed, 19 Oct 2016 08:20:42 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id p70si5348100vkd.0.2016.10.19.08.20.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Oct 2016 08:20:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id x79so2564370lff.2
        for <outreachy-kernel@googlegroups.com>; Wed, 19 Oct 2016 08:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RfwZNAP1CwXYXgROX8cKLmJRBIIjQ+0Id5aTCnnOpwk=;
        b=XyAZdkosgrA19rhAHUpWBIKiz9/FuxZNEtLL8gYnkbCtiNSPWE8xUhQlb4K4AMAa++
         c+eXWr6HEBT06Olc973EudQU6H6WeX/aeINl4qLulTxf53PZFIZBlaKK0Xl3aIRT2Q85
         NIo4zQ3BQHdVu3NlGaHxfXwsVqx/vZzMTo7kVDWx8oGlB6o7Irelf2iFQiXTZ61MfzJD
         C3DervCmGlQnOE2eI7m1JOqMM03v0MK4rT0wrDi2kOk7VFUwgb3VMnowwVdTn78ONDSG
         hQHPlXx4EG6Jv0Fo9hah+WoCy8WpNUYZ2RYQOkCH/8IPKRrt/0isx8Acy6+dtmRFV0WI
         OBdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RfwZNAP1CwXYXgROX8cKLmJRBIIjQ+0Id5aTCnnOpwk=;
        b=BieCuZQ7LIKk3+U2I8/Jbs3JN4xPG5x5u2+JCPpGbAccXhV8R5XIHn86gph8lJ8elb
         6ATRMn+H8M2pD6HSxNnLZ63imZu74B4s0Tb/IZSA3wxPeeVcHTJgpadYEIxdD8GXOcjY
         xBNMZdS6tFcSyrXVu2wfapnx2kylVCGl86TkHojvsw0p6tmw+ID1Wd4CBVkjYpxFsqeV
         stmU22UBFP2fp/CVVrcvvR54vnaYqMym2y7yYtfdBobHqJsPOZ/Lt2HVnJ63V1uqgV6m
         r/obiqxltd5jdhTjg+3XEguJdEYxHppCQO7mxIZ+A5Qq2SDg9wll5BjQ79kdlaq5wReD
         d5kg==
X-Gm-Message-State: AA6/9RmOrR71TPDPWVnSn0nyRXvy8+sVhSZVMcKM0NN7AOCiQOvAYPD6RG+dw1Ec970EYA==
X-Received: by 10.194.94.232 with SMTP id df8mr4564164wjb.227.1476890442407;
        Wed, 19 Oct 2016 08:20:42 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([80.97.201.152])
        by smtp.gmail.com with ESMTPSA id a2sm70004326wjn.10.2016.10.19.08.20.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 19 Oct 2016 08:20:41 -0700 (PDT)
Date: Wed, 19 Oct 2016 18:20:40 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: emxx_udc: Make a
 read-only structure
Message-ID: <20161019152040.GA4803@domino-MS-16Y1>
References: <20161018204221.GA7799@domino-MS-16Y1>
 <alpine.DEB.2.20.1610182247190.2247@hadrien>
 <20161018213912.GA14750@domino-MS-16Y1>
 <alpine.DEB.2.20.1610190800410.2721@hadrien>
 <20161019061829.GA25420@domino-MS-16Y1>
 <20161019073529.GA3241@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161019073529.GA3241@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 19, 2016 at 09:35:29AM +0200, Greg Kroah-Hartman wrote:
> On Wed, Oct 19, 2016 at 09:18:29AM +0300, Muraru Mihaela wrote:
> > On Wed, Oct 19, 2016 at 08:01:40AM +0200, Julia Lawall wrote:
> > > 
> > > 
> > > On Wed, 19 Oct 2016, Muraru Mihaela wrote:
> > > 
> > > > On Tue, Oct 18, 2016 at 10:48:54PM +0200, Julia Lawall wrote:
> > > > > On Tue, 18 Oct 2016, Mihaela Muraru wrote:
> > > > >
> > > > > > This patch add const qualifier at the declaration of the structure,
> > > > > > because it contains information about usb hardware device and those
> > > > > > values shoud not be overwritten.
> > > > >
> > > > > This focuses on the intent, which makes sense, but one really wants to be
> > > > > sure that we won't end up with a const value floating into a modification
> > > > > context, which would cause a runtime error.  So it would be good to
> > > > > describe how the structure is used.  For example, is it only passed to
> > > > > another function where the corresponding parameter is declared as const?
> > > >
> > > > The structure is declared and used only in emxx_udc.c. I searched it in all
> > > > staging driver.
> > > >
> > > > And is passed as a patameter only to the sizeof operetor,
> > > > that doesn't change the variable of the structure.
> > > >
> > > > To be 100% sure I will search on all the files of the kernel,
> > > > it would take some time, and I will tell you what is the result, if is
> > > > ok for you.
> > > 
> > > If the structure is static, then there is normally no need to check other
> > > files.  The question though is how is it used in the current file.  Sizeof
> > > is indeed not an issue, but what are the other ways in which it is used.
> > 
> > As I mentioned  it is not used in the current file. Now, I am
> > wondering why is declared.
> 
> Yes, that is odd, does the compiler give you a warning about it when you
> build the code that it's not being used?

No, I even delete it and is still compile, without  errors.


> thanks,
> 
> greg k-h

