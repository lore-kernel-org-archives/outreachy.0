X-GM-THRID: 6336365196847611904
X-Received: by 10.157.36.34 with SMTP id p31mr8023101ota.66.1476095607163;
        Mon, 10 Oct 2016 03:33:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.151 with SMTP id f145ls3125835ita.17.gmail; Mon, 10 Oct
 2016 03:33:22 -0700 (PDT)
X-Received: by 10.107.138.40 with SMTP id m40mr8821856iod.80.1476095602849;
        Mon, 10 Oct 2016 03:33:22 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si8305634pab.2.2016.10.10.03.33.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 03:33:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id qn10so6941225pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 03:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Q55HTO8Ox8g4OUqG3ekuCt3j+ZP1RJ1/FwCrcpvVa0M=;
        b=RVjcTpZc3QwVZs4I/4ghbQg5qUEommCZ20trlIevX0X9rFceeiUyuWD/gIxx1v6YXf
         aL/+neE0rBif2z2LffGVLDPM67IWzAHBX+uEW/aktkZhCnAr7OMdvSbXzerGR0HW0Jkr
         YbGRII/KUfAib9Y3VcoBaBVpCnZpROTkA4/V9VtWL+0YpQsZ5MtwDFk7grPrfddxZUzW
         twSRt8PXRLRO+1olf3RaNUov//DDNKCM8ZEvYeRa4vWwc0IpAeEzEX+HStq+vrKaN+eT
         mts0h70MgnVIol9DiHFZ1KucYb1oh9IEgSU0w0QWTuwETFzjGxMkgugEQtjS5zJbNOus
         l79w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=Q55HTO8Ox8g4OUqG3ekuCt3j+ZP1RJ1/FwCrcpvVa0M=;
        b=JWMyqIN0Gb7V5NI6oTt+YcOoj+7hbkyvAV/InBtui+FlCGAYj8/BAZMfft9mb75w2x
         jOyMfl2hsea5c09QLjqieSqns54r8jZeOK1CvB6talTj3rPjqPZj7VsMytYT5uLpoQMD
         hJfeNx82+Ujmxr+SY28iGOPfmDZ8d7HC8BAyKgCkmTqWKtjC5RWmT90eHx1D7XJqRCBI
         3cwv7NoJLXJb3tN4Tz/FP0w0GBcLtu2qSAnwjkfQ28txt4iTu5t/REVlfiN+NRlsGx9J
         32pJOso0drJpQ+KVpMk6jhoPy4tWEOMtyIvcWdDfCudM+A2MbwO3fgFxHcoLGulzdf0q
         BCeA==
X-Gm-Message-State: AA6/9Rl4Pay9qm4944azbwzJxmsWdFWegMUVn/gDD1ylxeY9NTDRyOCzNMC0TlkwWjg5NQ==
X-Received: by 10.67.22.230 with SMTP id hv6mr29453673pad.93.1476095602615;
        Mon, 10 Oct 2016 03:33:22 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.120.52])
        by smtp.gmail.com with ESMTPSA id xn11sm55537578pac.38.2016.10.10.03.33.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 10 Oct 2016 03:33:21 -0700 (PDT)
Date: Mon, 10 Oct 2016 18:33:13 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Cc: sayli karnik <karniksayli1995@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 21cnbao@gmail.com,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v4] staging: iio: cdc: ad7152: Implement
 IIO_CHAN_INFO_SAMP_FREQ attribute
Message-ID: <20161010103308.GA2413@Socrates-DK>
Mail-Followup-To: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>,
	sayli karnik <karniksayli1995@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 21cnbao@gmail.com,
	linux-iio@vger.kernel.org
References: <20161009182652.GA8113@sayli-HP-15-Notebook-PC>
 <585EF4C9-62BF-45FF-916B-EE0B9412585A@jic23.retrosnub.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <585EF4C9-62BF-45FF-916B-EE0B9412585A@jic23.retrosnub.co.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 09, 2016 at 07:36:45PM +0100, Jonathan Cameron wrote:
> 
> 
> On 9 October 2016 19:26:52 BST, sayli karnik <karniksayli1995@gmail.com> wrote:
> >Attributes that were once privately defined become standard with time
> >and
> >hence a special global define is used. Hence update driver ad7152 to
> >use
> >IIO_CHAN_INFO_SAMP_FREQ which is a global define instead of
> >IIO_DEV_ATTR_SAMP_FREQ.
> >Move functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into
> >IIO_CHAN_INFO_SAMP_FREQ to implement the sampling_frequency attribute.
> >Modify ad7152_read_raw() and ad7152_write_raw() to allow reading and
> >writing the element as well. Also add a lock in the driver's private
> >data.
> >
> >Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> 
> Sorry Sayli,
> 
> I was not clear enough. The block to local lock change would make a good extra patch.
> 
> It is a separate change so should be a separate patch. I have already applied v3 of the patch
>  without the mlock change.
> 
> https://git.kernel.org/cgit/linux/kernel/git/jic23/iio.git/log/?h=testing
> 

Good Day Sayli and Jonathan,

While I was working on the v2 of another cdc driver I happen to check
the link above for the approach taken on using function handlers. I have
noticed that in the write_raw handler (ad7152_write_raw_samp_freq), val
was never used.

for (i = 0; i < ARRAY_SIZE(ad7152_filter_rate_table); i++)
	if (data >= ad7152_filter_rate_table[i][0])
		break;

In place of 'data' is where I am expecting 'val' to be used. Any
comments regarding this? I apologize if I turn out to be wrong though.

Best,
Eva

> Such an mlock replacing patch needs to replace all uses of mlock in the driver. Also make sure
>  you initialise the mutex appropriately.
> 
> Jonathan
> 
> 
> >---
> >Changes in v4:
> >Replaced mlock with a local lock since mlock is intended to protect
> >'only'
> >switches between modes. Given this driver doesn't support more than one
> >mode
> >(sysfs polled reads only)
> >
> >Changes in v3:
> >Drop the unlock in ad7152_write_raw_samp_freq() and use the one at the
> >exit point
> >instead
> >Return ret immediately instead of using a goto statement in
> >ad7152_write_raw_samp_freq()
> >
> >Changes in v2:
> >Give a more detailed explanation
> >Remove null check for val in ad7152_write_raw_samp_freq()
> >Merged two stucture variable initialisations into one statement in
> >ad7152_read_raw_samp_freq()
> >Set ret to IIO_VAL_INT in ad7152_read_raw() when mask equals
> >IIO_CHAN_INFO_SAMP_FREQ and ret>=0
> >drivers/staging/iio/cdc/ad7152.c | 117
> >++++++++++++++++++++++-----------------
> > 1 file changed, 66 insertions(+), 51 deletions(-)
> >
> >diff --git a/drivers/staging/iio/cdc/ad7152.c
> >b/drivers/staging/iio/cdc/ad7152.c
> >index 485d0a5..0ce3849 100644
> >--- a/drivers/staging/iio/cdc/ad7152.c
> >+++ b/drivers/staging/iio/cdc/ad7152.c
> >@@ -89,6 +89,7 @@ struct ad7152_chip_info {
> > 	 */
> > 	u8	filter_rate_setup;
> > 	u8	setup[2];
> >+	struct mutex state_lock;	/* protect hardware state */
> > };
> > 
> > static inline ssize_t ad7152_start_calib(struct device *dev,
> >@@ -165,63 +166,12 @@ static const unsigned char
> >ad7152_filter_rate_table[][2] = {
> > 	{200, 5 + 1}, {50, 20 + 1}, {20, 50 + 1}, {17, 60 + 1},
> > };
> > 
> >-static ssize_t ad7152_show_filter_rate_setup(struct device *dev,
> >-		struct device_attribute *attr,
> >-		char *buf)
> >-{
> >-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >-	struct ad7152_chip_info *chip = iio_priv(indio_dev);
> >-
> >-	return sprintf(buf, "%d\n",
> >-		       ad7152_filter_rate_table[chip->filter_rate_setup][0]);
> >-}
> >-
> >-static ssize_t ad7152_store_filter_rate_setup(struct device *dev,
> >-		struct device_attribute *attr,
> >-		const char *buf,
> >-		size_t len)
> >-{
> >-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >-	struct ad7152_chip_info *chip = iio_priv(indio_dev);
> >-	u8 data;
> >-	int ret, i;
> >-
> >-	ret = kstrtou8(buf, 10, &data);
> >-	if (ret < 0)
> >-		return ret;
> >-
> >-	for (i = 0; i < ARRAY_SIZE(ad7152_filter_rate_table); i++)
> >-		if (data >= ad7152_filter_rate_table[i][0])
> >-			break;
> >-
> >-	if (i >= ARRAY_SIZE(ad7152_filter_rate_table))
> >-		i = ARRAY_SIZE(ad7152_filter_rate_table) - 1;
> >-
> >-	mutex_lock(&indio_dev->mlock);
> >-	ret = i2c_smbus_write_byte_data(chip->client,
> >-			AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
> >-	if (ret < 0) {
> >-		mutex_unlock(&indio_dev->mlock);
> >-		return ret;
> >-	}
> >-
> >-	chip->filter_rate_setup = i;
> >-	mutex_unlock(&indio_dev->mlock);
> >-
> >-	return len;
> >-}
> >-
> >-static IIO_DEV_ATTR_SAMP_FREQ(S_IRUGO | S_IWUSR,
> >-		ad7152_show_filter_rate_setup,
> >-		ad7152_store_filter_rate_setup);
> >-
> > static IIO_CONST_ATTR_SAMP_FREQ_AVAIL("200 50 20 17");
> > 
> > static IIO_CONST_ATTR(in_capacitance_scale_available,
> > 		      "0.000061050 0.000030525 0.000015263 0.000007631");
> > 
> > static struct attribute *ad7152_attributes[] = {
> >-	&iio_dev_attr_sampling_frequency.dev_attr.attr,
> > 	&iio_dev_attr_in_capacitance0_calibbias_calibration.dev_attr.attr,
> > 	&iio_dev_attr_in_capacitance1_calibbias_calibration.dev_attr.attr,
> > 	&iio_dev_attr_in_capacitance0_calibscale_calibration.dev_attr.attr,
> >@@ -247,6 +197,50 @@ static const int ad7152_scale_table[] = {
> > 	30525, 7631, 15263, 61050
> > };
> > 
> >+/**
> >+ * read_raw handler for IIO_CHAN_INFO_SAMP_FREQ
> >+ *
> >+ * lock must be held
> >+ **/
> >+static int ad7152_read_raw_samp_freq(struct device *dev, int *val)
> >+{
> >+	struct ad7152_chip_info *chip = iio_priv(dev_to_iio_dev(dev));
> >+
> >+	*val = ad7152_filter_rate_table[chip->filter_rate_setup][0];
> >+
> >+	return 0;
> >+}
> >+
> >+/**
> >+ * write_raw handler for IIO_CHAN_INFO_SAMP_FREQ
> >+ *
> >+ * lock must be held
> >+ **/
> >+static int ad7152_write_raw_samp_freq(struct device *dev, int val)
> >+{
> >+	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >+	struct ad7152_chip_info *chip = iio_priv(indio_dev);
> >+	u8 data;
> >+	int ret, i;
> >+
> >+	for (i = 0; i < ARRAY_SIZE(ad7152_filter_rate_table); i++)
> >+		if (data >= ad7152_filter_rate_table[i][0])
> >+			break;
> >+
> >+	if (i >= ARRAY_SIZE(ad7152_filter_rate_table))
> >+		i = ARRAY_SIZE(ad7152_filter_rate_table) - 1;
> >+
> >+	mutex_lock(&chip->state_lock);
> >+	ret = i2c_smbus_write_byte_data(chip->client,
> >+					AD7152_REG_CFG2, AD7152_CFG2_OSR(i));
> >+	if (ret < 0)
> >+		return ret;
> >+
> >+	chip->filter_rate_setup = i;
> >+	mutex_unlock(&chip->state_lock);
> >+
> >+	return ret;
> >+}
> > static int ad7152_write_raw(struct iio_dev *indio_dev,
> > 			    struct iio_chan_spec const *chan,
> > 			    int val,
> >@@ -309,6 +303,16 @@ static int ad7152_write_raw(struct iio_dev
> >*indio_dev,
> > 
> > 		ret = 0;
> > 		break;
> >+	case IIO_CHAN_INFO_SAMP_FREQ:
> >+		if (val2)
> >+			return -EINVAL;
> >+
> >+		ret = ad7152_write_raw_samp_freq(&indio_dev->dev, val);
> >+		if (ret < 0)
> >+			goto out;
> >+
> >+		ret = 0;
> >+		break;
> > 	default:
> > 		ret = -EINVAL;
> > 	}
> >@@ -403,6 +407,13 @@ static int ad7152_read_raw(struct iio_dev
> >*indio_dev,
> > 
> > 		ret = IIO_VAL_INT_PLUS_NANO;
> > 		break;
> >+	case IIO_CHAN_INFO_SAMP_FREQ:
> >+		ret = ad7152_read_raw_samp_freq(&indio_dev->dev, val);
> >+		if (ret < 0)
> >+			goto out;
> >+
> >+		ret = IIO_VAL_INT;
> >+		break;
> > 	default:
> > 		ret = -EINVAL;
> > 	}
> >@@ -440,6 +451,7 @@ static const struct iio_chan_spec ad7152_channels[]
> >= {
> > 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
> > 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
> > 		BIT(IIO_CHAN_INFO_SCALE),
> >+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
> > 	}, {
> > 		.type = IIO_CAPACITANCE,
> > 		.differential = 1,
> >@@ -450,6 +462,7 @@ static const struct iio_chan_spec ad7152_channels[]
> >= {
> > 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
> > 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
> > 		BIT(IIO_CHAN_INFO_SCALE),
> >+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
> > 	}, {
> > 		.type = IIO_CAPACITANCE,
> > 		.indexed = 1,
> >@@ -458,6 +471,7 @@ static const struct iio_chan_spec ad7152_channels[]
> >= {
> > 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
> > 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
> > 		BIT(IIO_CHAN_INFO_SCALE),
> >+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
> > 	}, {
> > 		.type = IIO_CAPACITANCE,
> > 		.differential = 1,
> >@@ -468,6 +482,7 @@ static const struct iio_chan_spec ad7152_channels[]
> >= {
> > 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
> > 		BIT(IIO_CHAN_INFO_CALIBBIAS) |
> > 		BIT(IIO_CHAN_INFO_SCALE),
> >+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
> > 	}
> > };
> > /*
> 
> -- 
> Sent from my Android device with K-9 Mail. Please excuse my brevity.
> --
> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html

