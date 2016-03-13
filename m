X-GM-THRID: 6261344132026859520
X-Received: by 10.182.120.106 with SMTP id lb10mr13626407obb.24.1457842295181;
        Sat, 12 Mar 2016 20:11:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.2 with SMTP id g2ls1654680qgg.28.gmail; Sat, 12 Mar
 2016 20:11:34 -0800 (PST)
X-Received: by 10.140.153.14 with SMTP id 14mr12934136qhz.8.1457842294666;
        Sat, 12 Mar 2016 20:11:34 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id k13si852569ywe.1.2016.03.12.20.11.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 20:11:34 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id u110so129620673qge.3
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 20:11:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=86p5IrQJWgpluLRPFyWEozGOXt3GQXu6VtPQ16jFN+g=;
        b=OJ074z0yj5eLdgWJZ+Rj6Ti1qf3ZLm6drzmYj9KhdkvLjdO0yV5yUUC3zItOrVfhB/
         o8/MYkO//+Mk9mLrUFFciud5uajEcKKX+dD9ae4n/dMSQ3UXX4Xuqe1wIBzZUIwgZgAL
         BgE3iyyVLDHqqPX+vXDcbDie5cf9ZEZAK1kSYuMPgTNXe7sRAATCoolYDGA38xrGr605
         0v8FYb92xjhxCbkZQ+lnk1afvzQpBjgVws6f6ukdntjxqsBefoRn1uB5vG5jtcNKhbHz
         YzSuHhLd99ROxRQb8AWShkmwt5ob+QmB+m4LUuuVCFakr/dtqf69egNrYqmWLAydrS9N
         CvmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=86p5IrQJWgpluLRPFyWEozGOXt3GQXu6VtPQ16jFN+g=;
        b=H4FUcZ0B4wk0EZ2sVWoMm6c9uBFZiOVZU8x2pxMkx9Ip/oUrTKNLIB4mc+tHCnrgCU
         CTwxswGVZ4vyZv2ZA8yuL4Ja+/VfxbGUZrmFRuaiEzG8fGupPU9+nE55B5Zo0y7JubNa
         TdGyGDUwXebOO1wqCKDelq3RIzI2+BqKOB6bJlcZPyKOa7n4cQQFUYESVAvMDKHyO/UL
         pf/aDDFZLQ5Tr+XcNtgLS9lS4+cahHMqctHIXkC52G5eXq+4xb5VRGkxZ1nmr5SEJuMb
         Bk36im6Tq5sBgHfOOUie/ScPQglil41O4lth1MrE3BuyKg2h9iEm6UXFxvpyv1c99I/9
         WL7w==
X-Gm-Message-State: AD7BkJL6rAI7EvuVcoHOzKrK4Vrnm3WTgV7SFoXMiIKc20W2JHbsedwocqG4oi7WSdhGBA==
X-Received: by 10.140.99.69 with SMTP id p63mr21490319qge.97.1457842294293;
        Sat, 12 Mar 2016 20:11:34 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id p80sm7455334qge.0.2016.03.12.20.11.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 20:11:33 -0800 (PST)
Message-ID: <1457842288.12864.0.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: fixed spaces before
 and after "|" in dgnc_cls.c
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Date: Sun, 13 Mar 2016 01:11:28 -0300
In-Reply-To: <alpine.DEB.2.02.1603130440130.2069@localhost6.localdomain6>
References: <20160313013258.GA17143@spock>
	 <alpine.DEB.2.02.1603130440130.2069@localhost6.localdomain6>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

Em Dom, 2016-03-13 às 04:40 +0100, Julia Lawall escreveu:
> 
> On Sat, 12 Mar 2016, Juliana Rodrigues wrote:
> 
> > This patch fixes the following issue while maintains 80 characters
> per line:
> > 
> > CHECK: spaces preferred around that '|' (ctx:VxV)
> > +      
> writeb((UART_FCR_ENABLE_FIFO|UART_FCR_CLEAR_RCVR|UART_FCR_CLEAR_XMIT)
> ,
> > 
> > Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> > ---
> >  drivers/staging/dgnc/dgnc_cls.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/dgnc/dgnc_cls.c
> b/drivers/staging/dgnc/dgnc_cls.c
> > index 51db98b..6e1e475 100644
> > --- a/drivers/staging/dgnc/dgnc_cls.c
> > +++ b/drivers/staging/dgnc/dgnc_cls.c
> > @@ -1168,8 +1168,10 @@ static void cls_uart_init(struct channel_t
> *ch)
> >       /* Clear out UART and FIFO */
> >       readb(&ch->ch_cls_uart->txrx);
> >  
> >
> -     writeb((UART_FCR_ENABLE_FIFO|UART_FCR_CLEAR_RCVR|UART_FCR_CLEAR
> _XMIT),
> > -            &ch->ch_cls_uart->isr_fcr);
> > +     writeb((UART_FCR_ENABLE_FIFO |
> > +             UART_FCR_CLEAR_RCVR  |
> > +             UART_FCR_CLEAR_XMIT),
> 
> It doesn't fit on one line any more?  Note that the () around the
> first 
> argument are not necessary either, if that would help to get it to
> fit 
> into one line.
> 
> julia
> 
> > +             &ch->ch_cls_uart->isr_fcr);
> >       udelay(10);
> >  
> >       ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY |
> CH_TX_FIFO_LWM);
> > -- 
> > 2.7.2
> > 
> > -- 
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.
> com.
> > To view this discussion on the web visit https://groups.google.com/
> d/msgid/outreachy-kernel/20160313013258.GA17143%40spock.
> > For more options, visit https://groups.google.com/d/optout.
> > 

Thanks, Julia. I'll take a look. :)

