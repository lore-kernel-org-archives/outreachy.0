X-GM-THRID: 6399601653123645440
X-Received: by 10.99.147.16 with SMTP id b16mr15542598pge.22.1490039500339;
        Mon, 20 Mar 2017 12:51:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.232 with SMTP id 95ls1173963ots.19.gmail; Mon, 20 Mar
 2017 12:51:40 -0700 (PDT)
X-Received: by 10.129.50.12 with SMTP id y12mr17072373ywy.111.1490039500000;
        Mon, 20 Mar 2017 12:51:40 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id r66si2949522pfb.7.2017.03.20.12.51.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 12:51:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so13624257pgh.3
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 12:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4mIF6PgKMZdMjbxGjeT0nQWvO5Ao5gY2Zf6WGfpiHSE=;
        b=o2vGA+IRpGV7HiVnSfHlP+cY945lrRD39lKXwAuvRuasDCl0Zdv24cBmUn0nrGmBOr
         euSE3WB4IGOALgPo8OoT5HfQqc9Odr2RlqoqrWXTUEV17z5SpXZ2PVLPEEo6NfLQqtiw
         1f2+RbFbXvxzA3AHW0/GncXb/JrfEPYVHM/3KuZjAP556EAQITmTK8AVpESBOlQ6VOFl
         Q9z8s1mSB9QZENH6bYvGy4l4t1XKzkw1ZcGP0G/6wcAYU6skg/uiCTbRLhqRzpuJaJQ3
         +9BAwMUqljY4E5nHOAxOEv90z1r9pThHzDFygy+pD1ixLgOoBmDwu+24OXdTiol0c3Ck
         qnxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4mIF6PgKMZdMjbxGjeT0nQWvO5Ao5gY2Zf6WGfpiHSE=;
        b=PsdSWrd+WwhNYpAHcPHWYHSiJBmipLjU+paV1cw1LYfe/t0ZfUaJwujmmRCL1Zsb6n
         /LfrJx/gg3VU/YAeY7Wytuh421UgEigHLptYZchOF9pElHf6hbHrf4hxIbRHkWARGaSI
         bdaubf+oZmv4S1+j8tSqyZVmCUMWpbR3f9OVcbWbq8pnQcFtCJZX1CoKOx31DbCS6c7E
         Ff2F09YYfeAMGrh5vpdHXWeKWm1iChaxwIUKrPQScIgczVT4Gv+Gp/nJkTFng2eanzJ+
         3lf4arIm1+aki2TJon6M6AqyiOVsF2+5MJ0ymJP5jkbzHHMaEx/9H0mOsfVEhk4FLZs0
         Cbzw==
X-Gm-Message-State: AFeK/H0UTjdDYTY3ZdiZbS7ceXvxcBOPmfS5Tq397ghz/IuZwxyiIVm4zVQ26ASwpEVu1w==
X-Received: by 10.99.161.17 with SMTP id b17mr33224523pgf.72.1490039499250;
        Mon, 20 Mar 2017 12:51:39 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h14sm35190647pgn.41.2017.03.20.12.51.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 12:51:38 -0700 (PDT)
Date: Tue, 21 Mar 2017 01:21:34 +0530
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
Message-ID: <20170320195134.GA18556@arushi-HP-Pavilion-Notebook>
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
 - correct the Documentation.

 drivers/staging/iio/adc/ad7606.c | 9 +++++----
 drivers/staging/iio/adc/ad7606.h | 3 +++
 2 files changed, 8 insertions(+), 4 deletions(-)

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
index 746f9553d2ba..acaed8d5379c 100644
--- a/drivers/staging/iio/adc/ad7606.h
+++ b/drivers/staging/iio/adc/ad7606.h
@@ -14,6 +14,7 @@
  * @name:		identification string for chip
  * @channels:		channel specification
  * @num_channels:	number of channels
+ * @lock		protect sensor state
  */
 
 struct ad7606_chip_info {
@@ -23,6 +24,7 @@ struct ad7606_chip_info {
 
 /**
  * struct ad7606_state - driver instance specific data
+ * @lock		protect sensor state
  */
 
 struct ad7606_state {
@@ -37,6 +39,7 @@ struct ad7606_state {
 	bool				done;
 	void __iomem			*base_address;
 
+	struct mutex			lock; /* protect sensor state */
 	struct gpio_desc		*gpio_convst;
 	struct gpio_desc		*gpio_reset;
 	struct gpio_desc		*gpio_range;
-- 
2.11.0


