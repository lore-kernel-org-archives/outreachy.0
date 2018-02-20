X-GM-THRID: 6523850474748116992
X-Received: by 10.46.115.12 with SMTP id o12mr659702ljc.41.1519113760965;
        Tue, 20 Feb 2018 00:02:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.104.25 with SMTP id c25ls948882lja.7.gmail; Tue, 20 Feb
 2018 00:02:39 -0800 (PST)
X-Google-Smtp-Source: AH8x226zKOfRq/GeZQS6YLN2WBXay1d+BDE1ultcq7HKDSqYV308DM5CaZuI4oVCnadtVY3ll+sm
X-Received: by 10.46.27.93 with SMTP id b90mr1036626ljb.38.1519113759573;
        Tue, 20 Feb 2018 00:02:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519113759; cv=none;
        d=google.com; s=arc-20160816;
        b=KbMDa1TgfkrNFE/ORXCfPR6YAvQ/XtS2SMTPG/Jr8/GwGSb7arv1ZaMvNsEKU1QDKn
         crNuaOQ//uIbVHI7GGZJUSVhlzd5tGSvM4OLvm4CzBRr4iJJhsbDZ8PkRM1sYKpEztPR
         LTymBTXC/8nUg1AIOT+0x0RPiVyus6w5iWm0XnwQ/NsMTo39gcP4T80Lved5B370dK4O
         GReuQ90s07X/8r2X9daDi9d5ss9lOWsvP38GaRSPC+Rf3/z0x/kTquzl33D6kOgeRUVd
         NdPgiyV46b0cQaA9IDxDjAjO2snATJmr+0C5sl3N6zUl4h0WnoxR6jjqLEcYL5yM8hD0
         A0ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=UxLGbRBep6QJWLlgIR9/owpWtnVuwlBcYDusytC5spc=;
        b=jTCegDss1IsmjxZQVf1ztPNkZJXk1QqitFBQlHJe3MXRqzMgYLtlYetluXIEyxhpbj
         XCW6wIasmmntT5U8x7Cuy9JUnz4S/EV/km4utLqlktBbNIOGNMn1lHRvMXGGnRsWZQij
         MoLujlqF6qBJxoG1UFdqGWvmxJ+hKcW+Tm1geLlnEVPyS678Vh1JXWC3fUQWJpLxB3Lx
         H3NyaE75gT1qdESVD0yzkY8meQmYmbrE90uitAD3THQj9ePzm/mF9Fi4i3wzHpwntUvD
         j4k+5OhxTTOAKqrq+mF2dK2iODAjeL6ssQkDNwSE9mjZT7Jf1N7XMAtdCYjaCKXVJSEw
         R+hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id b10si213563lfe.4.2018.02.20.00.02.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Feb 2018 00:02:39 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12258-90.w90-92.abo.wanadoo.fr [90.92.71.90])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7B0FC122C;
	Tue, 20 Feb 2018 08:02:37 +0000 (UTC)
Date: Tue, 20 Feb 2018 09:02:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Eisha Chen-yen-su <chenyensu0@gmail.com>
Cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com
Subject: Re: [PATCH] staging: comedi: Use '"%s:", __func__' instead of
 function name
Message-ID: <20180220080240.GA830@kroah.com>
References: <20180219200048.10511-1-chenyensu0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180219200048.10511-1-chenyensu0@gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Mon, Feb 19, 2018 at 09:00:48PM +0100, Eisha Chen-yen-su wrote:
> Replace all occurrences of functions' names in strings by a reference
> to __func__, to improve robustness. Problem found with checkpatch.
> 
> Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
> ---
>  drivers/staging/comedi/drivers/jr3_pci.c         | 2 +-
>  drivers/staging/comedi/drivers/ni_mio_common.c   | 8 +++++---
>  drivers/staging/comedi/drivers/quatech_daqp_cs.c | 2 +-
>  3 files changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/jr3_pci.c b/drivers/staging/comedi/drivers/jr3_pci.c
> index 201f4f96c182..2578ae4b102f 100644
> --- a/drivers/staging/comedi/drivers/jr3_pci.c
> +++ b/drivers/staging/comedi/drivers/jr3_pci.c
> @@ -295,7 +295,7 @@ static int jr3_pci_open(struct comedi_device *dev)
>  	struct comedi_subdevice *s;
>  	int i;
> 
> -	dev_dbg(dev->class_dev, "jr3_pci_open\n");
> +	dev_dbg(dev->class_dev, "%s\n", __func__);

A call like this should just be deleted, as it is a "tracing" call, and
we have an in-kernel function for that now.  So just delete this line in
a separate patch.

>  	for (i = 0; i < dev->n_subdevices; i++) {
>  		s = &dev->subdevices[i];
>  		spriv = s->private;
> diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
> index 5d610af6799f..d6eb55b41814 100644
> --- a/drivers/staging/comedi/drivers/ni_mio_common.c
> +++ b/drivers/staging/comedi/drivers/ni_mio_common.c
> @@ -1965,7 +1965,8 @@ static void ni_cmd_set_mite_transfer(struct mite_ring *ring,
>  	if (nbytes > sdev->async->prealloc_bufsz) {
>  		if (cmd->stop_arg > 0)
>  			dev_err(sdev->device->class_dev,
> -				"ni_cmd_set_mite_transfer: tried exact data transfer limits greater than buffer size\n");
> +				"%s: tried exact data transfer limits greater than buffer size\n",
> +				__func__);
> 
>  		/*
>  		 * we can only transfer up to the size of the buffer.  In this
> @@ -1978,7 +1979,8 @@ static void ni_cmd_set_mite_transfer(struct mite_ring *ring,
>  	mite_init_ring_descriptors(ring, sdev, nbytes);
>  #else
>  	dev_err(sdev->device->class_dev,
> -		"ni_cmd_set_mite_transfer: exact data transfer limits not implemented yet without DMA\n");
> +		"%s: exact data transfer limits not implemented yet without DMA\n",
> +		__func__);
>  #endif
>  }
> 
> @@ -4687,7 +4689,7 @@ static int cs5529_do_conversion(struct comedi_device *dev,
>  	retval = cs5529_wait_for_idle(dev);
>  	if (retval) {
>  		dev_err(dev->class_dev,
> -			"timeout or signal in cs5529_do_conversion()\n");
> +			"timeout or signal in %s()\n", __func__);
>  		return -ETIME;
>  	}
>  	status = ni_ao_win_inw(dev, NI67XX_CAL_STATUS_REG);
> diff --git a/drivers/staging/comedi/drivers/quatech_daqp_cs.c b/drivers/staging/comedi/drivers/quatech_daqp_cs.c
> index 802f51e46405..ea194aa01a64 100644
> --- a/drivers/staging/comedi/drivers/quatech_daqp_cs.c
> +++ b/drivers/staging/comedi/drivers/quatech_daqp_cs.c
> @@ -248,7 +248,7 @@ static irqreturn_t daqp_interrupt(int irq, void *dev_id)
> 
>  	if (loop_limit <= 0) {
>  		dev_warn(dev->class_dev,
> -			 "loop_limit reached in daqp_interrupt()\n");
> +			 "loop_limit reached in %s()\n", __func__);
>  		s->async->events |= COMEDI_CB_ERROR;
>  	}
> 

The rest of these were fine, can you resend this patch as a 2-patch
series with the change I mention above being one patch, and the rest of
these changes being the other?

thanks,

greg k-h

