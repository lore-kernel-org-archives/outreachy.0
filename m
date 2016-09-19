X-GM-THRID: 6331683912219099136
X-Received: by 10.25.228.71 with SMTP id b68mr528267lfh.0.1474286682848;
        Mon, 19 Sep 2016 05:04:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.144.20 with SMTP id s20ls1677721wmd.23.canary; Mon, 19 Sep
 2016 05:04:42 -0700 (PDT)
X-Received: by 10.28.152.6 with SMTP id a6mr491781wme.23.1474286682156;
        Mon, 19 Sep 2016 05:04:42 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w79si1140080wmw.0.2016.09.19.05.04.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 05:04:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,361,1470693600"; 
   d="scan'208";a="237368273"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 14:04:41 +0200
Date: Mon, 19 Sep 2016 14:04:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ian Abbott <abbotti@mev.co.uk>
cc: Julia Lawall <julia.lawall@lip6.fr>, 
    Sandhya Bankar <bankarsandhya512@gmail.com>, 
    outreachy-kernel@googlegroups.com, hsweeten@visionengravers.com, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Use
 usb_endpoint_dir_in(endpoint) instead of (endpoint->bEndpointAddress &
 USB_DIR_IN).
In-Reply-To: <c273ac58-4efb-9abe-4ec8-3c818ed8a17d@mev.co.uk>
Message-ID: <alpine.DEB.2.10.1609191404260.3203@hadrien>
References: <20160918144757.GA3786@sandhya> <alpine.DEB.2.10.1609181723120.3204@hadrien> <c273ac58-4efb-9abe-4ec8-3c818ed8a17d@mev.co.uk>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 19 Sep 2016, Ian Abbott wrote:

> On 18/09/16 16:26, Julia Lawall wrote:
> > On Sun, 18 Sep 2016, Sandhya Bankar wrote:
> >
> > > Use usb_endpoint_dir_in(endpoint) instead of (endpoint->bEndpointAddress &
> > > USB_DIR_IN).
> > >
> > > This correction is made using below coccinelle script:
> > >
> > > @@
> > > struct usb_endpoint_descriptor *endpoint;
> > > expression E;
> > > @@
> > > (
> > > - endpoint->bEndpointAddress & USB_DIR_IN
> > > + usb_endpoint_dir_in(endpoint)
> > > |
> > > - endpoint->bEndpointAddress == USB_DIR_IN
> > > + usb_endpoint_dir_in(endpoint)
> > > |
> > > - (endpoint->bEndpointAddress & E) == USB_DIR_IN
> > > + usb_endpoint_dir_in(endpoint)
> > > )
> > >
> > >
> > > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> > > ---
> > >  drivers/staging/comedi/drivers/dt9812.c |    2 +-
> > >  1 files changed, 1 insertions(+), 1 deletions(-)
> > >
> > > diff --git a/drivers/staging/comedi/drivers/dt9812.c
> > > b/drivers/staging/comedi/drivers/dt9812.c
> > > index 7ebca86..4007c45 100644
> > > --- a/drivers/staging/comedi/drivers/dt9812.c
> > > +++ b/drivers/staging/comedi/drivers/dt9812.c
> > > @@ -676,7 +676,7 @@ static int dt9812_find_endpoints(struct comedi_device
> > > *dev)
> > >  			dir = USB_DIR_IN;
> > >  			break;
> > >  		}
> > > -		if ((ep->bEndpointAddress & USB_DIR_IN) != dir) {
> > > +		if ((usb_endpoint_dir_in(ep)) != dir) {
> >
> > Small problem:  The parentheses around the function call are not needed.
> >
> > Big problem: The transformation is not correct in this context.  If you
> > look at the definition of usb_endpoint_dir_in, you will see that, like in
> > most of the rules of the semantic patch, the main operator in the
> > computation of the return value is ==.  So the function returns a boolean,
> > ie 0 or 1.  The first rule of the semantic patch is only valid when the
> > result is being tested for being true or false, not when it is compared to
> > something.  Maybe there is some other way to reorganize the code to use
> > the endpoint functions.
>
> There doesn't appear to be a function such as usb_endpoint_dir(ep) to return
> the endpoint direction as one of the values USB_DIR_IN or USB_DIR_OUT, which
> would have been nice.
>
> I think the original code is using USB_DIR_IN incorrectly on that line. It
> should really be replaced with USB_ENDPOINT_DIR_MASK like this:
>
> 		if ((ep->bEndpointAddress & USB_ENDPOINT_DIR_MASK) != dir) {
>
> (USB_ENDPOINT_DIR_MASK and USB_DIR_IN have the same value, but
> USB_ENDPOINT_DIR_MASK is more "correct" for use as a mask.)

That looks better to me.

julia

