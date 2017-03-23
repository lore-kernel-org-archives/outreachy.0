X-GM-THRID: 6400014269629333504
X-Received: by 10.107.153.140 with SMTP id b134mr1333456ioe.32.1490296880009;
        Thu, 23 Mar 2017 12:21:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.20.13 with SMTP id 13ls4642930itg.18.canary-gmail; Thu, 23
 Mar 2017 12:21:19 -0700 (PDT)
X-Received: by 10.107.34.212 with SMTP id i203mr1406679ioi.13.1490296879142;
        Thu, 23 Mar 2017 12:21:19 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y203si1341685pfb.0.2017.03.23.12.21.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 12:21:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n11so22036359pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 12:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vlcw0hPkWiR11vUy7XWFUovUgXfOxiqLneDTuL8pUH0=;
        b=UUYjqKpWnztIPAdKA+ZLKPoMGp5Te7H0GQ1hp0nQeezL+JZiSMgwnEJSsY4Fbg5JEi
         y4K0pDORuhz+CyHC8vZo6OUZk+EkZHMgdeAoDYjheLT/5eYXjHn1mxFeKDC0Xy64lmn7
         xyGSTSJRQGF5cWFxXjj33vjIBpEr5xUXZADohI1ly7VQLN4RjPtxlj5Q4Wvg+TF9/rtt
         nyqn8QnHy8GRDYfpA3HI0fdg7eGVwOCApxdD2dS87Z/gnVrjPEforO3b14RZHNouDpH0
         RYsTLOnh78nplRHPk2gE1om/6YxLEu3l73CZwbL7LEjHL799NGob9HQSu8tsDE0P8o0d
         dYiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vlcw0hPkWiR11vUy7XWFUovUgXfOxiqLneDTuL8pUH0=;
        b=GNXu0X0QQp3UhdlpwWPTEZ9mjH6Gp+DbSnIvnqRTLTI6aMV4bqWDK1NsoR3nCVJzgF
         pY+lVYlqG0awjhWEFd/NncrQUUVMNFoPqXVjRZ1SGVpJmmEZOXVJcpugJewUarEKVzgu
         xr+Bob/8BD16nbFtOO8q2OEgRPjonKIG1m/gvgPQw13uCZf/thH4om8RzM+fySMKZ2YS
         WTEMAJWq01toTSfVetLZsdGtRJPJK/hHIelqGEBU4K350rzJW1iVh32PY1Rv9zYmq6Cr
         OrAtwUtXQWdbZT8W4HfbVg0/s0ouXJJUhDEWaKGaqByd4G+yzX4v4ck8fprO0h1h71s8
         uEaA==
X-Gm-Message-State: AFeK/H3T9SrYF5tGh1hoH4XT8eWz80kpwWta+10O0T2nwlgLH34Pd41AIfnLkceuVi7yaw==
X-Received: by 10.99.127.29 with SMTP id a29mr4667178pgd.11.1490296878890;
        Thu, 23 Mar 2017 12:21:18 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id t6sm11885562pgo.42.2017.03.23.12.21.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Mar 2017 12:21:18 -0700 (PDT)
Date: Thu, 23 Mar 2017 12:21:17 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: simran singhal <singhalsimran0@gmail.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] staging: iio: ade7753: Replace
 mlock with driver private lock
Message-ID: <20170323192116.GA6614@d830.WORKGROUP>
References: <20170323183520.GA9871@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170323183520.GA9871@singhal-Inspiron-5558>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 24, 2017 at 12:05:20AM +0530, simran singhal wrote:
> The IIO subsystem is redefining iio_dev->mlock to be used by
> the IIO core only for protecting device operating mode changes.
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> 
> In this driver, mlock was being used to protect hardware state
> changes.  Replace it with a lock in the devices global data.

Hi Simran,

Please post all revision histories below the --- not just the most
recent.

Does this lock enforce the needed "atomicity" in the write_frequency
function? I read Jonathans comment on a previous revision about
"ensuring the spi bus frequency and sampling frequency of the device
are changed in an atomic fashion"

Is it possible for another spi bus transaction (read or write) to
occur between the read and write in write_frequency?  

alisons
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
> 
>  v4:
>    -Add mutex_init
> 
>  drivers/staging/iio/meter/ade7753.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
> index b71fbd3..30aebaf 100644
> --- a/drivers/staging/iio/meter/ade7753.c
> +++ b/drivers/staging/iio/meter/ade7753.c
> @@ -80,11 +80,13 @@
>   * @us:         actual spi_device
>   * @tx:         transmit buffer
>   * @rx:         receive buffer
> + * @lock:       protect sensor state
>   * @buf_lock:       mutex to protect tx and rx
>   **/
>  struct ade7753_state {
>  	struct spi_device   *us;
>  	struct mutex        buf_lock;
> +	struct mutex	    lock;  /* protect sensor state */
>  	u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>  	u8          rx[ADE7753_MAX_RX];
>  };
> @@ -484,7 +486,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>  	if (!val)
>  		return -EINVAL;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->lock);
>  
>  	t = 27900 / val;
>  	if (t > 0)
> @@ -505,7 +507,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>  	ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
>  
>  out:
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->lock);
>  
>  	return ret ? ret : len;
>  }
> @@ -581,6 +583,7 @@ static int ade7753_probe(struct spi_device *spi)
>  	st = iio_priv(indio_dev);
>  	st->us = spi;
>  	mutex_init(&st->buf_lock);
> +	mutex_init(&st->lock);
>  
>  	indio_dev->name = spi->dev.driver->name;
>  	indio_dev->dev.parent = &spi->dev;
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170323183520.GA9871%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.

