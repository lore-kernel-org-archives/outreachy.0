X-GM-THRID: 6608442873786400768
X-Received: by 2002:a2e:9643:: with SMTP id z3-v6mr206551ljh.10.1538656565084;
        Thu, 04 Oct 2018 05:36:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:700b:: with SMTP id l11-v6ls285365ljc.19.gmail; Thu, 04
 Oct 2018 05:36:04 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62EcE839xXj8q25A30PJt8LEWaeI5hYj3RcIMwu5p62WG5bj4Ib2XsOwGSCewgsfS+Y+RBR
X-Received: by 2002:a2e:6395:: with SMTP id s21-v6mr206897lje.35.1538656564167;
        Thu, 04 Oct 2018 05:36:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1538656564; cv=pass;
        d=google.com; s=arc-20160816;
        b=sHkiv0oN9G20PzTTUz59lWAWzG9foXu0zGze9zilGFaIxhk0SFAit2bZMRvzFdf/kS
         vBL4hzOajOT36wDw1Mb6oUw0gtE2hwjztWGVhtfLyUkQRWlBLCHqmsx1ihQh801eHeo/
         aRK0pv+TI7iIKh1rq4IE71XKpnwbGyhG4tEV2gffDHn+BfjkU6mmkUq75uT5UvRUafbe
         6DMj2rpBv2VptaYkV5saSQenlbZIcWeyf+gc7AKXaWXV7bZG+117+hSjoRC1fVEJYthX
         JqN8AJP1miKpbRgDvHU+DbQOMS7SxuxGDPAeNHENd+dMtQrs0s8P1M6pHBcwe4OIlLLG
         q3SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wqbQ/A4DHCh9SBuv+qkKj4LXLhKuCb1n78fKpu8Dchc=;
        b=kFv6qRKTLwpYTV73TJC0iDKy/CG3jwRepx4UBjq0uovBoKhMBBwp7RO0rl7oug1PRu
         Bl1nBEOFJVGUnrhoadoRMaK+PhnTPAa8E0vWc+7bdQZggPcz6cvMFawquzhhheXdzr77
         ZTHuczW5xz/lzxgXINTNcgza3o7cOri3JX6RdBMk3oYiiQbN/KFl+UNnaeWOazvuQU2a
         7y58HqYvn7USUeCG2WIGO7+kWP9p1Me72aZdsW2E79Kno+xpoSfKGl4BDpCU9DwJC31O
         JeXg1IYtuW5oXUJ7ZtxqMDSeosE82e6enrMzCfrEHxGM2yVzm4F4B79Dsn56SOvJXX77
         MWBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=VF4a2hHD;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id m9-v6si192387lfb.5.2018.10.04.05.36.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 05:36:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=VF4a2hHD;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1538656560; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=bVnopPD6r4vwX7oS21NUIICwIw9wNftHXMzyRT0d9BT/rVGDgWm2TcsBIKkkk0tAa76wDcpIhj6kB6Br3+Jd6Or0CTtHRQ93LcByFFV9Mqrc0BvRGoEzOpsXgGXjwXzLAZHYeXNzWhEmI0DRykMSdWcxsMhltV6j0SX/fR/TcaA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1538656560; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=wqbQ/A4DHCh9SBuv+qkKj4LXLhKuCb1n78fKpu8Dchc=; 
	b=Vs8lYJcnxqs4t5NHupUgbYqwmDrqLRT3s9DN+bOKgdsyMoUUDRSQL02mdGPFlhNlr89DMeePAQC4EwceotubeVPF0pRjxq3cwQK+kPlBH6R+hFb7dnr7+USAuPO2EFPMGPNwShJWI7LGJEksaynuTQ/lzZYaN9m88aHb/puNacE=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1538656560;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=2509; bh=wqbQ/A4DHCh9SBuv+qkKj4LXLhKuCb1n78fKpu8Dchc=;
	b=VF4a2hHDuWU/wmDufpa0yED1AEEMcFhsXyWl9addZ+gYGiCWlv8/4pAJ8Z1CCBK0
	n//7KcFt07vbLTAxmPcZg1viLwR//EZQPonw2WSs2VOPv512Ehi4qI7mUgwTmMjtJg7
	mXcVXYohOjLXqxdtUdzZBnUsSm8j1Re1oiVDOL6c=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1538656558091189.16152407048014; Thu, 4 Oct 2018 14:35:58 +0200 (CEST)
Date: Thu, 4 Oct 2018 13:35:56 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: Himanshu Jha <himanshujha199640@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: axis-fifo: Remove
 parentheses in axis-fifo.c
Message-ID: <20181004123556.GA11888@kvasir.local>
References: <20181004101321.GA11491@kvasir.local>
 <20181004115612.GA24641@himanshu-Vostro-3559>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181004115612.GA24641@himanshu-Vostro-3559>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Thu, Oct 04, 2018 at 05:26:12PM +0530, Himanshu Jha wrote:
> On Thu, Oct 04, 2018 at 11:13:21AM +0100, Ioannis Valasakis wrote:
> > staging: axis-fifo: remove parentheses in axis-fifo.c
> 
> This line is not required. Subject already states it.
> 
> > Remove parentheses from the end of line and conform to
> > the coding style guidelines. Reported by checkpatch.
> > 
> > Add an extra space to the function arguments to fix
> > indentation.
> > 
> > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > ---
> 
> New version with changelog should be written here, just
> right below the `---`
> 
> v2: fixed ... ..
> 
> Also, subject should be:
> 
> [PATCH v2] staging: axis-fifo: Remove parentheses in axis-fifo.c

Thank you Himanshu, I wasn't sure how I need to note that this is 
a different patch.

> 
> I see patches being sent through Mutt and you can easily send
> using `git send-email` instead.
> 

Actually it was easier for me to configure mutt with my own mail 
domain than git send-email. If you reckon that's a best practice though 
I may consider it.

> Often times configuring Mutt to the right config is difficult
> for newbies.
> 

Would you have any recommendation on setting up the 
mutt as to be helpful for my patches?

> >  drivers/staging/axis-fifo/axis-fifo.c | 20 ++++++++++----------
> >  1 file changed, 10 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
> > index 63c8efd1b8db..76907ac26300 100644
> > --- a/drivers/staging/axis-fifo/axis-fifo.c
> > +++ b/drivers/staging/axis-fifo/axis-fifo.c
> > @@ -364,11 +364,11 @@ static ssize_t axis_fifo_read(struct file *f, char __user *buf,
> >  		 * if nothing is currently available
> >  		 */
> >  		spin_lock_irq(&fifo->read_queue_lock);
> > -		ret = wait_event_interruptible_lock_irq_timeout(
> > -			fifo->read_queue,
> > -			ioread32(fifo->base_addr + XLLF_RDFO_OFFSET),
> > -			fifo->read_queue_lock,
> > -			(read_timeout >= 0) ? msecs_to_jiffies(read_timeout) :
> > +		ret = wait_event_interruptible_lock_irq_timeout
> > +			(fifo->read_queue,
> > +			 ioread32(fifo->base_addr + XLLF_RDFO_OFFSET),
> > +			 fifo->read_queue_lock,
> > +			 (read_timeout >= 0) ? msecs_to_jiffies(read_timeout) :
> 
> I don't really like this change.
> But anyway, wait for the maintainer to reply.
> 
> 
> -- 
> Himanshu Jha
> Undergraduate Student
> Department of Electronics & Communication
> Guru Tegh Bahadur Institute of Technology


