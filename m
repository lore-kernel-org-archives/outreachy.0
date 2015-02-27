X-GM-THRID: 4349090594816
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8f6db519be982188
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.221.65 with SMTP id qc1mr1974324wjc.7.1425036178296;
        Fri, 27 Feb 2015 03:22:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.4 with SMTP id f4ls92806lah.18.gmail; Fri, 27 Feb 2015
 03:22:57 -0800 (PST)
X-Received: by 10.112.147.35 with SMTP id th3mr1744640lbb.15.1425036177800;
        Fri, 27 Feb 2015 03:22:57 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id o3si89178wib.2.2015.02.27.03.22.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 03:22:57 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl2 with SMTP id l2so19577037wgh.9
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 03:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Gd65SJ6CLY8r1neUrNTwWPzKUU9BUfRgRXjs7nqUM9g=;
        b=iHNW3FDlYomz9eAw6hsPONDScN5VIYuywqGXsS9Z3j8ULY/HWMy8ftsrKhGZC9UMlW
         NQkAE1usqoZeUMna1hr08r2d/iocCMurH+1MCN3ILqS6Qbdu6FebJb+gCvvX/FSpsy/6
         UTjpzEegct9WbMkGEjbHSqFWT5ab04CHN1RPa3LIUZ3MNCRnq4geSXpgrrVTtnx0pmXJ
         zyX+XoF7N1TOO2IGRNOut8ul/If2pGKURhWjjV2MY2VJJvuNSrkKBReUkQrsUl4W6VrV
         yj3J6D5tPMgDttg8h8dYWRRlX/uUtM8TUyUEap2J4gMrqgNh/+rMicSj306Zfe+5Vmkz
         HUVQ==
X-Received: by 10.180.86.201 with SMTP id r9mr5501966wiz.56.1425036177656;
        Fri, 27 Feb 2015 03:22:57 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from localhost ([79.170.55.43])
        by mx.google.com with ESMTPSA id md8sm2364856wic.13.2015.02.27.03.22.55
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 03:22:57 -0800 (PST)
Date: Fri, 27 Feb 2015 14:22:55 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v8 5/5] Staging: emxx_udc: Clean
 dev_err() logging
Message-ID: <20150227112255.GA28904@example.com>
References: <cover.1425030785.git.hamohammed.sa@gmail.com>
 <1425033356-20933-1-git-send-email-hamohammed.sa@gmail.com>
 <alpine.DEB.2.10.1502271156510.2668@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1502271156510.2668@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

Ok, I'll try that out.

On Fri, Feb 27, 2015 at 11:57:15AM +0100, Julia Lawall wrote:
> Maybe you can try using Coccinelle to find this problem more generally.
> 
> julia
> 
> On Fri, 27 Feb 2015, Haneen Mohammed wrote:
> 
> > This patch removes  __func__ from dev_err.
> > dev_err includes the function name in the log printout, so there is no
> > need to include it manually.
> >
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > ---
> >  drivers/staging/emxx_udc/emxx_udc.c | 18 +++++++++---------
> >  1 file changed, 9 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> > index 77189cc..0bfd268 100644
> > --- a/drivers/staging/emxx_udc/emxx_udc.c
> > +++ b/drivers/staging/emxx_udc/emxx_udc.c
> > @@ -2626,7 +2626,7 @@ static int nbu2ss_ep_enable(
> >  	if ((ep_type == USB_ENDPOINT_XFER_CONTROL)
> >  		|| (ep_type == USB_ENDPOINT_XFER_ISOC)) {
> >
> > -		dev_err(ep->udc->dev, "udc:  *** %s, bat bmAttributes\n", __func__);
> > +		dev_err(ep->udc->dev, "bat bmAttributes\n");
> >  		return -EINVAL;
> >  	}
> >
> > @@ -2637,7 +2637,7 @@ static int nbu2ss_ep_enable(
> >  	if ((udc->driver == NULL)
> >  		|| (udc->gadget.speed == USB_SPEED_UNKNOWN)) {
> >
> > -		dev_err(udc->dev, " *** %s, udc !!\n", __func__);
> > +		dev_err(udc->dev, "udc !!\n");
> >  		return -ESHUTDOWN;
> >  	}
> >
> > @@ -2778,7 +2778,7 @@ static int nbu2ss_ep_queue(
> >  	}
> >
> >  	if (unlikely(!udc->driver)) {
> > -		dev_err(udc->dev, "%s, bogus device state %p\n", __func__, udc->driver);
> > +		dev_err(udc->dev, "bogus device state %p\n", udc->driver);
> >  		return -ESHUTDOWN;
> >  	}
> >
> > @@ -2817,7 +2817,7 @@ static int nbu2ss_ep_queue(
> >
> >  		result = _nbu2ss_start_transfer(udc, ep, req, FALSE);
> >  		if (result < 0) {
> > -			dev_err(udc->dev, " *** %s, result = %d\n", __func__, result);
> > +			dev_err(udc->dev, "result = %d\n", result);
> >  			list_del(&req->queue);
> >  		} else if ((ep->epnum > 0) && (ep->direct == USB_DIR_OUT)) {
> >  #ifdef USE_DMA
> > @@ -2907,7 +2907,7 @@ static int nbu2ss_ep_set_halt(struct usb_ep *_ep, int value)
> >
> >  	udc = ep->udc;
> >  	if (!udc) {
> > -		dev_err(ep->udc->dev, "udc: *** %s, bad udc\n", __func__);
> > +		dev_err(ep->udc->dev, "bad udc\n");
> >  		return -EINVAL;
> >  	}
> >
> > @@ -2961,7 +2961,7 @@ static int nbu2ss_ep_fifo_status(struct usb_ep *_ep)
> >
> >  	udc = ep->udc;
> >  	if (!udc) {
> > -		dev_err(ep->udc->dev, "udc: %s, bad udc\n", __func__);
> > +		dev_err(ep->udc->dev, "bad udc\n");
> >  		return -EINVAL;
> >  	}
> >
> > @@ -3009,7 +3009,7 @@ static void  nbu2ss_ep_fifo_flush(struct usb_ep *_ep)
> >
> >  	udc = ep->udc;
> >  	if (!udc) {
> > -		dev_err(ep->udc->dev, "udc: %s, bad udc\n", __func__);
> > +		dev_err(ep->udc->dev, "bad udc\n");
> >  		return;
> >  	}
> >
> > @@ -3059,7 +3059,7 @@ static int nbu2ss_gad_get_frame(struct usb_gadget *pgadget)
> >
> >  	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
> >  	if (udc == NULL) {
> > -		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
> > +		dev_err(&pgadget->dev, "udc == NULL\n");
> >  		return -EINVAL;
> >  	}
> >
> > @@ -3089,7 +3089,7 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
> >
> >  	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
> >  	if (udc == NULL) {
> > -		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
> > +		dev_err(&pgadget->dev, "udc == NULL\n");
> >  		return -EINVAL;
> >  	}
> >
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425033356-20933-1-git-send-email-hamohammed.sa%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

