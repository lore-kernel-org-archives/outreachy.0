X-GM-THRID: 6337746804060192768
X-Received: by 10.107.16.81 with SMTP id y78mr7434096ioi.36.1475978944403;
        Sat, 08 Oct 2016 19:09:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.151 with SMTP id f145ls2401040ita.17.gmail; Sat, 08 Oct
 2016 19:09:01 -0700 (PDT)
X-Received: by 10.66.21.162 with SMTP id w2mr266937pae.141.1475978941412;
        Sat, 08 Oct 2016 19:09:01 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id p131si2268155vkf.1.2016.10.08.19.09.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 19:09:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id z126so3127535vkd.0
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 19:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MJlwrcjHPP+46K6UzVHuLuNYQcVvg3cijHGVpEIzJ6s=;
        b=gqHfYszY/bZjVqumJYtN1LFZPKeFPisBwKuEGgbAld3/8mSVCrYIyGJkQbuZ7ZCxXg
         RSuNtKktVEKBccdP3n0CtFWPEREm+PRA2N4lo2m8TrQUZG81YisA5MHr6CjLSKn4D2Am
         JrdU/R+e+qwhYPYV4dLAQep/cVgb+Wxxy2Ci4xAWI5X71hiya+6cXxsd7SNybiJzZJwe
         xrLbYvTu8REQYJuzeRStY2kYykKRi8K29osMvgLfSFGAhsNe7Jk9/i5x0SUSFhCKwdsy
         qRdezyBXfVeZLem/Puh01exO6NIhqsqS0LO+N+OxR07VzWaebyayZrqA8Ijvx2z2z60q
         FPmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MJlwrcjHPP+46K6UzVHuLuNYQcVvg3cijHGVpEIzJ6s=;
        b=l+kqhm3KXbh/BqVqArih3JoRfwGcxV7diskGQvCmp+PxNOjnC0RClMwuF//KhxFabK
         XZNbKV7XaHiYz78GvB/sOQPNpOdfYxPqvg4Mj7uqTQSrivtcGmmAjcMUcI8QC91dMv4Y
         Sd1A2Soc5VnJtych5dU5tOriUVg7zdde0xEDba3qq0mJ6mJhSf4xWlgLlgpumtcIgbVM
         Coe6hXATjSrNLJQ/5vPezABnCPT5j4hfEdPmUCm5HdBSVrR7BEFhWefxH68K5wT+m1mS
         gHAlZsERi9ZlZAASIxwa2Yhn3vlsEmoIB5wxvdrr+BhNiR64qYOY8Q+EbYxT1uKdMI/w
         30OQ==
X-Gm-Message-State: AA6/9RkXRMmhNANXkY1cvanSehME5eTXt9ZUXF942ELxEseiT9n3ZTfjYMormA0MAismnA==
X-Received: by 10.31.51.74 with SMTP id z71mr19033429vkz.172.1475978941203;
        Sat, 08 Oct 2016 19:09:01 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id p10sm2170035uaa.0.2016.10.08.19.08.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 19:09:00 -0700 (PDT)
Date: Sat, 8 Oct 2016 23:08:54 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: sm750fb: Replace printk() with pr_info().
Message-ID: <20161009020854.GA30508@lennorien.com>
References: <20161005205247.GA8857@lennorien.com>
 <20161006124826.GA14551@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161006124826.GA14551@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 06, 2016 at 02:48:26PM +0200, Greg KH wrote:
> On Wed, Oct 05, 2016 at 05:52:47PM -0300, Elise Lennion wrote:
> > Fix checkpatch warning:
> > 
> > WARNING: printk() should include KERN_ facility level
> > 
> > New checkpatch warning appears after including KERN_ facility level.
> > 
> > Fix checkpatch warning:
> > 
> > WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
> > 
> > Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> > ---
> > 
> > v2: Fixed new checkpatch warning noted by Julia Lawall <julia.lawall@lip6.fr>
> > Reworked to use pr_info() instead of printk()
> > 
> >  drivers/staging/sm750fb/ddk750_help.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
> > index 9637dd3..475a943 100644
> > --- a/drivers/staging/sm750fb/ddk750_help.c
> > +++ b/drivers/staging/sm750fb/ddk750_help.c
> > @@ -11,7 +11,5 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
> >  	devId750 = devId;
> >  	revId750 = revId;
> >  	if (revId == 0xfe)
> > -		printk("found sm750le\n");
> > +		pr_info("found sm750le\n");
> >  }
> > -
> > -
> 
> Why are you deleting these extra lines?
> 

I was fixing a checkpatch CHECK and forgot to put it in a different commit, sorry.

> And why can't you use dev_info() here instead of pr_info()?
> 
> thanks,
> 
> greg k-h

I didn't use dev_info() because I didn't find a reference to a device struct.

I searched about how to use dev_* and all examples I found passed a pointer to a device struct in the function call.

In this case, without the pointer, how can I find the device to pass to dev_info()?

thank you.

elise

