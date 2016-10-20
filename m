X-GM-THRID: 6342256003248029696
X-Received: by 10.36.43.204 with SMTP id h195mr9103041ita.9.1477005823939;
        Thu, 20 Oct 2016 16:23:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.121.13 with SMTP id z13ls5389199itc.9.canary; Thu, 20 Oct
 2016 16:23:43 -0700 (PDT)
X-Received: by 10.107.167.2 with SMTP id q2mr5122971ioe.74.1477005823025;
        Thu, 20 Oct 2016 16:23:43 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id r142si4059700vkf.2.2016.10.20.16.23.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Oct 2016 16:23:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 83so3907650vkd.0
        for <outreachy-kernel@googlegroups.com>; Thu, 20 Oct 2016 16:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OYG46sXRCG2QIk1vJG+TxLHOG1jwgwyaqtPpqUmt008=;
        b=t2Jjdd8nt51MwDmZfEf9CbxbfdzpJdiCuCmcDJWTvBKCQPJlsQlR3lbt2vFfJHdWXQ
         bayvtSMIoPRz+KZ7gRtNpseQn/TZVUYHbiLwRlTxi2VfubaOyqnNDIyFLqsT0o2g9bPs
         7E0a59Uak1Q1EKWvsOg1wQfO8IPJuOBy6gIH3xR9mI9ENHix93xmBnCytoFlOV8gjyI+
         8BOrMGHywFAtT70UENlbzaP+uU1fqAENGQoi7A6WrPlZUuDQGX5kAeSzCE/ojHdP6ofM
         mz4QRxxD01rYe8gsIWjjNKqCihad1Q8FLPPa0OyeisLM4oFZdfl61x6Vl8Ce8nD4Y19R
         8BdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OYG46sXRCG2QIk1vJG+TxLHOG1jwgwyaqtPpqUmt008=;
        b=ar4Fxa1zfUZD9skLV9NEQFpLj8rqFKsAGSNnl+to115oAdmFUd4yaK6cAPPc0JsTHN
         aOm3kboUMWAhzODBUMNcwWty6P9HIjUncoXU0iFI0krO0gnbcElTG+8VcHsAfMdwlz4r
         bGv/ZkSzN4q8yuzRD6i4Lvl75jfLeDDFiig45+mblYR04LpdEtxxBm8Z6o8TeFjdoq6b
         SN31fxf9eOXZngs2/ro0VUVuEcOjZRlBrW/ji+dQupg9Ony4/PJezdNTcMZj9SLGrNmr
         NE5O/qlU83FwRI0EYcDdnvg26d5PHtuiSHZ1Aw/SrFX4xtg/+2hoK4Lu23gXMZUF4xG1
         JpAg==
X-Gm-Message-State: AA6/9RkVU/n53eW2AiMmoQ77hHdSNGGOxHfd2Q32sEVaeQCJz0PMchbhVFefeZj7+HxnQw==
X-Received: by 10.31.222.66 with SMTP id v63mr4593695vkg.46.1477005822756;
        Thu, 20 Oct 2016 16:23:42 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id r85sm17444746vke.27.2016.10.20.16.23.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Oct 2016 16:23:42 -0700 (PDT)
Date: Thu, 20 Oct 2016 21:23:36 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: julia.lawall@lip6.fr, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: sm750fb: Make variable
 read only after initialization.
Message-ID: <20161020232336.GA15075@lennorien.com>
References: <20161017023216.GA17876@lennorien.com>
 <20161017074404.GA7010@kroah.com>
 <20161018214611.GA23146@lennorien.com>
 <alpine.DEB.2.20.1610190757330.2721@hadrien>
 <20161019064840.GB29351@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161019064840.GB29351@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 19, 2016 at 08:48:40AM +0200, Greg KH wrote:
> On Wed, Oct 19, 2016 at 08:00:15AM +0200, Julia Lawall wrote:
> > 
> > 
> > On Tue, 18 Oct 2016, Elise Lennion wrote:
> > 
> > > On Mon, Oct 17, 2016 at 09:44:04AM +0200, Greg KH wrote:
> > > > On Mon, Oct 17, 2016 at 12:32:16AM -0200, Elise Lennion wrote:
> > > > > Use __ro_after_init to protect variable, initialized in several steps,
> > > > > from overwrite during runtime.
> > > > >
> > > > > Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> > > > > ---
> > > > >  drivers/staging/sm750fb/sm750.c | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> > > > > index 0663ec0..5c02ad8 100644
> > > > > --- a/drivers/staging/sm750fb/sm750.c
> > > > > +++ b/drivers/staging/sm750fb/sm750.c
> > > > > @@ -719,7 +719,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
> > > > >  	return ret;
> > > > >  }
> > > > >
> > > > > -static struct fb_ops lynxfb_ops = {
> > > > > +static __ro_after_init struct fb_ops lynxfb_ops = {
> > > > >  	.owner = THIS_MODULE,
> > > > >  	.fb_check_var =  lynxfb_ops_check_var,
> > > > >  	.fb_set_par = lynxfb_ops_set_par,
> > > >
> > > > How did you "prove" or test this?  I don't think it is correct to mark
> > > > this code this way at all, but would be glad to reconsider the patch if
> > > > you can prove me otherwise :)
> > > >
> > > > thanks,
> > > >
> > > > greg k-h
> > >
> > > I compiled the file, used 'size' to verify that the data segment size
> > > was smaller, installed the module, removed and reloaded the module with
> > > modprobe and used lsmod to ensure the driver was loaded.
> > >
> > > Actually I just compiled the module and checked the data segment size
> > > before sending the patch, but now I did the whole procedure and
> > > everything seems right :)
> > >
> > > But I didn't find a good reference about how __ro_after_init works,
> > > only a few old patches that use it, so I don't really know if it can
> > > be loaded and still not have the desired effect, make lynxfb_ops read
> > > only after initialization.
> > >
> > > I put it in that position because that's where a const would be, but
> > > I searched more patches and most of them use __ro_after_init after the
> > > name of the variable. Is that what's strange in this patch?
> > >
> > > I'll make a v2 with __ro_after_init in the standard position in case
> > > that's the problem.
> > 
> > I think it would be helpful to give an overview of how the structure is
> > actually used in practice.  Eg, it is only modified in function XX which
> > is declared as __init, and otherwise it is only passed to function YY
> > where the corresponding parameter is declared as const.  Checking that the
> > declaration is really compiled is good, but it doesn't check that all the
> > uses are compiled in your configuration, so it is helpful to check the
> > problem from multiple perspectives.
> 
> Along with that, if you enable CONFIG_DEBUG_SECTION_MISMATCH in your
> kernel build, you might see what the compiler thinks is happening as
> well.  I don't know if that tracks __ro_after_init usage, but it can't
> hurt.
> 
> For this specific change, if you walk through the code paths by hand,
> you will see where the structure is modified when the driver is bound to
> a device.  As that can happen any time after init has happened (i.e.
> after the module is loaded), I don't think this change is safe at all.
> Remember, you can add a PCI device at any time to lots of systems, it is
> a hotpluggable bus, just like USB.
> 
> thanks,
> 
> greg k-h

Oh, now I see it isn't safe. The struct has attributes changed during
the execution of probe(), so it can't be __ro_after_init.

As a side note, I enabled CONFIG_DEBUG_SECTION_MISMATCH to see if it
tracks __ro_after_init and judging by the output, I think it doesn't.

thank you,

elise

