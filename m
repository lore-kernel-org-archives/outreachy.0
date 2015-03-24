X-GM-THRID: 9654834823168
X-Received: by 10.182.205.232 with SMTP id lj8mr4008651obc.39.1427190327881;
        Tue, 24 Mar 2015 02:45:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.175 with SMTP id l44ls1420628qgd.96.gmail; Tue, 24 Mar
 2015 02:45:27 -0700 (PDT)
X-Received: by 10.236.63.42 with SMTP id z30mr3961854yhc.37.1427190327693;
        Tue, 24 Mar 2015 02:45:27 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si439757pac.0.2015.03.24.02.45.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2015 02:45:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id DA413AE7;
	Tue, 24 Mar 2015 09:45:24 +0000 (UTC)
Date: Tue, 24 Mar 2015 10:45:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Marianne Moeller Knudsen <marianne@masu.dk>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Replace printk with
 pr_debug
Message-ID: <20150324094514.GA6378@kroah.com>
References: <20150322200502.GA7693@debianvm>
 <20150323213038.GA26335@kroah.com>
 <alpine.DEB.2.02.1503240736230.2061@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1503240736230.2061@localhost6.localdomain6>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 24, 2015 at 07:37:31AM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 23 Mar 2015, Greg KH wrote:
> 
> > On Sun, Mar 22, 2015 at 09:05:02PM +0100, Marianne Moeller Knudsen wrote:
> > > Replace printk without loglevel with pr_debug. Issue found by
> > > checkpatch.
> > > 
> > > Signed-off-by: Marianne Moeller Knudsen <marianne@masu.dk>
> > > ---
> > >  drivers/staging/sm750fb/ddk750_display.c |    2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
> > > index c84196a..9f768a3 100644
> > > --- a/drivers/staging/sm750fb/ddk750_display.c
> > > +++ b/drivers/staging/sm750fb/ddk750_display.c
> > > @@ -51,7 +51,7 @@ static void setDisplayControl(int ctrl,int dispState)
> > >  				POKE32(PANEL_DISPLAY_CTRL, ulDisplayCtrlReg);
> > >  			} while((PEEK32(PANEL_DISPLAY_CTRL) & ~ulReservedBits) !=
> > >  					(ulDisplayCtrlReg & ~ulReservedBits));
> > > -			printk("Set Panel Plane enbit:after tried %d times\n",cnt);
> > > +			pr_debug("Set Panel Plane enbit:after tried %d times\n",cnt);
> > 
> > It's a driver, it should use dev_debug() instead please.
> 
> The @@ line shows that the function only has integer arguments.  Is it 
> acceptable to add arguments just for debug messages?

Yes, it's talking to hardware, so we need to know the exact device that
caused the message.  Random messages like this don't help anyone out as
it doesn't describe the device, the file, the driver, or much of
anything else :(

thanks,

greg k-h

