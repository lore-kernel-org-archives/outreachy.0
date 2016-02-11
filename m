X-GM-THRID: 6249926489518637056
X-Received: by 10.112.132.74 with SMTP id os10mr5969951lbb.22.1455220583875;
        Thu, 11 Feb 2016 11:56:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.126.130 with SMTP id z124ls447175wmc.19.gmail; Thu, 11 Feb
 2016 11:56:23 -0800 (PST)
X-Received: by 10.194.171.198 with SMTP id aw6mr5866638wjc.1.1455220583336;
        Thu, 11 Feb 2016 11:56:23 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si180080wmy.2.2016.02.11.11.56.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 11:56:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,432,1449529200"; 
   d="scan'208";a="164389341"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 11 Feb 2016 20:56:22 +0100
Date: Thu, 11 Feb 2016 20:56:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace explicit
 NULL comparison with ! operator
In-Reply-To: <20160211194646.GA3257@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.02.1602112055060.2061@localhost6.localdomain6>
References: <20160211070636.GA16318@d830.WORKGROUP> <alpine.DEB.2.10.1602110912590.2508@hadrien> <20160211194646.GA3257@d830.WORKGROUP>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 11 Feb 2016, Alison Schofield wrote:

> On Thu, Feb 11, 2016 at 09:16:25AM +0100, Julia Lawall wrote:
> 
> ------ snip ------------
> > 
> > 
> > > @@ -462,13 +462,13 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
> > >
> > >  		/* allocate URBs */
> > >  		rcb->urb = usb_alloc_urb(0, GFP_ATOMIC);
> > > -		if (rcb->urb == NULL) {
> > > +		if (!rcb->urb) {
> > >  			dev_err(&priv->usb->dev, "Failed to alloc rx urb\n");
> > >  			goto free_rx_tx;
> > >  		}
> > >
> > >  		rcb->skb = dev_alloc_skb(priv->rx_buf_sz);
> > > -		if (rcb->skb == NULL)
> > > +		if (!rcb->skb)
> > >  			goto free_rx_tx;
> > >
> > >  		rcb->in_use = false;
> > > @@ -479,13 +479,13 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
> > >  	}
> > >
> > >  	priv->interrupt_urb = usb_alloc_urb(0, GFP_ATOMIC);
> > > -	if (priv->interrupt_urb == NULL) {
> > > +	if (!priv->interrupt_urb) {
> > >  		dev_err(&priv->usb->dev, "Failed to alloc int urb\n");
> > >  		goto free_rx_tx;
> > >  	}
> > >
> > >  	priv->int_buf.data_buf = kmalloc(MAX_INTERRUPT_SIZE, GFP_KERNEL);
> > 
> > Nothing to do with your change, but there seems to be an inconsistncy
> > here.  Why is one allocation done with GFP_KERNEL and the other done with
> > GFP_ATOMIC?
> > 
> > GFP_ATOMIC is needed when the allocation is done with interrupts turned
> > off, because otherwise kmalloc may block, in case of insufficient memory,
> > and that could lead to a deadlock.
> 
> I see the inconsistent usage of GFP_KERNEL/ATOMIC.
> 
> vnt_alloc_bufs() can and should be consistent in usage of mem flags.
> ie. the rules for usb_alloc_urb() are same as for kmalloc().  In this case
> we are running in process context, are not in intr handler, nor holding
> any spinlock.  I will submit a new patch for this.
> 
> Within vt6656 I also found that usbpipes.c also uses GFP_ATOMIC while
> managing usb urbs, but that is within interrupt context and while holding
> spinlock.  Not touching.

OK

> more below...
> 
> ............snip.............
> 
> > > diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
> > > index 351a99f..bec5baf 100644
> > > --- a/drivers/staging/vt6656/usbpipe.c
> > > +++ b/drivers/staging/vt6656/usbpipe.c
> > > @@ -210,7 +210,7 @@ int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
> > >  	struct urb *urb;
> > >
> > >  	urb = rcb->urb;
> > 
> > Another issue is here.  It's a bit strange to initialize a local variable,
> > and then decide that its value is invalid and then leave the function.
> > The initialization could be moved up to the declaration (same degree of
> > potential uselessness, but at least one less line), or moved after the
> > test.
> > 
> > julia
> 
>  I can mv the init of urb to after the test of rcb->skb because
>  no need to init it if we're exiting before using it. 
> 
> So:
> 	int status = 0;
> 	struct urb *urb;
> 
> 	urb = rcb->urb;   <<< MOVE THIS
> 	if (!rcb->skb) {
> 		dev_dbg(&priv->usb->dev, "rcb->skb is null\n");
> 		return status;
> 	}
> 	 
> 	urb = rcb->urb;   <<< TO HERE
> 
> Yes?	

That's fine.

> (I may hold onto this one a bit to include w other cleanup in same
> driver.)

Sure.  It's a minor issue in this case.

julia

