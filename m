X-GM-THRID: 6394986223504457728
X-Received: by 10.25.215.37 with SMTP id o37mr814417lfg.20.1488976054070;
        Wed, 08 Mar 2017 04:27:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.87 with SMTP id t23ls354059ljd.19.gmail; Wed, 08 Mar
 2017 04:27:33 -0800 (PST)
X-Received: by 10.46.33.163 with SMTP id h35mr1102490lji.17.1488976053047;
        Wed, 08 Mar 2017 04:27:33 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e72si653761wma.0.2017.03.08.04.27.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 04:27:33 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,262,1486422000"; 
   d="scan'208";a="263677840"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2017 13:27:32 +0100
Date: Wed, 8 Mar 2017 13:27:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: bcm2835-camera: remove
 get_msg_context() and release_msg_context()
In-Reply-To: <20170308114709.GA2707@aishwarya>
Message-ID: <alpine.DEB.2.20.1703081326560.3004@hadrien>
References: <cover.1488948214.git.aishpant@gmail.com> <alpine.DEB.2.20.1703080841250.2108@hadrien> <20170308114709.GA2707@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 8 Mar 2017, Aishwarya Pant wrote:

> On Wed, Mar 08, 2017 at 08:41:38AM +0100, Julia Lawall wrote:
> >
> >
> > On Wed, 8 Mar 2017, Aishwarya Pant wrote:
> >
> > > This patch replaces in mmal-vchiq.c:
> > >         - get_msg_context(..) with a kzalloc at the caller
> > > 	- release_msg_context(..) with a kfree at the caller
> > >
> > > Aishwarya Pant (2):
> > >   staging: bcm2835-camera: replace get_msg_context() with kzalloc
> > >   staging: bcm2835-camera: replace release_msg_context() with kfree
> >
> >
> > Haven't you sent these before?
>
> I had sent patch 1/2 before as a two part patchset. Greg asked me to re-send
> the patchset as a single patch. Later I noticed the function release_msg_context()
> could also be removed and added it here.

OK, I guess if it is all reorganized then v2 is not appropriate.

julia

>
>
> >
> > julia
> >
> > >
> > >  .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 29 ++++------------------
> > >  1 file changed, 5 insertions(+), 24 deletions(-)
> > >
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1488948214.git.aishpant%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>

