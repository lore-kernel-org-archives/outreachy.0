X-GM-THRID: 6261406154981638144
X-Received: by 10.66.246.170 with SMTP id xx10mr12997182pac.13.1457847613099;
        Sat, 12 Mar 2016 21:40:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.5 with SMTP id s5ls3563116qgs.19.gmail; Sat, 12 Mar
 2016 21:40:12 -0800 (PST)
X-Received: by 10.140.89.10 with SMTP id u10mr13450269qgd.24.1457847612428;
        Sat, 12 Mar 2016 21:40:12 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x235.google.com (mail-qk0-x235.google.com. [2607:f8b0:400d:c09::235])
        by gmr-mx.google.com with ESMTPS id s129si1120774ywb.5.2016.03.12.21.40.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 21:40:12 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) client-ip=2607:f8b0:400d:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x235.google.com with SMTP id s5so63561818qkd.0
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 21:40:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BPp/9y9ngB0nJ/x+1qcLr657hKDdCDcICF63RMSv7XE=;
        b=mgjqKlbJrRmjOUUoXcE/bR/KVaC38iLWvCGhmsoDX48QSQ4DciCmW+MuTYpixq0pgE
         keQ/UaGwDxzqnkbWIjzvgKFnbFuRlgy2Mqo1xn8sGBGO/u7nIb3LniFEx0OT0nHG472J
         GSIxtCnyKyIxaRE5wsxhdSqApQ4tY6M7swsnXmutEGrCeSI6VuArEqx+LtLUp9u8JDZQ
         0/k4g4M3f7bLBnzGHXd7JgCeS6f3oW+8TDGXdr9KpZmpz13bSsr5PhtP5A55ECSGt+38
         qIdzlrhhY8Drkyy39WSqpcmzTs/tOOzcFPU0QvPiqtSCtrdOvrBy5pUyZbEYgn3bgw9p
         GCfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BPp/9y9ngB0nJ/x+1qcLr657hKDdCDcICF63RMSv7XE=;
        b=COE8+N/0hpOm2dkleS+ZMEYV8pOv5Znrhks/S8Qd5Crsc+lYX6vscD0b6ZPMi+f7Tm
         s8Yj5pXlQve8sRjbdhAjyOctuWNVF1NJwa2GZpW5BK+RwdvNusbBLmtDwACXb9k1hd2o
         41dBb3YseIJp59CroB/9fvgSYE8KOvHquuSQ8RNwi+fdnzu395YAjJ84ZLq88G2kj5ns
         YGucDbF45xQT0UAlzIgZe8ASxqO53CBtmDL9yjkfvERG/yS4IqrsyiJe55P8H7IDiE0i
         2BLNsBZD/QizEDE2tGSyt0GQcKt9gpG8p/b4Cu1Mpmoze+3wrErGikaFLwaGAI6OT1K+
         tvxg==
X-Gm-Message-State: AD7BkJLQe9UPuebc2nXPdM0h3x4plI9LUUb/wxQZcy2iM3McpCxrdkCcbodxvwas6vWpyw==
X-Received: by 10.55.217.17 with SMTP id u17mr22060065qki.108.1457847612116;
        Sat, 12 Mar 2016 21:40:12 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id w188sm7511177qhb.37.2016.03.12.21.40.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 21:40:11 -0800 (PST)
Message-ID: <1457847605.12864.3.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: dgnc: fixed spaces
 before and after "|"
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Date: Sun, 13 Mar 2016 02:40:05 -0300
In-Reply-To: <alpine.DEB.2.02.1603130632380.2069@localhost6.localdomain6>
References: <20160313052049.GA12145@spock>
	 <alpine.DEB.2.02.1603130632380.2069@localhost6.localdomain6>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

Em Dom, 2016-03-13 às 06:33 +0100, Julia Lawall escreveu:
> On Sun, 13 Mar 2016, Juliana Rodrigues wrote:
> 
> > This patch fixes the following issue while mantains
> > 80 character per line limit by removing
> > unnecessary parenthesis.
> > 
> > CHECK: spaces preferred around that '|' (ctx:VxV)
> > +      
> writeb((UART_FCR_ENABLE_FIFO|UART_FCR_CLEAR_RCVR|UART_FCR_CLEAR_XMIT)
> ,
> > 
> > Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> > ---
> > Changes on v2:
> >    - Removed file name from subject line
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
> So it couldn't fit on one line?  Or not even on two lines?

Actually, I forgot to add the changes into this patch, sorry.
I sent a new one to fix this.

> 
> > +             &ch->ch_cls_uart->isr_fcr);
> 
> This line should not have been affected by the patch.  It has been 
> indented by one more space to make it look like it is part of the |
> rather 
> than an argument of writeb.
> 
> julia
> 
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
> d/msgid/outreachy-kernel/20160313052049.GA12145%40spock.
> > For more options, visit https://groups.google.com/d/optout.
> > 

