X-GM-THRID: 251519827968
X-Received: by 10.180.8.67 with SMTP id p3mr520655wia.7.1424280985463;
        Wed, 18 Feb 2015 09:36:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.207.101 with SMTP id lv5ls57044lac.22.gmail; Wed, 18 Feb
 2015 09:36:24 -0800 (PST)
X-Received: by 10.112.167.98 with SMTP id zn2mr78594lbb.6.1424280984953;
        Wed, 18 Feb 2015 09:36:24 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id l8si6218852wia.0.2015.02.18.09.36.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 09:36:24 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id bs8so42683501wib.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 09:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ibMiXD0/XZkea06unJf8VIiF2BlSE93bMimHHKtGc1I=;
        b=rU9j8v6kZTFSdBzNXuWT8ub2G4Nku4lXpuzmEyndfuilHe2C37FgBxFj/2lIFPdLGG
         ZRiZRufnUw9FonFT8ZSZtRjBdSU/WybU++Sz5lW0yVHQEYzZyY7/1Y7AG9k1z+FWX8B5
         wbYuSyu+HyjIPMM0cl/OQCYNYXZWoe+/AqRjMfmRZCLZ/YzCQNS1IbmhKRtlqytSTJPL
         DA6SygJK3w85j7I7hvutr9QJInANOUI9jzKOlRhZOXd2BFhgWbi5iZtlGf4kq6N1SToO
         egP0O8hnWAgk7btOKOxXVVeeUE+Jzv3Eg2LMN9YrL6/tufrs3T/s8NSfGplnWMjhOp8D
         v95Q==
X-Received: by 10.194.88.131 with SMTP id bg3mr403196wjb.119.1424280984832;
        Wed, 18 Feb 2015 09:36:24 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.234.24])
        by mx.google.com with ESMTPSA id n6sm33611680wjy.8.2015.02.18.09.36.23
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 09:36:24 -0800 (PST)
Date: Wed, 18 Feb 2015 19:36:20 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: bcm2048: remove
 unused variable
Message-ID: <20150218173620.GA24117@localhost.localdomain>
References: <20150218013353.GA17840@localhost.localdomain>
 <alpine.DEB.2.02.1502180711170.2066@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1502180711170.2066@localhost6.localdomain6>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Feb 18, 2015 at 07:15:07AM +0100, Julia Lawall wrote:
> On Wed, 18 Feb 2015, Aya Mahfouz wrote:
> 
> > This patch removes the variable value since it is used only
> > to store return values and check their values. The pattern
> > of storing return values was found using the following
> > coccinelle script:
> > 
> > @@
> > expression ret;
> > identifier f;
> > @@
> > 
> > -ret =
> > +return
> >      f(...);
> > -return ret;
> > 
> > Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > ---
> > v1: bdev is also a candidate for removal. Is there a guideline
> > for such cases?
> 
> Kernel code tends not to nest function calls very much.  Also then you 
> would have to call dev_get_drvdata twice, for the test and for the 
> subsequent call to bcm2048_get_##prop.
> 
> Some developers are not enthusiastic about function calls in local 
> variable declaration lists.  As here, the call and the test are separated.  
> You could use grep to see what is commonly done for this function.
> 
> julia
>

ok, thanks for your comments. I guess I need to read more before
carrying out further changes.

Kind Regards,
Aya Saif El-yazal Mahfouz

> >  drivers/staging/media/bcm2048/radio-bcm2048.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> > index 60a57b2..6e0b83e 100644
> > --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> > +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> > @@ -1987,17 +1987,13 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
> >  					char *buf)			\
> >  {									\
> >  	struct bcm2048_device *bdev = dev_get_drvdata(dev);		\
> > -	int value;							\
> >  									\
> >  	if (!bdev)							\
> >  		return -ENODEV;						\
> >  									\
> > -	value = bcm2048_get_##prop(bdev);				\
> > -									\
> > -	if (value >= 0)							\
> > -		value = sprintf(buf, mask "\n", value);			\
> > +	if (bcm2048_get_##prop(bdev) >= 0)				\
> > +		return sprintf(buf, mask "\n", value);			\
> >  									\
> > -	return value;							\
> 
> This doesn't look corect.  You need to return something in this case.
> 
> >  }
> >  
> >  #define property_signed_read(prop, size, mask)				\
> > -- 
> > 1.9.3
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150218013353.GA17840%40localhost.localdomain.
> > For more options, visit https://groups.google.com/d/optout.
> > 

