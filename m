X-GM-THRID: 6338829541865160704
X-Received: by 10.66.189.226 with SMTP id gl2mr6547260pac.57.1476088128841;
        Mon, 10 Oct 2016 01:28:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.26.88 with SMTP id u24ls726907otu.36.gmail; Mon, 10 Oct
 2016 01:28:48 -0700 (PDT)
X-Received: by 10.13.233.6 with SMTP id s6mr9110048ywe.63.1476088128448;
        Mon, 10 Oct 2016 01:28:48 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id i84si260652ywg.0.2016.10.10.01.28.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 01:28:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id n189so6194585qke.1
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 01:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NQHRSfwie4qhbePh7g16Rz/7vzAuu8/dYY3bRjF4Xdk=;
        b=VU+K3boY8Gt6mUP7KwRBu4ZqMCv7XrxdcoxPzRC7fXEvXSTKTKLOZVtNDGii8oocc5
         aATdw+xkKU7lO9oFHsQKtfWQaZylfDkCuX01ehdHB4ND0BmOC7ZXPQ78PeeIKMbAk3d2
         WoF4K63sjiDMcXt1JVzfdr5nKZ/XGngge1+INaZqDyfRcTLeiNMSF4bhYp3oWz9QbGEk
         hDb1KgVqiOKKcW6q+WGGfKSG1hgjClJfvsEu1Rk/i7Wiel1poJw0RQKxj8ckeaKnf7mD
         M6zKtQUd6PbfI7e2c61T9gHwmdzbYRfgwm8KjUhCN1U/ZVRlSVHS+5hI0HhETFTHx3/v
         499g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NQHRSfwie4qhbePh7g16Rz/7vzAuu8/dYY3bRjF4Xdk=;
        b=ebmzYcaLPUjcquRdfQeihN+S5UzZAlsbnX+Drsz/fMXeDcF+irtgyPDcTYtJUF7wSz
         zIU7Ha2YWT1gvRSBAdITNzDowx24JIxHRH7Jdan/R2pF0NCZaFxLDZCDgp97c16Y00WE
         vCPNLSopUIas6DJu1QRIs1zeSbYthbRkJ8peKtFMkdwGzMDs7c2R/SYM+TKjgcLqzkKh
         cYop6Wj2khZ/lXW5a4oZanEfMsh69rXLC+PaOue7REBAI6CXD784jqQby6BxojfZxGnS
         UZBdYJrPypDq9NLsnfJuqM1gXCvTsxxgXjhJiZc6qVlYym0MunVUpooEe7qqSEiTRTGM
         zMzg==
X-Gm-Message-State: AA6/9Rn+ZdXF304N1QbMOrTXSf51TQD6lEykSmN6SmrnN3v7beNs7poNUa6HdP7pfYHeIA==
X-Received: by 10.194.7.68 with SMTP id h4mr28284525wja.156.1476088127976;
        Mon, 10 Oct 2016 01:28:47 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id l3sm38220828wjp.17.2016.10.10.01.28.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 10 Oct 2016 01:28:47 -0700 (PDT)
Date: Mon, 10 Oct 2016 11:28:46 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: ks7010: Replace printk with netdev_*
Message-ID: <20161010082846.GA8819@domino-MS-16Y1>
References: <20161009203937.GA1549@domino-MS-16Y1>
 <20161010070913.GA25825@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161010070913.GA25825@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 10, 2016 at 09:09:13AM +0200, Greg Kroah-Hartman wrote:
> On Sun, Oct 09, 2016 at 11:39:37PM +0300, Mihaela Muraru wrote:
> > This is a patch to ks_hostif.c file that fixes up a checkpatch.pl
> > 
> > WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
> > dev_info(dev, ... then pr_info(... to printk(KERN_INFO ...
> > 
> > For netdev devices netdev_info and netdev_warn is preferred over
> > printk(KERN_INFO/WARN..).
> > 
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > 
> > ---
> > Changes in v2:
> > 	-rebase the staging-testing branch
> 
> Really?  It still does not apply :(
> 
> Note, many people seem to be working on this same file, in the same
> area, for some reason...

Thank you for reply.

I saw that this file has a lot of problems and  because of that I will rebase it again and I will resend it,if is ok for you. It is a small contribution, but it can improve something.

mihaela


> thanks,
> 
> greg k-h

