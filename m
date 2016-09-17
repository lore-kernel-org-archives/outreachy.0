X-GM-THRID: 6331024450775941120
X-Received: by 10.28.154.76 with SMTP id c73mr40122wme.20.1474091379043;
        Fri, 16 Sep 2016 22:49:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.146 with SMTP id f18ls662132lji.28.gmail; Fri, 16 Sep
 2016 22:49:38 -0700 (PDT)
X-Received: by 10.46.32.80 with SMTP id g77mr2592990ljg.9.1474091378233;
        Fri, 16 Sep 2016 22:49:38 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si1152855wmd.1.2016.09.16.22.49.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 22:49:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,348,1470693600"; 
   d="scan'208";a="237180575"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2016 07:49:37 +0200
Date: Sat, 17 Sep 2016 07:49:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: comedi: comedi_fops:
 Optimize code with logical short-circuiting
In-Reply-To: <20160916203912.GB7471@namrata-HP-Pavilion-g6-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609170745530.3336@hadrien>
References: <20160916200129.GA7265@namrata-HP-Pavilion-g6-Notebook-PC> <20160916202336.GA7308@kroah.com> <20160916203912.GB7471@namrata-HP-Pavilion-g6-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 17 Sep 2016, Namrata A Shettar wrote:

> On Fri, Sep 16, 2016 at 10:23:36PM +0200, Greg Kroah-Hartman wrote:
> > On Sat, Sep 17, 2016 at 01:31:33AM +0530, Namrata A Shettar wrote:
> > > Optimize code using logical short-circuiting. Two 'if' statements with
> > > same body is same as a single 'if' statement with same body and
> > > condition being union of prior two.
> > >
> > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > ---
> > >  drivers/staging/comedi/comedi_fops.c | 7 +------
> > >  1 file changed, 1 insertion(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> > > index 0d69ed7..b4f6fec 100644
> > > --- a/drivers/staging/comedi/comedi_fops.c
> > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > @@ -1452,13 +1452,8 @@ static int do_insnlist_ioctl(struct comedi_device *dev,
> > >  		return -EFAULT;
> > >
> > >  	data = kmalloc_array(MAX_SAMPLES, sizeof(unsigned int), GFP_KERNEL);
> > > -	if (!data) {
> > > -		ret = -ENOMEM;
> > > -		goto error;
> > > -	}
> > > -
> > >  	insns = kcalloc(insnlist.n_insns, sizeof(*insns), GFP_KERNEL);
> > > -	if (!insns) {
> > > +	if (!data || !insns) {
> >
> > That's a lot harder to read and maintain, don't you think?  The original
> > code was just fine.
> >
> > sorry,
> >
> > greg k-h
>
> I agree that it is harder to read and maintain but I went by the argument that in doing so the 'if' condition need not be evaluated twice
> , if the first statement (!data) is true then the body is evaluated and need not check for (!insns). Also, reduces a few lines of code (the body is written once as compared to being written twice).

The kind of code you produced does exist in the kernel.  But one could
wonder why you bother calling kcalloc if you are just going to free its
result.  That doesn't seem very efficient.  Also, if the first one fails,
then it will probably be because of insufficient memory, in which case the
second one will probably fail too.  I guess that a mostly redundant crash
dump will be produced.

It's OK to make the change when the tests are right next to each other,
but not when there is a side-effecting operation between them.

julia



>
> Thanks for the input!
> -Namrata
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160916203912.GB7471%40namrata-HP-Pavilion-g6-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

