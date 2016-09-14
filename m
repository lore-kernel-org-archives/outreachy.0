X-GM-THRID: 6329987466337976320
X-Received: by 10.25.206.200 with SMTP id e191mr124022lfg.3.1473832193295;
        Tue, 13 Sep 2016 22:49:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.207.67 with SMTP id f64ls71944wmg.11.canary; Tue, 13 Sep
 2016 22:49:52 -0700 (PDT)
X-Received: by 10.194.46.233 with SMTP id y9mr121786wjm.3.1473832192952;
        Tue, 13 Sep 2016 22:49:52 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 185si780713wmr.2.2016.09.13.22.49.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 22:49:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,332,1470693600"; 
   d="scan'208";a="236364062"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 07:49:52 +0200
Date: Wed, 14 Sep 2016 07:49:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Katie Dunne <kdunne@mail.ccsf.edu>
cc: outreachy-kernel@googlegroups.com, lars@metafoo.de, 
    michael.hennerich@analog.com, jic23@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ad5933: align arguments
 on new line with open parenthesis
In-Reply-To: <20160914010414.GA441@katie-Inspiron-5748>
Message-ID: <alpine.DEB.2.10.1609140749340.3395@hadrien>
References: <20160914010414.GA441@katie-Inspiron-5748>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Sep 2016, Katie Dunne wrote:

> knaack.h@gmx.de, pmeerw@pmeerw.net
> Bcc:
> Subject: [PATCH] staging: iio: ad5933: align arguments on new line with open parenthesis
> Reply-To:

Something went wrong here...

julia

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
>

