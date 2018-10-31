X-GM-THRID: 6618634579794198528
X-Received: by 2002:ac2:434b:: with SMTP id o11-v6mr444902lfl.5.1541023380636;
        Wed, 31 Oct 2018 15:03:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:2993:: with SMTP id p141-v6ls1201967lfp.0.gmail; Wed, 31
 Oct 2018 15:02:59 -0700 (PDT)
X-Google-Smtp-Source: AJdET5c7LE/zZ/rGdysyH50/M55ee24jOfSdfX3d0/ioo1q7HmU9YljSpB0FDrlx12pP/zuff3t5
X-Received: by 2002:ac2:434b:: with SMTP id o11-v6mr444897lfl.5.1541023379206;
        Wed, 31 Oct 2018 15:02:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541023379; cv=pass;
        d=google.com; s=arc-20160816;
        b=koa2H/OZj+GgPVgoAbR60d9aLGI7CbcvVfofLfVn1pcGS4U+KgKx/ZunLvC9KX2KuM
         WJqk/YmBrpPjHtymZIDsUtoh9jam+yB3vltWXYRz3WnTr5W0ZMH4ru4tKJxUty+PcowC
         oPMXRaKzRTbCCiNZCoOyLuzcBLBjRJzGnB/spW3LLAguLt7NNO2wA1D0/U7f/JxE1zpy
         vmPk3fIaoEcqG8mNmSNdT5TbblFhcvHt+XliL26XFac4IPRTiuopV9gyQlNL0K14uUkg
         ZKM6iBLXpZ0R56EAzzD27aBSxH+xKpPzY5+EC1fi6AbRUVY9rXag5iYY5fcaHQdtg9eT
         mpww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=sfRk+GgPj1ITPJsIf7eJ3sNnrNjeKmxrQ5HTzVQZvUQ=;
        b=b3nLadhPrgSK7AhNlMZqZn0cBenhbwssl6yYGaEBB4EeZdXCGh84Ah+GWN6N2LpBoR
         lwa0uGJX1cUoTwXeqPJo9rPaCiBckXfqGCTJ/2WVV26th0lJKRqKNSXYbaz/uNmBmleW
         yiOfTiSX8EDOJu3lfHtij79QGCFpV9s/2dvQLsGbH8iDQtZXc7swCok+CDLZ3Qv9aY8X
         yuko5LFm7OOrBn8BFjSackdnD5Y9YP2xZc5oboXJ4T0OOUBcpwqLYpe/hvajFeSM9Ckw
         RWjrOs3DstmAC/au8B/gbHVBCLMgkUF4Eyu2oeCapj0vfd5d0azTKfDO5W6M6SxoQkaW
         BQFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=S7QwpHgW;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id d9-v6si712394lfi.5.2018.10.31.15.02.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 15:02:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=S7QwpHgW;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541023371; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=fl7H2aThfM5zlG2SRlSdku5GDf/LPMqmIG3o2TG84NaVirN5MMlpL1+IZF5oA7Yc1h2o5ep/bFWfauSueDnLx75tQxVn6P8kZOat1QycBL6DS1mZlufhT5fV4hGIEu/AMnxDYC/TXWiMJ5sxsYh0MZHRUp4kb7IGb9dHbXFoCsk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541023371; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=sfRk+GgPj1ITPJsIf7eJ3sNnrNjeKmxrQ5HTzVQZvUQ=; 
	b=FSKsfU6q0YZ0+7GhSR6By/jrA7zhICsOyYLDdkwBSv/I3MikXUGz/QfLWWzkzXXE3d/jIF/Msv4mNAWocO1xzscqECbkJbQWJTa3o50QFu1pbwFiAzDn7gkTHC/v5X+UqUkrgnxrjvl7F15m1OO+Vz5ldX9Gfd2WWAA6MkK34V8=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541023371;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=2861; bh=sfRk+GgPj1ITPJsIf7eJ3sNnrNjeKmxrQ5HTzVQZvUQ=;
	b=S7QwpHgW2abWadoT7CgqCAhuvMi60Gs9en4CB2bW/LG5UXDc4O7v2mN2z8OJR17O
	QZsblho9EQZtMs6AW9pG1M0jFdDnU/v4+Px+wKImg+/6QGUYY6vGWImKW9fPCTGudj0
	1gYAaTLpMi/c/l5Bw6cIE5KxvN3vPiTaSyXAkukw=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541023370126695.1942190281611; Wed, 31 Oct 2018 23:02:50 +0100 (CET)
Date: Wed, 31 Oct 2018 22:02:43 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	alexander.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v5] staging: gasket: Create a free
 memory error path
Message-ID: <20181031220243.GA21269@kvasir.local>
References: <20181031213742.GA18868@kvasir.local>
 <alpine.DEB.2.21.1810312244040.5416@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810312244040.5416@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Wed, Oct 31, 2018 at 10:45:33PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 31 Oct 2018, Ioannis Valasakis wrote:
> 
> > Create an error handling path for memory allocation. It avoids repeating
> > the same assignments and returns the respective ENOMEM.
> >
> > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > ---
> > Changes in v5:
> > 	- Typo on the error handling label
> 
> Compilation should have found this error.
It would indeed but it still's going on since an hour now so I wanted to
get your feedback meanwhile and understand my mistakes! Me rushing isn't
good but after it compiles with all the new changes I should have a very
fast turnaround :) 

> 
> > drivers/staging/gasket/gasket_interrupt.c | 13 ++++++++-----
> >  1 file changed, 8 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> > index 49d47afad64f..1a3e8b17e714 100644
> > --- a/drivers/staging/gasket/gasket_interrupt.c
> > +++ b/drivers/staging/gasket/gasket_interrupt.c
> > @@ -340,17 +340,14 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
> >  					       sizeof(struct eventfd_ctx *),
> >  					       GFP_KERNEL);
> >  	if (!interrupt_data->eventfd_ctxs) {
> > -		kfree(interrupt_data);
> > -		return -ENOMEM;
> > +		goto err_free_ctxs;
> 
> Your labels describe where you are coming from.  Dan suggests to make the
> labels descibe what will happen when you get there.  Here you aren't going
> to be freeing ctxs.  That is the allocation that failed.
> 
In that case is err_free_eventfd and err_free_data a good naming scheme? 

ta
Ioannis

> julia
> 
> >  	}
> >
> >  	interrupt_data->interrupt_counts = kcalloc(driver_desc->num_interrupts,
> >  						   sizeof(ulong),
> >  						   GFP_KERNEL);
> >  	if (!interrupt_data->interrupt_counts) {
> > -		kfree(interrupt_data->eventfd_ctxs);
> > -		kfree(interrupt_data);
> > -		return -ENOMEM;
> > +		goto err_free_counts;
> >  	}
> >
> >  	switch (interrupt_data->type) {
> > @@ -379,6 +376,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
> >  				    interrupt_sysfs_attrs);
> >
> >  	return 0;
> > +
> > +err_free_counts:
> > +	kfree(interrupt_data->eventfd_ctxs);
> > +err_free_ctxs:
> > +	kfree(interrupt_data);
> > +	return -ENOMEM;
> >  }
> >
> >  static void
> > --
> > 2.19.1
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181031213742.GA18868%40kvasir.local.
> > For more options, visit https://groups.google.com/d/optout.
> >


