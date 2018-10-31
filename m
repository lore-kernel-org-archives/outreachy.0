X-GM-THRID: 6617780359505379328
X-Received: by 2002:a6b:b5cb:: with SMTP id e194-v6mr2486812iof.31.1541004882518;
        Wed, 31 Oct 2018 09:54:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:f015:: with SMTP id w21-v6ls4482399ioc.1.gmail; Wed, 31
 Oct 2018 09:54:41 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fUsWEGkfXQeHfZODTHzTWCcuQKYhuXj/fOeOXRtkZHmUoIY1BPbSbGzZiB815AUVpwddhK
X-Received: by 2002:a6b:fe0a:: with SMTP id x10-v6mr2472643ioh.4.1541004881583;
        Wed, 31 Oct 2018 09:54:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541004881; cv=none;
        d=google.com; s=arc-20160816;
        b=PUwDV64gm6JeZ/vS0zFPFqPK1G1znUDDSz35fsxojEgIhWP/P5nPPojOoCjchkVCCU
         y3OrSReJtm1v3lPWECepaXOF6jGF+7A072WM4WYtfKgEvQ9ffq4EurpvgM5Q4Mc2baSj
         Mx3O5it+1LjrhwgzVY9EPVD7d7zWGWqeWhy3su6mbYV8rMeYK3TqhFpbL2BjXYzpht8G
         i8EqmirWNMpBj1HoDvp7vvTEcyFYHLvvAJ0a8WyQUlG4BULp941q4FWBABBSNAlC6uP2
         efNu97SPbVzwKgdEf1STe2NM6GZ6aTIAPNflVHXBa9m9XuwZj71Lpz/B5709Hf9/0n8n
         QIkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=C2MFToRBI3Rv/3IDqDAyYC6G3XmZD3kbnfDsqH6Fg8Q=;
        b=MnbaHn0x1YpMRgSrMbTrHTFbfhpTN4icrwO4GIVazl0Qis74xy3/Wxm6qT8JBWgff6
         H2PtPBZqmC/IlvAhOB0Uq3tzAA4Jk0GGnXH/1vgP8rnzEODQKjbapmtL4BmuipoAroxa
         7S4l8NRqj0jw4hRRbXKerfTEq7QuBiTEbcoRJLYBiJbCe3NsPqnDy1qpJOWKGZDvN5NW
         bl/lOdshx4m0yE3QgiG2F4rSwWZOYiwmaMrDzbPHO3elcA7o7FTIe7vziyhyIEGTKhGB
         G7x/sfjLN80jxWwEiRwrpaUOzkjWPjHzJHygzH7+EMHzUiv21YsQAsQZPCh3HOOI82y7
         vgUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fp1ALu5x;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b133-v6si55252itc.3.2018.10.31.09.54.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 09:54:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fp1ALu5x;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6E46720830;
	Wed, 31 Oct 2018 16:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541004880;
	bh=VLBVfpa6nfYgZkez/PYQQjCD9ivhuVCDEDT5fY4R//w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fp1ALu5xGy4uNut0h3rWMvLt+H9GJuMP8IpKq1f0rvFmv+eZjMwlIHNQha9lMkeN9
	 lIBDtol1vJihRG1kbkPEsF3X+UxG4azi42KkMO1Q6SF4UCrSsD2KTBcRgVagkpQ2a4
	 yIwQKuf3BUt7tY7by47eX3edGv+oisKAkvMkHSOY=
Date: Wed, 31 Oct 2018 12:54:39 -0400
From: Sasha Levin <sashal@kernel.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	alexander.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: gasket Create a memory
 allocation path
Message-ID: <20181031165439.GU194472@sasha-vm>
References: <20181031164753.GA14140@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20181031164753.GA14140@kvasir.local>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Oct 31, 2018 at 04:47:54PM +0000, Ioannis Valasakis wrote:
>Fix multiple error allocation path by using re-direction.
>
>Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
>---
>Changes in v2:
>	- Specific tags for memory allocation
>	- Free the memory in the right way as for kfre
>
>drivers/staging/gasket/gasket_interrupt.c | 14 ++++++++------
> 1 file changed, 8 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
>index cdfb72af1c52..23232ea8f4d9 100644
>--- a/drivers/staging/gasket/gasket_interrupt.c
>+++ b/drivers/staging/gasket/gasket_interrupt.c
>@@ -348,21 +348,21 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
> 					       sizeof(struct msix_entry),
> 					       GFP_KERNEL);
> 	if (!interrupt_data->msix_entries) {
>-		goto err_alloc;
>+		goto err_free_msix;
> 	}
>
> 	interrupt_data->eventfd_ctxs = kcalloc(num_interrupts,
> 					       sizeof(struct eventfd_ctx *),
> 					       GFP_KERNEL);
> 	if (!interrupt_data->eventfd_ctxs) {
>-		goto err_alloc;
>+		goto err_free_eventfd;
> 	}
>
> 	interrupt_data->interrupt_counts = kcalloc(num_interrupts,
> 						   sizeof(ulong),
> 						   GFP_KERNEL);
> 	if (!interrupt_data->interrupt_counts) {
>-		goto err_alloc;
>+		goto err_free_data;
> 	}
>
> 	switch (interrupt_data->type) {
>@@ -397,10 +397,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
>
> 	return 0;
>
>-err_alloc:
>-	kfree(interrupt_data);
>-	kfree(interrupt_data->msix_entries);
>+err_free_msix:
> 	kfree(interrupt_data->eventfd_ctxs);
>+err_free_eventfd:
>+	kfree(interrupt_data->msix_entries);
>+err_free_data:
>+	kfree(interrupt_data);
> 	return -ENOMEM;
> }

With this code, what will happen if, for example, the last
allocation (interrupt_data->interrupt_counts) fails?

--
Thanks,
Sasha

