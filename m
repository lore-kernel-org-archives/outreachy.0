X-GM-THRID: 6252686947225960448
X-Received: by 10.194.239.163 with SMTP id vt3mr119161wjc.3.1456305790810;
        Wed, 24 Feb 2016 01:23:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.86.135 with SMTP id k129ls828532wmb.26.canary; Wed, 24 Feb
 2016 01:23:10 -0800 (PST)
X-Received: by 10.194.19.195 with SMTP id h3mr4669046wje.1.1456305790275;
        Wed, 24 Feb 2016 01:23:10 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e130si1311637wme.2.2016.02.24.01.23.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 01:23:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,493,1449529200"; 
   d="scan'208";a="204409929"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2016 10:23:09 +0100
Date: Wed, 24 Feb 2016 10:23:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Laura Garcia <nevola@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Return zero pointer
 after failed kmalloc
In-Reply-To: <20160223223647.GA4772@sonyv>
Message-ID: <alpine.DEB.2.02.1602241020130.2149@localhost6.localdomain6>
References: <20160218173839.GA9157@sonyv> <alpine.DEB.2.02.1602232139060.2040@localhost6.localdomain6> <20160223223647.GA4772@sonyv>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 23 Feb 2016, Laura Garcia wrote:

> On Tue, Feb 23, 2016 at 09:42:04PM +0100, Julia Lawall wrote:
> > 
> > 
> > On Thu, 18 Feb 2016, Laura Garcia Liebana wrote:
> > 
> > > Return a ZERO_SIZE_PTR in the xlr_config_spill function if the
> > > kmalloc returns an invalid value. This change prevents a possible
> > > segmentation fault as the invalid pointer is fed into PTR_ALIGN macro.
> > > 
> > > Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> > > ---
> > >  drivers/staging/netlogic/xlr_net.c | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> > > index 98e74d7..0015847 100644
> > > --- a/drivers/staging/netlogic/xlr_net.c
> > > +++ b/drivers/staging/netlogic/xlr_net.c
> > > @@ -437,8 +437,10 @@ static void *xlr_config_spill(struct xlr_net_priv *priv, int reg_start_0,
> > >  	base = priv->base_addr;
> > >  	spill_size = size;
> > >  	spill = kmalloc(spill_size + SMP_CACHE_BYTES, GFP_ATOMIC);
> > > -	if (!spill)
> > > +	if (!spill) {
> > >  		pr_err("Unable to allocate memory for spill area!\n");
> > > +		return ZERO_SIZE_PTR;
> > 
> > Why did you choose this as the return value, rather than NULL?  Is there a 
> > way that the first argument to kmalloc can be 0?  Also, the containing 
> > function, xlr_config_spill, is called in a number of places where the 
> > results is stored in a structure field with no error checking.  Have you 
> > traced through the code to see if it is appropriate to store and invalid 
> > pointer in these fields?  At the moment, the crash will at least happen 
> > near the location of the faulty assignment.  It could get harder to debug, 
> > if the bad value will propagate through structure fields to other parts of 
> > the driver.
> > 
> > julia
> > 
> > > +	}
> > >  
> > >  	spill = PTR_ALIGN(spill, SMP_CACHE_BYTES);
> > >  	phys_addr = virt_to_phys(spill);
> > > -- 
> > > 2.7.0
> > > 
> > > -- 
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160218173839.GA9157%40sonyv.
> > > For more options, visit https://groups.google.com/d/optout.
> > > 

> I guessed that it was the best way to return an invalid pointer after a 
> kmalloc. Doesn't seem that the structure where the function return is 
> stored is called anymore. So I believe that returning a NULL will be 
> safe in this case.

I'm not sure to understand the second sentence.  Is the kmalloc useless?  
To my recollection, the result of the function is stored in several 
structure fields.  Are these structure fields never used?

Also, when you reply to a comment, could you put your reply just under the 
comment, with blank lines around it?  Otherwise, the reply is hard to 
find.

thanks,
julia

> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160223223647.GA4772%40sonyv.
> For more options, visit https://groups.google.com/d/optout.
> 

