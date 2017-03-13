X-GM-THRID: 6397400318166958080
X-Received: by 10.129.80.11 with SMTP id e11mr17590988ywb.133.1489510833925;
        Tue, 14 Mar 2017 10:00:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.6 with SMTP id q6ls75068otc.10.gmail; Tue, 14 Mar 2017
 10:00:33 -0700 (PDT)
X-Received: by 10.129.49.211 with SMTP id x202mr18628716ywx.25.1489510833401;
        Tue, 14 Mar 2017 10:00:33 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y203si3332226pfb.0.2017.03.14.10.00.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 10:00:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so25446681pgc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 10:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=54VTvU6Eie8EhSecxJB0flNRuuxKvR4RNPHxd+WxS7s=;
        b=pAQ3oYicDgvDD1tUFO71NSm8KX+kMTwVfEOla5YP+i3nkI7tNqyQopYnuJYLuPSCQg
         X4ya/k78Zzb/jVkYen2cVGtf48mGRwqIGF8UXsB1dC9NPp/1ZEf3ESzlJOCH/DNN52h2
         y7qQ0JXHbh4gWMBS2GVq9VWgqXtPkVWcmUNnGjqIEEBT2kk65hhCrbcLEqhVxC/iDFuS
         k+wuReAeyGuPMJvu7e5dV2jtpv6uw8dea7DE5ha8Nd3KqmsTbv+nMKEB+N/X9ifGha3E
         MaqN/jsxK08edLU8/5/YVi4C2vRQAqV6OiRTxoW+WwHi4byydNW14id6yRib/yrAV9st
         KKSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=54VTvU6Eie8EhSecxJB0flNRuuxKvR4RNPHxd+WxS7s=;
        b=NpQ3Ykbb9wQQ1wX9OnfFEYsDkCN4kzRMJ9SIsUjWSkm54iCszrzntQ8iqx0+GittvG
         n9xXFepDgFnw5ACf7QE4n7F1yu9X0vqDoth/brAxzMwXFnh+e/U38qH7IVvh+VuYbiXT
         QQcYtUysMmFLYETGatobvwNVgqCs/xUi4+VcTWIu8zZAWK0F/n3JAyz0wFbJwWPmUpsb
         Ud2iNxStvATusQJIY06yP199/FZwNzx/6leuR4Z5rRQOC+uHjNe/KXgA0w7lz6qIe0qn
         XzcHDUrpxinOgcyfUw9TMwrzyeUz1T2f+7tkRETZkSfCCGuv33DJCvBGQGKoyW0j1y9v
         820A==
X-Gm-Message-State: AMke39m7PWljoVaJ6QE5EQhhc0HMFExKZUYmthkB8IZjmNhpo6UqlCe3FbdHDK3tXX3Kpw==
X-Received: by 10.98.215.70 with SMTP id v6mr45204781pfl.121.1489510833084;
        Tue, 14 Mar 2017 10:00:33 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.186.138.66])
        by smtp.gmail.com with ESMTPSA id t12sm39662875pfg.14.2017.03.14.10.00.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 10:00:32 -0700 (PDT)
Date: Tue, 14 Mar 2017 05:28:44 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: accel: replace mlock with driver private lock
Message-ID: <20170313235754.GA18423@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

IIO subsystem is redefining iio_dev mlock to be used by IIO core only
for protecting device operating mode changes.

In the driver adis164201, a struct adis16201_state has been introduced
to store driver state information. Wherever iio_dev->mlock was used to
protect hardware state changes, it has been replaced by driver private
lock.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/iio/accel/adis16201.c | 34 ++++++++++++++++++++--------------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16201.c b/drivers/staging/iio/accel/adis16201.c
index d6c8658..6d84eae 100644
--- a/drivers/staging/iio/accel/adis16201.c
+++ b/drivers/staging/iio/accel/adis16201.c
@@ -150,6 +150,11 @@
 
 #define ADIS16201_ERROR_ACTIVE          BIT(14)
 
+struct adis16201_state {
+	struct adis adis; /* adis device */
+	struct mutex lock; /* protect state changes */
+};
+
 enum adis16201_scan {
 	ADIS16201_SCAN_ACC_X,
 	ADIS16201_SCAN_ACC_Y,
@@ -172,7 +177,7 @@ static int adis16201_read_raw(struct iio_dev *indio_dev,
 			      int *val, int *val2,
 			      long mask)
 {
-	struct adis *st = iio_priv(indio_dev);
+	struct adis16201_state *st = iio_priv(indio_dev);
 	int ret;
 	int bits;
 	u8 addr;
@@ -223,17 +228,17 @@ static int adis16201_read_raw(struct iio_dev *indio_dev,
 		default:
 			return -EINVAL;
 		}
-		mutex_lock(&indio_dev->mlock);
+		mutex_lock(&st->lock);
 		addr = adis16201_addresses[chan->scan_index];
-		ret = adis_read_reg_16(st, addr, &val16);
+		ret = adis_read_reg_16(&st->adis, addr, &val16);
 		if (ret) {
-			mutex_unlock(&indio_dev->mlock);
+			mutex_unlock(&st->lock);
 			return ret;
 		}
 		val16 &= (1 << bits) - 1;
 		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
 		*val = val16;
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->lock);
 		return IIO_VAL_INT;
 	}
 	return -EINVAL;
@@ -245,7 +250,7 @@ static int adis16201_write_raw(struct iio_dev *indio_dev,
 			       int val2,
 			       long mask)
 {
-	struct adis *st = iio_priv(indio_dev);
+	struct adis16201_state *st = iio_priv(indio_dev);
 	int bits;
 	s16 val16;
 	u8 addr;
@@ -264,7 +269,7 @@ static int adis16201_write_raw(struct iio_dev *indio_dev,
 		}
 		val16 = val & ((1 << bits) - 1);
 		addr = adis16201_addresses[chan->scan_index];
-		return adis_write_reg_16(st, addr, val16);
+		return adis_write_reg_16(&st->adis, addr, val16);
 	}
 	return -EINVAL;
 }
@@ -318,7 +323,7 @@ static const struct adis_data adis16201_data = {
 static int adis16201_probe(struct spi_device *spi)
 {
 	int ret;
-	struct adis *st;
+	struct adis16201_state *st;
 	struct iio_dev *indio_dev;
 
 	/* setup the industrialio driver allocated elements */
@@ -327,6 +332,7 @@ static int adis16201_probe(struct spi_device *spi)
 		return -ENOMEM;
 
 	st = iio_priv(indio_dev);
+	mutex_init(&st->lock);
 	/* this is only used for removal purposes */
 	spi_set_drvdata(spi, indio_dev);
 
@@ -338,15 +344,15 @@ static int adis16201_probe(struct spi_device *spi)
 	indio_dev->num_channels = ARRAY_SIZE(adis16201_channels);
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
-	ret = adis_init(st, indio_dev, spi, &adis16201_data);
+	ret = adis_init(&st->adis, indio_dev, spi, &adis16201_data);
 	if (ret)
 		return ret;
-	ret = adis_setup_buffer_and_trigger(st, indio_dev, NULL);
+	ret = adis_setup_buffer_and_trigger(&st->adis, indio_dev, NULL);
 	if (ret)
 		return ret;
 
 	/* Get the device into a sane initial state */
-	ret = adis_initial_startup(st);
+	ret = adis_initial_startup(&st->adis);
 	if (ret)
 		goto error_cleanup_buffer_trigger;
 
@@ -356,17 +362,17 @@ static int adis16201_probe(struct spi_device *spi)
 	return 0;
 
 error_cleanup_buffer_trigger:
-	adis_cleanup_buffer_and_trigger(st, indio_dev);
+	adis_cleanup_buffer_and_trigger(&st->adis, indio_dev);
 	return ret;
 }
 
 static int adis16201_remove(struct spi_device *spi)
 {
 	struct iio_dev *indio_dev = spi_get_drvdata(spi);
-	struct adis *st = iio_priv(indio_dev);
+	struct adis16201_state *st = iio_priv(indio_dev);
 
 	iio_device_unregister(indio_dev);
-	adis_cleanup_buffer_and_trigger(st, indio_dev);
+	adis_cleanup_buffer_and_trigger(&st->adis, indio_dev);
 
 	return 0;
 }
-- 
2.7.4


