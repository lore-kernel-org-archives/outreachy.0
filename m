X-GM-THRID: 6342256003248029696
X-Received: by 10.28.166.202 with SMTP id p193mr324627wme.10.1476856836807;
        Tue, 18 Oct 2016 23:00:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.212.129 with SMTP id l123ls254920wmg.22.gmail; Tue, 18 Oct
 2016 23:00:36 -0700 (PDT)
X-Received: by 10.28.193.196 with SMTP id r187mr1229636wmf.5.1476856836043;
        Tue, 18 Oct 2016 23:00:36 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q15si129392wmd.3.2016.10.18.23.00.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Oct 2016 23:00:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,513,1473112800"; 
   d="scan'208";a="197300556"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Oct 2016 08:00:17 +0200
Date: Wed, 19 Oct 2016 08:00:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, sudipm.mukherjee@gmail.com, 
    teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: sm750fb: Make variable
 read only after initialization.
In-Reply-To: <20161018214611.GA23146@lennorien.com>
Message-ID: <alpine.DEB.2.20.1610190757330.2721@hadrien>
References: <20161017023216.GA17876@lennorien.com> <20161017074404.GA7010@kroah.com> <20161018214611.GA23146@lennorien.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 18 Oct 2016, Elise Lennion wrote:

> On Mon, Oct 17, 2016 at 09:44:04AM +0200, Greg KH wrote:
> > On Mon, Oct 17, 2016 at 12:32:16AM -0200, Elise Lennion wrote:
> > > Use __ro_after_init to protect variable, initialized in several steps,
> > > from overwrite during runtime.
> > >
> > > Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> > > ---
> > >  drivers/staging/sm750fb/sm750.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> > > index 0663ec0..5c02ad8 100644
> > > --- a/drivers/staging/sm750fb/sm750.c
> > > +++ b/drivers/staging/sm750fb/sm750.c
> > > @@ -719,7 +719,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
> > >  	return ret;
> > >  }
> > >
> > > -static struct fb_ops lynxfb_ops = {
> > > +static __ro_after_init struct fb_ops lynxfb_ops = {
> > >  	.owner = THIS_MODULE,
> > >  	.fb_check_var =  lynxfb_ops_check_var,
> > >  	.fb_set_par = lynxfb_ops_set_par,
> >
> > How did you "prove" or test this?  I don't think it is correct to mark
> > this code this way at all, but would be glad to reconsider the patch if
> > you can prove me otherwise :)
> >
> > thanks,
> >
> > greg k-h
>
> I compiled the file, used 'size' to verify that the data segment size
> was smaller, installed the module, removed and reloaded the module with
> modprobe and used lsmod to ensure the driver was loaded.
>
> Actually I just compiled the module and checked the data segment size
> before sending the patch, but now I did the whole procedure and
> everything seems right :)
>
> But I didn't find a good reference about how __ro_after_init works,
> only a few old patches that use it, so I don't really know if it can
> be loaded and still not have the desired effect, make lynxfb_ops read
> only after initialization.
>
> I put it in that position because that's where a const would be, but
> I searched more patches and most of them use __ro_after_init after the
> name of the variable. Is that what's strange in this patch?
>
> I'll make a v2 with __ro_after_init in the standard position in case
> that's the problem.

I think it would be helpful to give an overview of how the structure is
actually used in practice.  Eg, it is only modified in function XX which
is declared as __init, and otherwise it is only passed to function YY
where the corresponding parameter is declared as const.  Checking that the
declaration is really compiled is good, but it doesn't check that all the
uses are compiled in your configuration, so it is helpful to check the
problem from multiple perspectives.

julia

