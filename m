X-GM-THRID: 6397358955566202880
X-Received: by 10.157.22.211 with SMTP id s19mr17363038ots.37.1489501203730;
        Tue, 14 Mar 2017 07:20:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls15555692otd.46.gmail; Tue, 14 Mar
 2017 07:20:03 -0700 (PDT)
X-Received: by 10.157.17.123 with SMTP id p56mr18359121otp.116.1489501203426;
        Tue, 14 Mar 2017 07:20:03 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y90si3670293pfa.6.2017.03.14.07.20.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 07:20:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id m5so440741pgk.3
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 07:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nzKSWFavKEbxsdaY87Sx5LXzKTLOT5arkxXIfHEb9Hs=;
        b=R28Rd6MiFam4K9OoruB7M//yw4KZ0uIctpHZcoBwv7U45HjkgPrGRHIW/xiQj9OJY/
         w+BLi6wcMGE5jNNAeYA2efuBe44DrrHyVc4wgTJTSAuTJMHiL1qqC/WAaFNyEyOy44KE
         5QN0/40FexHSK0c58Wm1VkO/IXwscryFryMm2kyeXBfocS0+zdVCz3uV0QqSAUV/AGLZ
         9LskNYXseAVGq+fLHnc0CNglAwTBXgK24PoLrxTati5V2SjhDJb3EY3GHnB+IJFDrPDh
         UlxZWY5xESqsJI7r14elxVIPfW478nNMnret0Q901DagzcPRBRdeswcrqyR4lCh7k/RV
         OpLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nzKSWFavKEbxsdaY87Sx5LXzKTLOT5arkxXIfHEb9Hs=;
        b=So06VBO41LDzEt9xuRJZaVcH1yXrCJ7mMNW5iralEPBLx+yRceffi2LOhyPDdZFHD6
         vzSxOIlHxR3bZQt88T5cLBPk8SmLvlQtt69Tzw7+rHEDeucJg/cVEwhsgFADhyCnakqy
         /KGbkX779RTdhlmYa/S0CmZtHPS1OInwaLZytXDbuqsVT/aoFaZJk0NugLPvJKWXKEgA
         L6qQmu3mHiiL9bsbl17bZ1OXSzePK5tPhB4LCPlDgPyRV+d6psQGprip+e3fgosR2xu0
         /EjO43dusviuJ6M1U+3DNS5So7DApF7+iEN2RtFbQOr/q28wbND95+44bHtgDghox5Ie
         Azeg==
X-Gm-Message-State: AMke39mcOPABOG+pm5ux4rf7vJVzTRUKN6hKBcwfkwMoHH4AJ62HvvqEgDmwIqFDfiOAPA==
X-Received: by 10.99.120.76 with SMTP id t73mr43833665pgc.149.1489501203159;
        Tue, 14 Mar 2017 07:20:03 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.35.4.74])
        by smtp.gmail.com with ESMTPSA id y5sm39098914pfd.33.2017.03.14.07.19.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 07:20:02 -0700 (PDT)
Date: Tue, 14 Mar 2017 03:34:25 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: cdc: replace mlock with driver private lock
Message-ID: <20170313220425.GA30482@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The IIO subsystem is redefining iio_dev mlock to be used by IIO core
only for protecting device operating mode changes.

In driver ad7746 wherever mlock was used to protect hardware state
changes, it has been replaced with a driver private lock.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/iio/cdc/ad7746.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 81f8b9e..6e3f99c 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -91,6 +91,7 @@
 
 struct ad7746_chip_info {
 	struct i2c_client *client;
+	struct mutex lock; /* protect sensor state */
 	/*
 	 * Capacitive channel digital filter setup;
 	 * conversion time/update rate setup per channel
@@ -298,11 +299,11 @@ static inline ssize_t ad7746_start_calib(struct device *dev,
 	if (!doit)
 		return 0;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&chip->lock);
 	regval |= chip->config;
 	ret = i2c_smbus_write_byte_data(chip->client, AD7746_REG_CFG, regval);
 	if (ret < 0) {
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&chip->lock);
 		return ret;
 	}
 
@@ -310,12 +311,12 @@ static inline ssize_t ad7746_start_calib(struct device *dev,
 		msleep(20);
 		ret = i2c_smbus_read_byte_data(chip->client, AD7746_REG_CFG);
 		if (ret < 0) {
-			mutex_unlock(&indio_dev->mlock);
+			mutex_unlock(&chip->lock);
 			return ret;
 		}
 	} while ((ret == regval) && timeout--);
 
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&chip->lock);
 
 	return len;
 }
@@ -426,7 +427,7 @@ static int ad7746_write_raw(struct iio_dev *indio_dev,
 	struct ad7746_chip_info *chip = iio_priv(indio_dev);
 	int ret, reg;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&chip->lock);
 
 	switch (mask) {
 	case IIO_CHAN_INFO_CALIBSCALE:
@@ -521,7 +522,7 @@ static int ad7746_write_raw(struct iio_dev *indio_dev,
 	}
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&chip->lock);
 	return ret;
 }
 
@@ -534,7 +535,7 @@ static int ad7746_read_raw(struct iio_dev *indio_dev,
 	int ret, delay, idx;
 	u8 regval, reg;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&chip->lock);
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
@@ -658,7 +659,7 @@ static int ad7746_read_raw(struct iio_dev *indio_dev,
 		ret = -EINVAL;
 	}
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&chip->lock);
 	return ret;
 }
 
@@ -686,6 +687,7 @@ static int ad7746_probe(struct i2c_client *client,
 	if (!indio_dev)
 		return -ENOMEM;
 	chip = iio_priv(indio_dev);
+	mutex_init(&chip->lock);
 	/* this is only used for device removal purposes */
 	i2c_set_clientdata(client, indio_dev);
 
-- 
2.7.4


