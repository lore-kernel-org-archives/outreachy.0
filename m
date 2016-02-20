X-GM-THRID: 6249498218591158272
X-Received: by 10.25.22.154 with SMTP id 26mr2605860lfw.3.1456011036500;
        Sat, 20 Feb 2016 15:30:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.174.145 with SMTP id x139ls178281wme.10.gmail; Sat, 20 Feb
 2016 15:30:36 -0800 (PST)
X-Received: by 10.28.158.216 with SMTP id h207mr384587wme.4.1456011036120;
        Sat, 20 Feb 2016 15:30:36 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w197si648718wmw.3.2016.02.20.15.30.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 15:30:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C56CE1291;
	Sat, 20 Feb 2016 23:30:34 +0000 (UTC)
Date: Sat, 20 Feb 2016 15:30:34 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Janani Ravichandran <janani.rvchndrn@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: Modify boolean
 assignment
Message-ID: <20160220233034.GA19538@kroah.com>
References: <20160210082412.GA2645@janani-Inspiron-3521>
 <alpine.DEB.2.02.1602100825150.2050@localhost6.localdomain6>
 <207e6b2c-07b0-48a8-a414-37c59ed7a3e6@googlegroups.com>
 <alpine.DEB.2.10.1602100954070.2486@hadrien>
 <56C4B515.3020301@gmail.com>
 <20160217180323.GA23677@kroah.com>
 <56C4B787.2030302@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56C4B787.2030302@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 17, 2016 at 01:10:15PM -0500, Jes Sorensen wrote:
> On 02/17/16 13:03, Greg KH wrote:
> > On Wed, Feb 17, 2016 at 12:59:49PM -0500, Jes Sorensen wrote:
> >> On 02/10/16 03:54, Julia Lawall wrote:
> >>>
> >>>
> >>> On Tue, 9 Feb 2016, Janani Ravichandran wrote:
> >>>
> >>>>
> >>>>
> >>>> On Wednesday, 10 February 2016 02:26:38 UTC-5, Julia Lawall wrote:
> >>>>       On Wed, 10 Feb 2016, Janani Ravichandran wrote:
> >>>>
> >>>>       > Boolean variables should be assigned true/false rather than
> >>>>       1/0.
> >>>>       > This patch makes such a correction.
> >>>>
> >>>>       A change like this should be made consistently, so it is a
> >>>>       little
> >>>>       surprising to see only one such change.  Is this the only place
> >>>>       where the
> >>>>       variable is initialized?  
> >>>>
> >>>> Within this file, this is the only instance of initialization of the
> >>>> variable where 1 is
> >>>>  used instead of true. All others use true/false. I sent this to resolve
> >>>> that
> >>>> inconsistency :)
> >>>>       If so, you could say that.  if not, then you
> >>>>       could explain that all of the other initialization places
> >>>>       already have
> >>>>       boolean values, in some way or another.
> >>>>
> >>>> Do I send a v2 explaining this?
> >>>
> >>> I think it could be helpful.
> >>
> >> You also need to CC the driver author, not just the outreachy list.
> > 
> > For the outreachy application process, the author doesn't need to be
> >  cc:ed, but they can be if the patch author wants to.
> 
> If the patches are dropped and not pushed upstream, please ignore CC's,
> sure. If they are meant to go upstream, the author must be CC'ed.
> 
> I for one find it really annoying and rude to have patches go into
> upstream for code I actively maintain, without being CC'ed on them.

That happens all the time, and is just the way things have always been
for kernel changes.  Maintainership isn't "absolute" ownership, you know
this :)

> I know Unisys is trying to fix up their code, and knowing conflicting
> patches are in flight saves work.

These should all be trivial to work around, and really, if they were
trying to fix up their code, they would have already resolved "trivial"
changes like this a long time ago.

thanks,

greg k-h

