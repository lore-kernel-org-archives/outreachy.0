X-GM-THRID: 6391853165907542016
X-Received: by 10.200.38.37 with SMTP id u34mr2213736qtu.43.1488366778016;
        Wed, 01 Mar 2017 03:12:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.47.2 with SMTP id j2ls3631404itj.20.canary-gmail; Wed, 01
 Mar 2017 03:12:57 -0800 (PST)
X-Received: by 10.99.143.77 with SMTP id r13mr2379097pgn.5.1488366777136;
        Wed, 01 Mar 2017 03:12:57 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id h130si598653pfe.1.2017.03.01.03.12.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 03:12:57 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id x17so5530919pgi.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 03:12:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KJ2D8M1o+Q0zaQW/aLmntuBlouxBLUV0vY7748ceSKY=;
        b=qOsgSvUke/FHfchEGjwiYb3s6ySWWzl3ghHF3DEn/lvXodGtVXV0RDgubLAVZnBnJQ
         CSOF1trrJCDxcGu11mSnZh7sNSIvf4/EHkTioP5/4IkMEHz28JY6Vm3Ykp/A7HALBLUj
         19Ox3q0cWQ4pYp33177iJPcFi0XATQ8l88p9CfnIg/wJPvqMIOoLV2VILA6ix/QS+hfW
         IfAW/kbn65jHDuN/lVF8ViEOHf6+HqbZ4YYO7A6qR2IXgfmZ06Sf0LLQNh/OULnT8zob
         WSYNCgqzcuTYe19a0A3mIydisbpxCltakCtcpEcI1dBzCywR4N9QxVUTCLJWpJMKhpHT
         UPqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KJ2D8M1o+Q0zaQW/aLmntuBlouxBLUV0vY7748ceSKY=;
        b=q2QSAXgFAk4K7mmLf2zFFej67WUdpxEkDtuni6R6ED6PdjmKpFGyG7ZMWds78WygSg
         eGEOt4ZTmVpPQ9+gRzTBfa89JFIYN+IljXWFyMk5aUSVvfgqGz8P9SnX0qyUOfkoHEhu
         bjgzQKzuproQNW9VKazpXLYyij6Q20h8P6l4/RUhP4d+Q4ianGUIfsy9j+kVfgRMnC9p
         d02mlTau65cFiAot5oMQHFRvp6w4fvEwrt5e8An5L1PDp0IUF2+4nvq6RhFBMTRZcTmK
         kSFDqLFABH0Zm11d78oi+RBO7AkUW95xMp3j1d+rmGIZlCaQNRKRHcYkPJWu9nGfNyFO
         /aZA==
X-Gm-Message-State: AMke39lyky3O7RCQHGFxxYTqT7Bazpa98ehzsv8BVPXtLNRqRnVCBC6/4cRXbhpY0qosgg==
X-Received: by 10.98.13.16 with SMTP id v16mr7977696pfi.38.1488366776861;
        Wed, 01 Mar 2017 03:12:56 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.11])
        by smtp.gmail.com with ESMTPSA id t22sm9895957pfa.114.2017.03.01.03.12.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 03:12:56 -0800 (PST)
Date: Wed, 1 Mar 2017 16:42:51 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: dgnc: replace
 usleep_range with udelay
Message-ID: <20170301111251.GA2160@aishwarya>
References: <20170301103315.GA4448@aishwarya>
 <alpine.DEB.2.20.1703011154490.3941@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703011154490.3941@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Mar 01, 2017 at 11:56:18AM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 1 Mar 2017, Aishwarya Pant wrote:
> 
> > udelay is impelmented using a busy-wait loop and consumes CPU cycles
> > while usleep_range is implemented using interrupts.cls_flush_uart_write()
> > is called after a channel lock is acquired i.e. an atomic context.
> > Hence delay in this method should use udelay instead of usleep_range.
> >
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> >
> > ---
> > Changes in v3:
> > 	- Add a comment in code udelay to ignore checkpatch warning
> > Changes in v2:
> > 	- Edit commit message to explain why udelay should be used
> >
> >  drivers/staging/dgnc/dgnc_cls.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> > index 28a3e16..ec190e5 100644
> > --- a/drivers/staging/dgnc/dgnc_cls.c
> > +++ b/drivers/staging/dgnc/dgnc_cls.c
> > @@ -609,7 +609,11 @@ static void cls_flush_uart_write(struct channel_t *ch)
> >
> >  	writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT),
> >  	       &ch->ch_cls_uart->isr_fcr);
> > -	usleep_range(10, 20);
> > +
> > +	/* Ignore checkpatch warning to replace udelay by usleep_range
> > +	 * as this function is called under an atomic context
> > +	 */
> > +	udelay(10);
> 
> I think this doesn't follow the proper block comment format?
>
 
I looked through the coding style docs and found the correct format 
for multi-line comments-
/*
 * Some comments spanning over
 * multiple lines
 */

What is convention for single line comments?

> Anyway, perhaps something like "called in atomic context so usleep_range
> not used" would be sufficient.
> 
> julia
> 
> >
> >  	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
> >  }
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170301103315.GA4448%40aishwarya.
> > For more options, visit https://groups.google.com/d/optout.
> >

