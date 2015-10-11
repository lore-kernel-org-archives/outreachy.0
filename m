X-GM-THRID: 6203527091850313728
X-Received: by 10.112.54.197 with SMTP id l5mr4351406lbp.21.1444557864617;
        Sun, 11 Oct 2015 03:04:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.163.73 with SMTP id m70ls453702lfe.39.gmail; Sun, 11 Oct
 2015 03:04:23 -0700 (PDT)
X-Received: by 10.112.72.39 with SMTP id a7mr757721lbv.1.1444557863795;
        Sun, 11 Oct 2015 03:04:23 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id hs5si275631wib.1.2015.10.11.03.04.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 03:04:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,667,1437429600"; 
   d="scan'208";a="182159181"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 11 Oct 2015 12:04:23 +0200
Date: Sun, 11 Oct 2015 12:04:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gdmwm: move constant to
 right side of comparison test
In-Reply-To: <20151011063707.GA6423@Ubuntu-D830>
Message-ID: <alpine.DEB.2.02.1510111203300.2052@localhost6.localdomain6>
References: <20151009061314.GA31693@Ubuntu-D830> <20151010070034.GA4795@sudip-pc> <alpine.DEB.2.02.1510100921000.2062@localhost6.localdomain6> <20151011063707.GA6423@Ubuntu-D830>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 10 Oct 2015, Alison Schofield wrote:

> On Sat, Oct 10, 2015 at 09:22:27AM +0200, Julia Lawall wrote:
> > On Sat, 10 Oct 2015, Sudip Mukherjee wrote:
> > 
> > > On Thu, Oct 08, 2015 at 11:13:23PM -0700, Alison Schofield wrote:
> > > > Move constant to right side of comparison test per checkpatch.pl:
> > > > WARNING: Comparisons should place the constant on the right side of the
> > > > test
> > > > 
> > > > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > > > ---
> > > >  drivers/staging/gdm72xx/gdm_wimax.c | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
> > > > index 6e8dbaf..69f00cc 100644
> > > > --- a/drivers/staging/gdm72xx/gdm_wimax.c
> > > > +++ b/drivers/staging/gdm72xx/gdm_wimax.c
> > > > @@ -581,8 +581,8 @@ static int gdm_wimax_get_prepared_info(struct net_device *dev, char *buf,
> > > >  		}
> > > >  
> > > >  		pos += gdm_wimax_hci_get_tlv(&buf[pos], &T, &L, &V);
> > > > -		if (T == TLV_T(T_MAC_ADDRESS)) {
> > > > -			if (L != dev->addr_len) {
> > > > +		if (TLV_T(T_MAC_ADDRESS) == T) {
> > > 
> > > Is it correct? T and L are variables which are getting its values from
> > > gdm_wimax_hci_get_tlv(). TLV_T is a macro which is ((x) & 0xff).
> > > 
> > > Do we use it like:
> > > 
> > > if ((T_MAC_ADDRESS & 0xff) == T)
> > > 
> > > or do we use like:
> > > 
> > > if (T == (T_MAC_ADDRESS & 0xff))
> > 
> > I'm not sure there is such a semantic intent to the rule.  Do something 
> > complex and then see if it is like T, looks better to me than see if T is 
> > like doing something complex.  The checkpatch/commit message is indeed 
> > misleading, but the layout of characters looks better.
> > 
> > julia
> 
> Let me see if I have the correct understanding.
> 
> T and L are variables, not constants, therefore the checkpatch error and
> my subsequent commit msg are misleading. 

Yes.

> Regardless of whether this
> case should have been flagged by checkpatch the edit improves
> readability.
> 
> So, I'd lean towards keeping the edit and changing the commit msg & 
> description like this:
> 
> 	staging: gdmwm: move variable to right side of comparison test
>     
> 	Move variables to right side of comparison test to improve readability.
> 		
> Your thoughts?

It seems good to me.

julia

> 
> alison
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151011063707.GA6423%40Ubuntu-D830.
> For more options, visit https://groups.google.com/d/optout.
> 

