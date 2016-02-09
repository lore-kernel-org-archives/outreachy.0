X-GM-THRID: 6249238680974655488
X-Received: by 10.112.151.240 with SMTP id ut16mr3616358lbb.16.1455019212452;
        Tue, 09 Feb 2016 04:00:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.194 with SMTP id 63ls657454lfy.18.gmail; Tue, 09 Feb
 2016 04:00:11 -0800 (PST)
X-Received: by 10.112.169.5 with SMTP id aa5mr3890187lbc.12.1455019211949;
        Tue, 09 Feb 2016 04:00:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w128si532389wmd.0.2016.02.09.04.00.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 04:00:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,420,1449529200"; 
   d="scan'208";a="164022128"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 13:00:11 +0100
Date: Tue, 9 Feb 2016 13:00:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: fix check for dma
 mapping error
In-Reply-To: <20160209112101.GA27970@haneenVB>
Message-ID: <alpine.DEB.2.10.1602091259220.2578@hadrien>
References: <20160209103540.GA27735@haneenVB> <alpine.DEB.2.10.1602091148570.2578@hadrien> <20160209112101.GA27970@haneenVB>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 9 Feb 2016, Haneen Mohammed wrote:

> On Tue, Feb 09, 2016 at 11:50:58AM +0100, Julia Lawall wrote:
> >
> >
> > On Tue, 9 Feb 2016, Haneen Mohammed wrote:
> >
> > > use dma_mapping_error() instead of comparing the returned address with
> > > zero after dma_map_single().
> >
> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> >
> > However, the parentheses in &(rtsx->pci->dev) are really unpleasant.
> > Especially since they make the call to dma_map_single different from the
> > call to dma_mapping_error.
> >
> > Maybe you could send a patch series to also get rid of them?
> >
> > julia
> >
> Sure. should I send it as v2? Also, I noticed in the discussion in the
> previous thread about keeping the acked, yet I'm not sure how to do it.
> could yo advise me on that please?

Yes, a v2 would be good.

For the ack, just put it under your signed off by, for the specific patch
that I acked.

julia

>
> Thank you,
> Haneen
> > >
> > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > > ---
> > >  drivers/staging/rts5208/rtsx_transport.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
> > > index f27491e..0c9549b 100644
> > > --- a/drivers/staging/rts5208/rtsx_transport.c
> > > +++ b/drivers/staging/rts5208/rtsx_transport.c
> > > @@ -653,7 +653,7 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
> > >  		return -ENXIO;
> > >
> > >  	addr = dma_map_single(&(rtsx->pci->dev), buf, len, dma_dir);
> > > -	if (!addr)
> > > +	if (dma_mapping_error(&rtsx->pci->dev, addr))
> > >  		return -ENOMEM;
> > >
> > >  	if (card == SD_CARD)
> > > --
> > > 1.9.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160209103540.GA27735%40haneenVB.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160209112101.GA27970%40haneenVB.
> For more options, visit https://groups.google.com/d/optout.
>

