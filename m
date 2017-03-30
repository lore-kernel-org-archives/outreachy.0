X-GM-THRID: 6401527449864110080
X-Received: by 10.129.135.199 with SMTP id x190mr439792ywf.63.1490898352311;
        Thu, 30 Mar 2017 11:25:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.23 with SMTP id 23ls6409974ioh.50.gmail; Thu, 30 Mar
 2017 11:25:51 -0700 (PDT)
X-Received: by 10.98.56.80 with SMTP id f77mr328699pfa.43.1490898351423;
        Thu, 30 Mar 2017 11:25:51 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-io0-x242.google.com (mail-io0-x242.google.com. [2607:f8b0:4001:c06::242])
        by gmr-mx.google.com with ESMTPS id a17si267329itd.1.2017.03.30.11.25.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 11:25:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) client-ip=2607:f8b0:4001:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x242.google.com with SMTP id f84so3743638ioj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 11:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CqWU79Q+uppbLK0E0ccYf/xCg31pCtw0nfx9SBxC6u0=;
        b=tmGWkbbx68vZsjSRGJ0KNzfuY66EV9EZQuw5fDznjav1SKOvu6Z0YokE+Mz6Vb94cr
         3Oi9EaYgwWTqj4g/UYsx27LEGtdastz0RlxDBCYDQUhXlRK45fefpJDja0gUkJUoTYy/
         cL6FFy5hL4JJyRWHjJGUg+OiNgiLbTqskElJ9IDlj3dICYxFEcLJok9Pc3Ya+WUh/LQ9
         ZZG4BpJaCMX45+SHsNk0MGdZh/hJb8wSApNtaFCXZ7+szsIVddHNMlXCQZBhqEkjyr0t
         QyVcVvceiT2AgMO13DUJRdDiBwZhHm6z/1WbU2KDZbMKsYz+7m53JpePbxUBmM4xGzbJ
         bw+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CqWU79Q+uppbLK0E0ccYf/xCg31pCtw0nfx9SBxC6u0=;
        b=uFH3dR3XETQt3aF56gcywSxsj944NWXVtEGD2iegsl9iavBpYKr1xyUP/dSVVrWnzA
         s7GR2g5BD0DltUmxHbI341CtANlB6rChsVe6hUR03jm60r6RtlmG6mc5jwBwxXLTYAVz
         ToaxubAoO/AfZemZ+QIgl6pmSHs/6gTUqTggX9lgf+Bw1k7EV49Drla1BOCNm79YnzgW
         ELikmalerkGkLcp3+vQakSMadIRgaVVC9gx2izpJ/tlfDdBun0JHvyDuRqYTMtopdTTh
         CEH4JqD79+3HcdLtuKInFSUj4n4Bt/x4N71gEc+pzBFQO0Jy5jitfO2T7EnjZij/ZHHl
         zLsQ==
X-Gm-Message-State: AFeK/H1zQByush0NYXEurTK2+GdvzTtNB+CUz129BlVtCkLC/Vh6Ip3HMk5jlazeQ/NsTQ==
X-Received: by 10.107.15.144 with SMTP id 16mr2344155iop.140.1490898351154;
        Thu, 30 Mar 2017 11:25:51 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id m77sm1786596ita.16.2017.03.30.11.25.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Mar 2017 11:25:51 -0700 (PDT)
Date: Thu, 30 Mar 2017 11:25:49 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Gargi Sharma <gs051095@gmail.com>, outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org, lars@metafoo.de,
	Michael.Hennerich@analog.com, knaack.h@gmx.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Subject: Re: [RFC/PATCH v3] staging: iio: update locking method during
 frequency writes
Message-ID: <20170330182549.GB6160@d830.WORKGROUP>
References: <1490866426-15575-1-git-send-email-gs051095@gmail.com>
 <ce65c22f-2c3a-a8b0-fcbb-8198829a4b65@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ce65c22f-2c3a-a8b0-fcbb-8198829a4b65@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 30, 2017 at 07:22:49PM +0100, Jonathan Cameron wrote:
> On 30/03/17 10:33, Gargi Sharma wrote:
> > The driver needs to insure atomicity during frequency
> > changes of bus and device. The iiodev->mlock as used
> > was not doing that. Replace it with the drivers existing
> > buffer lock and introduce an auxiliary spi_write() that does
> > not hold the lock.
> > 
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> Only one comment on this.  Why an RFC?  I nearly
> ignored this in my sweep of easy patches to pick up
> this evening purely because I thought there might still
> be something that needed real thought in it.

Oh, that was my bad influence!
We were reviewing proposals for these in Outreachy and I'd
suggested the RFC label for the proposals.  Thanks for
addressing it.
alisons

> 
> It's a clean nice patch that I don't think any substantial
> questions have been raised against - so just submit it as
> patch. As an RFC it is underselling itself!
> 
> Anyhow, never mind, I did look and have applied it ;)
> 
> Applied to the togreg branch of iio.git and pushed out
> as testing for the autobuilders to play with it.
> 
> Thanks.
> 
> Jonathan
> > ---
> > Changes in v3:
> >         - Removed unnecessary ret variable inside
> >           __ade7754_spi_write_reg_8 function.
> > Changes in v2:
> >         - Added auxiliary function.
> >         - Updated the buf_lock comment appropriately.
> > ---
> >  drivers/staging/iio/meter/ade7754.c | 24 ++++++++++++++++--------
> >  1 file changed, 16 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
> > index c8d2d4c..91f8740 100644
> > --- a/drivers/staging/iio/meter/ade7754.c
> > +++ b/drivers/staging/iio/meter/ade7754.c
> > @@ -97,7 +97,7 @@
> >  /**
> >   * struct ade7754_state - device instance specific data
> >   * @us:			actual spi_device
> > - * @buf_lock:		mutex to protect tx and rx
> > + * @buf_lock:		mutex to protect tx, rx and write frequency
> >   * @tx:			transmit buffer
> >   * @rx:			receive buffer
> >   **/
> > @@ -108,17 +108,25 @@ struct ade7754_state {
> >  	u8			rx[ADE7754_MAX_RX];
> >  };
> >  
> > -static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
> > +/* Unlocked version of ade7754_spi_write_reg_8 function */
> > +static int __ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
> >  {
> > -	int ret;
> >  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >  	struct ade7754_state *st = iio_priv(indio_dev);
> >  
> > -	mutex_lock(&st->buf_lock);
> >  	st->tx[0] = ADE7754_WRITE_REG(reg_address);
> >  	st->tx[1] = val;
> > +	return spi_write(st->us, st->tx, 2);
> > +}
> >  
> > -	ret = spi_write(st->us, st->tx, 2);
> > +static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
> > +{
> > +	int ret;
> > +	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> > +	struct ade7754_state *st = iio_priv(indio_dev);
> > +
> > +	mutex_lock(&st->buf_lock);
> > +	ret = __ade7754_spi_write_reg_8(dev, reg_address, val);
> >  	mutex_unlock(&st->buf_lock);
> >  
> >  	return ret;
> > @@ -513,7 +521,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
> >  	if (!val)
> >  		return -EINVAL;
> >  
> > -	mutex_lock(&indio_dev->mlock);
> > +	mutex_lock(&st->buf_lock);
> >  
> >  	t = 26000 / val;
> >  	if (t > 0)
> > @@ -531,10 +539,10 @@ static ssize_t ade7754_write_frequency(struct device *dev,
> >  	reg &= ~(3 << 3);
> >  	reg |= t << 3;
> >  
> > -	ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
> > +	ret = __ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
> >  
> >  out:
> > -	mutex_unlock(&indio_dev->mlock);
> > +	mutex_unlock(&st->buf_lock);
> >  
> >  	return ret ? ret : len;
> >  }
> > 
> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html

