X-GM-THRID: 6391488130164195328
X-Received: by 10.13.194.199 with SMTP id e190mr2464723ywd.93.1488355358635;
        Wed, 01 Mar 2017 00:02:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.218 with SMTP id o87ls964429ioi.23.gmail; Wed, 01 Mar
 2017 00:02:37 -0800 (PST)
X-Received: by 10.99.152.85 with SMTP id l21mr365385pgo.66.1488355357840;
        Wed, 01 Mar 2017 00:02:37 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s64si530572pfk.0.2017.03.01.00.02.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 00:02:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 41AF2414;
	Wed,  1 Mar 2017 08:02:37 +0000 (UTC)
Date: Wed, 1 Mar 2017 09:02:28 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] staging: dgnc: replace udelay with usleep_range
Message-ID: <20170301080228.GA30910@kroah.com>
References: <20170227163445.GA4514@aishwarya>
 <20170228061838.GA8349@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170228061838.GA8349@aishwarya>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Feb 28, 2017 at 11:48:38AM +0530, Aishwarya Pant wrote:
> On Mon, Feb 27, 2017 at 10:04:45PM +0530, Aishwarya Pant wrote:
> > Fix checkpatch warning on dgnc_cls.c : CHECK usleep_range
> > is preferred over udelay. There is one ocurrence of udelay in
> > function cls_uart_init with non-atomic context that can be safely
> > replaced by usleep_range(t, t + delta) where delta is t (as t is
> > between 10 and 20 microseconds). Also replace usleep_range by udelay in
> > function cls_flush_uart_write as it is called under a channel lock.
> > 
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> > ---
> > Changes in v4:
> > 	- Fix commit message formatting
> > 
> > Changes in v3:
> > 	- Replace usleep_range by udelay in cls_flush_uart_write
> > 	- Fix diff in commit message
> > 
> > Changes in v2:
> > 	- Revert usage of usleep_range in atomic context
> > 	- Cleanup the commit message
> > 
> >  drivers/staging/dgnc/dgnc_cls.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> > index c20ffdd..7068c3b 100644
> > --- a/drivers/staging/dgnc/dgnc_cls.c
> > +++ b/drivers/staging/dgnc/dgnc_cls.c
> > @@ -609,7 +609,7 @@ static void cls_flush_uart_write(struct channel_t *ch)
> >  
> >  	writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT),
> >  	       &ch->ch_cls_uart->isr_fcr);
> > -	usleep_range(10, 20);
> > +	udelay(10);
> >  
> >  	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
> >  }
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
> 
> 
> Since delays are something I cannot test if it works well on all
> hardware, should I move on to some other cleanup and not tamper with
> delays?

Yes please.

