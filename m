X-GM-THRID: 6399601653123645440
X-Received: by 10.99.110.73 with SMTP id j70mr17028757pgc.143.1490036182752;
        Mon, 20 Mar 2017 11:56:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.158.204 with SMTP id h195ls3813300ioe.3.gmail; Mon, 20 Mar
 2017 11:56:21 -0700 (PDT)
X-Received: by 10.99.116.72 with SMTP id e8mr15488584pgn.92.1490036181899;
        Mon, 20 Mar 2017 11:56:21 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id g82si2890608pfb.5.2017.03.20.11.56.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 11:56:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n11so7274550pfg.2
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 11:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yaQP9gvpb4xbqDYdoUuDz61v/jVZugHUHhYcLIjGUNE=;
        b=dXh6+ztbHx8RN/7F9jxr7kYuWu4eqHBTsukbo9aTaBNEYNz7fSF3qrOzs7gIFO9Jd8
         9Oi8oBSx3dedh01dO86buh/h+e44stP4z3e/0qYw6IljJKqo43SesTVImaC6mMNDUih4
         7UP1vgq6EdZR24+LCmKQKk77jduhG5xlzbJCWdKo5mBRpDtVmQcnEl/Pmvu8LBLLloff
         ADzVNtCkxfDGfTwF7NK1Z45K6DACIEEDcO//lrTRbGNP/30oUjXn09elSicHJUCRqm3D
         qx5pYbPxUUWTPEQd5U1hx/CeaFwZzdnw8M3DA45k1TNjA8ZFgc4oqXGz3q2xV7RYYaxH
         C42g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yaQP9gvpb4xbqDYdoUuDz61v/jVZugHUHhYcLIjGUNE=;
        b=f8lHrW6Nla1DT4SxSQygc9Uo0AZ2vR6EwzGoitOVOcUExh5xXzOTyI5tbpi+deCGbd
         dUvnRGnHbmngtSgQ0prFK/8Rn7Qg8blnfxuZWwX/8o30oEqHOb8FSzqQ8Phb+3uN7RWA
         4zi7a8weSDuVgABMiUZBfy51v2F4GxpjWgC8OgKK8i0FB5owC01iattJC1IuS7FXSRNo
         ZZL9Xb3noIlB9HhzcsHvSLyD/fvhgKo7hcPo0FMEzNioeooxglue3rgO314m/ecYjili
         bZb4jVf4Hezrp3fmxisGHc1D4lOg78Db4uqmn2eKChrd3IVd33WrcGEd53zzudcQ71i0
         Qlfg==
X-Gm-Message-State: AFeK/H0jMTHv7dIwTE3L2negjiPHzkhhc97beqjVGJSKp+6rr8fUGTvF7SJ1oG2rhardJg==
X-Received: by 10.99.181.25 with SMTP id y25mr2315150pge.214.1490036181237;
        Mon, 20 Mar 2017 11:56:21 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h71sm34692697pfj.65.2017.03.20.11.56.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 11:56:20 -0700 (PDT)
Date: Tue, 21 Mar 2017 00:26:16 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: ad7606: Replace mlock with driver private lock
Message-ID: <20170320185616.GA17444@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a lock in the devices global data.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v3
 - Add mutex_init.

 drivers/staging/iio/adc/ad7606.c | 9 +++++----
 drivers/staging/iio/adc/ad7606.h | 2 ++
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7606.c b/drivers/staging/iio/adc/ad7606.c
index 9dbfa64b1e53..18f5f139117e 100644
--- a/drivers/staging/iio/adc/ad7606.c
+++ b/drivers/staging/iio/adc/ad7606.c
@@ -208,7 +208,7 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
 	switch (mask) {
 	case IIO_CHAN_INFO_SCALE:
 		ret = -EINVAL;
-		mutex_lock(&indio_dev->mlock);
+		mutex_lock(&st->lock);
 		for (i = 0; i < ARRAY_SIZE(scale_avail); i++)
 			if (val2 == scale_avail[i][1]) {
 				gpiod_set_value(st->gpio_range, i);
@@ -217,7 +217,7 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
 				ret = 0;
 				break;
 			}
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->lock);
 
 		return ret;
 	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
@@ -231,11 +231,11 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
 		values[1] = (ret >> 1) & 1;
 		values[2] = (ret >> 2) & 1;
 
-		mutex_lock(&indio_dev->mlock);
+		mutex_lock(&st->lock);
 		gpiod_set_array_value(ARRAY_SIZE(values), st->gpio_os->desc,
 				      values);
 		st->oversampling = val;
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->lock);
 
 		return 0;
 	default:
@@ -413,6 +413,7 @@ int ad7606_probe(struct device *dev, int irq, void __iomem *base_address,
 	st = iio_priv(indio_dev);
 
 	st->dev = dev;
+	mutex_init(&st->lock);
 	st->bops = bops;
 	st->base_address = base_address;
 	/* tied to logic low, analog input range is +/- 5V */
diff --git a/drivers/staging/iio/adc/ad7606.h b/drivers/staging/iio/adc/ad7606.h
index 746f9553d2ba..5d59bdd78727 100644
--- a/drivers/staging/iio/adc/ad7606.h
+++ b/drivers/staging/iio/adc/ad7606.h
@@ -14,6 +14,7 @@
  * @name:		identification string for chip
  * @channels:		channel specification
  * @num_channels:	number of channels
+ * @lock		protect sensor state
  */
 
 struct ad7606_chip_info {
@@ -37,6 +38,7 @@ struct ad7606_state {
 	bool				done;
 	void __iomem			*base_address;
 
+	struct mutex			lock; /* protect sensor state */
 	struct gpio_desc		*gpio_convst;
 	struct gpio_desc		*gpio_reset;
 	struct gpio_desc		*gpio_range;
-- 
2.11.0


