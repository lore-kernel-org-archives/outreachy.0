X-GM-THRID: 6331013322941399040
X-Received: by 10.66.233.5 with SMTP id ts5mr1462176pac.16.1474173856614;
        Sat, 17 Sep 2016 21:44:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.37.39 with SMTP id k36ls8143103otb.2.gmail; Sat, 17 Sep
 2016 21:44:16 -0700 (PDT)
X-Received: by 10.31.96.85 with SMTP id u82mr2276838vkb.30.1474173856168;
        Sat, 17 Sep 2016 21:44:16 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id h124si5446965pfe.0.2016.09.17.21.44.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 21:44:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q2so2848522pfj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 21:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=goog+/3U8mFfI6OsxBnsQkz9xpWDEiS5JnPaKChhg1o=;
        b=SI5zPH6b4vPL7CY+Gs6C7QBaG6vv7kN5F2K7zswF3993qQ9omLsi7GF1PVHEZeyQcY
         LHCWh8ReoMj0q9QI87povuUEfF0pCYvkpkhtjb8QI+MKVxhAxl+Lx9y6UtIkhoFTRnS6
         SNxRr8a2DhNn8AUaljTSvKf+Qc7Na1f/NuTdRUvL3+zIH1DL0TlJkfFCtQcRNGIJxACR
         L1e7oEAhI7FViJtCBseizKfO7pIXVkGitXnFzuIsUDGVXTS9BZ2cBCIROAolm/FZGTM1
         4jvLj7YrSampq+7QA9NrJ6gVuGvBArdyBO3ymc2qD9tz8J/3Z59OySw2k35TG7bPJogw
         IwRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=goog+/3U8mFfI6OsxBnsQkz9xpWDEiS5JnPaKChhg1o=;
        b=E5aB2+gbSJh3vvkE5B5mFv9AtXBTctKC9nq2i4zzOU1kzJQH/HkWwnwqNSafBJZYOi
         /1AxJqtjgGzo+ghCEtz0KpYvFzLFtTWEYjGDxLgMUy+rReZkGcccrm14rd+LBq5yJuN8
         Wvau36hkqk9b8AHE/o4S6FhXGWCZlKhpjtLiJwhBSn6OCQo6/cUrz7CDGocemhWoTdIY
         ymT9W+M77KaGBhGxAhp6SjHPvITwrRUczsQdodlV1mroyhyhf5ZSSJzDh3UZ1l01RRGC
         5gaGpCpN+VrfOrlnNK6smMoRYqySSAAVSo0vrE/up79EM5DNvnizZ1LbHDtfHGyUZVm3
         0DAQ==
X-Gm-Message-State: AE9vXwMucTglTBcu1zwnTPb3Uda2/WrCaL7swqPOfCO4m2VTvzznpTfUIHoVHS+o8E11ZA==
X-Received: by 10.98.200.4 with SMTP id z4mr25283007pff.95.1474173855945;
        Sat, 17 Sep 2016 21:44:15 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id h66sm62034377pfc.47.2016.09.17.21.44.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 21:44:15 -0700 (PDT)
Date: Sun, 18 Sep 2016 10:14:10 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Leslie Klein <lesliebklein@gmail.com>
Subject: Re: [PATCH] staging: comedi: Optimize code using logical
 short-circuiting
Message-ID: <20160918044409.GA4499@namrata-HP-Pavilion-g6-Notebook-PC>
References: <20160916192454.GA6366@namrata-HP-Pavilion-g6-Notebook-PC>
 <20160917183522.GA30404@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160917183522.GA30404@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Sep 17, 2016 at 08:35:22PM +0200, Greg Kroah-Hartman wrote:
> On Sat, Sep 17, 2016 at 12:54:59AM +0530, Namrata A Shettar wrote:
> > Optimize code using logical short-circuiting. Two if statements
> > having same return value is equivalent to a single if statement with
> > condition being the union of the prior two.
> > 
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  drivers/staging/comedi/comedi_fops.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> > index 1999eed..0d69ed7 100644
> > --- a/drivers/staging/comedi/comedi_fops.c
> > +++ b/drivers/staging/comedi/comedi_fops.c
> > @@ -791,9 +791,7 @@ static int is_device_busy(struct comedi_device *dev)
> >  
> >  	for (i = 0; i < dev->n_subdevices; i++) {
> >  		s = &dev->subdevices[i];
> > -		if (s->busy)
> > -			return 1;
> > -		if (s->async && comedi_buf_is_mmapped(s))
> > +		if (s->busy || (s->async && comedi_buf_is_mmapped(s)))
> >  			return 1;
> 
> The original code was easier to read.
> 
> We write kernel code for developers first, and the compiler second.  In
> either case, the compiler will create the same output, you haven't
> really saved any logic or speed here.  You have made it harder to read
> and follow, so I will have to reject this change, sorry.
> 
> thanks,
> 
> greg k-h

Got that! will keep that in mind the next time around I plan making such
a change.

thanks,

namrata

