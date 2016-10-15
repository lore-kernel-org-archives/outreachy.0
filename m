X-GM-THRID: 6341635056758423552
X-Received: by 10.25.208.204 with SMTP id h195mr488389lfg.7.1476532155239;
        Sat, 15 Oct 2016 04:49:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.169.1 with SMTP id s1ls362078wme.13.gmail; Sat, 15 Oct 2016
 04:49:14 -0700 (PDT)
X-Received: by 10.28.152.147 with SMTP id a141mr126295wme.17.1476532154624;
        Sat, 15 Oct 2016 04:49:14 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id r82si120373wma.1.2016.10.15.04.49.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 04:49:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id z189so2240802wmb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 04:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=S+mh2syjIH58O3uObkzmCzNmAfRd7EuyC7K4C5zc+EE=;
        b=UgGzoW3muj4+4IJ7V1lAvV3J0/2+/PnyRDDWlJNwIRHCEr0z6kAsEDtQJmtNDWEP14
         XDk9AKUZv8bN8ddGxJTqxObmXYQLOXEoHB9w+h/8qE+ffk+CWCH+NJMV2vQSBD5n0fRO
         TzlgnnajTcb1Kcs6jY9tug6DFE5rP0dElanpSQABaLJW7BXf1LOUcF0u7STZo0Ep6vVb
         QV8/BloD9X2wmg855DCgtv88+bNzrwXKAJFS1imYmMs3np3eiNnc6QrJQ+xseJaKzY65
         M+RxajxwRlvbHb+x0V/+88b1QFT4XS3zprsjP4ihLe5I8jjKvjhlRapmYirmkMyA+8ZL
         rQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=S+mh2syjIH58O3uObkzmCzNmAfRd7EuyC7K4C5zc+EE=;
        b=fQeMb+h4t2GZ9LtIvoEm+RWYu46XuEv439Y68EPkjdZpWScH2wbf34ZIWyn2gLLt1p
         EHUqx/gaY0acUBeU8tXK80TDE4ycs9B0H2NlpD3JfV5E6kCvknYIPLnBpjAv3o7lxkVS
         o5wkEPWp2juaIgo9oTk8GusHCbnrsHv8M/kGsD7tLzefc3nNj5KmutfGh+6BLRV+v2tX
         7aJ+zQJabQphOp7eaUjCOyPRoPk4tMHOvaQHDmYhTY1R7jotKnLulcMdRuYj058PfPZj
         0JHKfHgBNpKAFKQP+bztksfloro2pkrDMWN+sPreG9pQyg7nWv+5Pss1gQuXdq6jj7iI
         Xctg==
X-Gm-Message-State: AA6/9RnIdWg82Mg5/cs+t9X/9h3jTpL6OgrpWebIWPwIR/VGn/+m/MYyMKbVAMt9Obvdag==
X-Received: by 10.28.6.137 with SMTP id 131mr1663152wmg.49.1476532154221;
        Sat, 15 Oct 2016 04:49:14 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id hb5sm36587627wjc.5.2016.10.15.04.49.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 15 Oct 2016 04:49:13 -0700 (PDT)
Date: Sat, 15 Oct 2016 14:49:12 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] infiniband: core: No assignment in if
 statements
Message-ID: <20161015114912.GA14267@domino-MS-16Y1>
References: <20161015102249.GA11314@domino-MS-16Y1>
 <20161015112604.GA11674@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161015112604.GA11674@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 15, 2016 at 01:26:04PM +0200, Greg KH wrote:
> On Sat, Oct 15, 2016 at 01:22:49PM +0300, Mihaela Muraru wrote:
> > Does the assignment before the statement  'if'.
> > 
> > Found with Coccinelle:
> > @r1@
> > identifier ptr;
> > expression fn;
> > statement S;
> > @@
> > 
> > -if ((ptr = fn)) S
> > +ptr = fn;
> > +if (ptr) S
> > 
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > ---
> >  drivers/infiniband/core/addr.c | 3 ++-
> >  drivers/infiniband/core/cma.c  | 3 ++-
> >  drivers/infiniband/core/mad.c  | 9 ++++++---
> >  3 files changed, 10 insertions(+), 5 deletions(-)
> 
> I can't take outreachy patches for stuff outside of drivers/staging/ why
> did you touch the infiniband codebase?

In infiniband, I found a match for  my semantic patch.

>Is it one of the tasks?
No, I write a semantic patch and I wanted to use it and to send the a patch.

I will write other spatch, that will match with a file from drivers/staging/.

Thank you for reply,

mihaela


> thanks,
> 
> greg k-h

