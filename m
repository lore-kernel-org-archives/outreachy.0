X-GM-THRID: 6338382876174712832
X-Received: by 10.46.33.135 with SMTP id h7mr252229lji.19.1475998644467;
        Sun, 09 Oct 2016 00:37:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.161 with SMTP id g33ls700241lji.22.gmail; Sun, 09 Oct
 2016 00:37:23 -0700 (PDT)
X-Received: by 10.46.9.131 with SMTP id 125mr1736932ljj.14.1475998643622;
        Sun, 09 Oct 2016 00:37:23 -0700 (PDT)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id s6si549991wmb.1.2016.10.09.00.37.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 00:37:23 -0700 (PDT)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 187B340605;
	Sun,  9 Oct 2016 08:36:51 +0100 (BST)
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: meter: ade7754:
 Implement IIO_CHAN_INFO_SAMP_FREQ
To: Alison Schofield <amsfield22@gmail.com>,
 sayli karnik <karniksayli1995@gmail.com>
References: <20161006160217.GA21538@sayli-HP-15-Notebook-PC>
 <20161007164606.GC2804@d830.WORKGROUP>
Cc: outreachy-kernel@googlegroups.com, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org,
 Barry Song <21cnbao@gmail.com>
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <582be15b-63da-593d-fa97-29dbf19c5ab2@kernel.org>
Date: Sun, 9 Oct 2016 08:36:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20161007164606.GC2804@d830.WORKGROUP>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 07/10/16 17:46, Alison Schofield wrote:
> On Thu, Oct 06, 2016 at 09:32:17PM +0530, sayli karnik wrote:
>> Attributes that were once privately defined become standard with time
>> and hence a special global define is used. Hence update driver ade7754 to use
>> IIO_CHAN_INFO_SAMP_FREQ which is a global define instead of
>> IIO_DEV_ATTR_SAMP_FREQ.
>> Move functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into
>> IIO_CHAN_INFO_SAMP_FREQ to implement the sampling_frequency attribute.
>> Add ade7754_read_raw() and ade7754_write_raw() to allow reading and
>> writing the element as well.
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> 
> Hi Sayli,
> 
> This one looks similar to the ade7753 patch discussed on linux-iio
> recently.  No channels defined hence no place to define the attribute.
> http://marc.info/?l=linux-iio&m=147552631607342&w=2
> 
> alisons
> 
Hmm.. I wouldn't necessarily advise going anywhere near this driver
without access to hardware.   Probably also wants someone with
non trivial electrical experience (and a 3 phase power supply or
perhaps a 3 phase motor inverter might do - or custom test bench)
It should be possible to simulate it I suppose.

The driver needs a complete rethink from the bottom up.

Lars, are there any plans wrt to these power meter drivers?

Jonathan  
> 
>> ---
>>  drivers/staging/iio/meter/ade7754.c | 155 +++++++++++++++++++++---------------
>>  1 file changed, 89 insertions(+), 66 deletions(-)
>>
>> diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
>> index 1730959..8043539 100644
>> --- a/drivers/staging/iio/meter/ade7754.c
>> +++ b/drivers/staging/iio/meter/ade7754.c
>> @@ -395,81 +395,15 @@ err_ret:
>>  	return ret;
>>  }
>>  
>> -static ssize_t ade7754_read_frequency(struct device *dev,
>> -				      struct device_attribute *attr,
>> -				      char *buf)
>> -{
>> -	int ret;
>> -	u8 t;
>> -	int sps;
>> -
>> -	ret = ade7754_spi_read_reg_8(dev, ADE7754_WAVMODE, &t);
>> -	if (ret)
>> -		return ret;
>> -
>> -	t = (t >> 3) & 0x3;
>> -	sps = 26000 / (1 + t);
>> -
>> -	return sprintf(buf, "%d\n", sps);
>> -}
>> -
>> -static ssize_t ade7754_write_frequency(struct device *dev,
>> -				       struct device_attribute *attr,
>> -				       const char *buf,
>> -				       size_t len)
>> -{
>> -	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>> -	struct ade7754_state *st = iio_priv(indio_dev);
>> -	u16 val;
>> -	int ret;
>> -	u8 reg, t;
>> -
>> -	ret = kstrtou16(buf, 10, &val);
>> -	if (ret)
>> -		return ret;
>> -	if (!val)
>> -		return -EINVAL;
>> -
>> -	mutex_lock(&indio_dev->mlock);
>> -
>> -	t = 26000 / val;
>> -	if (t > 0)
>> -		t--;
>> -
>> -	if (t > 1)
>> -		st->us->max_speed_hz = ADE7754_SPI_SLOW;
>> -	else
>> -		st->us->max_speed_hz = ADE7754_SPI_FAST;
>> -
>> -	ret = ade7754_spi_read_reg_8(dev, ADE7754_WAVMODE, &reg);
>> -	if (ret)
>> -		goto out;
>> -
>> -	reg &= ~(3 << 3);
>> -	reg |= t << 3;
>> -
>> -	ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
>> -
>> -out:
>> -	mutex_unlock(&indio_dev->mlock);
>> -
>> -	return ret ? ret : len;
>> -}
>>  static IIO_DEV_ATTR_TEMP_RAW(ade7754_read_8bit);
>>  static IIO_CONST_ATTR(in_temp_offset, "129 C");
>>  static IIO_CONST_ATTR(in_temp_scale, "4 C");
>> -
>> -static IIO_DEV_ATTR_SAMP_FREQ(S_IWUSR | S_IRUGO,
>> -		ade7754_read_frequency,
>> -		ade7754_write_frequency);
>> -
>>  static IIO_CONST_ATTR_SAMP_FREQ_AVAIL("26000 13000 65000 33000");
>>  
>>  static struct attribute *ade7754_attributes[] = {
>>  	&iio_dev_attr_in_temp_raw.dev_attr.attr,
>>  	&iio_const_attr_in_temp_offset.dev_attr.attr,
>>  	&iio_const_attr_in_temp_scale.dev_attr.attr,
>> -	&iio_dev_attr_sampling_frequency.dev_attr.attr,
>>  	&iio_const_attr_sampling_frequency_available.dev_attr.attr,
>>  	&iio_dev_attr_aenergy.dev_attr.attr,
>>  	&iio_dev_attr_laenergy.dev_attr.attr,
>> @@ -505,6 +439,93 @@ static struct attribute *ade7754_attributes[] = {
>>  	NULL,
>>  };
>>  
>> +static int read_raw_samp_freq(struct device *dev, int *val)
>> +{
>> +	int ret;
>> +	u8 t;
>> +
>> +	ret = ade7754_spi_read_reg_8(dev, ADE7754_WAVMODE, &t);
>> +	if (ret)
>> +		return ret;
>> +
>> +	t = (t >> 3) & 0x3;
>> +	*val = 26000 / (1 + t);
>> +
>> +	return 0;
>> +}
>> +
>> +static int write_raw_samp_freq(struct device *dev, int val)
>> +{
>> +	struct ade7754_state *st = iio_priv(dev_to_iio_dev(dev));
>> +	int ret;
>> +	u8 reg, t;
>> +
>> +	if (!val)
>> +		return -EINVAL;
>> +
>> +	t = 26000 / val;
>> +	if (t > 0)
>> +		t--;
>> +
>> +	if (t > 1)
>> +		st->us->max_speed_hz = ADE7754_SPI_SLOW;
>> +	else
>> +		st->us->max_speed_hz = ADE7754_SPI_FAST;
>> +
>> +	ret = ade7754_spi_read_reg_8(dev, ADE7754_WAVMODE, &reg);
>> +	if (ret)
>> +		return ret;
>> +
>> +	reg &= ~(3 << 3);
>> +	reg |= t << 3;
>> +
>> +	ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
>> +
>> +	return ret;
>> +}
>> +
>> +static int ade7754_read_raw(struct iio_dev *indio_dev,
>> +			    struct iio_chan_spec const *chan,
>> +			    int *val, int *val2, long mask)
>> +{
>> +	int ret;
>> +
>> +	switch (mask) {
>> +	case IIO_CHAN_INFO_SAMP_FREQ:
>> +		if (val2)
>> +			return -EINVAL;
>> +		mutex_lock(&indio_dev->mlock);
>> +		ret = read_raw_samp_freq(&indio_dev->dev, val);
>> +		mutex_unlock(&indio_dev->mlock);
>> +		return ret;
>> +	default:
>> +		return -EINVAL;
>> +	}
>> +
>> +	return ret;
>> +}
>> +
>> +static int ade7754_write_raw(struct iio_dev *indio_dev,
>> +			     struct iio_chan_spec const *chan,
>> +			     int val, int val2, long mask)
>> +{
>> +	int ret;
>> +
>> +	switch (mask) {
>> +	case IIO_CHAN_INFO_SAMP_FREQ:
>> +		if (val2)
>> +			return -EINVAL;
>> +		mutex_lock(&indio_dev->mlock);
>> +		ret = write_raw_samp_freq(&indio_dev->dev, val);
>> +		mutex_unlock(&indio_dev->mlock);
>> +		return ret;
>> +	default:
>> +		return -EINVAL;
>> +	}
>> +
>> +	return ret;
>> +}
>> +
>>  static const struct attribute_group ade7754_attribute_group = {
>>  	.attrs = ade7754_attributes,
>>  };
>> @@ -512,6 +533,8 @@ static const struct attribute_group ade7754_attribute_group = {
>>  static const struct iio_info ade7754_info = {
>>  	.attrs = &ade7754_attribute_group,
>>  	.driver_module = THIS_MODULE,
>> +	.read_raw = &ade7754_read_raw,
>> +	.write_raw = &ade7754_write_raw,
>>  };
>>  
>>  static int ade7754_probe(struct spi_device *spi)
>> -- 
>> 2.7.4
>>
>> -- 
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161006160217.GA21538%40sayli-HP-15-Notebook-PC.
>> For more options, visit https://groups.google.com/d/optout.
> --
> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 


