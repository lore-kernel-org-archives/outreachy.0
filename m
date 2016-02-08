X-GM-THRID: 6249004522009526272
X-Received: by 10.31.168.130 with SMTP id r124mr29731036vke.10.1454973885689;
        Mon, 08 Feb 2016 15:24:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.230 with SMTP id h99ls1998324ioi.75.gmail; Mon, 08 Feb
 2016 15:24:45 -0800 (PST)
X-Received: by 10.107.151.79 with SMTP id z76mr20471600iod.4.1454973885057;
        Mon, 08 Feb 2016 15:24:45 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tn7si4756005pac.1.2016.02.08.15.24.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2016 15:24:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C0058F9A;
	Mon,  8 Feb 2016 23:24:44 +0000 (UTC)
Date: Mon, 8 Feb 2016 15:24:44 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Bhumika Goyal <bhumirks@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging:wlan-ng:Merged two lines into
 one
Message-ID: <20160208232444.GA19531@kroah.com>
References: <1454959731-21240-1-git-send-email-bhumirks@gmail.com>
 <20160208193922.GA10743@kroah.com>
 <alpine.DEB.2.02.1602082137530.2060@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1602082137530.2060@localhost6.localdomain6>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 08, 2016 at 09:38:21PM +0100, Julia Lawall wrote:
> On Mon, 8 Feb 2016, Greg KH wrote:
> 
> > On Tue, Feb 09, 2016 at 12:58:51AM +0530, Bhumika Goyal wrote:
> > > The last two lines of these functions are compressed into one.
> > > Also removed the variable ret as it is now not used.
> > > Found using coccinelle:
> > > @@
> > > expression e, ret;
> > > @@
> > > 
> > > -ret =
> > > +return
> > >      e;
> > > -return ret;
> > > 
> > > Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> > > ---
> > >  drivers/staging/wlan-ng/hfa384x_usb.c | 20 ++++----------------
> > >  1 file changed, 4 insertions(+), 16 deletions(-)
> > 
> > We do not accept patches on the outreachy-kernel mailing list yet,
> > please submit these the "normal way" in order for them to be accepted to
> > the kernel community.
> 
> Actually, it seems that it is already February 9 in her location :)

Ugh, you are right, my apologies.

greg k-h

