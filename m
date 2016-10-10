X-GM-THRID: 6338829541865160704
X-Received: by 10.129.107.68 with SMTP id g65mr8043670ywc.101.1476088612105;
        Mon, 10 Oct 2016 01:36:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.76 with SMTP id w73ls3157294ioi.3.gmail; Mon, 10 Oct
 2016 01:36:50 -0700 (PDT)
X-Received: by 10.107.168.151 with SMTP id e23mr8650903ioj.65.1476088610647;
        Mon, 10 Oct 2016 01:36:50 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si8184858pab.2.2016.10.10.01.36.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 01:36:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D3625308;
	Mon, 10 Oct 2016 08:36:49 +0000 (UTC)
Date: Mon, 10 Oct 2016 10:36:58 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: ks7010: Replace printk with netdev_*
Message-ID: <20161010083658.GA2343@kroah.com>
References: <20161009203937.GA1549@domino-MS-16Y1>
 <20161010070913.GA25825@kroah.com>
 <20161010082846.GA8819@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161010082846.GA8819@domino-MS-16Y1>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Oct 10, 2016 at 11:28:46AM +0300, Muraru Mihaela wrote:
> On Mon, Oct 10, 2016 at 09:09:13AM +0200, Greg Kroah-Hartman wrote:
> > On Sun, Oct 09, 2016 at 11:39:37PM +0300, Mihaela Muraru wrote:
> > > This is a patch to ks_hostif.c file that fixes up a checkpatch.pl
> > > 
> > > WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
> > > dev_info(dev, ... then pr_info(... to printk(KERN_INFO ...
> > > 
> > > For netdev devices netdev_info and netdev_warn is preferred over
> > > printk(KERN_INFO/WARN..).
> > > 
> > > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > > 
> > > ---
> > > Changes in v2:
> > > 	-rebase the staging-testing branch
> > 
> > Really?  It still does not apply :(
> > 
> > Note, many people seem to be working on this same file, in the same
> > area, for some reason...
> 
> Thank you for reply.
> 
> I saw that this file has a lot of problems and  because of that I will
> rebase it again and I will resend it,if is ok for you. It is a small
> contribution, but it can improve something.

Yes, please continue working on this file if you want to, I am always
willing to accept patches.

I just know it can get frustrating when multiple people work in the same
place, as someone always ends up getting their patch rejected.

thanks,

greg k-h

