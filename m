X-GM-THRID: 6395910423688773632
X-Received: by 10.46.84.13 with SMTP id i13mr3378879ljb.2.1489166542577;
        Fri, 10 Mar 2017 09:22:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.14.1 with SMTP id 1ls1097755ljo.45.gmail; Fri, 10 Mar 2017
 09:22:22 -0800 (PST)
X-Received: by 10.25.203.151 with SMTP id b145mr2899537lfg.17.1489166542030;
        Fri, 10 Mar 2017 09:22:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e72si4264wma.0.2017.03.10.09.22.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 09:22:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,141,1486422000"; 
   d="scan'208";a="216334971"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 18:22:21 +0100
Date: Fri, 10 Mar 2017 18:22:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: bcm2835-camera: remove
 anonymous field declarations
In-Reply-To: <20170310170823.GA6474@aishwarya>
Message-ID: <alpine.DEB.2.20.1703101821460.3356@hadrien>
References: <cover.1489163547.git.aishpant@gmail.com> <a7acfee24fab685d28cc5bb088b2fe4288a4aa81.1489163547.git.aishpant@gmail.com> <alpine.DEB.2.20.1703101750400.3356@hadrien> <20170310170823.GA6474@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Aishwarya Pant wrote:

> On Fri, Mar 10, 2017 at 05:50:54PM +0100, Julia Lawall wrote:
> > On Fri, 10 Mar 2017, Aishwarya Pant wrote:
> >
> > > Anonymous field declarations are error prone. This patch replaces
> > > anonymous declarations with explicit field declarations for typedef
> > > SERVICE_CREATION_T in vchiq_mmal_init(..)
> >
> > Were you able to compile this file?
>
> I delete the *.o files from the drivers and compiled them with the
> allyesconfig. No errors.

OK, a git pull was needed on my side :)

julia

>
> >
> > julia
> >
> > >
> > > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> > > ---
> > >  .../vc04_services/bcm2835-camera/mmal-vchiq.c        | 20 ++++++++++----------
> > >  1 file changed, 10 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > > index 803095e..88b379f 100644
> > > --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > > +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > > @@ -1977,16 +1977,16 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
> > >  	static VCHI_CONNECTION_T *vchi_connection;
> > >  	static VCHI_INSTANCE_T vchi_instance;
> > >  	SERVICE_CREATION_T params = {
> > > -		VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
> > > -		VC_MMAL_SERVER_NAME,
> > > -		vchi_connection,
> > > -		0,		/* rx fifo size (unused) */
> > > -		0,		/* tx fifo size (unused) */
> > > -		service_callback,
> > > -		NULL,		/* service callback parameter */
> > > -		1,		/* unaligned bulk receives */
> > > -		1,		/* unaligned bulk transmits */
> > > -		0		/* want crc check on bulk transfers */
> > > +		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
> > > +		.service_id		= VC_MMAL_SERVER_NAME,
> > > +		.connection		= vchi_connection,
> > > +		.rx_fifo_size		= 0,
> > > +		.tx_fifo_size		= 0,
> > > +		.callback		= service_callback,
> > > +		.callback_param		= NULL,
> > > +		.want_unaligned_bulk_rx = 1,
> > > +		.want_unaligned_bulk_tx = 1,
> > > +		.want_crc		= 0
> > >  	};
> > >
> > >  	/* compile time checks to ensure structure size as they are
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a7acfee24fab685d28cc5bb088b2fe4288a4aa81.1489163547.git.aishpant%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170310170823.GA6474%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>

