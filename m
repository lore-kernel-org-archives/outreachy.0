X-GM-THRID: 6341139750972293120
X-Received: by 10.31.48.216 with SMTP id w207mr682838vkw.33.1476819418434;
        Tue, 18 Oct 2016 12:36:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.129 with SMTP id 1ls356670otj.31.gmail; Tue, 18 Oct
 2016 12:36:57 -0700 (PDT)
X-Received: by 10.13.195.193 with SMTP id f184mr717589ywd.153.1476819417895;
        Tue, 18 Oct 2016 12:36:57 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id p131si6443463vkf.1.2016.10.18.12.36.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Oct 2016 12:36:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x244.google.com with SMTP id f6so144018qtd.1
        for <outreachy-kernel@googlegroups.com>; Tue, 18 Oct 2016 12:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VWkqSrgkMR/pHzwTYr4QdHciJBvkBsTMa7XUI2KhPfs=;
        b=KcwOAYueJ/WbQmdFJiy0h47TPF/IvqbmLYqrwRApJFPNP+o7f0adb+T1JZT0/0luMm
         H3LcdIuqMeVpKm1VM+44jQBoCRXb8ozmX9riw0bO0grX23DjP0Y8qVb7B7DvpIzyg+XE
         E5oKeak4SlDbfczjZptVlyegu6L671FviZcukcMp3BTQon9/8frV27oT6prySwxwFkp0
         CvxEkbdVBbDAOvnT5MKbjuV9D2ZqlnEvfWJbLo4l+vGPgOqW4UXOdvBxMsSdAmWiimMy
         kWhr4sr+IRhOouy898//gL2Ec+FPrWSjVsIWb+pF53ETMNrCQvbiVaJZwauLO9XHMIbh
         SmdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VWkqSrgkMR/pHzwTYr4QdHciJBvkBsTMa7XUI2KhPfs=;
        b=bJnCqtOAusGQtLT2vb9UmUOeHslRaQUE7rBLKXpdAIibfRmlq9nQpQS+FXa+9AtKRp
         05Ko+KWPG71TNhzF7ACSIW1YzU1F+fOQuxmyQIKvtXgoVHgJogRTKkVhmsZkKBmPnDTN
         x/qtjjeZR4awMdH0B4Awsj9Z06qtNo5I28IFVqrgyesJp0zE+7npzcUWzTsF48V8zQtr
         Yi3Zs8yh+tflTi5nG+UOqu+ezlTN8h4fQ4TXqKw2cn8djBd9TeZ+RYCRL7/CHNiDw11O
         G+B6GjBPtopwsmn38MGyLpac9Dey12m39T/uY6hZbZtxpxqnZSNRlM0wRvDU6/GonF1t
         0GRg==
X-Gm-Message-State: AA6/9RlVSkt2NSKFSJ2VUNqnk7lZbdrhgUaTxWDwv0UMIa3dTSyxOMFxo6V7Y/q3Z6E8kQ==
X-Received: by 10.200.57.58 with SMTP id s55mr2455446qtb.68.1476819417493;
        Tue, 18 Oct 2016 12:36:57 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock (wifi-177-220-85-19.wifi.ic.unicamp.br. [177.220.85.19])
        by smtp.gmail.com with ESMTPSA id c64sm18859594qkg.21.2016.10.18.12.36.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 18 Oct 2016 12:36:56 -0700 (PDT)
Date: Tue, 18 Oct 2016 17:36:52 -0200
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: outreachy-kernel@googlegroups.com, lars@metafoo.de, knaack.h@gmx.de,
	pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [PATCH] iio: imu: inv_mpu6050: implemented
 IIO_CHAN_INFO_SAMP_FREQ
Message-ID: <20161018193652.GA11725@spock>
References: <20161014022043.GA8114@spock>
 <45751c64-ae17-fed1-74e9-bf749562a59d@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <45751c64-ae17-fed1-74e9-bf749562a59d@kernel.org>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Oct 15, 2016 at 03:36:47PM +0100, Jonathan Cameron wrote:
> On 14/10/16 03:20, Juliana Rodrigues wrote:
> > Moved functionality from IIO_DEV_ATTR_SAMP_FREQ macro into
> > IIO_CHAN_INFO_SAMP_FREQ in order to create a generic attribute.
> > Modified inv_mpu6050_read_raw and inv_mpu6050_write_raw to allow
> > reading and writing the element.
> > 
> > Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> Hi Juliana,
> 
> This driver does things a little differently from some others, so you need
> to take a little more care when reworking elements to add them to the
> write_raw callback.
> 
> Anyhow, take another look at that, and perhaps whilst you are there
> check out the odd error handling path in that function which I'm embarrassed
> to say I've never noticed before!
> 
> Jonathan

Hi Jonathan,

Thank you for your comments. I'll write a new patch to fix the issues
you've mentioned. I just have a few questions bellow.

Juliana
> > ---
> >  drivers/iio/imu/inv_mpu6050/inv_mpu_core.c | 187 ++++++++++++++---------------
> >  1 file changed, 92 insertions(+), 95 deletions(-)
> > 
> > diff --git a/drivers/iio/imu/inv_mpu6050/inv_mpu_core.c b/drivers/iio/imu/inv_mpu6050/inv_mpu_core.c
> > index b9fcbf1..20722c8 100644
> > --- a/drivers/iio/imu/inv_mpu6050/inv_mpu_core.c
> > +++ b/drivers/iio/imu/inv_mpu6050/inv_mpu_core.c
> > @@ -263,6 +263,88 @@ static int inv_mpu6050_sensor_set(struct inv_mpu6050_state  *st, int reg,
> >  	return 0;
> >  }
> >  
> > +/**
> > + *  inv_mpu6050_set_lpf() - set low pass filer based on fifo rate.
> > + *
> > + *                  Based on the Nyquist principle, the sampling rate must
> > + *                  exceed twice of the bandwidth of the signal, or there
> > + *                  would be alising. This function basically search for the
> > + *                  correct low pass parameters based on the fifo rate, e.g,
> > + *                  sampling frequency.
> > + */
> > +static int inv_mpu6050_set_lpf(struct inv_mpu6050_state *st, int rate)
> > +{
> > +	const int hz[] = {188, 98, 42, 20, 10, 5};
> > +	const int d[] = {INV_MPU6050_FILTER_188HZ, INV_MPU6050_FILTER_98HZ,
> > +			INV_MPU6050_FILTER_42HZ, INV_MPU6050_FILTER_20HZ,
> > +			INV_MPU6050_FILTER_10HZ, INV_MPU6050_FILTER_5HZ};
> > +	int i, h, result;
> > +	u8 data;
> > +
> > +	h = (rate >> 1);
> > +	i = 0;
> > +	while ((h < hz[i]) && (i < ARRAY_SIZE(d) - 1))
> > +		i++;
> > +	data = d[i];
> > +	result = regmap_write(st->map, st->reg->lpf, data);
> > +	if (result)
> > +		return result;
> > +	st->chip_config.lpf = data;
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * inv_mpu6050_write_raw_samp_freq() - Set current raw sampling rate.
> > + */
> > +static int inv_mpu6050_write_raw_samp_freq(struct iio_dev *indio_dev,
> > +					   struct inv_mpu6050_state *st,
> > +					   int val) {
> > +
> > +	u8 d;
> > +	int result;
> > +
> > +	if (val < INV_MPU6050_MIN_FIFO_RATE || val > INV_MPU6050_MAX_FIFO_RATE)
> > +		return -EINVAL;
> > +	if (val == st->chip_config.fifo_rate)
> > +		return 0;
> > +
> > +	mutex_lock(&indio_dev->mlock);
> Please take a close look at the write_raw function... It is doing various
> things before calling this - including taking mlock. Also does some stuff
> afterwards, including some truely mistifying error handling which definitely
> looks buggy.
> 

Maybe would be better to move checks and mutex locks outside?

About the error handling, looks like it's trying to turn on, write,
and turn off with a lot of gotos in the middle to check if it was
sucessful. I don't see, though, how it's buggy. Can you enlighten me? (:

> > +	if (st->chip_config.enable) {
> > +		result = -EBUSY;
> > +		goto fifo_rate_fail;
> > +	}
> > +
> > +	result = inv_mpu6050_set_power_itg(st, true);
> > +	if (result)
> > +		goto fifo_rate_fail;
> > +
> > +	d = INV_MPU6050_ONE_K_HZ / val - 1;
> > +
> > +	result = regmap_write(st->map, st->reg->sample_rate_div, d);
> > +
> > +	if (result)
> > +		goto fifo_rate_fail;
> > +
> > +	st->chip_config.fifo_rate = val;
> > +
> > +	result = inv_mpu6050_set_lpf(st, val);
> > +
> > +	if (result)
> > +		goto fifo_rate_fail;
> > +
> > +fifo_rate_fail:
> > +	result |= inv_mpu6050_set_power_itg(st, false);
> > +	mutex_unlock(&indio_dev->mlock);
> > +
> > +	if (result)
> > +		return result;
> > +
> > +	return 0;
> > +
> > +}
> > +
> > +
> >  static int inv_mpu6050_sensor_show(struct inv_mpu6050_state  *st, int reg,
> >  				   int axis, int *val)
> >  {
> > @@ -399,6 +481,10 @@ inv_mpu6050_read_raw(struct iio_dev *indio_dev,
> >  		default:
> >  			return -EINVAL;
> >  		}
> > +	case IIO_CHAN_INFO_SAMP_FREQ:
> > +		*val = st->chip_config.fifo_rate;
> > +
> > +		return IIO_VAL_INT;
> >  	default:
> >  		return -EINVAL;
> >  	}
> > @@ -511,6 +597,10 @@ static int inv_mpu6050_write_raw(struct iio_dev *indio_dev,
> >  		default:
> >  			result = -EINVAL;
> >  		}
> > +		break;
> > +	case IIO_CHAN_INFO_SAMP_FREQ:
> > +		result = inv_mpu6050_write_raw_samp_freq(indio_dev, st, val);
> Sanity check that val2 == 0 please.
> > +		break;
> >  	default:
> >  		result = -EINVAL;
> >  		break;
> > @@ -524,98 +614,6 @@ static int inv_mpu6050_write_raw(struct iio_dev *indio_dev,
> >  }
> >  
> >  /**
> > - *  inv_mpu6050_set_lpf() - set low pass filer based on fifo rate.
> > - *
> > - *                  Based on the Nyquist principle, the sampling rate must
> > - *                  exceed twice of the bandwidth of the signal, or there
> > - *                  would be alising. This function basically search for the
> > - *                  correct low pass parameters based on the fifo rate, e.g,
> > - *                  sampling frequency.
> > - */
> > -static int inv_mpu6050_set_lpf(struct inv_mpu6050_state *st, int rate)
> > -{
> > -	const int hz[] = {188, 98, 42, 20, 10, 5};
> > -	const int d[] = {INV_MPU6050_FILTER_188HZ, INV_MPU6050_FILTER_98HZ,
> > -			INV_MPU6050_FILTER_42HZ, INV_MPU6050_FILTER_20HZ,
> > -			INV_MPU6050_FILTER_10HZ, INV_MPU6050_FILTER_5HZ};
> > -	int i, h, result;
> > -	u8 data;
> > -
> > -	h = (rate >> 1);
> > -	i = 0;
> > -	while ((h < hz[i]) && (i < ARRAY_SIZE(d) - 1))
> > -		i++;
> > -	data = d[i];
> > -	result = regmap_write(st->map, st->reg->lpf, data);
> > -	if (result)
> > -		return result;
> > -	st->chip_config.lpf = data;
> > -
> > -	return 0;
> > -}
> > -
> > -/**
> > - * inv_mpu6050_fifo_rate_store() - Set fifo rate.
> > - */
> > -static ssize_t
> > -inv_mpu6050_fifo_rate_store(struct device *dev, struct device_attribute *attr,
> > -			    const char *buf, size_t count)
> > -{
> > -	s32 fifo_rate;
> > -	u8 d;
> > -	int result;
> > -	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> > -	struct inv_mpu6050_state *st = iio_priv(indio_dev);
> > -
> > -	if (kstrtoint(buf, 10, &fifo_rate))
> > -		return -EINVAL;
> > -	if (fifo_rate < INV_MPU6050_MIN_FIFO_RATE ||
> > -	    fifo_rate > INV_MPU6050_MAX_FIFO_RATE)
> > -		return -EINVAL;
> > -	if (fifo_rate == st->chip_config.fifo_rate)
> > -		return count;
> > -
> > -	mutex_lock(&indio_dev->mlock);
> > -	if (st->chip_config.enable) {
> > -		result = -EBUSY;
> > -		goto fifo_rate_fail;
> > -	}
> > -	result = inv_mpu6050_set_power_itg(st, true);
> > -	if (result)
> > -		goto fifo_rate_fail;
> > -
> > -	d = INV_MPU6050_ONE_K_HZ / fifo_rate - 1;
> > -	result = regmap_write(st->map, st->reg->sample_rate_div, d);
> > -	if (result)
> > -		goto fifo_rate_fail;
> > -	st->chip_config.fifo_rate = fifo_rate;
> > -
> > -	result = inv_mpu6050_set_lpf(st, fifo_rate);
> > -	if (result)
> > -		goto fifo_rate_fail;
> > -
> > -fifo_rate_fail:
> > -	result |= inv_mpu6050_set_power_itg(st, false);
> > -	mutex_unlock(&indio_dev->mlock);
> > -	if (result)
> > -		return result;
> > -
> > -	return count;
> > -}
> > -
> > -/**
> > - * inv_fifo_rate_show() - Get the current sampling rate.
> > - */
> > -static ssize_t
> > -inv_fifo_rate_show(struct device *dev, struct device_attribute *attr,
> > -		   char *buf)
> > -{
> > -	struct inv_mpu6050_state *st = iio_priv(dev_to_iio_dev(dev));
> > -
> > -	return sprintf(buf, "%d\n", st->chip_config.fifo_rate);
> > -}
> > -
> > -/**
> >   * inv_attr_show() - calling this function will show current
> >   *                    parameters.
> >   *
> > @@ -686,6 +684,7 @@ static const struct iio_chan_spec_ext_info inv_ext_info[] = {
> >  		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE), \
> >  		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |	      \
> >  				      BIT(IIO_CHAN_INFO_CALIBBIAS),   \
> > +		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ), \
> >  		.scan_index = _index,                                 \
> >  		.scan_type = {                                        \
> >  				.sign = 's',                          \
> > @@ -708,6 +707,7 @@ static const struct iio_chan_spec inv_mpu_channels[] = {
> >  		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW)
> >  				| BIT(IIO_CHAN_INFO_OFFSET)
> >  				| BIT(IIO_CHAN_INFO_SCALE),
> > +		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
> >  		.scan_index = -1,
> >  	},
> >  	INV_MPU6050_CHAN(IIO_ANGL_VEL, IIO_MOD_X, INV_MPU6050_SCAN_GYRO_X),
> > @@ -725,8 +725,6 @@ static IIO_CONST_ATTR(in_anglvel_scale_available,
> >  					  "0.000133090 0.000266181 0.000532362 0.001064724");
> >  static IIO_CONST_ATTR(in_accel_scale_available,
> >  					  "0.000598 0.001196 0.002392 0.004785");
> > -static IIO_DEV_ATTR_SAMP_FREQ(S_IRUGO | S_IWUSR, inv_fifo_rate_show,
> > -	inv_mpu6050_fifo_rate_store);
> >  
> >  /* Deprecated: kept for userspace backward compatibility. */
> >  static IIO_DEVICE_ATTR(in_gyro_matrix, S_IRUGO, inv_attr_show, NULL,
> > @@ -737,7 +735,6 @@ static IIO_DEVICE_ATTR(in_accel_matrix, S_IRUGO, inv_attr_show, NULL,
> >  static struct attribute *inv_attributes[] = {
> >  	&iio_dev_attr_in_gyro_matrix.dev_attr.attr,  /* deprecated */
> >  	&iio_dev_attr_in_accel_matrix.dev_attr.attr, /* deprecated */
> > -	&iio_dev_attr_sampling_frequency.dev_attr.attr,
> >  	&iio_const_attr_sampling_frequency_available.dev_attr.attr,
> >  	&iio_const_attr_in_accel_scale_available.dev_attr.attr,
> >  	&iio_const_attr_in_anglvel_scale_available.dev_attr.attr,
> > 
> 

