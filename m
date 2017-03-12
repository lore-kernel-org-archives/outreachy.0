X-GM-THRID: 6396578971833597952
X-Received: by 10.13.202.133 with SMTP id m127mr13929924ywd.37.1489344524650;
        Sun, 12 Mar 2017 11:48:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.6 with SMTP id q6ls1283226otc.10.gmail; Sun, 12 Mar
 2017 11:48:44 -0700 (PDT)
X-Received: by 10.129.115.197 with SMTP id o188mr14786370ywc.114.1489344524333;
        Sun, 12 Mar 2017 11:48:44 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si2689948pfz.1.2017.03.12.11.48.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 11:48:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 25so15887108pgy.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 11:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Mv46lVaB63cLhkhduuCBeS2owOQgcWYh7ZWIoTY6uJ0=;
        b=P4Ha30/V04XEzh9NniQ4Vb5eiLze/Y5++u7xcXzBrm8zZc1E4Kzl7c2jKzYud+5HqI
         tlunk+LkERuavQkfz7y7GBFf5UYf40D4hj/6TlX4fwAFycaGAWnKPkP5TQzG7kjZ5+9Z
         zZm2sCj5YAdx2PmcNF44991oC+MUx5kyFt3RWo+c9e0YLB6jZuXtgXdVYgPFWxTgGEcv
         RWBQcT4SgDhczsJ+g1pJZ/IrIbMP60OXp75GRj7qpcDndQRVZwmg8wUZ5i2T8Fmf5NDt
         sIRuuzmhu/FtR+m4Q9Mrj2qWG54vPJ3IoDG4/PFsOEc+nqacP+pieCvfBdDWXWF0mFN8
         NUJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Mv46lVaB63cLhkhduuCBeS2owOQgcWYh7ZWIoTY6uJ0=;
        b=LA+jjt4spJr3vAbnSIUaONWj1RaJBY6hcAdV5UlIano91NxpuxG2rs9iJWN+WQgy9G
         rtjRyrmtIBei/8+0U6QQTWLgngck6iPaZ6Ar9ejyvzjcEFmt0SV7hTi94VpJ4W5BcKiE
         aC9ewr8/aLVjCyHzART/MP4Mx796msJWZ3AgdwozX/TvoNQLAma/teo6liW9fcEQ25B/
         jhkVewkihuvANu8RwDEmrHA+327FiXb9jNmwLLajvTxT9BPhyCWBc2P5ZnnNgH+fyIie
         umWVxU4L2DRroOi1WSACyImMUk1/l8pYtErkznd+v3sT542thrpAaouy/MUuGFfkR8Xr
         owVA==
X-Gm-Message-State: AMke39lVZQZBQwcnvlHBNr7wdfDPx/igK8yz1WEcsx9EfiL/pM77LhyeI1Hbsl71EG2Xgw==
X-Received: by 10.84.228.208 with SMTP id y16mr41712713pli.168.1489344524006;
        Sun, 12 Mar 2017 11:48:44 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id r71sm29395512pfa.104.2017.03.12.11.48.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 11:48:43 -0700 (PDT)
Date: Sun, 12 Mar 2017 11:48:42 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ad9834: Use private
 driver lock instead of mlock
Message-ID: <20170312184841.GA8713@d830.WORKGROUP>
References: <20170312115013.GA31878@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170312115013.GA31878@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 12, 2017 at 05:21:25PM +0530, sayli karnik wrote:
> iio_dev->mlock should be used by the IIO core only for protecting
> device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
> INDIO_BUFFER_* modes.
> Replace mlock with a lock in the device's global data to protect hardware
> state changes.

Hi Sayli,
Thanks for the patch!  Find one fix-up and one opportunity for
a follow on patch embedded below.
alisons

> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/iio/frequency/ad9834.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
> index f92ff7f..4259474 100644
> --- a/drivers/staging/iio/frequency/ad9834.c
> +++ b/drivers/staging/iio/frequency/ad9834.c
> @@ -63,6 +63,7 @@
>   * @msg:		default spi message
>   * @freq_xfer:		tuning word spi transfer
>   * @freq_msg:		tuning word spi message
> + * @lock:		protect sensor state
>   * @data:		spi transmit buffer
>   * @freq_data:		tuning word spi transmit buffer
>   */
> @@ -77,6 +78,7 @@ struct ad9834_state {
>  	struct spi_message		msg;
>  	struct spi_transfer		freq_xfer[2];
>  	struct spi_message		freq_msg;
> +	struct mutex			lock;	/* protect sensor state */
>  
>  	/*
>  	 * DMA (thus cache coherency maintenance) requires the
> @@ -149,7 +151,7 @@ static ssize_t ad9834_write(struct device *dev,
>  	if (ret)
>  		goto error_ret;

Not related to your patch...the above goto error_ret seems excessived.
When you look down at error_ret, it's not doing any clean up. So,
perhaps we can just return right here and get rid of the goto & label?

>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->lock);
>  	switch ((u32)this_attr->address) {
>  	case AD9834_REG_FREQ0:
>  	case AD9834_REG_FREQ1:
> @@ -207,7 +209,7 @@ static ssize_t ad9834_write(struct device *dev,
>  	default:
>  		ret = -ENODEV;
>  	}
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->lock);
>  
>  error_ret:
>  	return ret ? ret : len;
> @@ -224,7 +226,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
>  	int ret = 0;
>  	bool is_ad9833_7 = (st->devid == ID_AD9833) || (st->devid == ID_AD9837);
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->lock);
>  
>  	switch ((u32)this_attr->address) {
>  	case 0:
> @@ -267,7 +269,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
>  		st->data = cpu_to_be16(AD9834_REG_CMD | st->control);
>  		ret = spi_sync(st->spi, &st->msg);
>  	}
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_lock(&st->lock);

Needs to be mutex_unlock()

>  
>  	return ret ? ret : len;
>  }
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312115013.GA31878%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.

