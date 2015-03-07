X-GM-THRID: 6035575144448
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,44622202b52d33bf
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.65.165 with SMTP id y5mr18618719pas.43.1425748262083;
        Sat, 07 Mar 2015 09:11:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.230 with SMTP id p93ls725092qgd.35.gmail; Sat, 07 Mar
 2015 09:11:01 -0800 (PST)
X-Received: by 10.236.70.100 with SMTP id o64mr21408957yhd.9.1425748261845;
        Sat, 07 Mar 2015 09:11:01 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si1798002pbc.1.2015.03.07.09.11.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 09:11:01 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B3077A58;
	Sat,  7 Mar 2015 17:11:00 +0000 (UTC)
Date: Sat, 7 Mar 2015 18:10:57 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: emxx_udc: Clean dev_err()
 logging
Message-ID: <20150307171057.GA13119@kroah.com>
References: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>
 <1425460224-8110-1-git-send-email-hamohammed.sa@gmail.com>
 <20150306232951.GB6279@kroah.com>
 <20150307170806.GA2813@example.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150307170806.GA2813@example.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Mar 07, 2015 at 08:08:07PM +0300, Haneen Mohammed wrote:
> On Fri, Mar 06, 2015 at 03:29:51PM -0800, Greg KH wrote:
> > On Wed, Mar 04, 2015 at 12:10:24PM +0300, Haneen Mohammed wrote:
> > > This patch removes  __func__ from dev_err. dev_err includes information about:
> > >  (devcice, driver, specific instance of device, etc) in the log printout, so there is no need for  __func__.
> > > 
> > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > > ---
> > > note: this patch separated from "Staging: emxx_udc: Fix checkpatch.pl warnings" patchset.
> > > 
> > >  drivers/staging/emxx_udc/emxx_udc.c | 18 ++++++++----------
> > >  1 file changed, 8 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> > > index 35dc1c4..cfe55dc 100644
> > > --- a/drivers/staging/emxx_udc/emxx_udc.c
> > > +++ b/drivers/staging/emxx_udc/emxx_udc.c
> > > @@ -2632,7 +2632,7 @@ static int nbu2ss_ep_enable(
> > >  	if ((udc->driver == NULL)
> > >  		|| (udc->gadget.speed == USB_SPEED_UNKNOWN)) {
> > >  
> > > -		dev_err(ep->udc->dev, " *** %s, udc !!\n", __func__);
> > > +		dev_err(ep->udc->dev, "  udc !!\n");
> > 
> > Why keep the leading spaces?
> > 
> > And dev_err() does not have __func__ in it, so maybe this should just be
> > left alone, as these messages are not unique enough to determine the
> > exact place the error happened.
> > 
> > sorry for missing that last time.
> > 
> > greg k-h
> 
> what about the other patches? You have told me to refresh my tree and resubmit the other
> patchset, should I do that? or just leave it as it is?

I'd say leave it as-is and start working on more "real" patches.

thanks,

greg k-h

