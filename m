X-GM-THRID: 6391488130164195328
X-Received: by 10.107.137.27 with SMTP id l27mr5491406iod.76.1488196313108;
        Mon, 27 Feb 2017 03:51:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.81.210 with SMTP id s201ls2085993ita.18.gmail; Mon, 27 Feb
 2017 03:51:52 -0800 (PST)
X-Received: by 10.107.189.130 with SMTP id n124mr5854923iof.0.1488196312314;
        Mon, 27 Feb 2017 03:51:52 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si3268493pfd.3.2017.02.27.03.51.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 03:51:52 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id x17so785615pgi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 03:51:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=J0sOZa52lzef7sHz3QUeDGEqfdPdu9nhMuQIGCRR8uA=;
        b=IMg8yxg2HQ3j9eGtr/kKyfIGWZpi2pUcd4+wwbHuBrmeoQZ98SSGxLHzp5R5npwRfX
         o61TakIiHQSYlXhgKLbD4x/w9GWVS7/jtAvWzmYq0/57O1h9iDiGWTELbOBqvDU8753V
         b37TZTU9xOhWhNUekHj8E4zUiUVJ9dwldZnQq+p23YKePesF/5wYwF/sMQL6Ot1Ma2fI
         UdLLK1HLzbLDiNu+F6DFBG8mP1oIZQj/aEoePvwpChdMW6XsJRfT5Ap78kNS1EIKQjse
         p8KA9f86xDzOgpk5IxRXy+Z0kMMHB/h3owjXxvjFqL0HpT0Qt8liS6WJpDEJskOI1z5Z
         Y0Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=J0sOZa52lzef7sHz3QUeDGEqfdPdu9nhMuQIGCRR8uA=;
        b=tnR6PhSDqTKZCmuWT7P8/eBqSpgDAtT+zmB6HBf1OfCog3nNFaYR3jjS7k0jAwfutT
         +r9STsUp/hvS5Tg22jAWPk32T21ypoapFKgDC94zGSqgCsg5IpMo7TAs9+oi6hUSa1J5
         jUSlKgI0fak3QnOWcR+ydua2l4XQnabSeID6X3StD9B4POSJwpQvxGCrhU0MgE0VYI5D
         V606GbBT7A1n9dLjNK1YuhkWSzDQ9b3+KpuWktPI60TzdHnHR++ozu6HHpd6Ufv3RfJO
         5tL9mgacAu/ONQGwRNR7qIw8rJIYA8dS76kz91OSZ+c2GGrOGypzOWUxYPwmpl8qww0j
         hJ2A==
X-Gm-Message-State: AMke39njUQUfa2qEdoA7SRgVyuYvlMpUjq0aUrdBbq6Ah+oAIxaHEGEo64VQcLkLfGR1Yg==
X-Received: by 10.99.147.16 with SMTP id b16mr20697318pge.126.1488196311889;
        Mon, 27 Feb 2017 03:51:51 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.9])
        by smtp.gmail.com with ESMTPSA id a24sm30317818pfh.33.2017.02.27.03.51.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 03:51:51 -0800 (PST)
Date: Mon, 27 Feb 2017 17:16:37 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: replace udelay with
 usleep_range
Message-ID: <20170227114637.GA2158@aishwarya>
References: <20170226183806.GA3498@aishwarya>
 <alpine.DEB.2.20.1702262000560.2056@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1702262000560.2056@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 26, 2017 at 08:02:56PM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 27 Feb 2017, Aishwarya Pant wrote:
> 
> > Adding first patch for checkpatch warning on dgnc_cls.c -
> 
> What do you mean by "Adding first patch"?
> 
> Actually, commit messages should be written in the imperative (as you have
> for the subject line), and should describe what you do and why.
> 
> > CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.txt
> 
> Also commit messages should be limited to around 70 characters or so per
> line.
> 
> How did you choose 20 as the upper bound?
> 
> julia
>

From what I've read of `udelay` and `usleep_range` from the
documentation, this is what I understand:

udelay(t) initiates a busy-wait loop. This means it's taking up CPU
execution cycles to do work. Useful for atomic transactions as we'd like
to prevent other processes from doing work. Because it depends on CPU
frequency, the delay is sometimes more than t microseconds.

To sleep for precisely t microseconds without depending on CPU
frequency, we utilise hrtimers (high resolution timers), which are
implemented as callbacks. No CPU cycles are spent, a notification
(interrupt) is received when delay period is over. 
It is possible to use usleep_range(t, t) for precision, but if we use
this pattern throughout too many interrupts will be triggered - a big
overhead. If the range is sufficiently large, one optimisation the
kernel can make is to coalesce wakeups for efficiency. We should use
usleep_range as usleep_range(t, t + delta). A safe choice for delta is t
, so we have - usleep_range(t, 2*t)
(Another recommendation is that t lie between 10 and 20 microseconds, so
the choice of delta seems safe).

In the end, usleep_range is precise within a defined window of
(LOWER_LIMIT, UPPER_LIMIT)

I have a couple of questions about usleep_range  -

-- What are the other wake-ups that we can coalesce (any example)? 

-- "The larger a range you supply, the greater a chance that you will
not trigger an interrupt." Our goal is to trigger an interrupt, so that
we can end delay. How is end delay handled then?

-- 
Cheers 
Aishwarya Pant

> >
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> > ---
> >  drivers/staging/dgnc/dgnc_cls.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> > index c20ffdd..2cf146e 100644
> > --- a/drivers/staging/dgnc/dgnc_cls.c
> > +++ b/drivers/staging/dgnc/dgnc_cls.c
> > @@ -16,7 +16,7 @@
> >  #include <linux/kernel.h>
> >  #include <linux/sched.h>	/* For jiffies, task states */
> >  #include <linux/interrupt.h>	/* For tasklet and interrupt structs/defines */
> > -#include <linux/delay.h>	/* For udelay */
> > +#include <linux/delay.h>	/* For usleep_range */
> >  #include <linux/io.h>		/* For read[bwl]/write[bwl] */
> >  #include <linux/serial.h>	/* For struct async_serial */
> >  #include <linux/serial_reg.h>	/* For the various UART offsets */
> > @@ -409,7 +409,7 @@ static void cls_assert_modem_signals(struct channel_t *ch)
> >  	writeb(out, &ch->ch_cls_uart->mcr);
> >
> >  	/* Give time for the UART to actually drop the signals */
> > -	udelay(10);
> > +	usleep_range(10, 20);
> >  }
> >
> >  static void cls_copy_data_from_queue_to_uart(struct channel_t *ch)
> > @@ -631,7 +631,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
> >  	 * Presumably, this is a bug in this UART.
> >  	 */
> >
> > -	udelay(10);
> > +	usleep_range(10, 20);
> >  }
> >
> >  /*
> > @@ -1096,7 +1096,7 @@ static void cls_uart_init(struct channel_t *ch)
> >
> >  	writeb(UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
> >  	       &ch->ch_cls_uart->isr_fcr);
> > -	udelay(10);
> > +	usleep_range(10, 20);
> >
> >  	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170226183806.GA3498%40aishwarya.
> > For more options, visit https://groups.google.com/d/optout.
> >

