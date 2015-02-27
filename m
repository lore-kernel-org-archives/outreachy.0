X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.96.234 with SMTP id r70mr10393444yhf.39.1424998285782;
        Thu, 26 Feb 2015 16:51:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.40 with SMTP id y8ls160814obg.51.gmail; Thu, 26 Feb
 2015 16:51:25 -0800 (PST)
X-Received: by 10.182.91.79 with SMTP id cc15mr11199941obb.20.1424998285549;
        Thu, 26 Feb 2015 16:51:25 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si289277pbc.2.2015.02.26.16.51.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 16:51:25 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1281EB09;
	Fri, 27 Feb 2015 00:51:25 +0000 (UTC)
Date: Thu, 26 Feb 2015 16:51:24 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5 3/6] Staging: emxx_udc: Replace
 custom printk macro ERR with pr_err
Message-ID: <20150227005124.GA13250@kroah.com>
References: <cover.1424786861.git.hamohammed.sa@gmail.com>
 <d2e65fddab2025261f56081beab5b0bac1e53bda.1424786861.git.hamohammed.sa@gmail.com>
 <20150226232212.GB21368@kroah.com>
 <20150227002726.GA12491@example.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150227002726.GA12491@example.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 03:27:26AM +0300, Haneen Mohammed wrote:
> On Thu, Feb 26, 2015 at 03:22:12PM -0800, Greg KH wrote:
> > On Tue, Feb 24, 2015 at 05:33:49PM +0300, Haneen Mohammed wrote:
> > > This patch removes half custom printk macros ERR and replace it with
> > > pr_err. Issue addressed by checkpathc.pl.
> > > 
> > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > > ---
> > > v5: Fix spelling mistakes
> > > 
> > >  drivers/staging/emxx_udc/emxx_udc.c | 56 ++++++++++++++++++-------------------
> > >  1 file changed, 28 insertions(+), 28 deletions(-)
> > > 
> > > diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> > > index c9f5e5d..f33980c 100644
> > > --- a/drivers/staging/emxx_udc/emxx_udc.c
> > > +++ b/drivers/staging/emxx_udc/emxx_udc.c
> > > @@ -115,7 +115,7 @@ static void _nbu2ss_dump_register(struct nbu2ss_udc *udc)
> > >  	pr_info("=== %s()\n", __func__);
> > >  
> > >  	if (udc == NULL) {
> > > -		ERR("%s udc == NULL\n", __func__);
> > > +		pr_err("udc: %s udc == NULL\n", __func__);
> > 
> > As this is a driver, you should be able to use dev_err() for all of
> > these statements.  Please do that instead.
> > 
> > thanks,
> > 
> > greg k-h
> 
> I did my best to look for a struct device *dev to use it in dev_err()
> but in these cases I couldn't. It was either not present or
> uninitialized yet, so I used pr_err instead. Would that be correct or
> is there another way of doing it?

If you really don't have a way to get to a struct device, then yes,
pr_err() is fine, but odds are it's somewhere in there.

If not, then document it in the changelog comments.

thanks,

greg k-h

