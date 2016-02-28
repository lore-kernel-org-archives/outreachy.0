X-GM-THRID: 6254203377087938560
X-Received: by 10.112.150.105 with SMTP id uh9mr1138827lbb.17.1456687025646;
        Sun, 28 Feb 2016 11:17:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.80.80 with SMTP id e77ls364802lfb.16.gmail; Sun, 28 Feb
 2016 11:17:05 -0800 (PST)
X-Received: by 10.25.88.211 with SMTP id m202mr1026139lfb.8.1456687025085;
        Sun, 28 Feb 2016 11:17:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e130si416480wme.2.2016.02.28.11.17.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:17:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,516,1449529200"; 
   d="scan'208";a="166250133"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 20:17:04 +0100
Date: Sun, 28 Feb 2016 20:17:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] reordering remove actions in iio drivers
In-Reply-To: <20160228182036.GA2929@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.02.1602282016040.2075@localhost6.localdomain6>
References: <20160222194313.GA9769@amitoj-Inspiron-3542> <1456681879-2605-1-git-send-email-amsfield22@gmail.com> <alpine.DEB.2.02.1602281856040.2147@localhost6.localdomain6> <20160228182036.GA2929@d830.WORKGROUP>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 28 Feb 2016, Alison Schofield wrote:

> On Sun, Feb 28, 2016 at 06:56:56PM +0100, Julia Lawall wrote:
> > On Sun, 28 Feb 2016, Alison Schofield wrote:
> > 
> > > Hi Amitoj,
> > > 
> > > I just worked on a similar patch, and yours caught my attention.
> > > It's not clear that it is OK to reorder the .remove actions.
> > > Although it may seem counterintuitive to do anything *after*
> > > you've unregistered your device, it is indeed done purposely
> > > and safely in many iio drivers.  It usually needs to stay that way.
> > > 
> > > Check out more discussions of this on linux-iio.
> > > 
> > > And, consider the source...I'm just trying to figure this stuff
> > > out too!
> > 
> > Which patch of Amitoj's are you referring to (or which file), and if 
> > possible do you have a more specific link for the discussion on linux-iio?
> > 
> > thanks,
> > julia
> 
> I'm seeing this threaded with original patch, but I guess you're not.
> It is in reference to:
> 	[PATCH] staging: iio: accel: Replace iio_device_register with
> 	devm_iio_device_register

Thanks for the pointer.  Another question about this code is why there is 
no call to sca3000_unconfigure_ring in the probe function.  It loos like 
there should be one under the unregister call, if it is useful to do so in 
the remove function.

julia

> 
> There is a lot of linux-iio discussion when this devm was originally
> introduced with 30+ patches to migrate. Search devm_iio_device_register
> 
> and another later on when an intern tried to apply it:
> http://article.gmane.org/gmane.linux.kernel.iio/13354/match=devm_iio_register
> 
> The accel case might be ok...just a heads up on the considerations.
> 
> alisons
> 
> 

