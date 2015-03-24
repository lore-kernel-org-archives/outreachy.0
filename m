X-GM-THRID: 9654834823168
X-Received: by 10.112.73.33 with SMTP id i1mr510625lbv.0.1427179053100;
        Mon, 23 Mar 2015 23:37:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.25.193 with SMTP id e1ls775021lag.80.gmail; Mon, 23 Mar
 2015 23:37:32 -0700 (PDT)
X-Received: by 10.112.181.166 with SMTP id dx6mr497450lbc.17.1427179052438;
        Mon, 23 Mar 2015 23:37:32 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id sf8si603648wic.2.2015.03.23.23.37.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Mar 2015 23:37:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,456,1422918000"; 
   d="scan'208";a="129611811"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Mar 2015 07:37:31 +0100
Date: Tue, 24 Mar 2015 07:37:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Greg KH <gregkh@linuxfoundation.org>
cc: Marianne Moeller Knudsen <marianne@masu.dk>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Replace printk with
 pr_debug
In-Reply-To: <20150323213038.GA26335@kroah.com>
Message-ID: <alpine.DEB.2.02.1503240736230.2061@localhost6.localdomain6>
References: <20150322200502.GA7693@debianvm> <20150323213038.GA26335@kroah.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 23 Mar 2015, Greg KH wrote:

> On Sun, Mar 22, 2015 at 09:05:02PM +0100, Marianne Moeller Knudsen wrote:
> > Replace printk without loglevel with pr_debug. Issue found by
> > checkpatch.
> > 
> > Signed-off-by: Marianne Moeller Knudsen <marianne@masu.dk>
> > ---
> >  drivers/staging/sm750fb/ddk750_display.c |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
> > index c84196a..9f768a3 100644
> > --- a/drivers/staging/sm750fb/ddk750_display.c
> > +++ b/drivers/staging/sm750fb/ddk750_display.c
> > @@ -51,7 +51,7 @@ static void setDisplayControl(int ctrl,int dispState)
> >  				POKE32(PANEL_DISPLAY_CTRL, ulDisplayCtrlReg);
> >  			} while((PEEK32(PANEL_DISPLAY_CTRL) & ~ulReservedBits) !=
> >  					(ulDisplayCtrlReg & ~ulReservedBits));
> > -			printk("Set Panel Plane enbit:after tried %d times\n",cnt);
> > +			pr_debug("Set Panel Plane enbit:after tried %d times\n",cnt);
> 
> It's a driver, it should use dev_debug() instead please.

The @@ line shows that the function only has integer arguments.  Is it 
acceptable to add arguments just for debug messages?

julia

> 
> thanks,
> 
> greg k-h
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150323213038.GA26335%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
> 

