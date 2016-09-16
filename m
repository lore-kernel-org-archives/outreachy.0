X-GM-THRID: 6331024450775941120
X-Received: by 10.157.33.68 with SMTP id l4mr630421otd.125.1474058359499;
        Fri, 16 Sep 2016 13:39:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.231 with SMTP id s94ls6598798ota.17.gmail; Fri, 16 Sep
 2016 13:39:19 -0700 (PDT)
X-Received: by 10.200.46.56 with SMTP id r53mr579710qta.72.1474058359203;
        Fri, 16 Sep 2016 13:39:19 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id um12si3050837pab.2.2016.09.16.13.39.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 13:39:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id vz6so3859573pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 13:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ik/J1zTgJni0PGnuWGFn0UwKwg596xTs0AzKao19ob8=;
        b=pPXHVKpHDPzU5NSGB/uPLuywaggZCAW264xkgi7A5QS0TlB9tffvjxZ2YO1sV8B4wb
         opjCL8dknsFH9S5UyhF/WZOgsKbjDuzDaYA2jCaLQiTQdonl1bU8TNWStmyYDZPHxsJD
         nIc9O4Qh9q4VTQ5mK7ODoZH9flHoe7WNQCwDngp6Zv1NQGajDPHHSelz9MGt2Ua2HKyX
         ftEMtw9dEofHN/LjkQe3vVM/o18s9ODacKtgAzN6zjc5mP4hzqOOoEJkPbUkQicdGaLW
         dQcNRLrCCvVGSMEv4xjCEX58z5PFfzZkhfMAQTbwSCSNmaJzYQJWkGTpOawB+VLYYYnn
         L68g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ik/J1zTgJni0PGnuWGFn0UwKwg596xTs0AzKao19ob8=;
        b=T1O0xeckSOHSnvMMvDFEKgCUJM+ys4GoQsmn/9fvLqnoef48EyWKtHcJPOv2g5Z7nw
         TxF23pQPSetYC/rYXPGWYHIvL7UQg28NdNUbskPQ7AustKkVhgvM6a/mXSftwau02Odj
         SqGfa7qyr9dgDaPwKf8/OFq7+/G3pYLrVcBcoAuiLPAyBjoEip8nJy/xB/5vK3VrquY8
         LSEnBNxxwD/yINwnWqP70InP88A4mIwwXvyXLW4u7UmpiDfEsnqMjZHlk8tIvLwyXWh9
         NzEz41APw1uauoJ0mNeLintXawToxOLKRMcwJ3IuL/yPh4nR3rT+yIKUFLR/wrnpavQ1
         JeTA==
X-Gm-Message-State: AE9vXwPJj77eSrPGIwBRNriC5wpn4+gRgDnClT5+RzkB6QEU/coKujErGIbwUIsoO6bRsQ==
X-Received: by 10.66.227.4 with SMTP id rw4mr26051719pac.119.1474058358828;
        Fri, 16 Sep 2016 13:39:18 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id n3sm14136061paf.13.2016.09.16.13.39.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 13:39:18 -0700 (PDT)
Date: Sat, 17 Sep 2016 02:09:14 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: comedi: comedi_fops: Optimize code with logical
 short-circuiting
Message-ID: <20160916203912.GB7471@namrata-HP-Pavilion-g6-Notebook-PC>
References: <20160916200129.GA7265@namrata-HP-Pavilion-g6-Notebook-PC>
 <20160916202336.GA7308@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160916202336.GA7308@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Sep 16, 2016 at 10:23:36PM +0200, Greg Kroah-Hartman wrote:
> On Sat, Sep 17, 2016 at 01:31:33AM +0530, Namrata A Shettar wrote:
> > Optimize code using logical short-circuiting. Two 'if' statements with
> > same body is same as a single 'if' statement with same body and
> > condition being union of prior two.
> > 
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  drivers/staging/comedi/comedi_fops.c | 7 +------
> >  1 file changed, 1 insertion(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> > index 0d69ed7..b4f6fec 100644
> > --- a/drivers/staging/comedi/comedi_fops.c
> > +++ b/drivers/staging/comedi/comedi_fops.c
> > @@ -1452,13 +1452,8 @@ static int do_insnlist_ioctl(struct comedi_device *dev,
> >  		return -EFAULT;
> >  
> >  	data = kmalloc_array(MAX_SAMPLES, sizeof(unsigned int), GFP_KERNEL);
> > -	if (!data) {
> > -		ret = -ENOMEM;
> > -		goto error;
> > -	}
> > -
> >  	insns = kcalloc(insnlist.n_insns, sizeof(*insns), GFP_KERNEL);
> > -	if (!insns) {
> > +	if (!data || !insns) {
> 
> That's a lot harder to read and maintain, don't you think?  The original
> code was just fine.
> 
> sorry,
> 
> greg k-h

I agree that it is harder to read and maintain but I went by the argument that in doing so the 'if' condition need not be evaluated twice
, if the first statement (!data) is true then the body is evaluated and need not check for (!insns). Also, reduces a few lines of code (the body is written once as compared to being written twice).

Thanks for the input!
-Namrata

