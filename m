X-GM-THRID: 6396716918154199040
X-Received: by 10.157.13.79 with SMTP id 73mr2631006oti.81.1489615213747;
        Wed, 15 Mar 2017 15:00:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.76.208 with SMTP id a199ls1082765itb.0.gmail; Wed, 15 Mar
 2017 15:00:12 -0700 (PDT)
X-Received: by 10.99.110.73 with SMTP id j70mr3121117pgc.143.1489615212868;
        Wed, 15 Mar 2017 15:00:12 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id u12si585990pfd.3.2017.03.15.15.00.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 15:00:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so3467410pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 15:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=l0S3dT77K8nrkqJuOP5dKgSfJuLNGCzDSvYQZ00c2v0=;
        b=TgneZUC7mC2ifJoQG+2p9ObYtRXhLNqqnOn+kWZDyBlNnwL84bCuahY5i0GhEhPVxH
         d/srjPhUP0DvL5uWBWxuwMWZtnZ/MTAY7OODwtwzIMzw7S4VUSGyl1aHgHqWTUoSsnzV
         hRhqGcHyjCcgwT8tMJb1ie413L9h6RYKZ/UJjQqsbczax3tLSLuWdlBhfvDo7e4pCWSl
         7q7Fb00cnx1W9dNNLD0ZU+PnzK/XCrp+aIEPul75ecNW6+CE8p0R7emUqNhWlcSmuw9b
         a+UQPvRnFu+YJ1csVPWMmOPDEoirsnX24JNiBsseFKQyQ94oihHzKF5ogYLzFrBh5QjD
         bhqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=l0S3dT77K8nrkqJuOP5dKgSfJuLNGCzDSvYQZ00c2v0=;
        b=BLdxTXB7mKpvsK3N3AlnQVMDH9sCPZplvzSJGhABmPjWod+pNKTqugyuOVn0VPwsHX
         d3Zpbfy+1xaS8yONz9FPYPTqzOwtOYVhr1kB32jws+qcfKJlT0hl09qSYgJGOD0F+2P1
         /Md4s5sfwSG1dnluRatUwFYqx+upbZXZtjj1yW5aGoZxSVqOdNvj8ZdMXNP13pW/z9NH
         CozTfLjnspjzKpOZCGU6PJVfpEqjNpzdcpnWtNRriO6ShjHhaw36CVsBu8QdRxr+YhgJ
         YNJNyLCsql4+jGiNkuv8EII2GKYVsQGymZGjQglBPsHwIiZ7Ig0V7PdjSjkFk1pq57tc
         cTHw==
X-Gm-Message-State: AFeK/H10noUp48O3L3iK3tOIovrH/DmuNw2QHuaHednzRltewsv5L5uxaIw55uG+F7ihNQ==
X-Received: by 10.99.38.196 with SMTP id m187mr5959983pgm.195.1489615212536;
        Wed, 15 Mar 2017 15:00:12 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id 187sm6108240pff.17.2017.03.15.15.00.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 15:00:12 -0700 (PDT)
Date: Wed, 15 Mar 2017 15:00:11 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Gargi Sharma <gs051095@gmail.com>, outreachy-kernel@googlegroups.com,
	lars@metafoo.de, Michael.Hennerich@analog.com, knaack.h@gmx.de,
	pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [PATCH v2] staging: iio: adc: Replace mlock with driver private
 lock
Message-ID: <20170315220010.GA4895@d830.WORKGROUP>
References: <1489584521-20788-1-git-send-email-gs051095@gmail.com>
 <f5547535-19fb-013f-9f74-9c13002bdb4e@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f5547535-19fb-013f-9f74-9c13002bdb4e@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 15, 2017 at 07:38:33PM +0000, Jonathan Cameron wrote:
> On 15/03/17 13:28, Gargi Sharma wrote:
> > The IIO subsystem is redefining iio_dev->mlock to be used by
> > the IIO core only for protecting device operating mode changes.
> > ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> > 
> > In this driver, mlock was being used to protect hardware state
> > changes.  Replace it with a lock in the devices global data.
> > 
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> Was missing from Alison's original patch (since fixed), but
> we need to call mutex_init on the mutex somewhere suitable in probe.
> 
> Thanks,
> 
> Jonathan
Hi Gargi - please include the driver name in subject line when you rev it.  
alisons
> > ---
> > Changes in v2:
> > 	- Made the commit log clearer.
> > ---
> >  drivers/staging/iio/adc/ad7280a.c | 21 +++++++++++----------
> >  1 file changed, 11 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> > index ee679ac..b482606 100644
> > --- a/drivers/staging/iio/adc/ad7280a.c
> > +++ b/drivers/staging/iio/adc/ad7280a.c
> > @@ -134,6 +134,7 @@ struct ad7280_state {
> >  	unsigned char			aux_threshhigh;
> >  	unsigned char			aux_threshlow;
> >  	unsigned char			cb_mask[AD7280A_MAX_CHAIN];
> > +	struct mutex			lock; /* protect sensor state */
> >  
> >  	__be32				buf[2] ____cacheline_aligned;
> >  };
> > @@ -410,7 +411,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
> >  	devaddr = this_attr->address >> 8;
> >  	ch = this_attr->address & 0xFF;
> >  
> > -	mutex_lock(&indio_dev->mlock);
> > +	mutex_lock(&st->lock);
> >  	if (readin)
> >  		st->cb_mask[devaddr] |= 1 << (ch + 2);
> >  	else
> > @@ -418,7 +419,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
> >  
> >  	ret = ad7280_write(st, devaddr, AD7280A_CELL_BALANCE,
> >  			   0, st->cb_mask[devaddr]);
> > -	mutex_unlock(&indio_dev->mlock);
> > +	mutex_unlock(&st->lock);
> >  
> >  	return ret ? ret : len;
> >  }
> > @@ -433,10 +434,10 @@ static ssize_t ad7280_show_balance_timer(struct device *dev,
> >  	int ret;
> >  	unsigned int msecs;
> >  
> > -	mutex_lock(&indio_dev->mlock);
> > +	mutex_lock(&st->lock);
> >  	ret = ad7280_read(st, this_attr->address >> 8,
> >  			  this_attr->address & 0xFF);
> > -	mutex_unlock(&indio_dev->mlock);
> > +	mutex_unlock(&st->lock);
> >  
> >  	if (ret < 0)
> >  		return ret;
> > @@ -466,11 +467,11 @@ static ssize_t ad7280_store_balance_timer(struct device *dev,
> >  	if (val > 31)
> >  		return -EINVAL;
> >  
> > -	mutex_lock(&indio_dev->mlock);
> > +	mutex_lock(&st->lock);
> >  	ret = ad7280_write(st, this_attr->address >> 8,
> >  			   this_attr->address & 0xFF,
> >  			   0, (val & 0x1F) << 3);
> > -	mutex_unlock(&indio_dev->mlock);
> > +	mutex_unlock(&st->lock);
> >  
> >  	return ret ? ret : len;
> >  }
> > @@ -655,7 +656,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
> >  
> >  	val = clamp(val, 0L, 0xFFL);
> >  
> > -	mutex_lock(&indio_dev->mlock);
> > +	mutex_lock(&st->lock);
> >  	switch ((u32)this_attr->address) {
> >  	case AD7280A_CELL_OVERVOLTAGE:
> >  		st->cell_threshhigh = val;
> > @@ -674,7 +675,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
> >  	ret = ad7280_write(st, AD7280A_DEVADDR_MASTER,
> >  			   this_attr->address, 1, val);
> >  
> > -	mutex_unlock(&indio_dev->mlock);
> > +	mutex_unlock(&st->lock);
> >  
> >  	return ret ? ret : len;
> >  }
> > @@ -792,13 +793,13 @@ static int ad7280_read_raw(struct iio_dev *indio_dev,
> >  
> >  	switch (m) {
> >  	case IIO_CHAN_INFO_RAW:
> > -		mutex_lock(&indio_dev->mlock);
> > +		mutex_lock(&st->lock);
> >  		if (chan->address == AD7280A_ALL_CELLS)
> >  			ret = ad7280_read_all_channels(st, st->scan_cnt, NULL);
> >  		else
> >  			ret = ad7280_read_channel(st, chan->address >> 8,
> >  						  chan->address & 0xFF);
> > -		mutex_unlock(&indio_dev->mlock);
> > +		mutex_unlock(&st->lock);
> >  
> >  		if (ret < 0)
> >  			return ret;
> > 
> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html

