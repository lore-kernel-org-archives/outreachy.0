X-GM-THRID: 6253655179876368384
X-Received: by 10.112.150.105 with SMTP id uh9mr1423089lbb.17.1456101830555;
        Sun, 21 Feb 2016 16:43:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.166 with SMTP id 38ls256911lfs.104.gmail; Sun, 21 Feb
 2016 16:43:49 -0800 (PST)
X-Received: by 10.112.151.240 with SMTP id ut16mr3039252lbb.16.1456101829899;
        Sun, 21 Feb 2016 16:43:49 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si984670wmy.2.2016.02.21.16.43.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 16:43:49 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,483,1449529200"; 
   d="scan'208";a="165477831"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2016 01:43:48 +0100
Date: Sun, 21 Feb 2016 19:43:45 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Laura Garcia <nevola@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: Avoid the use of
 BUG_ON
In-Reply-To: <20160221165141.GA2213@sonyv>
Message-ID: <alpine.DEB.2.10.1602211942130.2512@hadrien>
References: <20160221081553.GA4327@sonyv> <alpine.DEB.2.10.1602210730280.2782@hadrien> <20160221165141.GA2213@sonyv>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 21 Feb 2016, Laura Garcia wrote:

> On Sun, Feb 21, 2016 at 07:31:12AM -0500, Julia Lawall wrote:
> > On Sun, 21 Feb 2016, Laura Garcia Liebana wrote:
> >
> > > Prevent a kernel panic by avoiding the use of the BUG_ON macro and using the
> > > WARN_ON macro instead. Checkpatch detected this issue.
> >
> > Why is nvec->state = 0; the right thing to do?  What will happen when the
> > break is taken?
> >
> > julia
> >
> > > Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> > > ---
> > >  drivers/staging/nvec/nvec.c | 14 ++++++++++++--
> > >  1 file changed, 12 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> > > index c335ae2..3b5b94f 100644
> > > --- a/drivers/staging/nvec/nvec.c
> > > +++ b/drivers/staging/nvec/nvec.c
> > > @@ -641,11 +641,21 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
> > >  			nvec_msg_free(nvec, nvec->rx);
> > >  			nvec->state = 3;
> > >  			nvec_tx_set(nvec);
> > > -			BUG_ON(nvec->tx->size < 1);
> > > +			if (WARN_ON(nvec->tx->size < 1)) {
> > > +				dev_err(nvec->dev,
> > > +					"Invalid TX size\n");
> > > +				nvec->state = 0;
> > > +				break;
> > > +			}
> > >  			to_send = nvec->tx->data[0];
> > >  			nvec->tx->pos = 1;
> > >  		} else if (status == (I2C_SL_IRQ)) {
> > > -			BUG_ON(nvec->rx == NULL);
> > > +			if (WARN_ON(!nvec->rx)) {
> > > +				dev_err(nvec->dev,
> > > +					"Invalid RX\n");
> > > +				nvec->state = 0;
> > > +				break;
> > > +			}
> > >  			nvec->rx->data[1] = received;
> > >  			nvec->rx->pos = 2;
> > >  			nvec->state = 4;
> > > --
> > > 2.7.0
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221081553.GA4327%40sonyv.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> I got inspired by an earlier case, for example in case 1:
>
> nvec->rx = nvec_msg_alloc(nvec, NVEC_MSG_RX);
> /* Should not happen in a normal world */
> if (unlikely(!nvec->rx)) {
>         nvec->state = 0;
>         break;
> }
>
> A similar case appears in the case 2 (same function):
>
> if (nvec->rx->data[0] != 0x01) {
>         dev_err(nvec->dev,
>                 "Read without prior read command\n");
>         nvec->state = 0;
>         break;
> }
>
> Please let me know your thoughts about it.

I don't know.  It seems risky.  I think that one would have to consult
with the developers. I don't know if these particular problems can be
survived.

julia

