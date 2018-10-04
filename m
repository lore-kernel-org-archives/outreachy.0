X-GM-THRID: 6608442873786400768
X-Received: by 2002:a5b:708:: with SMTP id g8-v6mr3149459ybq.3.1538654180689;
        Thu, 04 Oct 2018 04:56:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:bac5:: with SMTP id a5-v6ls1037515ybk.22.gmail; Thu, 04
 Oct 2018 04:56:19 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61SpCC9LO9VJVTBCjLUToZ2r2urpeK87rMb+GORqAVoBV8fdV2IwgQX/PX/Wimrz9ceRUjD
X-Received: by 2002:a5b:642:: with SMTP id o2-v6mr3130799ybq.89.1538654179914;
        Thu, 04 Oct 2018 04:56:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538654179; cv=none;
        d=google.com; s=arc-20160816;
        b=Ymt0wwP9pupMiaGUGT9Yl9GqCdPEyl76gifjyTx70HBdqAIZE/iYsmHztbzip7ewya
         7IeiMUrtupg/6XTl6dmjDGFUd4iCmsZ9V8NdVU+idD6XF/EYAxWy5ww0XhlTYs/IPCQD
         iq0yGR5kceGbwez6l/gJmDUk4W12dKUVq2jZsVLawnvXa0mkjLdhj7s6w6WIYrZuBKaa
         ISFcCqW3zqulPFeJpbYVMDEgAdrqd0RgkDnJ1tgxpdvhRkIIgYmQ8YQ9Bjl7y3UFDTQe
         nBsmIMlcU1ZFRyVIpHO+TNGuB/xFKJsuROobr9Cdb6QxXN/kAxkMRnZYmdg//Zuw0BUE
         WHLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=64TSgPYYO3UhzyOpKx0nWlv/6RNVFPbQivx/x4Vq6KA=;
        b=q9zymMwc23zEWNnfJakzD5my+xQKw3neny0sFNYohySf1lYMPYfyuKacYmxG4e6wfF
         R1lgptnO/FZJLGYVtYKSaAtXAWjFuuI/+PuyZ+7/IPKT4LJsf7RQ/Lwphe1eaTUCkJWy
         dP1GxmzUdj3SDASEbYE9t6pURR63U9chrXEHCi1484flOLTT4vez98DQOFyCTgv9s/B2
         xSe1DOYpXwud5ZQfZyR0iNsVoGfi7ozAsYsW6XWKRhQLqKKLn94WsA4plMvOsLem0x/8
         69Gu9ce7HebELHPBLNNKCgmj87uT06RijCeiBMKrPpvdBWHZ8Z43UWZmhYDnKiOQX0vd
         zqFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nT6Buavx;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id g10-v6si189122ywc.0.2018.10.04.04.56.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 04:56:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nT6Buavx;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id g2-v6so3041568pgu.11
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 04:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=64TSgPYYO3UhzyOpKx0nWlv/6RNVFPbQivx/x4Vq6KA=;
        b=nT6BuavxSM5ZCWek+sQnc25fzhzWJGRAP4E7qaoZrkHZqcpMbC8m5d+jk61ikjxZsa
         o1JmL+iFPuLk8RIBzJCsQsI/gGYNgbLhSJt7JjOn/6rNo//A/QoIXQ5zrZeKrOxBDzcq
         7kfWUKg4UHfY/XOdkNuXQbPDYPIRulQIdVngoIsURR5zXCDFrhSP7HajwLjlK6YRTtNM
         oLP9+o862BQfx6h3uapWvkfc59/+hbwduWxo+oh16x3NjYnuWqk8ojr+dLEyE8dRD5zS
         SW52qt075zmaD8Q2bx2ShnaEn0CeBqklyex6IrIbPsaBbkRIFOrw4kOqzhMF40QS1Z4b
         B8Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=64TSgPYYO3UhzyOpKx0nWlv/6RNVFPbQivx/x4Vq6KA=;
        b=ku/LzQ+57aMElBD1jQ3nIJZNmj1CfBPVAnPgpHkJxnapNIKgjlsAzXr5/9fOB+J7Xr
         J9y5F72904XfBBvgBYTPNyeamXk+OFONX9hNqyZz32ozst601PX1XgLFH1l/jaYGVDNW
         6UOUWzMIHdtewhFIrFVpVHQXA/YWN3ddkZ+6Qk45RxU5IHx5p14G16GxzXMfYNvDL4le
         olKenixi3fzLkq0wrY0WzUNYn8BV025jIeP8pGylVhjfy+NSgWjXrJYzct9s6lfgeR+o
         JNGsXSPbmEqkAzNrgFdmVkjjHVCu7CnpjurGon7bscswrqzPAX37IXmWxSG9xxioYRuf
         yPRw==
X-Gm-Message-State: ABuFfognh/mOYJxZwA2ykapYn3kczt8shcWdIaJ36Bv9yJ8wJmI0epg2
	qMmF50GnrM85/cJgG81Mtotb8BZk
X-Received: by 2002:a63:441f:: with SMTP id r31-v6mr5452614pga.60.1538654178958;
        Thu, 04 Oct 2018 04:56:18 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id b3-v6sm10222985pfc.178.2018.10.04.04.56.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 04 Oct 2018 04:56:18 -0700 (PDT)
Date: Thu, 4 Oct 2018 17:26:12 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: axis-fifo: Remove
 parentheses in axis-fifo.c
Message-ID: <20181004115612.GA24641@himanshu-Vostro-3559>
References: <20181004101321.GA11491@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181004101321.GA11491@kvasir.local>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Oct 04, 2018 at 11:13:21AM +0100, Ioannis Valasakis wrote:
> staging: axis-fifo: remove parentheses in axis-fifo.c

This line is not required. Subject already states it.

> Remove parentheses from the end of line and conform to
> the coding style guidelines. Reported by checkpatch.
> 
> Add an extra space to the function arguments to fix
> indentation.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---

New version with changelog should be written here, just
right below the `---`

v2: fixed ... ..

Also, subject should be:

[PATCH v2] staging: axis-fifo: Remove parentheses in axis-fifo.c

I see patches being sent through Mutt and you can easily send
using `git send-email` instead.

Often times configuring Mutt to the right config is difficult
for newbies.

>  drivers/staging/axis-fifo/axis-fifo.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
> index 63c8efd1b8db..76907ac26300 100644
> --- a/drivers/staging/axis-fifo/axis-fifo.c
> +++ b/drivers/staging/axis-fifo/axis-fifo.c
> @@ -364,11 +364,11 @@ static ssize_t axis_fifo_read(struct file *f, char __user *buf,
>  		 * if nothing is currently available
>  		 */
>  		spin_lock_irq(&fifo->read_queue_lock);
> -		ret = wait_event_interruptible_lock_irq_timeout(
> -			fifo->read_queue,
> -			ioread32(fifo->base_addr + XLLF_RDFO_OFFSET),
> -			fifo->read_queue_lock,
> -			(read_timeout >= 0) ? msecs_to_jiffies(read_timeout) :
> +		ret = wait_event_interruptible_lock_irq_timeout
> +			(fifo->read_queue,
> +			 ioread32(fifo->base_addr + XLLF_RDFO_OFFSET),
> +			 fifo->read_queue_lock,
> +			 (read_timeout >= 0) ? msecs_to_jiffies(read_timeout) :

I don't really like this change.
But anyway, wait for the maintainer to reply.


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

