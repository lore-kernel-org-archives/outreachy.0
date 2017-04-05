X-GM-THRID: 6400749553719443456
X-Received: by 10.129.18.130 with SMTP id 124mr10777781yws.56.1491359699985;
        Tue, 04 Apr 2017 19:34:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls5436949otb.2.gmail; Tue, 04 Apr
 2017 19:34:59 -0700 (PDT)
X-Received: by 10.176.68.7 with SMTP id m7mr5635751uam.18.1491359699567;
        Tue, 04 Apr 2017 19:34:59 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y90si2987853pfa.6.2017.04.04.19.34.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Apr 2017 19:34:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id o123so73339pga.1
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Apr 2017 19:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=34bbjyBJzVUzIc9mQ93LMusGGrcD57BZV9IryLQTxEQ=;
        b=G1HPVamYWVwWAFjpMenJYij3HM5q1HepwscKCs0g/tpOcXag2vHNdwHePdPnAbMgS7
         V491GYmH2V3yDrDhsFQkc3hXw2GowbWy6sGE9JxBAE0FMxpIPdRbHsKLJJXX/zt/Rv5L
         TfQwKPUnWqjpnYEvIE6CQySxDKj9mub7WyJQImrOUrVuY1uOjeapFxnm/H0AiQtGqE+A
         69MDHO10kog1PC1Mj+MqyY+Mey2xoCmzX5a3wHuEd9KxR/TlHTmfOaEpcsekpM7KFBQJ
         YiH+IMdWXeHGI1EkRsCyowJmmUXUQuR2FQNteo2Mm8Hefh8Z+wDZoCzkQxllNx72eFIe
         CU3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=34bbjyBJzVUzIc9mQ93LMusGGrcD57BZV9IryLQTxEQ=;
        b=t0tLWunRXGehjaMse62O5HZfiQITCDIjIdg/DyeW53Y/cZNTQW/XA83lcwJ6Jwy8ev
         1Hs0MQYtTL0acWotst5WYy7fc2BMqJnfdQQfJX09Rzy/zSkAmka4UTofvTdg0CblZYb+
         ctpnvAipLdBIPOc3yv6vsESjj54soFn7cQAY0YF2O+T/iOGIxq24Qynkrcv4aR5Jb3w0
         Ak0dzrGTDlzOFGj6Fm+N3mFKTxbGdg7SK5an2G5etil/FNrvXUSVRAtxpWp0wLO7KjVE
         ZPhY4lpcxgxDuiv33rNr5cPr5yKVauKeXMCoSqfWlP0jsnSJ5bHKjCNKotM8vOUcUcuJ
         ybQQ==
X-Gm-Message-State: AFeK/H2JuRoifubbXE7KtRdU165NRL/OekOjei6Epz7ye9a30Gx4CiGgZTMmW1tgPEr++A==
X-Received: by 10.84.178.131 with SMTP id z3mr772743plb.139.1491359699215;
        Tue, 04 Apr 2017 19:34:59 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id c19sm34016020pfd.85.2017.04.04.19.34.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 04 Apr 2017 19:34:58 -0700 (PDT)
Date: Tue, 4 Apr 2017 19:34:56 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: lars@metafoo.de, Jonathan Cameron <jic23@kernel.org>
Cc: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>,
	Michael.Hennerich@analog.com, knaack.h@gmx.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, linux-iio@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: iio: ad5933: Protect DIRECT mode using
 claim/release helpers
Message-ID: <20170405023454.GA20027@d830.WORKGROUP>
References: <1490290603-9115-1-git-send-email-narcisaanamaria12@gmail.com>
 <2ea7b2ea-a09a-2e43-23b3-bd77f2541c6f@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ea7b2ea-a09a-2e43-23b3-bd77f2541c6f@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Mar 25, 2017 at 05:56:54PM +0000, Jonathan Cameron wrote:
> On 23/03/17 17:36, Narcisa Ana Maria Vasile wrote:
> > This device operates in DIRECT_MODE and BUFFER_HARDWARE mode.
> > Replace usages of iio_dev->mlock with iio_device_{claim|release}_direct_mode()
> > helper functions to guarantee DIRECT mode and consequently protect
> > BUFFER mode too.
> > 
> > Add and use a device private lock to protect against conflicting access of the
> > state data.
> > This helps with IIO subsystem redefining iio_dev->mlock to be used by
> > the IIO core only for protecting device operating mode changes.
> > ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> > 
> > Remove lock from ad5933_work() because buffer mode should be enabled
> > when we reach this, and claiming DIRECT mode in all the other places
> > should protect it.
> Well presented. I was wondering about the logic behind that...
> > 
> > Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> This is certainly a fiddly one so I'd like some more eyes on it.
> 
> Lars - could you take a look? (he gets all the analog devices stuff ;)

Lars - Your thoughts?  

Narcisa traced through the callbacks carefully since was the
only/first driver in IIO setting INDIO_BUFFER_HARDWARE.

thanks,
alisons

> > ---
> >  drivers/staging/iio/impedance-analyzer/ad5933.c | 50 ++++++++++++++-----------
> >  1 file changed, 28 insertions(+), 22 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
> > index 297665d..3d539ee 100644
> > --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
> > +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
> > @@ -98,6 +98,7 @@ struct ad5933_state {
> >  	struct i2c_client		*client;
> >  	struct regulator		*reg;
> >  	struct delayed_work		work;
> > +	struct mutex			lock; /* Protect sensor state */
> >  	unsigned long			mclk_hz;
> >  	unsigned char			ctrl_hb;
> >  	unsigned char			ctrl_lb;
> > @@ -306,9 +307,11 @@ static ssize_t ad5933_show_frequency(struct device *dev,
> >  		u8 d8[4];
> >  	} dat;
> >  
> > -	mutex_lock(&indio_dev->mlock);
> > +	ret = iio_device_claim_direct_mode(indio_dev);
> > +	if (ret)
> > +		return ret;
> >  	ret = ad5933_i2c_read(st->client, this_attr->address, 3, &dat.d8[1]);
> > -	mutex_unlock(&indio_dev->mlock);
> > +	iio_device_release_direct_mode(indio_dev);
> >  	if (ret < 0)
> >  		return ret;
> >  
> > @@ -338,9 +341,11 @@ static ssize_t ad5933_store_frequency(struct device *dev,
> >  	if (val > AD5933_MAX_OUTPUT_FREQ_Hz)
> >  		return -EINVAL;
> >  
> > -	mutex_lock(&indio_dev->mlock);
> > +	ret = iio_device_claim_direct_mode(indio_dev);
> > +	if (ret)
> > +		return ret;
> >  	ret = ad5933_set_freq(st, this_attr->address, val);
> This is the one case that standas out where we aren't taking the new lock..
> It is setting a few internal state variables (st->freq_start and st->freq_inc)
> but this is safe because those aren't actually read anywhere..
> Presumably they were going to be cached, but the original author decided
> against at some point later...
> > -	mutex_unlock(&indio_dev->mlock);
> > +	iio_device_release_direct_mode(indio_dev);
> >  
> >  	return ret ? ret : len;
> >  }
> > @@ -364,7 +369,7 @@ static ssize_t ad5933_show(struct device *dev,
> >  	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
> >  	int ret = 0, len = 0;
> >  
> > -	mutex_lock(&indio_dev->mlock);
> > +	mutex_lock(&st->lock);
> >  	switch ((u32)this_attr->address) {
> >  	case AD5933_OUT_RANGE:
> >  		len = sprintf(buf, "%u\n",
> > @@ -393,7 +398,7 @@ static ssize_t ad5933_show(struct device *dev,
> >  		ret = -EINVAL;
> >  	}
> >  
> > -	mutex_unlock(&indio_dev->mlock);
> > +	mutex_unlock(&st->lock);
> >  	return ret ? ret : len;
> >  }
> >  
> > @@ -415,7 +420,10 @@ static ssize_t ad5933_store(struct device *dev,
> >  			return ret;
> >  	}
> >  
> > -	mutex_lock(&indio_dev->mlock);
> > +	ret = iio_device_claim_direct_mode(indio_dev);
> > +	if (ret)
> > +		return ret;
> > +	mutex_lock(&st->lock);
> >  	switch ((u32)this_attr->address) {
> >  	case AD5933_OUT_RANGE:
> >  		ret = -EINVAL;
> > @@ -465,7 +473,8 @@ static ssize_t ad5933_store(struct device *dev,
> >  		ret = -EINVAL;
> >  	}
> >  
> > -	mutex_unlock(&indio_dev->mlock);
> > +	mutex_unlock(&st->lock);
> > +	iio_device_release_direct_mode(indio_dev);
> >  	return ret ? ret : len;
> >  }
> >  
> > @@ -532,11 +541,9 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
> >  
> >  	switch (m) {
> >  	case IIO_CHAN_INFO_RAW:
> > -		mutex_lock(&indio_dev->mlock);
> > -		if (iio_buffer_enabled(indio_dev)) {
> > -			ret = -EBUSY;
> > -			goto out;
> > -		}
> > +		ret = iio_device_claim_direct_mode(indio_dev);
> > +		if (ret)
> > +			return ret;
> >  		ret = ad5933_cmd(st, AD5933_CTRL_MEASURE_TEMP);
> >  		if (ret < 0)
> >  			goto out;
> > @@ -549,7 +556,7 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
> >  				      2, (u8 *)&dat);
> >  		if (ret < 0)
> >  			goto out;
> > -		mutex_unlock(&indio_dev->mlock);
> > +		iio_device_release_direct_mode(indio_dev);
> >  		*val = sign_extend32(be16_to_cpu(dat), 13);
> >  
> >  		return IIO_VAL_INT;
> > @@ -561,7 +568,7 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
> >  
> >  	return -EINVAL;
> >  out:
> > -	mutex_unlock(&indio_dev->mlock);
> > +	iio_device_release_direct_mode(indio_dev);
> >  	return ret;
> >  }
> >  
> > @@ -657,18 +664,17 @@ static void ad5933_work(struct work_struct *work)
> >  	unsigned char status;
> >  	int ret;
> >  
> > -	mutex_lock(&indio_dev->mlock);
> >  	if (st->state == AD5933_CTRL_INIT_START_FREQ) {
> >  		/* start sweep */
> >  		ad5933_cmd(st, AD5933_CTRL_START_SWEEP);
> >  		st->state = AD5933_CTRL_START_SWEEP;
> >  		schedule_delayed_work(&st->work, st->poll_time_jiffies);
> > -		goto out;
> > +		return;
> >  	}
> >  
> >  	ret = ad5933_i2c_read(st->client, AD5933_REG_STATUS, 1, &status);
> >  	if (ret)
> > -		goto out;
> > +		return;
> >  
> >  	if (status & AD5933_STAT_DATA_VALID) {
> >  		int scan_count = bitmap_weight(indio_dev->active_scan_mask,
> > @@ -678,7 +684,7 @@ static void ad5933_work(struct work_struct *work)
> >  				AD5933_REG_REAL_DATA : AD5933_REG_IMAG_DATA,
> >  				scan_count * 2, (u8 *)buf);
> >  		if (ret)
> > -			goto out;
> > +			return;
> >  
> >  		if (scan_count == 2) {
> >  			val[0] = be16_to_cpu(buf[0]);
> > @@ -690,7 +696,7 @@ static void ad5933_work(struct work_struct *work)
> >  	} else {
> >  		/* no data available - try again later */
> >  		schedule_delayed_work(&st->work, st->poll_time_jiffies);
> > -		goto out;
> > +		return;
> >  	}
> >  
> >  	if (status & AD5933_STAT_SWEEP_DONE) {
> > @@ -703,8 +709,6 @@ static void ad5933_work(struct work_struct *work)
> >  		ad5933_cmd(st, AD5933_CTRL_INC_FREQ);
> >  		schedule_delayed_work(&st->work, st->poll_time_jiffies);
> >  	}
> > -out:
> > -	mutex_unlock(&indio_dev->mlock);
> >  }
> >  
> >  static int ad5933_probe(struct i2c_client *client,
> > @@ -723,6 +727,8 @@ static int ad5933_probe(struct i2c_client *client,
> >  	i2c_set_clientdata(client, indio_dev);
> >  	st->client = client;
> >  
> > +	mutex_init(&st->lock);
> > +
> >  	if (!pdata)
> >  		pdata = &ad5933_default_pdata;
> >  
> > 
> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html

