X-GM-THRID: 6749515623301120000
X-Received: by 2002:a17:906:cd11:: with SMTP id oz17mr13818048ejb.71.1571498248657;
        Sat, 19 Oct 2019 08:17:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:a3d7:: with SMTP id ca23ls2047410ejb.0.gmail; Sat,
 19 Oct 2019 08:17:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx7IVjhS7lacN9vdmcVNbBxy4HwAeBA4kZR+Z1rOD3+wyU3lK6E8Erx0ZH4cb18vF2oVo4U
X-Received: by 2002:a17:907:426f:: with SMTP id nx23mr14405978ejb.43.1571498247655;
        Sat, 19 Oct 2019 08:17:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571498247; cv=none;
        d=google.com; s=arc-20160816;
        b=XYInD5KBwce2UMV7IZZeX74zhoiYHb6H0eKuLmL2Il9o5uJB9AvPu1JvaxQ+T2pXVA
         vef1baN+Pb1jmTYItxydEXSF/OWsiOT6btkC/jNiXpsMXCKERGc71fhfxCqxJJ+1fcDH
         PXrmtOnATJR14R0bFa2l1Jo70qbG/PDJbbvY2hlYr83Yvrc6vM8yxQbYpN1C7s3IV4Xg
         xH0qSOvk08U5SeU06YCMwUAui7t8mI27qTfVdWie7dq2uOlxwFikyAW/vfRu/h7asuj/
         WXbz5evVwjWGoMw8h+Uum8CReDHWTIYR0DpF9H77ZSQJYIpQ1P6lwlfnvy/SKP3YQXIw
         8Vqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8WFtumw066F5ckdZl0OY0HJ41gVxjmYXTynWJGw4qiY=;
        b=qV0v4lZHDfnqnQZfo68i3woekl9wac8fZ/OHm+l+KkAG1Aah5C4aLA9DWSNWHiMNEs
         QADUrXPWJVAHQP8yLo7UtMaete/Tn6sjtq2okAL4Q/5+gNbrvsxO7aFunpUQI0R9r9ZG
         Lq7q0qDwQ8N/qIskuF61E9eLptQK7rYHSfNVKq1lz2FQfYwVYXkdGYYjmJQ24ItvRedC
         iKTBDndN9D33Tu+EljA9UbT82yQ9v/BH25GTl6aQTHi3tBE2g4E7pF+fxSNBBGp3MjHp
         N/8fYr+80V314lJ+UXFp3Eu+2t7jfWd7rV9SeISi9GKKTTrdpi9E0+IDK75a0oIZhBHi
         ux3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d11si427242edh.3.2019.10.19.08.17.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Oct 2019 08:17:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,316,1566856800"; 
   d="scan'208";a="323302512"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Oct 2019 17:17:25 +0200
Date: Sat, 19 Oct 2019 17:17:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: Dan Carpenter <dan.carpenter@oracle.com>, 
    outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org, 
    gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v1 1/5] staging: wfx: fix warnings
 of no space is necessary
In-Reply-To: <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
Message-ID: <alpine.DEB.2.21.1910191713480.3272@hadrien>
References: <20191019140719.2542-1-jbi.octave@gmail.com> <20191019140719.2542-2-jbi.octave@gmail.com> <20191019142443.GH24678@kadam> <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 19 Oct 2019, Jules Irenge wrote:

>
>
> On Sat, 19 Oct 2019, Dan Carpenter wrote:
>
> > On Sat, Oct 19, 2019 at 03:07:15PM +0100, Jules Irenge wrote:
> > > diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> > > index 3355183fc86c..573216b08042 100644
> > > --- a/drivers/staging/wfx/bh.c
> > > +++ b/drivers/staging/wfx/bh.c
> > > @@ -69,13 +69,13 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_len, int *is_cnf)
> > >  	if (wfx_data_read(wdev, skb->data, alloc_len))
> > >  		goto err;
> > >
> > > -	piggyback = le16_to_cpup((u16 *) (skb->data + alloc_len - 2));
> > > +	piggyback = le16_to_cpup((u16 *)(skb->data + alloc_len - 2));
> > >  	_trace_piggyback(piggyback, false);
> > >
> > > -	hif = (struct hif_msg *) skb->data;
> > > +	hif = (struct hif_msg *)skb->data;
> > >  	WARN(hif->encrypted & 0x1, "unsupported encryption type");
> > >  	if (hif->encrypted == 0x2) {
> > > -		if (wfx_sl_decode(wdev, (void *) hif)) {
> > > +		if (wfx_sl_decode(wdev, (void *)hif)) {
> >
> > In the future you may want to go through and remove the (void *) casts.
> > It's not required here.
> >
> > > diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
> > > index f65f7d75e731..effd07957753 100644
> > > --- a/drivers/staging/wfx/bus_spi.c
> > > +++ b/drivers/staging/wfx/bus_spi.c
> > > @@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned int addr,
> > >  	struct wfx_spi_priv *bus = priv;
> > >  	u16 regaddr = (addr << 12) | (count / 2);
> > >  	// FIXME: use a bounce buffer
> > > -	u16 *src16 = (void *) src;
> > > +	u16 *src16 = (void *)src;
> >
> > Here we are just getting rid of the constness.  Apparently we are doing
> > that so we can modify it without GCC pointing out the bug!!  I don't
> > know the code but this seems very wrong.
> >
> Checkpatch was complaining about  space between type cast and the
> variable. I just get rid of the space. Well I don't know whether this was
> false positive one.

I think you missed the point.  It would be good to trace through the core
and try to figure out where this src value comes from.  Is it really
const?  Or is the const declaration there just to satisfy the type
checker, and is the actual data provided not const.  This function is
stored in a hwbus_ops structure.  It would be good to see what other
drivers that store a function in the same field of such a structure do,
and to see where the function is actually called (via a function pointer)
and where the argument comes from.

julia

