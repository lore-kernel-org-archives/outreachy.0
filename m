X-GM-THRID: 6338591064541102080
X-Received: by 10.237.55.229 with SMTP id j92mr433103qtb.10.1476024165619;
        Sun, 09 Oct 2016 07:42:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.7 with SMTP id h7ls8728574otb.23.gmail; Sun, 09 Oct
 2016 07:42:45 -0700 (PDT)
X-Received: by 10.157.8.202 with SMTP id 68mr6955920otf.11.1476024165290;
        Sun, 09 Oct 2016 07:42:45 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si7291220pab.2.2016.10.09.07.42.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:42:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AEA0025A;
	Sun,  9 Oct 2016 14:42:44 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:42:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] vc04_services driver question
Message-ID: <20161009144253.GA31640@kroah.com>
References: <20161007053033.GA13812@localhost>
 <20161007125608.GA1317@kroah.com>
 <20161008013923.GA17413@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161008013923.GA17413@localhost>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Oct 07, 2016 at 06:39:23PM -0700, Elizabeth Ferdman wrote:
> On Fri, Oct 07, 2016 at 02:56:08PM +0200, Greg KH wrote:
> > On Thu, Oct 06, 2016 at 10:30:34PM -0700, Elizabeth Ferdman wrote:
> > > I noticed a new driver vc04_services was just added and that the Kconfig
> > > says it depends on BROKEN. The tutorial specifically says not to work on
> > > drivers that have that in the depends on line. However, I also noticed
> > > that patches were being accepted for rtl8712 and greybus and those
> > > have BROKEN in the Kconfig as well... so is it ok to submit patches for
> > > that one or even a patchset?
> > 
> > Yes, but make sure your patches don't make the code worse.  You might be
> > able to build BROKEN code under some conditions.
> > 
> > And the vc04_services code will get that option removed real soon, I
> > have a patchset in my queue to fix up the obvious build issues.  Feel
> > free to get them out of the driverdevel mailing list archives and apply
> > them locally if you wish to start working on that code.
> 
> Hey Greg,
> Thanks for the tip. I'd love to do that but how? They've already been
> sent so I won't get them if I apply to the mailing-list now, right? I
> read that you can just save it and use something like git am/git apply.
> I am seeing some vc04 patches in the driverdevel archive.. On the bottom
> there is a url with a .bin file... I'm not really sure if that's what I
> want. Can you clue me in on how to do it?

I don't know what email archive you are looking at, all of them seem to
do it in different ways, so I can't answer for sure.  I get the emails
directly from the list itself, by being subscribed to it.

thanks,

greg k-h

