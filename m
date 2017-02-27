X-GM-THRID: 6391488130164195328
X-Received: by 10.129.95.133 with SMTP id t127mr6691238ywb.94.1488207295596;
        Mon, 27 Feb 2017 06:54:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.34 with SMTP id h31ls11715670ote.3.gmail; Mon, 27 Feb
 2017 06:54:55 -0800 (PST)
X-Received: by 10.157.10.10 with SMTP id 10mr3934196otg.75.1488207295259;
        Mon, 27 Feb 2017 06:54:55 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id h79si471108pfh.2.2017.02.27.06.54.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 06:54:55 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id x17so1283534pgi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 06:54:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=B2XD0ioZAygvrRFCOISproN56FBLYKIvN287bp6R/hI=;
        b=EjN9fxI/VCTG/dLXnSdoWyFoktJqG30OzeaIHw8Xii3tQNhSp7KWbVygXBdyRLR0mn
         glTkecRVvr2Zn9gDJU0o7i67Zdp1JkeDhBtJC8dDXTGPB1equzd1r9/RSwdFERiy2tcm
         4aCBN6JXaNGm4SUQVfKNv+AVCFTf0FXRb+aui2RPB/p9Zjs8pfjs7WbmhfqGobh0KnEx
         SdlpKTilGf+68adQjW8U6r0n5lPnokJLCzJIA5+RoPEGutzl0Qz0i6GjXsnhuMtmtBwo
         n/4gt2AJy28C2R67TxfrzEkNONUtVyuWrNwmfDwUN3q8wFxPcgCQauhGcktLwkE2S6js
         mGOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=B2XD0ioZAygvrRFCOISproN56FBLYKIvN287bp6R/hI=;
        b=nIs6TW94NeLvO0Fgd4HAqCstCzd/4VOi4OJ25dz7Pq0OE1LEovVpVLkHzA39KBKMRh
         +EG5Ip41y2OGFbn4uscxXA+AjBOduZE0WN7wKe60i8shVkACTYCr8t0lXmVV7St25g5e
         ZLAsdY/PNXW3oMl7/qxIHw3LWQReS4qOQ1ms7BUgWnR4nxbOFirS9vOiIdFmqNWoxPa7
         hQBWf4FtOIEGJ4oSD4rXoH09X8J9bxAFblPt/ojX2oPimEQfWHwBktqYWZYWgifCgINB
         QEbfZbl7pUZUPANRD5RwPQg+DRpPKKjfg78RGBvhterjCkA4mF1uAr9BX5eIRtPVfnxn
         Vw0Q==
X-Gm-Message-State: AMke39kmWnUxta/DORobAnmcWHWHipHmEbr6wFoUgrydCDCHUtY6bBJjLeBRAaWk/dtm/Q==
X-Received: by 10.84.232.129 with SMTP id i1mr24893225plk.129.1488207294936;
        Mon, 27 Feb 2017 06:54:54 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id y16sm25451440pfk.52.2017.02.27.06.54.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 06:54:54 -0800 (PST)
Date: Mon, 27 Feb 2017 20:24:50 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: dgnc: replace udelay with usleep_range
Message-ID: <20170227145450.GA3370@aishwarya>
References: <20170227124633.GA3008@aishwarya>
 <20170227143832.GA14933@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170227143832.GA14933@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 27, 2017 at 03:38:32PM +0100, Greg Kroah-Hartman wrote:
> On Mon, Feb 27, 2017 at 06:16:33PM +0530, Aishwarya Pant wrote:
> > Fix checkpatch warning on dgnc_cls.c : CHECK usleep_range
> > is preferred over udelay. There are two ocurrences of udelay
> > in non-atomic context that can be safely replaced by
> > usleep_range(t, t + delta). Pick delta as t (as t is between
> > 10 and 20 microseconds).
> > 
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> > ---
> > Changes in v2:
> > 	- Revert usage of usleep_range in atomic context
> > 	- Clean-up the commit message
> > ---
> >  drivers/staging/dgnc/dgnc_cls.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> > index 2cf146e..368c6ba 100644
> > --- a/drivers/staging/dgnc/dgnc_cls.c
> > +++ b/drivers/staging/dgnc/dgnc_cls.c
> > @@ -16,7 +16,7 @@
> >  #include <linux/kernel.h>
> >  #include <linux/sched.h>	/* For jiffies, task states */
> >  #include <linux/interrupt.h>	/* For tasklet and interrupt structs/defines */
> > -#include <linux/delay.h>	/* For usleep_range */
> > +#include <linux/delay.h>	/* For udelay and usleep_range */
> >  #include <linux/io.h>		/* For read[bwl]/write[bwl] */
> >  #include <linux/serial.h>	/* For struct async_serial */
> >  #include <linux/serial_reg.h>	/* For the various UART offsets */
> > @@ -609,7 +609,7 @@ static void cls_flush_uart_write(struct channel_t *ch)
> >  
> >  	writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT),
> >  	       &ch->ch_cls_uart->isr_fcr);
> > -	usleep_range(10, 20);
> > +	udelay(10);
> >  
> >  	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
> >  }
> > @@ -631,7 +631,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
> >  	 * Presumably, this is a bug in this UART.
> >  	 */
> >  
> > -	usleep_range(10, 20);
> > +	udelay(10);
> >  }
> >  
> >  /*
> 
> Your patch seems to be backwards :(

Ah this is the diff between patch v1 and patch v2. I'll send in the
correct one shortly.


