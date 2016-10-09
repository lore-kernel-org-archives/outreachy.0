X-GM-THRID: 6338829541865160704
X-Received: by 10.31.3.105 with SMTP id 102mr7796103vkd.30.1476045439566;
        Sun, 09 Oct 2016 13:37:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.212 with SMTP id f78ls8156249otf.43.gmail; Sun, 09 Oct
 2016 13:37:19 -0700 (PDT)
X-Received: by 10.129.169.201 with SMTP id g192mr3114679ywh.165.1476045439179;
        Sun, 09 Oct 2016 13:37:19 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id a62si1923282vke.2.2016.10.09.13.37.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 13:37:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id l131so6758983lfl.0
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 13:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Dzo4d26SEaojTEWJFUv5SovhJIjCtNBGGQrGRRuSKFs=;
        b=RYUnPUHSv8smN8XFliYEydjPApNkV5mkTkXlZ0NrHmgW3FelU7i7yJ6FUsdR5051aK
         ck/5UBZyDVJJr50xL2OiCqxaVSI/7FCs7fNjh6fs4LQ481A1G7Y2kJ+pdYapSreqRrdY
         jrXoXlW8Ru9G50qbV3cz5wxrUgwOXcrGs3oXt9Fwx01/AiUoKOMaow7foq+NgKsPg6GC
         L9IFv1cDCpOFg2HosD8WYoeX3wahq7eNtlRYJ0/QTTjUNKfn77zPQlqqHyLp8gzOFh2y
         1FmGEcp7Zw1aIzR0JuZaVpgeWyHDMr1tJ0iQ9SwhFP4eL/26QHGdKCgvE9goo+Qq8O7U
         ZIew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Dzo4d26SEaojTEWJFUv5SovhJIjCtNBGGQrGRRuSKFs=;
        b=ALzycMQhWXlu2acVBEF1iipAFDPdicogaUOaE9PFs1KzK3YY8PLXlaYUT4tTfqi9bM
         0W+1294IB+8AP0IlsKwl/LWzcQ+DCxPA3pa6XKWjxrBJTWgrtNZx2ICd1T/Ch0rEH0HR
         UyGeXVnofc7yQAJAQPJ45d0N9mfQgv3sUiuXu9ZiuBJl+V5hiCNZpBy4gJ+pHyDpX71+
         ktI8zv15kYlnFX301lGIn0GgflV/RE70GO4ldR/RoKu2wJIhW7R6H+QEsFHRZrCS1ul6
         lbwJy2fv5/k7ya/QdjLXsvIPH3jOQo+9sM5epqvN2T7vS3fzB2gwEDNaKqzXub9kFBb/
         LL4Q==
X-Gm-Message-State: AA6/9RnqsAUzhWV1xP5lAFUlbvQYHWsqlrizOezAypQNP60iOzlTNMw5RggNzCgjsrg/RQ==
X-Received: by 10.194.118.131 with SMTP id km3mr25008362wjb.173.1476045437647;
        Sun, 09 Oct 2016 13:37:17 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id zz9sm33681214wjb.36.2016.10.09.13.37.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 09 Oct 2016 13:37:17 -0700 (PDT)
Date: Sun, 9 Oct 2016 23:37:16 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: ks7010: Replace printk with netdev_*
Message-ID: <20161009203716.GB1432@domino-MS-16Y1>
References: <20161007205559.GA11103@domino-MS-16Y1>
 <20161009144822.GA15170@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161009144822.GA15170@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 09, 2016 at 04:48:22PM +0200, Greg Kroah-Hartman wrote:
> On Fri, Oct 07, 2016 at 11:55:59PM +0300, Mihaela Muraru wrote:
> > This is a patch to ks_hostif.c file that fixes up a checkpatch.pl
> > 
> > WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
> > dev_info(dev, ... then pr_info(... to printk(KERN_INFO ...
> > 
> > For netdev devices netdev_info and netdev_warn is preferred over
> > printk(KERN_INFO/WARN..).
> > 
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > ---
> >  drivers/staging/ks7010/ks_hostif.c | 11 ++++-------
> >  1 file changed, 4 insertions(+), 7 deletions(-)
> 
> This no longer applies to my tree, can you rebase against the
> staging-testing branch and resend it?
> 
> thanks,
> 
> greg k-h

I will resend it, thank you for telling me.

mihaela

