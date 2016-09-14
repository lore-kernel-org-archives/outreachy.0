X-GM-THRID: 6329987466337976320
X-Received: by 10.129.108.149 with SMTP id h143mr471389ywc.30.1473829908980;
        Tue, 13 Sep 2016 22:11:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.151 with SMTP id f145ls127668ita.17.gmail; Tue, 13 Sep
 2016 22:11:47 -0700 (PDT)
X-Received: by 10.66.41.114 with SMTP id e18mr468685pal.37.1473829907085;
        Tue, 13 Sep 2016 22:11:47 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id f133si2084511ita.1.2016.09.13.22.11.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 22:11:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id vz6so203044pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 22:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ROmshVull0cdGiHQJFXJr6DLEmIZG0sA8EWWnzwZK7c=;
        b=0IphYSn5TUc6oxyCtqIpRnBsKrux2UkHU1yFzebK+YsN1e+crqU+UqjCrbFft/lq/7
         JgDJWflFnsESJ1JGXpHWcnxSPvtJFF7Ge7EXicwJWvwNqMmcDaS+3ffDDDN2eAuD6Nmq
         ZsCfInmk8Xl/vm9e835OjmqJhoLcrcxcotMOEyyeD+bc7JaGC2N3PS/gj5b75oqhgrdt
         7xH5S2HghkIQrfrefFW2C3uodaHTHSkjad9YhLOSs7s2F9Gify9yAPAS/UW+s++WUtFh
         nxFdh4SyDDVqPi4PxLTe9D0ji3xikfs0rI2en5YvYprUT2wJKrCd5YuC9qqQ2hZSBQgF
         bw4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ROmshVull0cdGiHQJFXJr6DLEmIZG0sA8EWWnzwZK7c=;
        b=Sn3OX8mpKm+h/8PtHRPdkNj6hu8BWkVCPxeNkIr2aV5OYzxd8DkyuBSHpiRp0Qe7MZ
         Hp4SiwA/y7Xdm+3eU/BlTedHjTITx41QC4rNmgjG/XsAzZd0N5pyUMd9i9WiLKFsZsN+
         F+dwk03jNw+gdhfgaDCr75jS2LmyPVwCP89euKp1ybP0VWxkAzjkNkSAb1yggUBFn/gS
         7SfVPHhM4ots+WebCR9aMU/I4dcJARb3+U0REuvWlMDpFZ6E2RVW60kl/vjIRfRejFFw
         vFuLM8cTFTKEkJaOQlsRC5L8BQgf44jQGRzgTtdliSCWG+IcyabTRLaNXyyTwVRs6R7g
         lSPg==
X-Gm-Message-State: AE9vXwNQQ5DZUtnXH3AACx0Cu2KVXLyD/OQqpZyEq6StLLcXzPfkvMjRdWU4RdKzx/GhhQ==
X-Received: by 10.66.76.65 with SMTP id i1mr1108919paw.51.1473829906779;
        Tue, 13 Sep 2016 22:11:46 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id b194sm34297812pfb.55.2016.09.13.22.11.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 22:11:46 -0700 (PDT)
Date: Tue, 13 Sep 2016 22:11:43 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Katie Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel@googlegroups.com, lars@metafoo.de,
	michael.hennerich@analog.com, jic23@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ad5933: align arguments
 on new line with open parenthesis
Message-ID: <20160914051142.GA7205@d830.WORKGROUP>
References: <20160914010414.GA441@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160914010414.GA441@katie-Inspiron-5748>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Sep 13, 2016 at 06:04:14PM -0700, Katie Dunne wrote:
> knaack.h@gmx.de, pmeerw@pmeerw.net 
> Bcc: 
> Subject: [PATCH] staging: iio: ad5933: align arguments on new line with open parenthesis
> Reply-To: 

Hi Katie,
Something odd happened just above here...with the cc list and subject
repeating. 
It looks like some of these can be pulled into less lines.  If it fits
within 80 chars, it's fine on one line.  See below.

> 
> Issue found by checkpatch: "Alignment should match open parenthesis"
> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
>  drivers/staging/iio/impedance-analyzer/ad5933.c | 34 ++++++++++++-------------
>  1 file changed, 17 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
> index 24c348d..2307b4d 100644
> --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
> +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
> @@ -157,7 +157,7 @@ static const struct iio_chan_spec ad5933_channels[] = {
>  };
>  
>  static int ad5933_i2c_write(struct i2c_client *client,
> -			      u8 reg, u8 len, u8 *data)
> +			    u8 reg, u8 len, u8 *data)

think this one fits on one line....
static int ad5933_i2c_read(struct i2c_client *client, u8 reg, u8 len, u8 *data)
some others may do same or at least pull into less lines.


>  {
>  	int ret;
>  
> @@ -172,7 +172,7 @@ static int ad5933_i2c_write(struct i2c_client *client,
>  }
>  
>  static int ad5933_i2c_read(struct i2c_client *client,
> -			      u8 reg, u8 len, u8 *data)
> +			   u8 reg, u8 len, u8 *data)
>  {
>  	int ret;
>  
> @@ -269,7 +269,7 @@ static int ad5933_setup(struct ad5933_state *st)
>  	dat = cpu_to_be16(st->settling_cycles);
>  
>  	ret = ad5933_i2c_write(st->client,
> -			AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
> +			       AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
>  	if (ret < 0)
>  		return ret;
>  
> @@ -294,8 +294,8 @@ static void ad5933_calc_out_ranges(struct ad5933_state *st)
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
> @@ -322,9 +322,9 @@ static ssize_t ad5933_show_frequency(struct device *dev,
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
> @@ -357,8 +357,8 @@ static IIO_DEVICE_ATTR(out_voltage0_freq_increment, S_IRUGO | S_IWUSR,
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
> @@ -399,9 +399,9 @@ static ssize_t ad5933_show(struct device *dev,
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
> @@ -451,7 +451,7 @@ static ssize_t ad5933_store(struct device *dev,
>  
>  		dat = cpu_to_be16(val);
>  		ret = ad5933_i2c_write(st->client,
> -				AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
> +				       AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
>  		break;
>  	case AD5933_FREQ_POINTS:
>  		val = clamp(val, (u16)0, (u16)511);
> @@ -545,8 +545,8 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
>  			goto out;
>  
>  		ret = ad5933_i2c_read(st->client,
> -				AD5933_REG_TEMP_DATA, 2,
> -				(u8 *)&dat);
> +				      AD5933_REG_TEMP_DATA, 2,
> +				      (u8 *)&dat);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914010414.GA441%40katie-Inspiron-5748.
> For more options, visit https://groups.google.com/d/optout.

