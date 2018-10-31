X-GM-THRID: 6617780359505379328
X-Received: by 2002:aa7:da54:: with SMTP id w20-v6mr794245eds.7.1541019845682;
        Wed, 31 Oct 2018 14:04:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:5818:: with SMTP id m24-v6ls1047423ejq.1.gmail; Wed,
 31 Oct 2018 14:04:04 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eRtukkAUqYW0gGrBfHXowV+Tb63dW8MKU7qBz8N6i+zbaTLgl6XmQNml67wTVUV4pVxHoV
X-Received: by 2002:a17:906:4f95:: with SMTP id o21-v6mr596083eju.6.1541019844305;
        Wed, 31 Oct 2018 14:04:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541019844; cv=none;
        d=google.com; s=arc-20160816;
        b=T+pV8fBUea3lAlUQfcSncIcI5PDZy+zg/vXP4XPVu26vtf2v62Q3NnDsDbqXgMdQhg
         70IxFv+4gftqjzKK7lQWRgjxelwtgfjB9ap/8+nBwFPmlDMtgpBtKhiMrnkRrUVdqEvU
         cusaftb9iGbNgSYrnM04ftr+mgHuXHFsLk99WB8BXQbfaYJQ26CVxkE9hwIi6+M0YEmj
         w+pDNTCOWQUyOLXfqHwK7Gajv3eZpX1GCpzV9BW2X01UFBjlV+3E+ExZYrd1SpqppmYi
         aqqdXgNc1sCEJW7JId9SUS2HKBvdK+eEDWltLdCOzr4o1fKYtHysn/bd1OxwV/8wvGSm
         Wd3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=un9+H3mXp6tyshcl6Y2qgGBWEMN2+r8ddoy670tYiH4=;
        b=F8tLvU0y7SJFGJkvNywFQwZm8JAI7Q3xo57Vi64d7+jRgZgnGfQV24jsbNElNWwp5K
         544aADCOH6/p5wFh4Qbydb4bkFKOqmg8AceqUfT29sdzQiOJOZz/O3u8exAZpxjlH3uF
         box0Q8p16lwO4g0tB1FiyxXO3+iceC31TR/w2TTdXlaB3zvmtJVwcMe77DOw9RQV2z70
         x0nZIRHf+aT5Dpjyk6DRgTE9TGcpZnVClXZtNdpng9VCvyX8n43nLtjmvrkMKVqHi/tn
         Uzbq7e5clQV72pm9PiiecrV33fBeGmAr0xWAFAns/m2cjDmRfwR2MXwT/S2vJ/IytxyD
         10Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y16-v6si1110996eds.0.2018.10.31.14.04.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 14:04:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,449,1534802400"; 
   d="scan'208";a="353685681"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2018 22:04:03 +0100
Date: Wed, 31 Oct 2018 22:04:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: Sasha Levin <sashal@kernel.org>, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org, alexander.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: gasket Create a memory
 allocation path
In-Reply-To: <20181031210035.GA13539@kvasir.local>
Message-ID: <alpine.DEB.2.21.1810312203240.2391@hadrien>
References: <20181031164753.GA14140@kvasir.local> <20181031165439.GU194472@sasha-vm> <20181031205048.GA29504@kvasir.local> <alpine.DEB.2.21.1810312155300.2391@hadrien> <20181031210035.GA13539@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 31 Oct 2018, Ioannis Valasakis wrote:

> On Wed, Oct 31, 2018 at 09:57:58PM +0100, Julia Lawall wrote:
> >
> >
> > On Wed, 31 Oct 2018, Ioannis Valasakis wrote:
> >
> > > On Wed, Oct 31, 2018 at 12:54:39PM -0400, Sasha Levin wrote:
> > > > On Wed, Oct 31, 2018 at 04:47:54PM +0000, Ioannis Valasakis wrote:
> > > > > Fix multiple error allocation path by using re-direction.
> > > > >
> > > > > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > > > > ---
> > > > > Changes in v2:
> > > > > 	- Specific tags for memory allocation
> > > > > 	- Free the memory in the right way as for kfre
> > > > >
> > > > > drivers/staging/gasket/gasket_interrupt.c | 14 ++++++++------
> > > > > 1 file changed, 8 insertions(+), 6 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> > > > > index cdfb72af1c52..23232ea8f4d9 100644
> > > > > --- a/drivers/staging/gasket/gasket_interrupt.c
> > > > > +++ b/drivers/staging/gasket/gasket_interrupt.c
> > > > > @@ -348,21 +348,21 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
> > > > > 					       sizeof(struct msix_entry),
> > > > > 					       GFP_KERNEL);
> > > > > 	if (!interrupt_data->msix_entries) {
> > > > > -		goto err_alloc;
> > > > > +		goto err_free_msix;
> > > > > 	}
> > > > >
> > > > > 	interrupt_data->eventfd_ctxs = kcalloc(num_interrupts,
> > > > > 					       sizeof(struct eventfd_ctx *),
> > > > > 					       GFP_KERNEL);
> > > > > 	if (!interrupt_data->eventfd_ctxs) {
> > > > > -		goto err_alloc;
> > > > > +		goto err_free_eventfd;
> > > > > 	}
> > > > >
> > > > > 	interrupt_data->interrupt_counts = kcalloc(num_interrupts,
> > > > > 						   sizeof(ulong),
> > > > > 						   GFP_KERNEL);
> > > > > 	if (!interrupt_data->interrupt_counts) {
> > > > > -		goto err_alloc;
> > > > > +		goto err_free_data;
> > > > > 	}
> > > > >
> > > > > 	switch (interrupt_data->type) {
> > > > > @@ -397,10 +397,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
> > > > >
> > > > > 	return 0;
> > > > >
> > > > > -err_alloc:
> > > > > -	kfree(interrupt_data);
> > > > > -	kfree(interrupt_data->msix_entries);
> > > > > +err_free_msix:
> > > > > 	kfree(interrupt_data->eventfd_ctxs);
> > > > > +err_free_eventfd:
> > > > > +	kfree(interrupt_data->msix_entries);
> > > > > +err_free_data:
> > > > > +	kfree(interrupt_data);
> > > > > 	return -ENOMEM;
> > > > > }
> > > >
> > > > With this code, what will happen if, for example, the last
> > > > allocation (interrupt_data->interrupt_counts) fails?
> > > It took my some time but I think I saw it; the mistake is that
> > > if interrupt_data->interrupt_counts fails it should 'goto
> > > err_free_msix'.
> > >
> > > Same if interrupt_data->msix_entries fails it should 'goto
> > > err_free_data'.
> > >
> > > Is that right?
> > >
> > > (I got very ambitious with the labels and I mixed it up ;) Any way to
> > > make the goto labels make sense?)
> >
> > I don't think that the choice of labels is a problem.  Basically, you
> > should normally release things in the opposite order of the one in which
> > they were allocated.  At the beginning of your function, you can just do a
> > return, because nothing has been allocated yet.  Then when you have
> > successfully allocated something, if you fail afterwards you should go to
> > the very end of the function, because you have only one thing to free.
> > When you have successfully allocated something else, if you fail
> > afterwards, you should jump not quite to the end, so that you free both
> > things that have been allocated, etc.
> Indeed that is what I meant. Badly phrased but I released things the
> wrong way around. I send a v3 of the patch (although as I just noticed
> your latest comment, if that makes sense I am going to rebase against
> greg's staging and resend it).

Please send the version against Greg's tree.  It would be easiest to see
if the patch is correct if one can see the actual starting point.

julia

