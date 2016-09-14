X-GM-THRID: 6329987466337976320
X-Received: by 10.107.3.96 with SMTP id 93mr2542704iod.3.1473862246258;
        Wed, 14 Sep 2016 07:10:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.134 with SMTP id 128ls337055ith.10.canary; Wed, 14 Sep
 2016 07:10:44 -0700 (PDT)
X-Received: by 10.66.220.69 with SMTP id pu5mr2138252pac.32.1473862244707;
        Wed, 14 Sep 2016 07:10:44 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id z4si1169586pam.0.2016.09.14.07.10.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 07:10:44 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c03::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c03::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pa0-x244.google.com with SMTP id vz6so817523pab.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 07:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=P4XhJ5zFmiOsrfuZrFMjshkIVQawottGv/yAjM4V5F0=;
        b=ldf1MaBn0isXFG5aSo5AihqnUwy8Ai380IgKtHZCNFuaH66niHrkUtYqnQajLsiqy0
         Yp0BLi/t0NXtTb/9w/nQjF3CM+cQ9pHdbUcacJy92wArMK56cb1zzeCbdE/sItGb4p2c
         hY4FuV3SDvUAV7Be1c/xaBlBizMiDbuOIOUt6fil9PJhWYlRNhR/3BJIV6dVCwyUEG/t
         Nz3Pa4+QjKHw4I2n+VVst0Ov/r7mgtSZ9ksRQ950vPHflvO3O3j+1zg+A+IegY25JKJ7
         dNmAY47OVN+xCiVvABrnYJyVPoFdtNRi8PozxdOAI3CTDZqGy//wXY+2DyPk0UX7C6WE
         gYfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=P4XhJ5zFmiOsrfuZrFMjshkIVQawottGv/yAjM4V5F0=;
        b=l3JHjbwytQD5kEyF8I4TwrCxOI5y8SeNP6uaQmhMpDTZFTAEndCuFkEbdmUEOJU9F9
         YTEllbGSYX/tOioUa4Y+K+dnM09ynB4g8wYnZsa+ODpiGBhMHOZvo36DGHrgmZAOJYmz
         IVMKr7n3MIGmYVFSRk0QytUdgPoW88Zz49R/AKqyhyJqHcIcdmuBIRL6xJwNwWbQutpa
         PiqgJ9PrHPT85W7YPRZ+y0vIiQowNHVyHf3eHjI/fEMwEydAAwDB2jWP8c61O4iMiEtW
         9ofq8eKlEnQVmEHThNHDvqpbEtfmYn7ZwbJK0mMI4MBMzxZzJr9lX+vS740AO/VI1uxb
         08tw==
X-Gm-Message-State: AE9vXwOkfw7iUmKz9YIgRgf7Iz2lzcmxSt1zTHeQ+CbsmhOdjfkC/xDhhJkhc0UmEYl9nxfr
X-Received: by 10.66.222.202 with SMTP id qo10mr4922295pac.76.1473862244291;
        Wed, 14 Sep 2016 07:10:44 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2001:558:6045:106:7d84:83db:c3b2:274a])
        by smtp.gmail.com with ESMTPSA id cp11sm6025818pac.28.2016.09.14.07.10.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 07:10:43 -0700 (PDT)
Date: Wed, 14 Sep 2016 07:10:42 -0700
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com, lars@metafoo.de,
	michael.hennerich@analog.com, jic23@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ad5933: align arguments
 on new line with open parenthesis
Message-ID: <20160914141041.GA2039@katie-Inspiron-5748>
References: <20160914010414.GA441@katie-Inspiron-5748>
 <20160914051142.GA7205@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160914051142.GA7205@d830.WORKGROUP>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 13, 2016 at 10:11:43PM -0700, Alison Schofield wrote:
> On Tue, Sep 13, 2016 at 06:04:14PM -0700, Katie Dunne wrote:
> > knaack.h@gmx.de, pmeerw@pmeerw.net 
> > Bcc: 
> > Subject: [PATCH] staging: iio: ad5933: align arguments on new line with open parenthesis
> > Reply-To: 
> 
> Hi Katie,
> Something odd happened just above here...with the cc list and subject
> repeating. 

Thanks Alison. Something weird happened with mutt where the subject
disappeared so I had type it twice. I will try to figure out what went
wrong.

> It looks like some of these can be pulled into less lines.  If it fits
> within 80 chars, it's fine on one line.  See below.

I wasn't sure if I could do this in the same patch, but that makes
sense. 

I will send a v2.

Katie

> 
> > 
> > Issue found by checkpatch: "Alignment should match open parenthesis"
> > 
> > Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> > ---
> >  drivers/staging/iio/impedance-analyzer/ad5933.c | 34 ++++++++++++-------------
> >  1 file changed, 17 insertions(+), 17 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
> > index 24c348d..2307b4d 100644
> > --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
> > +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
> > @@ -157,7 +157,7 @@ static const struct iio_chan_spec ad5933_channels[] = {
> >  };
> >  
> >  static int ad5933_i2c_write(struct i2c_client *client,
> > -			      u8 reg, u8 len, u8 *data)
> > +			    u8 reg, u8 len, u8 *data)
> 
> think this one fits on one line....
> static int ad5933_i2c_read(struct i2c_client *client, u8 reg, u8 len, u8 *data)
> some others may do same or at least pull into less lines.
> 
> 
> >  {
> >  	int ret;
> >  
> > @@ -172,7 +172,7 @@ static int ad5933_i2c_write(struct i2c_client *client,
> >  }
> >  
> >  static int ad5933_i2c_read(struct i2c_client *client,
> > -			      u8 reg, u8 len, u8 *data)
> > +			   u8 reg, u8 len, u8 *data)
> >  {
> >  	int ret;
> >  
> > @@ -269,7 +269,7 @@ static int ad5933_setup(struct ad5933_state *st)
> >  	dat = cpu_to_be16(st->settling_cycles);
> >  
> >  	ret = ad5933_i2c_write(st->client,
> > -			AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
> > +			       AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
> >  	if (ret < 0)
> >  		return ret;
> >  
> > @@ -294,8 +294,8 @@ static void ad5933_calc_out_ranges(struct ad5933_state *st)
> >   */
> >  
> >  static ssize_t ad5933_show_frequency(struct device *dev,
> > -					struct device_attribute *attr,
> > -					char *buf)
> > +				     struct device_attribute *attr,
> > +				     char *buf)
> >  {
> >  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >  	struct ad5933_state *st = iio_priv(indio_dev);
> > @@ -322,9 +322,9 @@ static ssize_t ad5933_show_frequency(struct device *dev,
> >  }
> >  
> >  static ssize_t ad5933_store_frequency(struct device *dev,
> > -					 struct device_attribute *attr,
> > -					 const char *buf,
> > -					 size_t len)
> > +				      struct device_attribute *attr,
> > +				      const char *buf,
> > +				      size_t len)
> >  {
> >  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >  	struct ad5933_state *st = iio_priv(indio_dev);
> > @@ -357,8 +357,8 @@ static IIO_DEVICE_ATTR(out_voltage0_freq_increment, S_IRUGO | S_IWUSR,
> >  			AD5933_REG_FREQ_INC);
> >  
> >  static ssize_t ad5933_show(struct device *dev,
> > -					struct device_attribute *attr,
> > -					char *buf)
> > +			   struct device_attribute *attr,
> > +			   char *buf)
> >  {
> >  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >  	struct ad5933_state *st = iio_priv(indio_dev);
> > @@ -399,9 +399,9 @@ static ssize_t ad5933_show(struct device *dev,
> >  }
> >  
> >  static ssize_t ad5933_store(struct device *dev,
> > -					 struct device_attribute *attr,
> > -					 const char *buf,
> > -					 size_t len)
> > +			    struct device_attribute *attr,
> > +			    const char *buf,
> > +			    size_t len)
> >  {
> >  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >  	struct ad5933_state *st = iio_priv(indio_dev);
> > @@ -451,7 +451,7 @@ static ssize_t ad5933_store(struct device *dev,
> >  
> >  		dat = cpu_to_be16(val);
> >  		ret = ad5933_i2c_write(st->client,
> > -				AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
> > +				       AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
> >  		break;
> >  	case AD5933_FREQ_POINTS:
> >  		val = clamp(val, (u16)0, (u16)511);
> > @@ -545,8 +545,8 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
> >  			goto out;
> >  
> >  		ret = ad5933_i2c_read(st->client,
> > -				AD5933_REG_TEMP_DATA, 2,
> > -				(u8 *)&dat);
> > +				      AD5933_REG_TEMP_DATA, 2,
> > +				      (u8 *)&dat);
> >  		if (ret < 0)
> >  			goto out;
> >  		mutex_unlock(&indio_dev->mlock);
> > @@ -705,7 +705,7 @@ static void ad5933_work(struct work_struct *work)
> >  }
> >  
> >  static int ad5933_probe(struct i2c_client *client,
> > -				   const struct i2c_device_id *id)
> > +			const struct i2c_device_id *id)
> >  {
> >  	int ret, voltage_uv = 0;
> >  	struct ad5933_platform_data *pdata = dev_get_platdata(&client->dev);
> > -- 
> > 2.7.4
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914010414.GA441%40katie-Inspiron-5748.
> > For more options, visit https://groups.google.com/d/optout.

