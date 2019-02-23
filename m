X-GM-THRID: 6661069764566188032
X-Received: by 2002:a81:8546:: with SMTP id v67mr1383901ywf.1.1550915491389;
        Sat, 23 Feb 2019 01:51:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:4986:: with SMTP id w128ls3303965ywa.7.gmail; Sat, 23
 Feb 2019 01:51:30 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZLP0rQPedSbyVL52iq/PawEo9XeisngrHvMvvhumdG4SZaT8Jwa5oJwoiH+ethV5lf3FbT
X-Received: by 2002:a0d:e694:: with SMTP id p142mr1382846ywe.8.1550915490721;
        Sat, 23 Feb 2019 01:51:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550915490; cv=none;
        d=google.com; s=arc-20160816;
        b=nT2Wzuog7Nq1tCgWaD/tWjiFwfDL15at/oRo16WMBD8b9fTTJYS6j2FfPNFQPyLIpe
         soWVxcHoee2k+tJyfkeYh4kIEwHcsXTOfj5uocEh5SY+ITlkgbrOcU+1mjslVGDxORX7
         EEypHcgZ+MuK+pRwYp6hfAtbT0G7meQRfTPTTGZ1MDC/pzE77N09JbCYHhLY5ALCmQpS
         pre3c6g21vBtk92jHj9ZXQo4+VF/p0cZ4KzCFzRhyaWH2itAirFYcJwzd5n5Eohy8K8j
         oUkHgrkxZSg9FIn9jzq61MkAJcpmS8fMRFiP7beI4zwcQfe9YzRa8k2oD+MRyAWbCwXb
         wv5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DvF8x2psm5BVXATWxFBs8BLYeBkYj8gXn8J8PSc9atQ=;
        b=VJRTUHwmTDZH/sY/XRrjeYBwfAMbAT7tx1T/unaYoZHsLyEtUGTMm59WVvjWVDk8GS
         g5DGpe2l2mbzYV+fcoDEWv16j7zMddMOOmwLuDpLEWRodKkRMVXNj2NeN68OFVDNBtwM
         rfIy7LUq7nfe5bzqvNgiixdFrb7YYnFsV9TVaJ4aE55goOnesLuPJSSg+AQdogVqRVso
         fPcfcDg0Tnto8hqHNzve7J3jVXoCALB/e0j4b60tjFw/blesFM46RKSK0x0/vXVgH/7z
         IQAd8gv5AwMRVxd6j4b3mpy/W6/7D3UPrPtemnseJTAqUJ3NskTMglgErrH4ovGH52WX
         oYyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ts85mYSG;
       spf=pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r128si328024ywd.0.2019.02.23.01.51.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 01:51:30 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ts85mYSG;
       spf=pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 35C602084F;
	Sat, 23 Feb 2019 09:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550915489;
	bh=k0+9GHhSsBWcrrV8liEkZfH8L9+18hVG6Oh9HI26FVk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ts85mYSG60ESl48T0r155c3meJ1redzO7jhx3LAH/GHDhFHsTWyYdye9MBVgoBONS
	 iOuwtfctbVac9VOSaHogBd24R5T65shCkr1H2DQpnFOHF4bPL1D4ynUb4aaUPTK4ao
	 BXXO1Wt3s7RVvhg8yjOJw97h45+CGnWEccN7Em38=
Date: Sat, 23 Feb 2019 10:51:27 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2] Staging: gasket: Replaces
 symbolic permissions
Message-ID: <20190223095127.GA11354@kroah.com>
References: <20190223055207.3792-1-bhanusreemahesh@gmail.com>
 <20190223075641.GB2640@kroah.com>
 <20190223084254.GC4902@kroah.com>
 <CAB0Mk-O+S5OveTKh-hMxFGnWenjWg=AxY1-FGo0Xe6yAd6_vmw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAB0Mk-O+S5OveTKh-hMxFGnWenjWg=AxY1-FGo0Xe6yAd6_vmw@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Feb 23, 2019 at 03:04:21PM +0530, Bhanusree Mahesh wrote:
> On Sat, 23 Feb 2019 at 14:12, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Sat, Feb 23, 2019 at 08:56:41AM +0100, Greg Kroah-Hartman wrote:
> > > On Sat, Feb 23, 2019 at 11:22:07AM +0530, Bhanusree Pola wrote:
> > > > Replaces Symbolic Permissions with Octal Permission which solves the
> > > > checkpatch.pl warning:
> > > > WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
> > > >
> > > > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > > > ---
> > > >
> > > > v2: Subject line modified
> > > >
> > > >  drivers/staging/gasket/gasket_sysfs.h | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
> > > > index 151e8edd28ea..60590ea4b760 100644
> > > > --- a/drivers/staging/gasket/gasket_sysfs.h
> > > > +++ b/drivers/staging/gasket/gasket_sysfs.h
> > > > @@ -40,7 +40,7 @@
> > > >   */
> > > >  #define GASKET_END_OF_ATTR_ARRAY                                               \
> > > >     {                                                                      \
> > > > -           .attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),   \
> > > > +           .attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),   \
> > >
> > > The trailing "\" is now messed up :(
> > >
> > > But, as I have said before when people try to fix this up, this whole
> > > macro is not needed at all.  Please just remove it and use the proper
> > > logic in the code.
> > >
> > > >             .data.attr_type = 0,                                           \
> > > >     }
> > > >
> > > > @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
> > > >
> > > >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
> > > >     {                                                                      \
> > > > -           .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> > > > +           .attr = __ATTR(_name, 0444, _show_function, NULL),          \
> > >
> > > Trailing \ is not aligned here either.
> > >
> > > Also, this should be using __ATTR_RO(), right?
> >
> > Really, all of the sysfs stuff in this driver needs to be fixed up
> > "properly".  I think it's even a TODO item, but that might take a lot
> > more work than just a simple "coding style" cleanup patch would entail.
> > I would recommend just leaving this mess alone for now.
> >
> I'm really interested in trying this if you say so. Please give me
> some link on this.
> I will understand and try to fix them up.

The last item in the TODO file in this directory is the short summary of
the problem:
	- "drivers" should never be dealing with "raw" sysfs calls or
	  mess around with kobjects at all. The driver core should
	  handle all of this for you automaically. There should not be a
	  need for raw attribute macros.

Note, it's not an easy or simple thing to fix up, it requires messing
with how the code interacts with the driver model.  I'm not going to say
you shouldn't do it, but I personally don't have the time right now to
mentor anyone to do it.  The driver core isn't the easiest thing to
understand in places, sorry.

In the long run, this whole driver is going to be deleted anyway, as it
should be using the UIO api instead.  But that's a much more complex and
difficult task as it requires also changing the userspace code that
interacts with this driver (and I have no idea where that is), and would
require access to the hardware involved to make sure it all works (and I
have no idea how to get access to that hardware.)

sorry,

greg k-h
> 
> thanks,
> 
> Bhanusree Pola.

