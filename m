X-GM-THRID: 6329987466337976320
X-Received: by 10.129.112.149 with SMTP id l143mr6916831ywc.20.1474002946524;
        Thu, 15 Sep 2016 22:15:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.117 with SMTP id p108ls5054128ota.42.gmail; Thu, 15 Sep
 2016 22:15:46 -0700 (PDT)
X-Received: by 10.129.103.2 with SMTP id b2mr9834441ywc.40.1474002946219;
        Thu, 15 Sep 2016 22:15:46 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id um12si2058365pab.2.2016.09.15.22.15.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 22:15:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so2987651pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 22:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=y+KAfCRTnCWqbOZyb/NzzG8rYJIU2CDGOK+96qrVaGQ=;
        b=tflqAOxBcGkXv2V9HWw7oLmwgIiiuf7afLnzJPdvhyAtAPy6TdO9EPSQQchTAdveRo
         46e4D2UiV+83DzipG64r30+O7q9vsbsdJ3ybQkgfPsiu0Ijy4AlQc9To02OEJl0moLQX
         8qKaXyYZTnroA24Yv1jSQEDefGWJWL7oyKeIr/wVwVLDEL0nXTSmjv8nH0zOK7HH9Z7R
         Nui39KHA8pbr2XKL5dJqJjwk7C5ZXaQlXxe4bxF4tnSOuxgMgpS/pVePzzpbnZB9c/8R
         oO5rYawiyzYGC+OnUDNvSSURjPChQrR0lSp1l8faMNpZM0hrrUrARvS20DeeFlNZ884V
         Peiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=y+KAfCRTnCWqbOZyb/NzzG8rYJIU2CDGOK+96qrVaGQ=;
        b=HaI+0WeSLtWa8om3LQRNQrTqD263QLClzx8RIDhV+/bfXyW/c2of97I0mNaZ+2NTfm
         qPVVTrDj/YzUvtOjvLxg0BPSFJFsJlzsaM9kfv2Lh6sztJhCYFFA1E6enPDzr+6a9wk2
         eM+GTVkVqmG+OPbwAsSIy/44clyFRzpO4NaxNC4ur95hCG8rkA2X5uBVhu+8mtXZkkFB
         +Obfyb8IkU7+9HhxyGz+HEy86LeUxgQ4P3OWnrIMF9rvBwqeFszKorlMfTr0brXuzeII
         s6RD50lv5a8kFxnXkjkXJ/E/3UlYbdetA9JOsOBWLcQiyBwl8OW7/0PkVHSSC4rf5iGc
         89VQ==
X-Gm-Message-State: AE9vXwPqnXsE3jjphzlSvdgBA9+BySgFWBB60IlSBqpx9wTz+xPF072785INHSqRSxjQMA==
X-Received: by 10.66.227.4 with SMTP id rw4mr20203951pac.119.1474002945977;
        Thu, 15 Sep 2016 22:15:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id n77sm14367520pfj.31.2016.09.15.22.15.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 22:15:42 -0700 (PDT)
Date: Thu, 15 Sep 2016 22:15:28 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Katie Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	"Hennerich, Michael" <michael.hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: iio: ad5933: align
 arguments on new line with open parenthesis
Message-ID: <20160916051527.GB3124@d830.WORKGROUP>
References: <20160914171828.GA3062@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160914171828.GA3062@katie-Inspiron-5748>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 14, 2016 at 10:18:28AM -0700, Katie Dunne wrote:
> Issue found by checkpatch: "Alignment should match open parenthesis."
> Multiple lines are also reduced to a single line where possible.
> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
> Changes in v2:
> 	-Bring broken argument lists to one line where 
> 	 80 characters or less is possible

There are more that can be pulled in.  Not into one line, but that can
go from 3 to 2 lines.  We're not trying to align the parameters in a
list.  We want to fit as many as we can within 80 chars on the 1st line,
then fit as many as we can on the 2nd line, etc.  

I did one below as an example, but there are more beyond that.

Thanks for cleaning this up,
alisons

> 
> 	-Fix error in v1 in which alignment caused 2 lines 
> 	 to be over 80 characters by breaking up line 
> 
>  drivers/staging/iio/impedance-analyzer/ad5933.c | 38 ++++++++++++-------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
> index 24c348d..5eecf1c 100644
> --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
> +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
> @@ -156,8 +156,7 @@ static const struct iio_chan_spec ad5933_channels[] = {
>  	},
>  };
>  
> -static int ad5933_i2c_write(struct i2c_client *client,
> -			      u8 reg, u8 len, u8 *data)
> +static int ad5933_i2c_write(struct i2c_client *client, u8 reg, u8 len, u8 *data)
>  {
>  	int ret;
>  
> @@ -171,8 +170,7 @@ static int ad5933_i2c_write(struct i2c_client *client,
>  	return 0;
>  }
>  
> -static int ad5933_i2c_read(struct i2c_client *client,
> -			      u8 reg, u8 len, u8 *data)
> +static int ad5933_i2c_read(struct i2c_client *client, u8 reg, u8 len, u8 *data)
>  {
>  	int ret;
>  
> @@ -269,7 +267,8 @@ static int ad5933_setup(struct ad5933_state *st)
>  	dat = cpu_to_be16(st->settling_cycles);
>  
>  	ret = ad5933_i2c_write(st->client,
> -			AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
> +			       AD5933_REG_SETTLING_CYCLES,
> +			       2, (u8 *)&dat);

	ret = ad5933_i2c_write(st->client, AD5933_REG_SETTLING_CYCLES, 2,
			       (u8 *)&dat);


>  	if (ret < 0)
>  		return ret;
>  
> @@ -294,8 +293,8 @@ static void ad5933_calc_out_ranges(struct ad5933_state *st)
>   */
>  
>  static ssize_t ad5933_show_frequency(struct device *dev,
> -					struct device_attribute *attr,
> -					char *buf)
> +				     struct device_attribute *attr,
> +				     char *buf)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ad5933_state *st = iio_priv(indio_dev);
> @@ -322,9 +321,9 @@ static ssize_t ad5933_show_frequency(struct device *dev,
>  }
>  
>  static ssize_t ad5933_store_frequency(struct device *dev,
> -					 struct device_attribute *attr,
> -					 const char *buf,
> -					 size_t len)
> +				      struct device_attribute *attr,
> +				      const char *buf,
> +				      size_t len)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ad5933_state *st = iio_priv(indio_dev);
> @@ -357,8 +356,8 @@ static IIO_DEVICE_ATTR(out_voltage0_freq_increment, S_IRUGO | S_IWUSR,
>  			AD5933_REG_FREQ_INC);
>  
>  static ssize_t ad5933_show(struct device *dev,
> -					struct device_attribute *attr,
> -					char *buf)
> +			   struct device_attribute *attr,
> +			   char *buf)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ad5933_state *st = iio_priv(indio_dev);
> @@ -399,9 +398,9 @@ static ssize_t ad5933_show(struct device *dev,
>  }
>  
>  static ssize_t ad5933_store(struct device *dev,
> -					 struct device_attribute *attr,
> -					 const char *buf,
> -					 size_t len)
> +			    struct device_attribute *attr,
> +			    const char *buf,
> +			    size_t len)
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ad5933_state *st = iio_priv(indio_dev);
> @@ -451,7 +450,8 @@ static ssize_t ad5933_store(struct device *dev,
>  
>  		dat = cpu_to_be16(val);
>  		ret = ad5933_i2c_write(st->client,
> -				AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
> +				       AD5933_REG_SETTLING_CYCLES,
> +				       2, (u8 *)&dat);
>  		break;
>  	case AD5933_FREQ_POINTS:
>  		val = clamp(val, (u16)0, (u16)511);
> @@ -545,8 +545,8 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
>  			goto out;
>  
>  		ret = ad5933_i2c_read(st->client,
> -				AD5933_REG_TEMP_DATA, 2,
> -				(u8 *)&dat);
> +				      AD5933_REG_TEMP_DATA,
> +				      2, (u8 *)&dat);
>  		if (ret < 0)
>  			goto out;
>  		mutex_unlock(&indio_dev->mlock);
> @@ -705,7 +705,7 @@ static void ad5933_work(struct work_struct *work)
>  }
>  
>  static int ad5933_probe(struct i2c_client *client,
> -				   const struct i2c_device_id *id)
> +			const struct i2c_device_id *id)
>  {
>  	int ret, voltage_uv = 0;
>  	struct ad5933_platform_data *pdata = dev_get_platdata(&client->dev);
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914171828.GA3062%40katie-Inspiron-5748.
> For more options, visit https://groups.google.com/d/optout.

