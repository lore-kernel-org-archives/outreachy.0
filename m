X-GM-THRID: 6250295934225219584
X-Received: by 10.107.133.10 with SMTP id h10mr24081716iod.8.1455656341337;
        Tue, 16 Feb 2016 12:59:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.233 with SMTP id h96ls4740862qgd.80.gmail; Tue, 16 Feb
 2016 12:59:00 -0800 (PST)
X-Received: by 10.140.253.198 with SMTP id y189mr16374678qhc.9.1455656340610;
        Tue, 16 Feb 2016 12:59:00 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id ui7si4209673pab.0.2016.02.16.12.59.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 12:59:00 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id yy13so109255390pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 12:59:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=LjDsjfrK5ZdMMLMekJUDcYQKyE1lvA3ps5cQFPnbffQ=;
        b=q4plxp3PI9FvMmR2P+ToBx6eLEy/fDEXnAqe0ic1Wh2HAioHCcWDh3JgD9faFWTsQd
         UVDBuFQCnvMWRX1N7v0nmhMCvT7BET83OMjGRHhO2jPYt0RzZwkt6tVMUoRQHv5AiGNo
         Cyhk6K/d4+0NLnQ3jXrXgU7etysIchO/UK5sgZLah+Da/9zy6mlNjHozyXzj+caWhJB5
         0OJfrQFlCpvN/woapC2TtAV488ufxS7hGzkFLQN94QuXcfNDT9o/Tgw0qyIuBnJ3rAja
         xgsAZ7DKwNoLLH3ASQHeNprYpgO/IUdx5CGqpHJ9SLP2TAt0+Hde6iJ28XMJNfLSWYh5
         Z6ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=LjDsjfrK5ZdMMLMekJUDcYQKyE1lvA3ps5cQFPnbffQ=;
        b=N/3J/QrlF1+bbxm/NRWstTLIc0eQHYOtkL5yBwY9ClKkIWmRSjvd0hVX/3b465b0T2
         /QnuQpvua/WfXjFQvPqJJJgsdW7KuXHorB1PvbL8IR0xML0EjyARuM+uW70BtkdORD6t
         akZuL2in5YhuR1gnrHyEy0I+bk7N1yCj+ejnXSMq7oeDzS3xkNVEj5SEn5TYHKVrcqwM
         OYCzpnYgAPfX2CX+g2C28X7ShDWqtk2A3FfvvqP/MYEpeCJerqM0Nkr8SsXwKeKbM+Hw
         e0j5CX6TNr20BVcuR1oNn3sucXoHzJG8KtFBkW2BMROTdzAw5oyItjCwmS/O13OCnyQ9
         9a6Q==
X-Gm-Message-State: AG10YOR+/pGdjqpOtWFYGxecqY05ZthwEMpw1MWHnMwhj8puIhYuLdaFYav0EhopuB1Fqw==
X-Received: by 10.66.142.200 with SMTP id ry8mr34347133pab.31.1455656340442;
        Tue, 16 Feb 2016 12:59:00 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-72-178.dhcp.embarqhsd.net. [67.232.72.178])
        by smtp.gmail.com with ESMTPSA id yx4sm47885196pac.5.2016.02.16.12.58.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 12:58:59 -0800 (PST)
Date: Tue, 16 Feb 2016 12:58:57 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vt6656: move local var
 init into declaration
Message-ID: <20160216205854.GA3156@d830.WORKGROUP>
References: <20160212070014.GA13288@d830.WORKGROUP>
 <1455302683-5119-1-git-send-email-amsfield22@gmail.com>
 <alpine.DEB.2.10.1602121954390.2510@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1602121954390.2510@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 12, 2016 at 07:58:05PM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 12 Feb 2016, Alison Schofield wrote:
> 
> > Improve readability by initializing local variables at declaration.
> >
> > In one instance, vnt_start_interrupt_urb_complete(), also use that
> > local variable in subsequent switch.
> >
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > ---

.............snip

> >
> > diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
> > index bec5baf..f27eb9a 100644
> > --- a/drivers/staging/vt6656/usbpipe.c
> > +++ b/drivers/staging/vt6656/usbpipe.c
> > @@ -101,9 +101,9 @@ void vnt_control_in_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 *data)
> >  static void vnt_start_interrupt_urb_complete(struct urb *urb)
> >  {
> >  	struct vnt_private *priv = urb->context;
> > -	int status;
> > +	int status = urb->status;
> >
> > -	switch (urb->status) {
> > +	switch (status) {
> >  	case 0:
> >  	case -ETIMEDOUT:
> >  		break;
> > @@ -116,8 +116,6 @@ static void vnt_start_interrupt_urb_complete(struct urb *urb)
> >  		break;
> >  	}
> >
> > -	status = urb->status;
> > -
> >  	if (status != STATUS_SUCCESS) {
> 
> Not related to this patch, but this test is very unlikeable.
> SUCCESS_STATUS is defined in the following (vt6656/device.h)
> 
> enum {
>         STATUS_SUCCESS = 0,
>         STATUS_FAILURE,
>         STATUS_RESOURCES,
>         STATUS_PENDING,
> };
> 
> This is not at all the same kind of value as -ETIMEDOUT, etc.  The urb
> status is something that is not set in this driver as well.  I guess is it
> set in the USB library, where STATUS_SUCCESS is not known.  So status
> should not be compared against this value.
> 
> julia
>
I see that a "successful" urb status is simply 0 and the failures
are standard E* statuses.  This is evident directly above in the
switch, and I confirmed it in drivers/usb code samples.

The STATUS_SUCCESS is used correctly elsewhere for NDIS status per it's
definition. 

I'll send a patch for this.

When I do a subsequent patch like this, should I send it as a reply
here in this email thread, or post a new message? I'm not sure if it
would get buried in here since Greg has already taken the first patch?

Thanks,
alison




.................snip

