X-GM-THRID: 6617780359505379328
X-Received: by 2002:a1c:c90d:: with SMTP id f13-v6mr504534wmb.5.1541019062386;
        Wed, 31 Oct 2018 13:51:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9645:: with SMTP id y66-v6ls2393110wmd.17.gmail; Wed, 31
 Oct 2018 13:51:01 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eCAAM8gGDFHYZs4dgcQcIhMDqOYbRpmsWoqwViK/IBvaiMU/NeiEGnGysp3wUW8LScL5VK
X-Received: by 2002:a1c:e482:: with SMTP id b124-v6mr490146wmh.22.1541019061458;
        Wed, 31 Oct 2018 13:51:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541019061; cv=pass;
        d=google.com; s=arc-20160816;
        b=n8Povd2fmeLD7ieqMvwCbFKdnjJkpJtrb5Gw67BdCAHBMTOg88yt8Ubsm59a35shec
         UiMn3y6xeds/k6waFp47WusWaJrx344J2T8sYLWpgvfJV8w6/Fpi+E7Vi0b/IQm7gPnB
         aTIsSb4E/52J/6LGSVnmy+iGb7Q8BJMRH/EBfUzlTDRgQkz/IR7ImaksmBWi1Hm4cDwY
         YBV2thfPdf6cNIvzGv4W5IV50hE9hgDZykplHHbo++HF3QjE+fK44kUIvdTyyBdm8i9o
         nTeJJw5HOa8C0Wm0dPkBlCECS0mxh99lCSljoOwdWgHSKBRIOc+pfwt3gsp+kq6VitDT
         bMXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9JJPDYrvfdMJFT1rWkeWXp1JmRoe6RqxYJlPZnnXd44=;
        b=KeIlQwwRug82EHeW6bOBEdvIQeMJxVIUtrxZ3MOQAtogMxPUSGnx9IswjkVv9OC6wP
         c13twvI8YZTROVkLA1pYo11wKZUS9Zit01cMJvIuKxHXnqKKsyvrEAIrwMGFkarlYn1e
         TV/X5f1qjL6ei/uA9cMgNZ8b65Elf9qkn8cmDnyPGAdQoU27F+8vYhvLEZox96qA6DyL
         Yf75D7InLl5LHQO3kfdWi93gyEKjuaMbmwwbdqDf8iF+I5KeMorjCLpTCcpwKpFH/2I5
         bGRzGbb+VUWn4zs2hChixDOX1rcPBnqPPaGp69ezbHQS3gIpUq5pFeG7tQl+WxEhnVRc
         OODQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FuUT1GpN;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 191-v6si111294wmv.0.2018.10.31.13.51.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 13:51:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FuUT1GpN;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541019051; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=bCK6N1ouS4iC8uoVYbPPr0q/Z+x+cQgnzWsImIqVcV2im93gwjbPApxW0QNNoJiyEs8hcBJJDK65ZWNTT6jPgp3K+SQM4/sieSjCtORUt4h04YxZqrlNdmxVx18Hl6gIp1oskLMWPkxHvJ3GY1zO2/U2T4vGxl0pjgLNaYp5Wyc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541019051; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=9JJPDYrvfdMJFT1rWkeWXp1JmRoe6RqxYJlPZnnXd44=; 
	b=RSxdy0+kCYf6ABzJwudi9v7Qp3ettzV7mRftHNOycFP2ZLyDnyZ/w644lxziRj7wgcBcEkpHwmqI1Hee6FxNnqzvKsRnuB++clr8tj397P4hgP2dq/XlkRJ8aZg1m6In4Wolj71q+tzGYyOxrJjtCoqWH2CH2G5hMxGzOHdVPYc=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541019051;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=2432; bh=9JJPDYrvfdMJFT1rWkeWXp1JmRoe6RqxYJlPZnnXd44=;
	b=FuUT1GpNkGjnCUmvaMAzQBwj9fft7gktZ4mRIJXjpgDK2RTwumB/WktlGfzdRTvd
	8i08/71gXcj6f8Wff/CiBasI/XGEHlqk3Vx2RHuF0YqcoUU2QtXJHchrfJNMrxSbrAu
	kWiDiIahT6OQe6M6xKhDk8OkXM16JaeA1RDyFVy4=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541019050201901.8836745316796; Wed, 31 Oct 2018 21:50:50 +0100 (CET)
Date: Wed, 31 Oct 2018 20:50:48 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Sasha Levin <sashal@kernel.org>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	alexander.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: gasket Create a memory
 allocation path
Message-ID: <20181031205048.GA29504@kvasir.local>
References: <20181031164753.GA14140@kvasir.local>
 <20181031165439.GU194472@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181031165439.GU194472@sasha-vm>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Wed, Oct 31, 2018 at 12:54:39PM -0400, Sasha Levin wrote:
> On Wed, Oct 31, 2018 at 04:47:54PM +0000, Ioannis Valasakis wrote:
> > Fix multiple error allocation path by using re-direction.
> > 
> > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > ---
> > Changes in v2:
> > 	- Specific tags for memory allocation
> > 	- Free the memory in the right way as for kfre
> > 
> > drivers/staging/gasket/gasket_interrupt.c | 14 ++++++++------
> > 1 file changed, 8 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> > index cdfb72af1c52..23232ea8f4d9 100644
> > --- a/drivers/staging/gasket/gasket_interrupt.c
> > +++ b/drivers/staging/gasket/gasket_interrupt.c
> > @@ -348,21 +348,21 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
> > 					       sizeof(struct msix_entry),
> > 					       GFP_KERNEL);
> > 	if (!interrupt_data->msix_entries) {
> > -		goto err_alloc;
> > +		goto err_free_msix;
> > 	}
> > 
> > 	interrupt_data->eventfd_ctxs = kcalloc(num_interrupts,
> > 					       sizeof(struct eventfd_ctx *),
> > 					       GFP_KERNEL);
> > 	if (!interrupt_data->eventfd_ctxs) {
> > -		goto err_alloc;
> > +		goto err_free_eventfd;
> > 	}
> > 
> > 	interrupt_data->interrupt_counts = kcalloc(num_interrupts,
> > 						   sizeof(ulong),
> > 						   GFP_KERNEL);
> > 	if (!interrupt_data->interrupt_counts) {
> > -		goto err_alloc;
> > +		goto err_free_data;
> > 	}
> > 
> > 	switch (interrupt_data->type) {
> > @@ -397,10 +397,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
> > 
> > 	return 0;
> > 
> > -err_alloc:
> > -	kfree(interrupt_data);
> > -	kfree(interrupt_data->msix_entries);
> > +err_free_msix:
> > 	kfree(interrupt_data->eventfd_ctxs);
> > +err_free_eventfd:
> > +	kfree(interrupt_data->msix_entries);
> > +err_free_data:
> > +	kfree(interrupt_data);
> > 	return -ENOMEM;
> > }
> 
> With this code, what will happen if, for example, the last
> allocation (interrupt_data->interrupt_counts) fails?
It took my some time but I think I saw it; the mistake is that
if interrupt_data->interrupt_counts fails it should 'goto
err_free_msix'.

Same if interrupt_data->msix_entries fails it should 'goto
err_free_data'.

Is that right?

(I got very ambitious with the labels and I mixed it up ;) Any way to
make the goto labels make sense?)


> 
> --
> Thanks,
> Sasha

Best,
Ioannis


