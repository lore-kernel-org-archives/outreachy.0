X-GM-THRID: 6205602461234757632
X-Received: by 10.181.11.195 with SMTP id ek3mr4429510wid.7.1445875396915;
        Mon, 26 Oct 2015 09:03:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.209.145 with SMTP id i139ls453655lfg.0.gmail; Mon, 26 Oct
 2015 09:03:16 -0700 (PDT)
X-Received: by 10.112.144.105 with SMTP id sl9mr8451138lbb.3.1445875396230;
        Mon, 26 Oct 2015 09:03:16 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q6si307498wiz.0.2015.10.26.09.03.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 09:03:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,201,1444687200"; 
   d="scan'208";a="151792330"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Oct 2015 17:02:42 +0100
Date: Mon, 26 Oct 2015 17:02:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
cc: Cristina Moraru <cristina.moraru09@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: Fix lines over 80
 characters
In-Reply-To: <20151026155342.GA31787@sudip-pc>
Message-ID: <alpine.DEB.2.10.1510261702190.2521@hadrien>
References: <1444854375-22873-1-git-send-email-cristina.moraru09@gmail.com> <20151015064546.GA3134@sudip-pc> <alpine.DEB.2.10.1510151808510.2350@hadrien> <20151026155342.GA31787@sudip-pc>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 26 Oct 2015, Sudip Mukherjee wrote:

> On Thu, Oct 15, 2015 at 06:10:11PM +0200, Julia Lawall wrote:
> > > >
> > > > -	spinlock_t	bd_intr_lock;	/* Used to protect the poller tasklet and
> > > > -					 * the interrupt routine from each other.
> > > > +	spinlock_t	bd_intr_lock;	/* Used to protect the poller tasklet
> > > > +					 * and the interrupt routine from each
> > > > +					 * other.
> > > >  					 */
> > > This is not the multiline comment style. It should be:
> > >
> > > /*
> > >  * Used to protect the poller tasklet
> > >  * and the interrupt routine from each
> > >  * other.
> > >  */
> >
> > Not sure what you are suggesting.  If you think that the comment should be
> > moved over to the leftmost column, then there is no need for so many
> > newlines.  But maybe it would look odd with some comments on the far left
> > and some to the right of the declarations?
> >
> Hi Julia,
> Sorry for the confusion. I was just suggesting about the multiline
> comment style. It should have been:
>
>  - spinlock_t      bd_intr_lock;   /* Used to protect the poller tasklet and
>  - 				    * the interrupt routine from each other.
>  + spinlock_t 	   bd_intr_lock;   /*
>  + 				    * Used to protect the poller tasklet
>  +				    * and the interrupt routine from each
>  +				    * other.
>                                     */

OK, looks fine.

julia

