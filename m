X-GM-THRID: 6751912583325810688
X-Received: by 2002:a17:906:1542:: with SMTP id c2mr5356815ejd.80.1572382774641;
        Tue, 29 Oct 2019 13:59:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:d343:: with SMTP id m3ls1673415edr.9.gmail; Tue, 29 Oct
 2019 13:59:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz3Pv3u4KeLEMf3jAqhnLh050gAuy6m2gQCSifOE+iRUNroWpvQFJup3dP9se951FYoCQd8
X-Received: by 2002:aa7:d305:: with SMTP id p5mr28714883edq.80.1572382773786;
        Tue, 29 Oct 2019 13:59:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572382773; cv=none;
        d=google.com; s=arc-20160816;
        b=RWLmLr5J9/0eb7Burvobj2kGIMrGRmN2gxMLicf1KNAdjbyQWsuKd+E7mbGmjDmTa9
         HDh8a6SKoRCrJV0tiS0/vgd7yod5NNZi6h5xU+6DlI0fQFoMAKVuOc2EnlR4/D7VSBCj
         l3ZGczns6CzxSr431C58lYeFJCqCzFWNgrbHs/Kn0h8H6ydvRA38/bst8TnOCfdv6W/x
         U/UvJ0IyUcfDSVB9M+HS5JD4Z88RFiZoHuGyz0S7AhOZFqaFpNaZbJ9USFutFUtu9mES
         XV1kPnZvDYl8JCWCeUOOFhnp4LNuABgWdi8zJe9eSmrF+dujStw/ijZR7qfgK9gra2Ss
         JRFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=PmRLH+70K7gje9/MVrb/2yQWom0RB1bivJyTd8fn5yM=;
        b=a4S6fJ+Q8AespMB8IRbKhZC3w8V5wXPzykySz+N3u7lr4SFpHKNOUtXhNUzBfjVvHN
         LOcJRoR9hYjAOS+J/R/klj/Tjs1DgRafL6guzf5ib0nGNK5sl0Cdj6Rm7Xzl36zsBDzS
         DRqU6rB7dxETFqieJHjLu0+NwxpqWultm4V7yJnuQLlN0fpwqxHOW9R4gvtuj8c54Ptz
         KMtoiTltHMafyiNAA7aIbF9hcoC50OGQqd6wOW7FulzCuCPbQQLlPP2p0SLtxEp2Dwl5
         kUGjaz9uNVuoSKfXUUOEUwpYvN3mf772e0Hk1ep3gB8yzVwhHssZ5VNS2FjnnRCWv4cH
         46Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q17si15269edi.1.2019.10.29.13.59.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 13:59:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,245,1569276000"; 
   d="scan'208";a="325050680"
Received: from ppp-seco11pareq2-46-193-149-47.wb.wifirst.net (HELO hadrien) ([46.193.149.47])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Oct 2019 21:59:32 +0100
Date: Tue, 29 Oct 2019 21:59:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    Dan Carpenter <dan.carpenter@oracle.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3 1/2] staging: rtl8712: Fix
 Alignment of open parenthesis
In-Reply-To: <20191029202157.GA2188@cristiane-Inspiron-5420>
Message-ID: <alpine.DEB.2.21.1910292159170.2199@hadrien>
References: <cover.1572273794.git.cristianenavescardoso09@gmail.com> <158960d90adff42169bb7ce968a4082bf3e73387.1572273794.git.cristianenavescardoso09@gmail.com> <20191028190259.GF1944@kadam> <20191028212137.GC2311@cristiane-Inspiron-5420>
 <20191029080554.GA506924@kroah.com> <20191029081501.GA549977@kroah.com> <20191029202157.GA2188@cristiane-Inspiron-5420>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 29 Oct 2019, Cristiane Naves wrote:

> On Tue, Oct 29, 2019 at 09:15:01AM +0100, Greg KH wrote:
> > On Tue, Oct 29, 2019 at 09:05:54AM +0100, Greg KH wrote:
> > > On Mon, Oct 28, 2019 at 06:21:37PM -0300, Cristiane Naves wrote:
> > > > On Mon, Oct 28, 2019 at 10:02:59PM +0300, Dan Carpenter wrote:
> > > > > On Mon, Oct 28, 2019 at 12:15:52PM -0300, Cristiane Naves wrote:
> > > > > > Fix alignment should match open parenthesis. Issue found by checkpatch.
> > > > > >
> > > > > > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > > > > > ---
> > > > > >  drivers/staging/rtl8712/rtl8712_recv.c | 36 +++++++++++++++++-----------------
> > > > > >  1 file changed, 18 insertions(+), 18 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > > index af12c16..304d031 100644
> > > > > > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > > @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
> > > > > >  		precvbuf->ref_cnt = 0;
> > > > > >  		precvbuf->adapter = padapter;
> > > > > >  		list_add_tail(&precvbuf->list,
> > > > > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > > > > +			      (&precvpriv->free_recv_buf_queue.queue));
> > > > >
> > > > > You did this correctly in v2.
> > > > >
> > > > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > > > +			      &precvpriv->free_recv_buf_queue.queue);
> > > > >
> > > > > >  		precvbuf++;
> > > > > >  	}
> > > > > >  	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
> > > > > >  	tasklet_init(&precvpriv->recv_tasklet,
> > > > >
> > > > > regards,
> > > > > dan carpenter
> > > > >
> > > > I wondered if it was better to use parentheses or not. Is it necessary
> > > > to send a new v5 version containing this change or it's possible to get it from
> > > > v2?
> > >
> > > Send a follow-on patch to fix this up please as your other one is in my
> > > tree now I think.
> >
> > Or maybe it isn't in my tree, I have no idea, I can't remember.  YOu
> > know if it is applied or not as you will get an email when it happens.
> >
> > thanks,
> >
> > greg k-h
>
> I received an email with the subject patch "staging: rtl8712: Remove
> lines before a close brace" added to staging-next on October 27th. Is
> this the confirmation email when a patch is accepted or is there any
> other email?

No, that means it's good.

julia

>
> thanks,
>
> Cristiane Naves
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191029202157.GA2188%40cristiane-Inspiron-5420.
>

