X-GM-THRID: 6331024450775941120
X-Received: by 10.46.33.163 with SMTP id h35mr205667lji.22.1474102298363;
        Sat, 17 Sep 2016 01:51:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.94.205 with SMTP id s196ls1104533wmb.24.canary; Sat, 17 Sep
 2016 01:51:37 -0700 (PDT)
X-Received: by 10.194.96.237 with SMTP id dv13mr2612851wjb.6.1474102297880;
        Sat, 17 Sep 2016 01:51:37 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c13si900063wme.3.2016.09.17.01.51.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 01:51:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,349,1470693600"; 
   d="scan'208";a="237191723"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2016 10:51:37 +0200
Date: Sat, 17 Sep 2016 10:51:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: comedi: comedi_fops:
 Optimize code with logical short-circuiting
In-Reply-To: <20160917071902.GA4171@namrata-HP-Pavilion-g6-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609171050250.3113@hadrien>
References: <20160916200129.GA7265@namrata-HP-Pavilion-g6-Notebook-PC> <20160916202336.GA7308@kroah.com> <20160916203912.GB7471@namrata-HP-Pavilion-g6-Notebook-PC> <alpine.DEB.2.10.1609170745530.3336@hadrien>
 <20160917071902.GA4171@namrata-HP-Pavilion-g6-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 17 Sep 2016, Namrata A Shettar wrote:

> On Sat, Sep 17, 2016 at 07:49:37AM +0200, Julia Lawall wrote:
> >
> >
> > On Sat, 17 Sep 2016, Namrata A Shettar wrote:
> >
> > > On Fri, Sep 16, 2016 at 10:23:36PM +0200, Greg Kroah-Hartman wrote:
> > > > On Sat, Sep 17, 2016 at 01:31:33AM +0530, Namrata A Shettar wrote:
> > > > > Optimize code using logical short-circuiting. Two 'if' statements with
> > > > > same body is same as a single 'if' statement with same body and
> > > > > condition being union of prior two.
> > > > >
> > > > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > > > ---
> > > > >  drivers/staging/comedi/comedi_fops.c | 7 +------
> > > > >  1 file changed, 1 insertion(+), 6 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> > > > > index 0d69ed7..b4f6fec 100644
> > > > > --- a/drivers/staging/comedi/comedi_fops.c
> > > > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > > > @@ -1452,13 +1452,8 @@ static int do_insnlist_ioctl(struct comedi_device *dev,
> > > > >  		return -EFAULT;
> > > > >
> > > > >  	data = kmalloc_array(MAX_SAMPLES, sizeof(unsigned int), GFP_KERNEL);
> > > > > -	if (!data) {
> > > > > -		ret = -ENOMEM;
> > > > > -		goto error;
> > > > > -	}
> > > > > -
> > > > >  	insns = kcalloc(insnlist.n_insns, sizeof(*insns), GFP_KERNEL);
> > > > > -	if (!insns) {
> > > > > +	if (!data || !insns) {
> > > >
> > > > That's a lot harder to read and maintain, don't you think?  The original
> > > > code was just fine.
> > > >
> > > > sorry,
> > > >
> > > > greg k-h
> > >
> > > I agree that it is harder to read and maintain but I went by the argument that in doing so the 'if' condition need not be evaluated twice
> > > , if the first statement (!data) is true then the body is evaluated and need not check for (!insns). Also, reduces a few lines of code (the body is written once as compared to being written twice).
> >
> > The kind of code you produced does exist in the kernel.  But one could
> > wonder why you bother calling kcalloc if you are just going to free its
> > result.  That doesn't seem very efficient.  Also, if the first one fails,
> > then it will probably be because of insufficient memory, in which case the
> > second one will probably fail too.  I guess that a mostly redundant crash
> > dump will be produced.
> >
> > It's OK to make the change when the tests are right next to each other,
> > but not when there is a side-effecting operation between them.
> >
> > julia
> >
> >
> Thanks for breaking it down for me! seems more clear now. I will keep that in mind the next time I think of making such a change. However in a
> similar patch ( [PATCH] staging: comedi: Optimize code using logical short-circuiting ) the tests are one after the other with no side-effecting operation between them, so the change would have been OK there I suppose? but is it trivial and hence the change doesn't make much of a difference?

In that one, the change is correct (ie it doesn't change the behavior).
I'm not sure whether it is an improvement.  The condition becomes a bit
complex.  It seems like a matter of opinion.

julia

