X-GM-THRID: 6342441922054848512
X-Received: by 10.157.31.5 with SMTP id x5mr1314740otd.21.1476862524836;
        Wed, 19 Oct 2016 00:35:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.72 with SMTP id o66ls1227004ota.17.gmail; Wed, 19 Oct
 2016 00:35:24 -0700 (PDT)
X-Received: by 10.157.44.7 with SMTP id f7mr55583otb.4.1476862524287;
        Wed, 19 Oct 2016 00:35:24 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si6681221par.0.2016.10.19.00.35.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Oct 2016 00:35:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6CF1D982;
	Wed, 19 Oct 2016 07:35:23 +0000 (UTC)
Date: Wed, 19 Oct 2016 09:35:29 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: emxx_udc: Make a
 read-only structure
Message-ID: <20161019073529.GA3241@kroah.com>
References: <20161018204221.GA7799@domino-MS-16Y1>
 <alpine.DEB.2.20.1610182247190.2247@hadrien>
 <20161018213912.GA14750@domino-MS-16Y1>
 <alpine.DEB.2.20.1610190800410.2721@hadrien>
 <20161019061829.GA25420@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161019061829.GA25420@domino-MS-16Y1>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Wed, Oct 19, 2016 at 09:18:29AM +0300, Muraru Mihaela wrote:
> On Wed, Oct 19, 2016 at 08:01:40AM +0200, Julia Lawall wrote:
> > 
> > 
> > On Wed, 19 Oct 2016, Muraru Mihaela wrote:
> > 
> > > On Tue, Oct 18, 2016 at 10:48:54PM +0200, Julia Lawall wrote:
> > > > On Tue, 18 Oct 2016, Mihaela Muraru wrote:
> > > >
> > > > > This patch add const qualifier at the declaration of the structure,
> > > > > because it contains information about usb hardware device and those
> > > > > values shoud not be overwritten.
> > > >
> > > > This focuses on the intent, which makes sense, but one really wants to be
> > > > sure that we won't end up with a const value floating into a modification
> > > > context, which would cause a runtime error.  So it would be good to
> > > > describe how the structure is used.  For example, is it only passed to
> > > > another function where the corresponding parameter is declared as const?
> > >
> > > The structure is declared and used only in emxx_udc.c. I searched it in all
> > > staging driver.
> > >
> > > And is passed as a patameter only to the sizeof operetor,
> > > that doesn't change the variable of the structure.
> > >
> > > To be 100% sure I will search on all the files of the kernel,
> > > it would take some time, and I will tell you what is the result, if is
> > > ok for you.
> > 
> > If the structure is static, then there is normally no need to check other
> > files.  The question though is how is it used in the current file.  Sizeof
> > is indeed not an issue, but what are the other ways in which it is used.
> 
> As I mentioned  it is not used in the current file. Now, I am
> wondering why is declared.

Yes, that is odd, does the compiler give you a warning about it when you
build the code that it's not being used?

thanks,

greg k-h

