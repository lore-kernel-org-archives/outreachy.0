X-GM-THRID: 9654834823168
X-Received: by 10.194.221.65 with SMTP id qc1mr7023252wjc.7.1427658249259;
        Sun, 29 Mar 2015 12:44:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.66 with SMTP id q2ls99257laq.66.gmail; Sun, 29 Mar 2015
 12:44:08 -0700 (PDT)
X-Received: by 10.152.163.99 with SMTP id yh3mr7008582lab.8.1427658248743;
        Sun, 29 Mar 2015 12:44:08 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id sf8si457258wic.2.2015.03.29.12.44.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 12:44:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,489,1422918000"; 
   d="scan'208";a="130620283"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Mar 2015 21:44:08 +0200
Date: Sun, 29 Mar 2015 21:44:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Marianne Moeller Knudsen <marianne@masu.dk>
cc: Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Replace printk with
 pr_debug
In-Reply-To: <20150329194012.GA11849@debianvm>
Message-ID: <alpine.DEB.2.02.1503292143160.2037@localhost6.localdomain6>
References: <20150322200502.GA7693@debianvm> <20150323213038.GA26335@kroah.com> <alpine.DEB.2.02.1503240736230.2061@localhost6.localdomain6> <20150324094514.GA6378@kroah.com> <20150329194012.GA11849@debianvm>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 29 Mar 2015, Marianne Moeller Knudsen wrote:

> On Tue, Mar 24, 2015 at 10:45:14AM +0100, Greg KH wrote:
> > On Tue, Mar 24, 2015 at 07:37:31AM +0100, Julia Lawall wrote:
> > > 
> > > 
> > > On Mon, 23 Mar 2015, Greg KH wrote:
> > > 
> > > > On Sun, Mar 22, 2015 at 09:05:02PM +0100, Marianne Moeller Knudsen wrote:
> > > > > Replace printk without loglevel with pr_debug. Issue found by
> > > > > checkpatch.
> > > > > 
> > > > > Signed-off-by: Marianne Moeller Knudsen <marianne@masu.dk>
> > > > > ---
> > > > >  drivers/staging/sm750fb/ddk750_display.c |    2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
> > > > > index c84196a..9f768a3 100644
> > > > > --- a/drivers/staging/sm750fb/ddk750_display.c
> > > > > +++ b/drivers/staging/sm750fb/ddk750_display.c
> > > > > @@ -51,7 +51,7 @@ static void setDisplayControl(int ctrl,int dispState)
> > > > >  				POKE32(PANEL_DISPLAY_CTRL, ulDisplayCtrlReg);
> > > > >  			} while((PEEK32(PANEL_DISPLAY_CTRL) & ~ulReservedBits) !=
> > > > >  					(ulDisplayCtrlReg & ~ulReservedBits));
> > > > > -			printk("Set Panel Plane enbit:after tried %d times\n",cnt);
> > > > > +			pr_debug("Set Panel Plane enbit:after tried %d times\n",cnt);
> > > > 
> > > > It's a driver, it should use dev_debug() instead please.
> > > 
> > > The @@ line shows that the function only has integer arguments.  Is it 
> > > acceptable to add arguments just for debug messages?
> > 
> > Yes, it's talking to hardware, so we need to know the exact device that
> > caused the message.  Random messages like this don't help anyone out as
> > it doesn't describe the device, the file, the driver, or much of
> > anything else :(
> > 
> > thanks,
> > 
> > greg k-h
> 
> I've tried to make some code changes in order to use dev_dbg instead by passing fb_info. Maybe I could get some comments/hints/omgwhathaveyoudone on it? and if so how should I post it?

Just post what you propose.  If you have some doubts about what you have 
done, you can discuss them under the ---.  That way ifthe strategy you 
have taken is actually fine, the patch can be accepted as is, and your 
comments will disappear.

julia

