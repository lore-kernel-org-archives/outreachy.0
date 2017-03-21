X-GM-THRID: 6398373939210354688
X-Received: by 10.99.1.3 with SMTP id 3mr19052013pgb.150.1490112710507;
        Tue, 21 Mar 2017 09:11:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.143.75 with SMTP id r72ls4453678iod.30.gmail; Tue, 21 Mar
 2017 09:11:49 -0700 (PDT)
X-Received: by 10.99.1.134 with SMTP id 128mr18332879pgb.100.1490112709383;
        Tue, 21 Mar 2017 09:11:49 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si3559487pfx.8.2017.03.21.09.11.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 09:11:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so17264065pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 09:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zzwfhQKhNZ21phS/s0Y6485hgYhoETwVXMlQqEdk3Mc=;
        b=gDTU/0gc6ZVG3ZWXOVlTg/pRu79Q2pTmzWP8OFdCOLH9Hi8y7c3EZ8fR9dWUxjVcBz
         Bekfk8qDOsX0OcyAUbkZouBo9lULGfmwVwEbOvs5Tv364QDfLldsks2FWwk8xjsXGR5I
         kTEtKoeOgT3fIQTQAaJzTk1TZsd6FBlD1HBrj0eSFcZvY94vQug0HXxOd/+Zhzz1YJVH
         KARvX/3eeE117MruBT4mKm2llUjnVNRGlGiEAwpNpIQ9djKmpDRGPalzRAWzUTonJ0yG
         +2Tl/XDZA37pYkwuNG/NMTkcTyogG/aT4GMljTm5Xv69GTYqdsdwhWxuU2TLyEDriLAe
         1i6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zzwfhQKhNZ21phS/s0Y6485hgYhoETwVXMlQqEdk3Mc=;
        b=pAoB46Qbpip/nQYrY17rlfHdFDYmVlFdcdzYoM+IKDHbEogyqs8BkyaJlNm5bjmrLq
         cNw9RtXU8pBbJnLdiwG3wVpyF7u0Pc1zqLMWK6WRbs0bCvrWziL3GQar77Bmfstj/SNT
         ppSeSrZFUgDrwR+sHy6xvct6nh4aV7pxY2W+wQM1ASogZFgH5hgLsWAPXtX7Avh5OdQV
         4zB6vTItmWZXBbkEZDT1RWdFKa9NlCe++fKQqGc+BR1zIR/fvKdIw45cSZpUC4pbj+zW
         Bq1S6rdHkpzpRfH7dyEG66c9O3STDsIonPSg2nOp5bfoEYGDMq9msMmX2l5hs63XDJCn
         jszw==
X-Gm-Message-State: AFeK/H01G80ULekujiik1le5417DoB5rZy3Zbu0r3VU4rKzb6PqsW2nBREAy+rEZ/XHZfw==
X-Received: by 10.84.193.129 with SMTP id f1mr18145779pld.63.1490112709077;
        Tue, 21 Mar 2017 09:11:49 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id 9sm3243133pfq.42.2017.03.21.09.11.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 09:11:48 -0700 (PDT)
Date: Tue, 21 Mar 2017 09:11:47 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org,
	lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [RESEND PATCH v3] staging: iio: ad7280:
 Replace mlock with driver private lock
Message-ID: <20170321161146.GB1859@d830.WORKGROUP>
References: <1490112069-30133-1-git-send-email-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1490112069-30133-1-git-send-email-gs051095@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 21, 2017 at 09:31:09PM +0530, Gargi Sharma wrote:
> The IIO subsystem is redefining iio_dev->mlock to be used by
> the IIO core only for protecting device operating mode changes.
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> 
> In this driver, mlock was being used to protect hardware state
> changes.  Replace it with a lock in the devices global data.
> 
> Acked-by: Jonathan Cameron <jic23@kernel.org>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Hi Gargi - What's up with the RESEND's?  I see this patch
sent by you 03/17 and Jonathan replied 03/19 that he applied
it.  I see it in the IIO tree.
https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/log/?h=testing

I see a couple of more RESENDs in my box.  Please check if they
are necessary. Probably not.  RESENDs are typically used if your
PATCH has been 'missed'...for a long time - like in weeks, not
hours or even days.

alisons






> ---
> Changes in v3:
> 	- Added mutex_init(&st->lock) inside probe function.
> 	- Added driver name in subject line.
> Changes in v2:
>         - Made the commit log clearer.
> ---
>  drivers/staging/iio/adc/ad7280a.c | 22 ++++++++++++----------
>  1 file changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> index ee679ac..6a85e28 100644
> --- a/drivers/staging/iio/adc/ad7280a.c
> +++ b/drivers/staging/iio/adc/ad7280a.c
> @@ -134,6 +134,7 @@ struct ad7280_state {
>  	unsigned char			aux_threshhigh;
>  	unsigned char			aux_threshlow;
>  	unsigned char			cb_mask[AD7280A_MAX_CHAIN];
> +	struct mutex			lock; /* protect sensor state */
>  
>  	__be32				buf[2] ____cacheline_aligned;
>  };
> @@ -410,7 +411,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
>  	devaddr = this_attr->address >> 8;
>  	ch = this_attr->address & 0xFF;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->lock);
>  	if (readin)
>  		st->cb_mask[devaddr] |= 1 << (ch + 2);
>  	else
> @@ -418,7 +419,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
>  
>  	ret = ad7280_write(st, devaddr, AD7280A_CELL_BALANCE,
>  			   0, st->cb_mask[devaddr]);
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->lock);
>  
>  	return ret ? ret : len;
>  }
> @@ -433,10 +434,10 @@ static ssize_t ad7280_show_balance_timer(struct device *dev,
>  	int ret;
>  	unsigned int msecs;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->lock);
>  	ret = ad7280_read(st, this_attr->address >> 8,
>  			  this_attr->address & 0xFF);
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->lock);
>  
>  	if (ret < 0)
>  		return ret;
> @@ -466,11 +467,11 @@ static ssize_t ad7280_store_balance_timer(struct device *dev,
>  	if (val > 31)
>  		return -EINVAL;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->lock);
>  	ret = ad7280_write(st, this_attr->address >> 8,
>  			   this_attr->address & 0xFF,
>  			   0, (val & 0x1F) << 3);
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->lock);
>  
>  	return ret ? ret : len;
>  }
> @@ -655,7 +656,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
>  
>  	val = clamp(val, 0L, 0xFFL);
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->lock);
>  	switch ((u32)this_attr->address) {
>  	case AD7280A_CELL_OVERVOLTAGE:
>  		st->cell_threshhigh = val;
> @@ -674,7 +675,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
>  	ret = ad7280_write(st, AD7280A_DEVADDR_MASTER,
>  			   this_attr->address, 1, val);
>  
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->lock);
>  
>  	return ret ? ret : len;
>  }
> @@ -792,13 +793,13 @@ static int ad7280_read_raw(struct iio_dev *indio_dev,
>  
>  	switch (m) {
>  	case IIO_CHAN_INFO_RAW:
> -		mutex_lock(&indio_dev->mlock);
> +		mutex_lock(&st->lock);
>  		if (chan->address == AD7280A_ALL_CELLS)
>  			ret = ad7280_read_all_channels(st, st->scan_cnt, NULL);
>  		else
>  			ret = ad7280_read_channel(st, chan->address >> 8,
>  						  chan->address & 0xFF);
> -		mutex_unlock(&indio_dev->mlock);
> +		mutex_unlock(&st->lock);
>  
>  		if (ret < 0)
>  			return ret;
> @@ -847,6 +848,7 @@ static int ad7280_probe(struct spi_device *spi)
>  	st = iio_priv(indio_dev);
>  	spi_set_drvdata(spi, indio_dev);
>  	st->spi = spi;
> +	mutex_init(&st->lock);
>  
>  	if (!pdata)
>  		pdata = &ad7793_default_pdata;
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1490112069-30133-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

