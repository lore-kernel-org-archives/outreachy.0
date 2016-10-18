X-GM-THRID: 6342256003248029696
X-Received: by 10.31.48.216 with SMTP id w207mr865734vkw.33.1476827179714;
        Tue, 18 Oct 2016 14:46:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.164 with SMTP id h33ls551353otc.12.gmail; Tue, 18 Oct
 2016 14:46:18 -0700 (PDT)
X-Received: by 10.129.167.9 with SMTP id e9mr464489ywh.3.1476827178732;
        Tue, 18 Oct 2016 14:46:18 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id p70si5034256vkd.0.2016.10.18.14.46.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Oct 2016 14:46:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id 130so464297vkg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 18 Oct 2016 14:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=UosEaa8vlqor5JgKhfV3yYIavIQMbl9zeF0uS81DOdw=;
        b=WDTbGExo/h8sBKIru7Cr3ShNnDxkECx2GP8WvPQZzBlumkQMoCeyRxVqaO/7huJOXT
         acZDBn3e3t5yxvS8eInYbd141q2QbHvlOGlaKrQlU7hOw0d/v0mmm2azr/5IqCrr3+8o
         OqJw8JLG0giAbNRsAEu8ZP/6+hwXfk3GFQ0ZnjopZyBrSoulsNZLhntdiUnbPIolNVES
         MR5nzOQJBOd6nmAj3dYI28d5sgwS2WKeiE54sdNv9nnDbYcD73/lJFVXiNborTh5XtOa
         9miLyG2l7CuK6HcvS3zwK9frD6gfeQ1OuewY8d4fC4mm1xgu0/J1jmuuifJ7kq1ZNUTU
         mHLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=UosEaa8vlqor5JgKhfV3yYIavIQMbl9zeF0uS81DOdw=;
        b=jbwgl2mIT4wSh8tDh27/fDXHHzR7EKGQWHMbiPUKj99Hye4tNUoq18dj9cLuoz9eKh
         lAKvmMinbQWycj5CorXIeKW8E9384S8UGMot2ZFslgQTjll3sfiPKz9j6sDDlsBKeQVv
         64pTaNSsmkG2Hc4lK0rWDC9GwqnYZd4IEbYB8Vglvdc/f6sxwszvCQmAAwCS6BlAvqek
         qa2NpzpUr2EiQJbnR4QVJ7J6BtmaCJtWbl6pQkXuiQWFWJw+PFYyFYeiohH3uYd0rAN6
         ec5ZSg2XdReWCMa1ICr13ix4KCuqMI58xtX664LifUHLxNt2rpKL4ttdX1I6kA5pzcdx
         NnGw==
X-Gm-Message-State: AA6/9RlhgnaG+ib0/xBrGjQv2w9r/1HDp0jqAWdtQiW2DfHXfaOJRVVGq2ijUesSQx3Izw==
X-Received: by 10.31.84.130 with SMTP id i124mr2609538vkb.66.1476827178535;
        Tue, 18 Oct 2016 14:46:18 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id y72sm14837516vky.9.2016.10.18.14.46.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Oct 2016 14:46:18 -0700 (PDT)
Date: Tue, 18 Oct 2016 19:46:11 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: sm750fb: Make variable read only after
 initialization.
Message-ID: <20161018214611.GA23146@lennorien.com>
References: <20161017023216.GA17876@lennorien.com>
 <20161017074404.GA7010@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161017074404.GA7010@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 17, 2016 at 09:44:04AM +0200, Greg KH wrote:
> On Mon, Oct 17, 2016 at 12:32:16AM -0200, Elise Lennion wrote:
> > Use __ro_after_init to protect variable, initialized in several steps,
> > from overwrite during runtime.
> > 
> > Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> > ---
> >  drivers/staging/sm750fb/sm750.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> > index 0663ec0..5c02ad8 100644
> > --- a/drivers/staging/sm750fb/sm750.c
> > +++ b/drivers/staging/sm750fb/sm750.c
> > @@ -719,7 +719,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
> >  	return ret;
> >  }
> >  
> > -static struct fb_ops lynxfb_ops = {
> > +static __ro_after_init struct fb_ops lynxfb_ops = {
> >  	.owner = THIS_MODULE,
> >  	.fb_check_var =  lynxfb_ops_check_var,
> >  	.fb_set_par = lynxfb_ops_set_par,
> 
> How did you "prove" or test this?  I don't think it is correct to mark
> this code this way at all, but would be glad to reconsider the patch if
> you can prove me otherwise :)
> 
> thanks,
> 
> greg k-h

I compiled the file, used 'size' to verify that the data segment size
was smaller, installed the module, removed and reloaded the module with
modprobe and used lsmod to ensure the driver was loaded.

Actually I just compiled the module and checked the data segment size
before sending the patch, but now I did the whole procedure and
everything seems right :)

But I didn't find a good reference about how __ro_after_init works,
only a few old patches that use it, so I don't really know if it can
be loaded and still not have the desired effect, make lynxfb_ops read
only after initialization.

I put it in that position because that's where a const would be, but
I searched more patches and most of them use __ro_after_init after the
name of the variable. Is that what's strange in this patch?

I'll make a v2 with __ro_after_init in the standard position in case
that's the problem.

thank you,

elise

