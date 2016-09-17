X-GM-THRID: 6331024450775941120
X-Received: by 10.157.4.72 with SMTP id 66mr11122943otc.26.1474096751235;
        Sat, 17 Sep 2016 00:19:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.72 with SMTP id p8ls1518921otd.48.gmail; Sat, 17 Sep
 2016 00:19:10 -0700 (PDT)
X-Received: by 10.129.88.133 with SMTP id m127mr1321621ywb.68.1474096750738;
        Sat, 17 Sep 2016 00:19:10 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id si10si3765254pab.1.2016.09.17.00.19.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 00:19:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 6so1596991pfl.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 00:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=u9vLpV5ATIsYIGIjWCm5/WIch3OZbsGcp43iRM3ORmA=;
        b=P7YJaeHPRdKZFnSlt2SoXyg1170NhXN94w4BKjjTE/oMCYkJUd0QCGa6iN6gjGDLlB
         bSr3Ccyi2FWbgsBw2iurfk6gEXz88g43JwK7EYUJgGBg6/WE7lxkjwx5qk4v9MUH9qRY
         UoIepL9rabz7IAXuzUTBd7EaWt2UD1RsZeUOMwMxnCMlYIUnFc5jpg24l7tR1lylF5/v
         CwcaDlIvGKHWdgfA+6UtXlzxyBy6+CEirHMPlYMfF8ybKxY+en0KSaZT8bse4KyzKb1a
         xW4l0j87sXTTck1Aiw76BF7IzlxWHzfj5SXaJv7S20cBKF8Gjw+Cs+6RuUqeHWBRKvHb
         DcVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=u9vLpV5ATIsYIGIjWCm5/WIch3OZbsGcp43iRM3ORmA=;
        b=EdHq5k8+FPfcrotsjHGoXaRACiAnE8xbGgMZRZa/oBqzKqKt16xc9Z6kJH3sUlTRZ8
         pw6LA43gzHeRWWxARyCNWphbWohfMvz2J2yFxFiNx7WF4o3DeN88xx0qFNCaQsqt/xzO
         DYPBHBanPTyueIT98PVFFQM0TN4a1pqXQh6ovKuqeFIc7SpaqSRKDHCfWw3kqNoxegmI
         ipZZg0O1eUUDMu7WOYt7umBzS26YDYCivQstznfppU3VvkMmf53lyrwDyulBZY9kjARj
         +o/lRERL+SkiNEhe3gVHqI49cj9G+5cH9PeA9kNvn4b6Izbx1NsJaGf2xPT5GPk/V9nV
         a8TQ==
X-Gm-Message-State: AE9vXwOJN1JiA5oArkGIl2uBXbgdyEMW9IsUHyEYg1nLWa91Z8ebQH1DVavCqz3F29thQA==
X-Received: by 10.98.70.132 with SMTP id o4mr11679563pfi.132.1474096750525;
        Sat, 17 Sep 2016 00:19:10 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id f16sm52546563pfd.84.2016.09.17.00.19.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 00:19:10 -0700 (PDT)
Date: Sat, 17 Sep 2016 12:49:05 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: comedi: comedi_fops:
 Optimize code with logical short-circuiting
Message-ID: <20160917071902.GA4171@namrata-HP-Pavilion-g6-Notebook-PC>
References: <20160916200129.GA7265@namrata-HP-Pavilion-g6-Notebook-PC>
 <20160916202336.GA7308@kroah.com>
 <20160916203912.GB7471@namrata-HP-Pavilion-g6-Notebook-PC>
 <alpine.DEB.2.10.1609170745530.3336@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609170745530.3336@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Sep 17, 2016 at 07:49:37AM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 17 Sep 2016, Namrata A Shettar wrote:
> 
> > On Fri, Sep 16, 2016 at 10:23:36PM +0200, Greg Kroah-Hartman wrote:
> > > On Sat, Sep 17, 2016 at 01:31:33AM +0530, Namrata A Shettar wrote:
> > > > Optimize code using logical short-circuiting. Two 'if' statements with
> > > > same body is same as a single 'if' statement with same body and
> > > > condition being union of prior two.
> > > >
> > > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > > ---
> > > >  drivers/staging/comedi/comedi_fops.c | 7 +------
> > > >  1 file changed, 1 insertion(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> > > > index 0d69ed7..b4f6fec 100644
> > > > --- a/drivers/staging/comedi/comedi_fops.c
> > > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > > @@ -1452,13 +1452,8 @@ static int do_insnlist_ioctl(struct comedi_device *dev,
> > > >  		return -EFAULT;
> > > >
> > > >  	data = kmalloc_array(MAX_SAMPLES, sizeof(unsigned int), GFP_KERNEL);
> > > > -	if (!data) {
> > > > -		ret = -ENOMEM;
> > > > -		goto error;
> > > > -	}
> > > > -
> > > >  	insns = kcalloc(insnlist.n_insns, sizeof(*insns), GFP_KERNEL);
> > > > -	if (!insns) {
> > > > +	if (!data || !insns) {
> > >
> > > That's a lot harder to read and maintain, don't you think?  The original
> > > code was just fine.
> > >
> > > sorry,
> > >
> > > greg k-h
> >
> > I agree that it is harder to read and maintain but I went by the argument that in doing so the 'if' condition need not be evaluated twice
> > , if the first statement (!data) is true then the body is evaluated and need not check for (!insns). Also, reduces a few lines of code (the body is written once as compared to being written twice).
> 
> The kind of code you produced does exist in the kernel.  But one could
> wonder why you bother calling kcalloc if you are just going to free its
> result.  That doesn't seem very efficient.  Also, if the first one fails,
> then it will probably be because of insufficient memory, in which case the
> second one will probably fail too.  I guess that a mostly redundant crash
> dump will be produced.
> 
> It's OK to make the change when the tests are right next to each other,
> but not when there is a side-effecting operation between them.
> 
> julia
> 
> 
Thanks for breaking it down for me! seems more clear now. I will keep that in mind the next time I think of making such a change. However in a
similar patch ( [PATCH] staging: comedi: Optimize code using logical short-circuiting ) the tests are one after the other with no side-effecting operation between them, so the change would have been OK there I suppose? but is it trivial and hence the change doesn't make much of a difference?

Thanks,
Namrata


> 
> >
> > Thanks for the input!
> > -Namrata
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160916203912.GB7471%40namrata-HP-Pavilion-g6-Notebook-PC.
> > For more options, visit https://groups.google.com/d/optout.
> >

