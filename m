X-GM-THRID: 262267731968
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,658add94603fb134
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.13.98 with SMTP id g2mr673566wic.3.1424303573116;
        Wed, 18 Feb 2015 15:52:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.167 with SMTP id s7ls93226laa.80.gmail; Wed, 18 Feb 2015
 15:52:52 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr235886lbw.4.1424303572368;
        Wed, 18 Feb 2015 15:52:52 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id l8si6275319wia.0.2015.02.18.15.52.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 15:52:52 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f176.google.com with SMTP id h11so44588484wiw.3
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 15:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=dN1hC9fk8cvN44X/7cAduh4wBzRghVHx6xgTsLMzRwc=;
        b=qm86PfbsdpILHJq/i+5qzpqn44l9FeI5QijxdeUxo0yitSqijh0kGQ/9PT21e0AO2u
         RN7JpI2RZlf13s0IqM8WkzpSFymWQmtMJpiXBcw35YCcrmPGqL4fwhFNbVd/eP+Iqi+l
         bwCSDfwkaAyeeqAuOjCME1jO2pIpSI8bmSsitkF+Mb9eoAlvb+Qdch2XLef5H/pmy4jY
         qCSBd6cfXGdzC3O6lB+bCRucP992tRDQAXx+6HyU3+scPMPawcahewsyZb8B8SOSbRoy
         9NFikLkX3Nc/5R9U7mIyFKH7tEAz5tUmILkCiSKo7YO1hhEyEs35vd3In7hqqlf30FHa
         9/cA==
X-Received: by 10.180.126.69 with SMTP id mw5mr10118210wib.12.1424303572233;
        Wed, 18 Feb 2015 15:52:52 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([82.201.178.121])
        by mx.google.com with ESMTPSA id ub1sm34866859wjc.43.2015.02.18.15.52.50
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 15:52:51 -0800 (PST)
Date: Thu, 19 Feb 2015 01:52:47 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: drivers: replace
 init_timer by setup_timer
Message-ID: <20150218235247.GA13870@localhost.localdomain>
References: <20150218182936.GA4225@localhost.localdomain>
 <54E51186.9080302@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <54E51186.9080302@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Feb 18, 2015 at 05:26:14PM -0500, Jes Sorensen wrote:
> On 02/18/15 13:29, Aya Mahfouz wrote:
> > This patch replaces init_timer and 2 step initialization of
> > function and data by setup_timer to make the code 
> > more concise using the following coccinelle script:
> > 
> > @@
> > expression ds, e1, e2;
> > @@
> > 
> > -init_timer (&ds);
> > +setup_timer (&ds, e1, e2);
> > ...
> > -ds.function = e1;
> > ...
> > -ds.data = e2;
> > 
> > 
> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> > Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > ---
> > v2: changed commit message and picked Julia'a ack
> 
> Looks good to me - the only minor issue is the commit message. I would
> make it say:
> 
> "
> This patch replaces init_timer and 2 step initialization of function and
> data by setup_timer to make the code  more concise.
> 
> The issue was discovered using the following coccinelle script:
> "
> 
> Cheers,
> Jes
> 
Thanks will do!

Kind Regards,
Aya Saif El-yazal Mahfouz

> >  drivers/staging/comedi/drivers/comedi_test.c | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/comedi/drivers/comedi_test.c b/drivers/staging/comedi/drivers/comedi_test.c
> > index e56525a..fbc4342 100644
> > --- a/drivers/staging/comedi/drivers/comedi_test.c
> > +++ b/drivers/staging/comedi/drivers/comedi_test.c
> > @@ -420,9 +420,8 @@ static int waveform_attach(struct comedi_device *dev,
> >  	for (i = 0; i < s->n_chan; i++)
> >  		devpriv->ao_loopbacks[i] = s->maxdata / 2;
> >  
> > -	init_timer(&devpriv->timer);
> > -	devpriv->timer.function = waveform_ai_interrupt;
> > -	devpriv->timer.data = (unsigned long)dev;
> > +	setup_timer(&devpriv->timer, waveform_ai_interrupt,
> > +		    (unsigned long)dev);
> >  
> >  	dev_info(dev->class_dev,
> >  		 "%s: %i microvolt, %li microsecond waveform attached\n",
> > 
> 

