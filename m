X-GM-THRID: 6257098330259587072
X-Received: by 10.25.160.207 with SMTP id j198mr1227766lfe.4.1456846464084;
        Tue, 01 Mar 2016 07:34:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.43.20 with SMTP id r20ls640921lfr.93.gmail; Tue, 01 Mar
 2016 07:34:23 -0800 (PST)
X-Received: by 10.112.155.8 with SMTP id vs8mr2533486lbb.13.1456846463459;
        Tue, 01 Mar 2016 07:34:23 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v68si347162wmd.1.2016.03.01.07.34.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 07:34:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,523,1449529200"; 
   d="scan'208";a="205277327"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2016 16:34:23 +0100
Date: Tue, 1 Mar 2016 16:34:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192e: Use kzalloc instead
 of kmalloc and memset
In-Reply-To: <CAOH+1jEACWU7f8PkFp0vpagn4NiEFygp7BgBcd6zjLSG0gBemw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1603011633170.2624@hadrien>
References: <1456844212-29057-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1603011601100.2624@hadrien> <CAOH+1jG58L8Mjg2bO3t48bMoCJgR0=Di-sbHi0vj7DCWqOBbqw@mail.gmail.com> <alpine.DEB.2.10.1603011615480.2624@hadrien>
 <CAOH+1jEACWU7f8PkFp0vpagn4NiEFygp7BgBcd6zjLSG0gBemw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 1 Mar 2016, Bhumika Goyal wrote:

> On Tue, Mar 1, 2016 at 8:47 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Tue, 1 Mar 2016, Bhumika Goyal wrote:
> >
> >> On Tue, Mar 1, 2016 at 8:31 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> > On Tue, 1 Mar 2016, Bhumika Goyal wrote:
> >> >
> >> >> The code in this patch allocates some memory and then clears it. The
> >> >> function kzalloc does the both so replace kmalloc and memset with
> >> >> kzalloc.
> >> >> Done using coccinelle:
> >> >>
> >> >> @@
> >> >> expression e,e1,e2;
> >> >> @@
> >> >> - e=kmalloc(e1,e2);
> >> >> + e=kzalloc(e1,e2);
> >> >> if(!e)
> >> >>   return NULL;
> >> >> ...
> >> >> - memset(e,...);
> >> >>
> >> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> >> >> ---
> >> >>  drivers/staging/rtl8192e/rtllib_tx.c | 3 +--
> >> >>  1 file changed, 1 insertion(+), 2 deletions(-)
> >> >>
> >> >> diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
> >> >> index 58fc70e..1642f29 100644
> >> >> --- a/drivers/staging/rtl8192e/rtllib_tx.c
> >> >> +++ b/drivers/staging/rtl8192e/rtllib_tx.c
> >> >> @@ -221,12 +221,11 @@ static struct rtllib_txb *rtllib_alloc_txb(int nr_frags, int txb_size,
> >> >>       struct rtllib_txb *txb;
> >> >>       int i;
> >> >>
> >> >> -     txb = kmalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
> >> >> +     txb = kzalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
> >> >>                     gfp_mask);
> >> >>       if (!txb)
> >> >>               return NULL;
> >> >>
> >> >> -     memset(txb, 0, sizeof(struct rtllib_txb));
> >> >
> >> > The sizes are not the same.  I don't know if this is a performance issue.
> >> >
> >>
> >> By sizes do you mean the size of memory allocated by kmalloc and
> >> kzalloc?  I think this won't be an issue when the second argument is
> >> GFP_KERNEL.
> >
> > The size that is allocated is A + B.
> > The size that is zeroed is only A.
> >
> > In your code, the size that is zeroed is A + B.  Since B contains a
> > multiplication, that might be much bigger.  In at least some contexts
> > zeroing takes time.
> >
> > julia
> >
>
> Thanks for explaining. I will find issues where the size allocated and
> zeroed is only A .

I'm not sure that there is anything to do here.  It s perfectly legitimate
to zero less than the full allocated data, as long as no fields of the
allocated data are then used uninitialized.

julia

>
> Thanks,
> Bhumika
> >>
> >> Thanks,
> >> Bhumika
> >> > julia
> >> >
> >> >>       txb->nr_frags = nr_frags;
> >> >>       txb->frag_size = cpu_to_le16(txb_size);
> >> >>
> >> >> --
> >> >> 1.9.1
> >> >>
> >> >> --
> >> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456844212-29057-1-git-send-email-bhumirks%40gmail.com.
> >> >> For more options, visit https://groups.google.com/d/optout.
> >> >>
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jG58L8Mjg2bO3t48bMoCJgR0%3DDi-sbHi0vj7DCWqOBbqw%40mail.gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jEACWU7f8PkFp0vpagn4NiEFygp7BgBcd6zjLSG0gBemw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

