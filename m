X-GM-THRID: 6249926489518637056
X-Received: by 10.31.174.2 with SMTP id x2mr44698466vke.13.1455220010141;
        Thu, 11 Feb 2016 11:46:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.100 with SMTP id q91ls1358735qgq.7.gmail; Thu, 11 Feb
 2016 11:46:49 -0800 (PST)
X-Received: by 10.129.109.197 with SMTP id i188mr42997327ywc.8.1455220009506;
        Thu, 11 Feb 2016 11:46:49 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id ff2si1055510pad.2.2016.02.11.11.46.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 11:46:49 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id x65so34341886pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 11:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=yLwouQbbUmRJSExMrcJf4A7PMZGennwAaZdku9fPuQE=;
        b=QL7Za/RzOPK/WIr2mqp6TBShjTWEqWEGA0gw1Vkuihwp2fM9jm1IHHybqINBkfX5iH
         vFh65YOV4CTm5QGjO7s95Obv/JhdCAnyvFMCJF+fd9zjEswNoqh52ie/jvBb67NBlnaM
         grjTcehN4FPvZpnMfZjJxP3iKSCfATIz/SB+LL2tHvRiBUOMdi1ziFfPYfit1krtwvmQ
         TP/sZN8Quq0RggNMJX0MfgM8aimfYbRm3TfEY6JrnpGyJTfyB4ql0X9ZcK6nxEiknxLC
         3OsJPq+341PIB8hactxEOb7n8OOsjiPGbVm/m8k6I4aWwIB9pmTD5PGBhzx/bolMk6Q3
         7V3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=yLwouQbbUmRJSExMrcJf4A7PMZGennwAaZdku9fPuQE=;
        b=JUP6SW+vO5oxLg9Oq2rN2FbT9tO/VI3pHpQlRZen9xgm2/CGIHtfW/Qc0MBMkDnmm0
         HiNpOWIMaK6vjfbP3ohVHnDXmplxQKyUuRxJDG3oBMohHFpGJ3ZCvqR0TBEPsjsQ2PP5
         I8dKPTrkrNTGy4eDmaacrS0llAwVeqj8F9wBjAVfZopgNkZgKsUjE5bUDiO2TA/yR1tz
         qwfpsPzP1aNbGj355GpaZA7wE2LfIEfXg5Kf8Djpcoeggl95dwkF773Jd4HoHqli97Kl
         NFmT5BTHIUliu33FQY14L+mb3WK9HZNbvKCSGgEOX0J1Fo8CHIwGNrTxzIqkREMxQdj6
         m4yQ==
X-Gm-Message-State: AG10YORCzQrtNVzr1wxUKQLEWl4RUvZmnWxAsQtopHKwpieICsnIsP3hRxU66JDHo9Yu2Q==
X-Received: by 10.98.68.212 with SMTP id m81mr68604746pfi.135.1455220009311;
        Thu, 11 Feb 2016 11:46:49 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id y86sm14138048pfa.26.2016.02.11.11.46.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 11:46:48 -0800 (PST)
Date: Thu, 11 Feb 2016 11:46:47 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace explicit
 NULL comparison with ! operator
Message-ID: <20160211194646.GA3257@d830.WORKGROUP>
References: <20160211070636.GA16318@d830.WORKGROUP>
 <alpine.DEB.2.10.1602110912590.2508@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1602110912590.2508@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 11, 2016 at 09:16:25AM +0100, Julia Lawall wrote:

------ snip ------------
> 
> 
> > @@ -462,13 +462,13 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
> >
> >  		/* allocate URBs */
> >  		rcb->urb = usb_alloc_urb(0, GFP_ATOMIC);
> > -		if (rcb->urb == NULL) {
> > +		if (!rcb->urb) {
> >  			dev_err(&priv->usb->dev, "Failed to alloc rx urb\n");
> >  			goto free_rx_tx;
> >  		}
> >
> >  		rcb->skb = dev_alloc_skb(priv->rx_buf_sz);
> > -		if (rcb->skb == NULL)
> > +		if (!rcb->skb)
> >  			goto free_rx_tx;
> >
> >  		rcb->in_use = false;
> > @@ -479,13 +479,13 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
> >  	}
> >
> >  	priv->interrupt_urb = usb_alloc_urb(0, GFP_ATOMIC);
> > -	if (priv->interrupt_urb == NULL) {
> > +	if (!priv->interrupt_urb) {
> >  		dev_err(&priv->usb->dev, "Failed to alloc int urb\n");
> >  		goto free_rx_tx;
> >  	}
> >
> >  	priv->int_buf.data_buf = kmalloc(MAX_INTERRUPT_SIZE, GFP_KERNEL);
> 
> Nothing to do with your change, but there seems to be an inconsistncy
> here.  Why is one allocation done with GFP_KERNEL and the other done with
> GFP_ATOMIC?
> 
> GFP_ATOMIC is needed when the allocation is done with interrupts turned
> off, because otherwise kmalloc may block, in case of insufficient memory,
> and that could lead to a deadlock.

I see the inconsistent usage of GFP_KERNEL/ATOMIC.

vnt_alloc_bufs() can and should be consistent in usage of mem flags.
ie. the rules for usb_alloc_urb() are same as for kmalloc().  In this case
we are running in process context, are not in intr handler, nor holding
any spinlock.  I will submit a new patch for this.

Within vt6656 I also found that usbpipes.c also uses GFP_ATOMIC while
managing usb urbs, but that is within interrupt context and while holding
spinlock.  Not touching.

more below...

............snip.............

> > diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
> > index 351a99f..bec5baf 100644
> > --- a/drivers/staging/vt6656/usbpipe.c
> > +++ b/drivers/staging/vt6656/usbpipe.c
> > @@ -210,7 +210,7 @@ int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
> >  	struct urb *urb;
> >
> >  	urb = rcb->urb;
> 
> Another issue is here.  It's a bit strange to initialize a local variable,
> and then decide that its value is invalid and then leave the function.
> The initialization could be moved up to the declaration (same degree of
> potential uselessness, but at least one less line), or moved after the
> test.
> 
> julia

 I can mv the init of urb to after the test of rcb->skb because
 no need to init it if we're exiting before using it. 

So:
	int status = 0;
	struct urb *urb;

	urb = rcb->urb;   <<< MOVE THIS
	if (!rcb->skb) {
		dev_dbg(&priv->usb->dev, "rcb->skb is null\n");
		return status;
	}
	 
	urb = rcb->urb;   <<< TO HERE

Yes?	

(I may hold onto this one a bit to include w other cleanup in same
driver.)

alison


 

