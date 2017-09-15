X-GM-THRID: 6466090633212723200
X-Received: by 10.28.156.86 with SMTP id f83mr442594wme.5.1505509775954;
        Fri, 15 Sep 2017 14:09:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.68.4 with SMTP id r4ls304403lja.19.gmail; Fri, 15 Sep 2017
 14:09:34 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCWUtq3Vw7apy3VzNRDizho2BAsH/gFZeSn0wLP2xT6mUpMxGRcpCjSnA615LM2RZevoePW
X-Received: by 10.25.181.214 with SMTP id g83mr309134lfk.17.1505509774562;
        Fri, 15 Sep 2017 14:09:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505509774; cv=none;
        d=google.com; s=arc-20160816;
        b=R443og3TpYVM/uwdKFFOOQt8PEDAUkPt9SHjqKmhLU32BeDmkOux9soVWOcDv5ZfLb
         FrC1fr6X/+w5M/95zgsMNf/2sESU0Jgj5XSgHwujYZ10QfAbDuwzxXzeCe9xl8o4KIUO
         +DMLGaDGR4kl0IQ1vqqLoBKSAjXWHJjetFoJMr5OIKAnj2AUsaIjh7/P3mU9Wkp9WmLA
         PRr9ikbp0ZpXwrclHgr5NoUWgcyJ0lhEivqZqO9QZgDpAbdH6bAt5TbQQSj9LzTrTblm
         5+sW2TScTFKxAaC7Q0YhVelPlan4pDi+LwJHyjyCK0U2tX4GSOmH8vVcbf9Bnktd2WTi
         7y5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=9Amie8EEbO9WWi6eBDUDRNHx6aDTgi/KrnBx7qai5Jo=;
        b=iEvMK7oVrDEqegJL0wuDHePlshtKPmTOU/+N/vvWUx7SxIBcUr3M1LjTckOgF7H5sC
         Iu0Yz2qymqjcx8lujGVgieK6cp7IErkIbfv97U2/rRvaGZRLSa6wmzGxLFZ4zNIW94Nr
         b/nsx5jCEsvq/SjWX1bg4MMHlnrUKZ24HKeiFF1ngPU7es4TFBavRciXLbpxpFwBFpkm
         9eLGI7JuCS/j8hpEcG6Z+2Is6aL8u916EFei+7819O9cgw92O95zYL+UoQZ4L542fihN
         NPpgGRz2Ua5NW69LMWzVCRqa4KaXoP2yfPDmDNZby9JZ//tDMevs28RX93dzrh+bZEHg
         R0Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b203si64708wmh.4.2017.09.15.14.09.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 14:09:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,399,1500933600"; 
   d="scan'208";a="291331168"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 23:09:34 +0200
Date: Fri, 15 Sep 2017 23:09:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: samuel@sortiz.org, Greg KH <gregkh@linuxfoundation.org>, 
    netdev@vger.kernel.org, devel@driverdev.osuosl.org, 
    Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: irda: Don't use assignment
 inside if statement
In-Reply-To: <CAB3L5oxr5K5aMo06ROCVV9ejY6a_g1+uUkjU=Z5bKTJtzUs7sA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709152308300.2533@hadrien>
References: <1505504680-22167-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709152200030.2533@hadrien> <CAB3L5oxr5K5aMo06ROCVV9ejY6a_g1+uUkjU=Z5bKTJtzUs7sA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Srishti Sharma wrote:

> On Sat, Sep 16, 2017 at 1:30 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sat, 16 Sep 2017, Srishti Sharma wrote:
> >
> >> Write assignment statement outside the if statement. Done using
> >> the following semantic patch by coccinelle.
> >>
> >> @@
> >> identifier E;
> >> expression F;
> >> statement S;
> >> @@
> >>
> >> -if((E = F))
> >> +E = F;
> >> +if(E)
> >>   S
> >>
> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> >
> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
>
> Have sent a patchset for this instead .

Thanks.  Actually, you should have copied the ack.

julia

>
> Regards,
> Srishti
> >
> >> ---
> >> Changes in v2:
> >>  -Semicolon was missing in one of the statements of the
> >>   semantic patch
> >>
> >>  drivers/staging/irda/drivers/irda-usb.c | 4 ++--
> >>  drivers/staging/irda/drivers/mcs7780.c  | 9 ++++++---
> >>  drivers/staging/irda/net/irqueue.c      | 3 ++-
> >>  3 files changed, 10 insertions(+), 6 deletions(-)
> >>
> >> diff --git a/drivers/staging/irda/drivers/irda-usb.c b/drivers/staging/irda/drivers/irda-usb.c
> >> index 723e49b..82bfc05 100644
> >> --- a/drivers/staging/irda/drivers/irda-usb.c
> >> +++ b/drivers/staging/irda/drivers/irda-usb.c
> >> @@ -334,9 +334,9 @@ static void irda_usb_change_speed_xbofs(struct irda_usb_cb *self)
> >>       urb->transfer_flags = 0;
> >>
> >>       /* Irq disabled -> GFP_ATOMIC */
> >> -     if ((ret = usb_submit_urb(urb, GFP_ATOMIC))) {
> >> +     ret = usb_submit_urb(urb, GFP_ATOMIC);
> >> +     if (ret)
> >>               net_warn_ratelimited("%s(), failed Speed URB\n", __func__);
> >> -     }
> >>  }
> >>
> >>  /*------------------------------------------------------------------*/
> >> diff --git a/drivers/staging/irda/drivers/mcs7780.c b/drivers/staging/irda/drivers/mcs7780.c
> >> index c3f0b25..2b674d5 100644
> >> --- a/drivers/staging/irda/drivers/mcs7780.c
> >> +++ b/drivers/staging/irda/drivers/mcs7780.c
> >> @@ -605,19 +605,22 @@ static int mcs_speed_change(struct mcs_cb *mcs)
> >>       if (mcs->new_speed <= 115200) {
> >>               rval &= ~MCS_FIR;
> >>
> >> -             if ((rst = (mcs->speed > 115200)))
> >> +             rst = (mcs->speed > 115200);
> >> +             if (rst)
> >>                       mcs_set_reg(mcs, MCS_MINRXPW_REG, 0);
> >>
> >>       } else if (mcs->new_speed <= 1152000) {
> >>               rval &= ~MCS_FIR;
> >>
> >> -             if ((rst = !(mcs->speed == 576000 || mcs->speed == 1152000)))
> >> +             rst = !(mcs->speed == 576000 || mcs->speed == 1152000);
> >> +             if (rst)
> >>                       mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
> >>
> >>       } else {
> >>               rval |= MCS_FIR;
> >>
> >> -             if ((rst = (mcs->speed != 4000000)))
> >> +             rst = (mcs->speed != 4000000);
> >> +             if (rst)
> >>                       mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
> >>
> >>       }
> >> diff --git a/drivers/staging/irda/net/irqueue.c b/drivers/staging/irda/net/irqueue.c
> >> index 160dc89..5aab072 100644
> >> --- a/drivers/staging/irda/net/irqueue.c
> >> +++ b/drivers/staging/irda/net/irqueue.c
> >> @@ -217,7 +217,8 @@ static __u32 hash( const char* name)
> >>
> >>       while(*name) {
> >>               h = (h<<4) + *name++;
> >> -             if ((g = (h & 0xf0000000)))
> >> +             g = (h & 0xf0000000);
> >> +             if (g)
> >>                       h ^=g>>24;
> >>               h &=~g;
> >>       }
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505504680-22167-1-git-send-email-srishtishar%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB3L5oxr5K5aMo06ROCVV9ejY6a_g1%2BuUkjU%3DZ5bKTJtzUs7sA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

