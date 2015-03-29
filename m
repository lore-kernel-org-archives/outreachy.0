X-GM-THRID: 9654834823168
X-Received: by 10.153.8.171 with SMTP id dl11mr5289182lad.9.1427658018400;
        Sun, 29 Mar 2015 12:40:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.108 with SMTP id v12ls46667lal.44.gmail; Sun, 29 Mar
 2015 12:40:17 -0700 (PDT)
X-Received: by 10.112.148.10 with SMTP id to10mr7161418lbb.18.1427658017821;
        Sun, 29 Mar 2015 12:40:17 -0700 (PDT)
Return-Path: <marianne@masu.dk>
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com. [209.85.217.179])
        by gmr-mx.google.com with ESMTPS id xg8si553115lbb.0.2015.03.29.12.40.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 12:40:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of marianne@masu.dk designates 209.85.217.179 as permitted sender) client-ip=209.85.217.179;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of marianne@masu.dk designates 209.85.217.179 as permitted sender) smtp.mail=marianne@masu.dk
Received: by lbdc10 with SMTP id c10so40001419lbd.2
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 12:40:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=+lEo+5YfcAyKww43Cr0irik7N5EVw7MfrMhI1IIu2TI=;
        b=Mhf/ZhbN3qib1gnBnwAzgSi+14HuG+360drMFZ9jnPOnVj++bitfdeCj1dXjJHpJdL
         FACfXgvXTYfbW/6D/0jxwqwiXeg6V0Lw0QuNadCkq+axWQslSgxTar0r+9/ttYqM8lSb
         9jUXMfalHHZC9iKsFZrhYuyscOsAWiYp+qjqv4bKqpn4kKyuc8EZkCh7c6BZfXcyST9J
         XA+Tsubkmg26AsSyszJQn5VVssAVXp/LK6PAJYk+e+QWAnw9BvBNKPbt4wO2tmaTTejN
         yVZ08dJSoQrI4Q4CU/E+DgMQiBWfItP/qU63OSQkBaS0M6+64+OVfZV+J1w6unkA8FMm
         ES2Q==
X-Gm-Message-State: ALoCoQm0afiN4KmuDXMUopt9eXTGHW1RO4WvzblNpA7Lz5YZhoJ+ub8mg/G2VT4pHo0I+5icLNGZ
X-Received: by 10.112.242.8 with SMTP id wm8mr25611671lbc.69.1427658017612;
        Sun, 29 Mar 2015 12:40:17 -0700 (PDT)
Return-Path: <marianne@masu.dk>
Received: from debianvm (x1-6-20-4e-7f-5c-75-ca.cpe.webspeed.dk. [80.162.217.84])
        by mx.google.com with ESMTPSA id m8sm1634177laf.14.2015.03.29.12.40.16
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 12:40:16 -0700 (PDT)
Date: Sun, 29 Mar 2015 21:40:12 +0200
From: Marianne Moeller Knudsen <marianne@masu.dk>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Replace printk with
 pr_debug
Message-ID: <20150329194012.GA11849@debianvm>
References: <20150322200502.GA7693@debianvm>
 <20150323213038.GA26335@kroah.com>
 <alpine.DEB.2.02.1503240736230.2061@localhost6.localdomain6>
 <20150324094514.GA6378@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150324094514.GA6378@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Mar 24, 2015 at 10:45:14AM +0100, Greg KH wrote:
> On Tue, Mar 24, 2015 at 07:37:31AM +0100, Julia Lawall wrote:
> > 
> > 
> > On Mon, 23 Mar 2015, Greg KH wrote:
> > 
> > > On Sun, Mar 22, 2015 at 09:05:02PM +0100, Marianne Moeller Knudsen wrote:
> > > > Replace printk without loglevel with pr_debug. Issue found by
> > > > checkpatch.
> > > > 
> > > > Signed-off-by: Marianne Moeller Knudsen <marianne@masu.dk>
> > > > ---
> > > >  drivers/staging/sm750fb/ddk750_display.c |    2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
> > > > index c84196a..9f768a3 100644
> > > > --- a/drivers/staging/sm750fb/ddk750_display.c
> > > > +++ b/drivers/staging/sm750fb/ddk750_display.c
> > > > @@ -51,7 +51,7 @@ static void setDisplayControl(int ctrl,int dispState)
> > > >  				POKE32(PANEL_DISPLAY_CTRL, ulDisplayCtrlReg);
> > > >  			} while((PEEK32(PANEL_DISPLAY_CTRL) & ~ulReservedBits) !=
> > > >  					(ulDisplayCtrlReg & ~ulReservedBits));
> > > > -			printk("Set Panel Plane enbit:after tried %d times\n",cnt);
> > > > +			pr_debug("Set Panel Plane enbit:after tried %d times\n",cnt);
> > > 
> > > It's a driver, it should use dev_debug() instead please.
> > 
> > The @@ line shows that the function only has integer arguments.  Is it 
> > acceptable to add arguments just for debug messages?
> 
> Yes, it's talking to hardware, so we need to know the exact device that
> caused the message.  Random messages like this don't help anyone out as
> it doesn't describe the device, the file, the driver, or much of
> anything else :(
> 
> thanks,
> 
> greg k-h

I've tried to make some code changes in order to use dev_dbg instead by passing fb_info. Maybe I could get some comments/hints/omgwhathaveyoudone on it? and if so how should I post it?

Thank you.

