X-GM-THRID: 6250295934225219584
X-Received: by 10.28.45.82 with SMTP id t79mr2357647wmt.2.1455670721466;
        Tue, 16 Feb 2016 16:58:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.30.145 with SMTP id e139ls698133wme.39.gmail; Tue, 16 Feb
 2016 16:58:40 -0800 (PST)
X-Received: by 10.28.129.210 with SMTP id c201mr29015wmd.1.1455670717950;
        Tue, 16 Feb 2016 16:58:37 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v197si765376wmv.1.2016.02.16.16.58.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 16:58:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,457,1449529200"; 
   d="scan'208";a="203415785"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2016 01:58:37 +0100
Date: Tue, 16 Feb 2016 19:58:34 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vt6656: move local var
 init into declaration
In-Reply-To: <20160216205854.GA3156@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.10.1602161958060.2690@hadrien>
References: <20160212070014.GA13288@d830.WORKGROUP> <1455302683-5119-1-git-send-email-amsfield22@gmail.com> <alpine.DEB.2.10.1602121954390.2510@hadrien> <20160216205854.GA3156@d830.WORKGROUP>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 16 Feb 2016, Alison Schofield wrote:

> On Fri, Feb 12, 2016 at 07:58:05PM +0100, Julia Lawall wrote:
> >
> >
> > On Fri, 12 Feb 2016, Alison Schofield wrote:
> >
> > > Improve readability by initializing local variables at declaration.
> > >
> > > In one instance, vnt_start_interrupt_urb_complete(), also use that
> > > local variable in subsequent switch.
> > >
> > > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > > ---
>
> .............snip
>
> > >
> > > diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
> > > index bec5baf..f27eb9a 100644
> > > --- a/drivers/staging/vt6656/usbpipe.c
> > > +++ b/drivers/staging/vt6656/usbpipe.c
> > > @@ -101,9 +101,9 @@ void vnt_control_in_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 *data)
> > >  static void vnt_start_interrupt_urb_complete(struct urb *urb)
> > >  {
> > >  	struct vnt_private *priv = urb->context;
> > > -	int status;
> > > +	int status = urb->status;
> > >
> > > -	switch (urb->status) {
> > > +	switch (status) {
> > >  	case 0:
> > >  	case -ETIMEDOUT:
> > >  		break;
> > > @@ -116,8 +116,6 @@ static void vnt_start_interrupt_urb_complete(struct urb *urb)
> > >  		break;
> > >  	}
> > >
> > > -	status = urb->status;
> > > -
> > >  	if (status != STATUS_SUCCESS) {
> >
> > Not related to this patch, but this test is very unlikeable.
> > SUCCESS_STATUS is defined in the following (vt6656/device.h)
> >
> > enum {
> >         STATUS_SUCCESS = 0,
> >         STATUS_FAILURE,
> >         STATUS_RESOURCES,
> >         STATUS_PENDING,
> > };
> >
> > This is not at all the same kind of value as -ETIMEDOUT, etc.  The urb
> > status is something that is not set in this driver as well.  I guess is it
> > set in the USB library, where STATUS_SUCCESS is not known.  So status
> > should not be compared against this value.
> >
> > julia
> >
> I see that a "successful" urb status is simply 0 and the failures
> are standard E* statuses.  This is evident directly above in the
> switch, and I confirmed it in drivers/usb code samples.
>
> The STATUS_SUCCESS is used correctly elsewhere for NDIS status per it's
> definition.
>
> I'll send a patch for this.
>
> When I do a subsequent patch like this, should I send it as a reply
> here in this email thread, or post a new message? I'm not sure if it
> would get buried in here since Greg has already taken the first patch?

If Greg already took the first patch, it could be better to start a new
thread.

julia

