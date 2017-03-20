X-GM-THRID: 6396716918154199040
X-Received: by 10.157.73.150 with SMTP id g22mr12893396otf.130.1490019131437;
        Mon, 20 Mar 2017 07:12:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.82.215 with SMTP id d206ls2054702itb.17.canary-gmail; Mon,
 20 Mar 2017 07:12:10 -0700 (PDT)
X-Received: by 10.99.39.6 with SMTP id n6mr14613051pgn.98.1490019130193;
        Mon, 20 Mar 2017 07:12:10 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id a3si2768498pfb.2.2017.03.20.07.12.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 07:12:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id g2so20229530pge.2
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 07:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=EpVofC7BzB9knA/dsTOi6ulr9GTOaGb5/4FwhD6WE14=;
        b=Iql1qQtlb/nQW5RvkZUtAEPnc2hlVzrrbKj6+Xj2zI8zsNnd5GNurgIrlbH5IoCZJu
         Im4yc9NJHwTV9DZtYFSwHtAuybq9id8XQiEc95a/qNEadnceN/tX6mVlB9JFJO+NJ0EF
         OA9SRcmAzPe0qysnOTeGOqeW/bdBDRQLU04XwlYT3xCg1cuHFqfPGS05/xylYMavAHCG
         CL1Cs9UBPPMCrjcFgGtdZfaewhnhsw4q9BZKQeSR1bdSkHtwtHyE9dc8RRPjbADeotyb
         W0BRzki1YgSmflSRHTCNEFTaEvc/w4cUx+aJTFiNbIa9K+gXYNHxEpLkQi/EPUECghxC
         Z/Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=EpVofC7BzB9knA/dsTOi6ulr9GTOaGb5/4FwhD6WE14=;
        b=mboHzCXpXfKmk9N3Tbn4T0i7Vi+J1ZtVZPDB6w6e0BV3CuIPhMANzKR4N6b3/3hoV5
         2EHvpKgP3hSCoybao3FDrRAwkwEjxHiX7HR04TBB/69xYPoFqT0tCqOGPudJkv4vK3Rc
         7nR5HAwyyJsPuRYLs4DKPtxpY0hY+VLBAHJBdtEKktfKW/M7WBhzSzb4ZUFtiS1jnaVa
         zad6aGn+xHo933GHc2gzgyrDere56OtY5nJYTnZKG3pN1gffx7MnTUbiGcMH2mdokn0B
         07Fx0eYqFp21slPbw0wGRR0+s8N2stqXJpnX8qj7zoay/yCNr7549eZ3C1KifuvUvjQu
         3Atg==
X-Gm-Message-State: AFeK/H13UFTeQPn66+3FI55GDzxskQgRQ8xVn+qkSzYOVpTtMG/f/n04N1OrCS/+9Y9dhA==
X-Received: by 10.84.224.3 with SMTP id r3mr31008065plj.130.1490019129945;
        Mon, 20 Mar 2017 07:12:09 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i127sm33676559pfe.15.2017.03.20.07.12.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 07:12:08 -0700 (PDT)
Date: Mon, 20 Mar 2017 19:42:07 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	lars@metafoo.de
Subject: [PATCH] staging: iio: adc: Replace mlock with driver private lock
Message-ID: <20170320141207.GA5908@arushi-HP-Pavilion-Notebook>
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
 drivers/staging/iio/adc/ad7606.c | 8 ++++----
 drivers/staging/iio/adc/ad7606.h | 2 ++
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7606.c b/drivers/staging/iio/adc/ad7606.c
index 9dbfa64b1e53..9f529b34e018 100644
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


