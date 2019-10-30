X-GM-THRID: 6751912583325810688
X-Received: by 2002:a50:aad2:: with SMTP id r18mr30308206edc.44.1572415102103;
        Tue, 29 Oct 2019 22:58:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:7e49:: with SMTP id z9ls5461682ejr.1.gmail; Tue, 29
 Oct 2019 22:58:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyNdREbFAXVazaiL7qexxEI1bu9CxVSMC5bMdWohjbcK6xGmaP+IiiiJSFjV7HDf0uKnm/p
X-Received: by 2002:a17:906:eda2:: with SMTP id sa2mr7022848ejb.14.1572415101253;
        Tue, 29 Oct 2019 22:58:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572415101; cv=none;
        d=google.com; s=arc-20160816;
        b=YphgUM26V/XaqjtuK1e0Qd+/p3RuGvK8IlTi8y+bh3wbT3cZRvv8sPnXpWVholGFg6
         blIZOy8uq+ntW6Dzy8tdKk/mDiY4GIBWlvsK106ryrP7lF431orRVVUJc4iHEl4PxiY1
         J/kAYdUf3U9wzVc68EjMHntxUYgntD2YCkzKKUsh2RZ6ZMY7oZTHDxDegvhqV5Qm1d6G
         wvlv0fcL8ENwffdGab98q7PA8pYuwy7WYphzJgW1cMt7k7UQ45t8oZvdXBS9HpTW8sZn
         7q3jyg7ZrOi+J3Gd6haa8tpYDbCgSmdwZh578eBR+9f522SOZR8Iq7c5JqO74bQbLron
         kvrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=KIOq6O3aIeJFSGmu1HqwzcedfqxIEjcioCF+kVsSb2E=;
        b=tFmxEsozbPh5m0bf1Ho3+uU+f1GfE+m8SpURwx1kNs8xTCGP5vFQO0mpFIKPWP6cI8
         QXxoy9xFv4VNvnz3d3cJBnFhnvFcDkjcPjp4OiPQITrC4SWfHBsmuthLUNBu5E/q94X0
         VNxgqKAn2xvktikWLGX96pYWQ5wRJfducen2Ap5To/jWHZRkcM4y1LZq/mJIlECR3qD2
         +IWUTMBTwrXtjF/AL9+HUj8wDDyvw91Xuba1u3e3BqaZxmqzWbl8yDoaYObWAr+GmjNl
         wDbJoqnPvO15yzuL5GPBRaZBvaIlPLYCSM+IqzhzFTaiP74Tgc9rbAoSSV80qkHDStDM
         jUwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z18si42331edd.5.2019.10.29.22.58.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 22:58:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,246,1569276000"; 
   d="scan'208";a="409576030"
Received: from ppp-seco11pareq2-46-193-149-47.wb.wifirst.net (HELO hadrien) ([46.193.149.47])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Oct 2019 06:58:05 +0100
Date: Wed, 30 Oct 2019 06:58:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    Dan Carpenter <dan.carpenter@oracle.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3 1/2] staging: rtl8712: Fix
 Alignment of open parenthesis
In-Reply-To: <20191029210642.GA14913@cristiane-Inspiron-5420>
Message-ID: <alpine.DEB.2.21.1910300657461.2471@hadrien>
References: <cover.1572273794.git.cristianenavescardoso09@gmail.com> <158960d90adff42169bb7ce968a4082bf3e73387.1572273794.git.cristianenavescardoso09@gmail.com> <20191028190259.GF1944@kadam> <20191028212137.GC2311@cristiane-Inspiron-5420>
 <20191029080554.GA506924@kroah.com> <20191029081501.GA549977@kroah.com> <20191029202157.GA2188@cristiane-Inspiron-5420> <alpine.DEB.2.21.1910292159170.2199@hadrien> <20191029210642.GA14913@cristiane-Inspiron-5420>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 29 Oct 2019, Cristiane Naves wrote:

> On Tue, Oct 29, 2019 at 09:59:31PM +0100, Julia Lawall wrote:
> >
> >
> > On Tue, 29 Oct 2019, Cristiane Naves wrote:
> >
> > > On Tue, Oct 29, 2019 at 09:15:01AM +0100, Greg KH wrote:
> > > > On Tue, Oct 29, 2019 at 09:05:54AM +0100, Greg KH wrote:
> > > > > On Mon, Oct 28, 2019 at 06:21:37PM -0300, Cristiane Naves wrote:
> > > > > > On Mon, Oct 28, 2019 at 10:02:59PM +0300, Dan Carpenter wrote:
> > > > > > > On Mon, Oct 28, 2019 at 12:15:52PM -0300, Cristiane Naves wrote:
> > > > > > > > Fix alignment should match open parenthesis. Issue found by checkpatch.
> > > > > > > >
> > > > > > > > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > > > > > > > ---
> > > > > > > >  drivers/staging/rtl8712/rtl8712_recv.c | 36 +++++++++++++++++-----------------
> > > > > > > >  1 file changed, 18 insertions(+), 18 deletions(-)
> > > > > > > >
> > > > > > > > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > > > > index af12c16..304d031 100644
> > > > > > > > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > > > > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > > > > @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
> > > > > > > >  		precvbuf->ref_cnt = 0;
> > > > > > > >  		precvbuf->adapter = padapter;
> > > > > > > >  		list_add_tail(&precvbuf->list,
> > > > > > > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > > > > > > +			      (&precvpriv->free_recv_buf_queue.queue));
> > > > > > >
> > > > > > > You did this correctly in v2.
> > > > > > >
> > > > > > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > > > > > +			      &precvpriv->free_recv_buf_queue.queue);
> > > > > > >
> > > > > > > >  		precvbuf++;
> > > > > > > >  	}
> > > > > > > >  	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
> > > > > > > >  	tasklet_init(&precvpriv->recv_tasklet,
> > > > > > >
> > > > > > > regards,
> > > > > > > dan carpenter
> > > > > > >
> > > > > > I wondered if it was better to use parentheses or not. Is it necessary
> > > > > > to send a new v5 version containing this change or it's possible to get it from
> > > > > > v2?
> > > > >
> > > > > Send a follow-on patch to fix this up please as your other one is in my
> > > > > tree now I think.
> > > >
> > > > Or maybe it isn't in my tree, I have no idea, I can't remember.  YOu
> > > > know if it is applied or not as you will get an email when it happens.
> > > >
> > > > thanks,
> > > >
> > > > greg k-h
> > >
> > > I received an email with the subject patch "staging: rtl8712: Remove
> > > lines before a close brace" added to staging-next on October 27th. Is
> > > this the confirmation email when a patch is accepted or is there any
> > > other email?
> >
> > No, that means it's good.
> >
> > julia
> >
> So when do I know if a patch has been accepted or not? Is When An
> Acked-By Is Placed?

No, when you get the mail from Greg.

julia

> > >
> > > thanks,
> > >
> > > Cristiane Naves
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191029202157.GA2188%40cristiane-Inspiron-5420.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191029210642.GA14913%40cristiane-Inspiron-5420.
>

