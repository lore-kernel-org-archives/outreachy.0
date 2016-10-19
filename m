X-GM-THRID: 6342256003248029696
X-Received: by 10.129.166.21 with SMTP id d21mr1428884ywh.166.1476859715009;
        Tue, 18 Oct 2016 23:48:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.72 with SMTP id o66ls1162666ota.17.gmail; Tue, 18 Oct
 2016 23:48:34 -0700 (PDT)
X-Received: by 10.129.121.66 with SMTP id u63mr1425253ywc.106.1476859714328;
        Tue, 18 Oct 2016 23:48:34 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id a143si6752468pfa.2.2016.10.18.23.48.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Oct 2016 23:48:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9736D892;
	Wed, 19 Oct 2016 06:48:33 +0000 (UTC)
Date: Wed, 19 Oct 2016 08:48:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Elise Lennion <elise.lennion@gmail.com>, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: sm750fb: Make variable
 read only after initialization.
Message-ID: <20161019064840.GB29351@kroah.com>
References: <20161017023216.GA17876@lennorien.com>
 <20161017074404.GA7010@kroah.com>
 <20161018214611.GA23146@lennorien.com>
 <alpine.DEB.2.20.1610190757330.2721@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1610190757330.2721@hadrien>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Wed, Oct 19, 2016 at 08:00:15AM +0200, Julia Lawall wrote:
> 
> 
> On Tue, 18 Oct 2016, Elise Lennion wrote:
> 
> > On Mon, Oct 17, 2016 at 09:44:04AM +0200, Greg KH wrote:
> > > On Mon, Oct 17, 2016 at 12:32:16AM -0200, Elise Lennion wrote:
> > > > Use __ro_after_init to protect variable, initialized in several steps,
> > > > from overwrite during runtime.
> > > >
> > > > Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> > > > ---
> > > >  drivers/staging/sm750fb/sm750.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> > > > index 0663ec0..5c02ad8 100644
> > > > --- a/drivers/staging/sm750fb/sm750.c
> > > > +++ b/drivers/staging/sm750fb/sm750.c
> > > > @@ -719,7 +719,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
> > > >  	return ret;
> > > >  }
> > > >
> > > > -static struct fb_ops lynxfb_ops = {
> > > > +static __ro_after_init struct fb_ops lynxfb_ops = {
> > > >  	.owner = THIS_MODULE,
> > > >  	.fb_check_var =  lynxfb_ops_check_var,
> > > >  	.fb_set_par = lynxfb_ops_set_par,
> > >
> > > How did you "prove" or test this?  I don't think it is correct to mark
> > > this code this way at all, but would be glad to reconsider the patch if
> > > you can prove me otherwise :)
> > >
> > > thanks,
> > >
> > > greg k-h
> >
> > I compiled the file, used 'size' to verify that the data segment size
> > was smaller, installed the module, removed and reloaded the module with
> > modprobe and used lsmod to ensure the driver was loaded.
> >
> > Actually I just compiled the module and checked the data segment size
> > before sending the patch, but now I did the whole procedure and
> > everything seems right :)
> >
> > But I didn't find a good reference about how __ro_after_init works,
> > only a few old patches that use it, so I don't really know if it can
> > be loaded and still not have the desired effect, make lynxfb_ops read
> > only after initialization.
> >
> > I put it in that position because that's where a const would be, but
> > I searched more patches and most of them use __ro_after_init after the
> > name of the variable. Is that what's strange in this patch?
> >
> > I'll make a v2 with __ro_after_init in the standard position in case
> > that's the problem.
> 
> I think it would be helpful to give an overview of how the structure is
> actually used in practice.  Eg, it is only modified in function XX which
> is declared as __init, and otherwise it is only passed to function YY
> where the corresponding parameter is declared as const.  Checking that the
> declaration is really compiled is good, but it doesn't check that all the
> uses are compiled in your configuration, so it is helpful to check the
> problem from multiple perspectives.

Along with that, if you enable CONFIG_DEBUG_SECTION_MISMATCH in your
kernel build, you might see what the compiler thinks is happening as
well.  I don't know if that tracks __ro_after_init usage, but it can't
hurt.

For this specific change, if you walk through the code paths by hand,
you will see where the structure is modified when the driver is bound to
a device.  As that can happen any time after init has happened (i.e.
after the module is loaded), I don't think this change is safe at all.
Remember, you can add a PCI device at any time to lots of systems, it is
a hotpluggable bus, just like USB.

thanks,

greg k-h

