X-GM-THRID: 6399601653123645440
X-Received: by 10.13.194.198 with SMTP id e189mr2463808ywd.155.1490035846106;
        Mon, 20 Mar 2017 11:50:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.184.8 with SMTP id i8ls3834571iof.24.gmail; Mon, 20 Mar
 2017 11:50:45 -0700 (PDT)
X-Received: by 10.99.158.9 with SMTP id s9mr16135150pgd.128.1490035845057;
        Mon, 20 Mar 2017 11:50:45 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y90si3001633pfa.6.2017.03.20.11.50.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 11:50:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id p189so13072814pfp.0
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 11:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PKeJ3NouCrd01fpXbiUniZCeshpoBrSFqwkL/9934PY=;
        b=Cu/KwlwOe9SKscZWIQ5ZRg+TRw/2NAN0LJbY0UIQHG6mAQtTi5qqJ2qBeKowSFgtiI
         HAs3ZbZ/HvtkARH2jaJN0/Xdtpho95AcLNHmvb23Lo2gZvJEYB1yUwr8DCf4SbjrAHkU
         5P7/2AnirqqPw4bUBuCiphfsape6OtnbPJeyB9Bq0hMIKJfA7Hm3+caMxRRQKRR6mLCj
         Y6XwqNw2P/12NNGtek4lgLgbooVGNZ7jqb0weBAylB+CYAEIxfbNrOyAvi8hW7KDk81B
         gjCtijqsIVqbSNqepIzFk8e17jCwTuo1GZ4/ffundoludm+6NM6O8ndS5ex0V5DQi2Xs
         MGyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PKeJ3NouCrd01fpXbiUniZCeshpoBrSFqwkL/9934PY=;
        b=S/J7ydb1h5HnfxbHIY32HJl7rV6uHiJrT3C4UUijuC8HGR2CdXjGgS7Wg2X0cAKJyo
         8pIJB8BoQJJrw3Cvw9FLwHYN4s4XmENu27DelIhmNWmTzuLOmQKUr/3JKeSgN+Qnr4xY
         KZZ/J5ptvTUsKuqh1NN2Gr/KhqXndPnllzgVCBmPfX2OGkTA/jvze2/Yw+iKQtMnuVyV
         FE7CnA0blsi1qiALIrNsMEKfjSCaaDT2yuNYjNSJAt13LZ3DTGrpfH1EqFVmNg6chbGn
         2TQa8qDCxw2LUSIabIHPI7kcKJTWRXgnW1ZACNtyaBRvzsRtffkeJKDUWbxLvBCLimsC
         e0iA==
X-Gm-Message-State: AFeK/H35jxJazoFEueCE/WmOHtl0IRFSRzdljeFXW2UMrp/r0MnHbOCIrIP8FmR1TNe9LQ==
X-Received: by 10.84.230.129 with SMTP id e1mr42116723plk.66.1490035844368;
        Mon, 20 Mar 2017 11:50:44 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q64sm34846912pga.0.2017.03.20.11.50.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 11:50:42 -0700 (PDT)
Date: Tue, 21 Mar 2017 00:20:37 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: ad7606: Replace mlock with driver private lock
Message-ID: <20170320185037.GA17345@arushi-HP-Pavilion-Notebook>
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
 changes in v2
 - add mutex_init.

 drivers/staging/iio/adc/ad7606.c | 9 +++++----
 drivers/staging/iio/adc/ad7606.h | 2 ++
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7606.c b/drivers/staging/iio/adc/ad7606.c
index 9dbfa64b1e53..b58641369596 100644
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
+	mutex_init(&chip->state_lock);
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


