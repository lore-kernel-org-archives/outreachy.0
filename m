X-GM-THRID: 6399601653123645440
X-Received: by 10.99.181.21 with SMTP id y21mr4770136pge.66.1490023372753;
        Mon, 20 Mar 2017 08:22:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.72 with SMTP id z69ls3718481iod.16.gmail; Mon, 20 Mar
 2017 08:22:51 -0700 (PDT)
X-Received: by 10.99.114.6 with SMTP id n6mr15747626pgc.58.1490023371776;
        Mon, 20 Mar 2017 08:22:51 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si2707812pfz.1.2017.03.20.08.22.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 08:22:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id r137so13987225pfr.3
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 08:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=EpVofC7BzB9knA/dsTOi6ulr9GTOaGb5/4FwhD6WE14=;
        b=N9VPctJf8aC2BC0ycFHdt2V5U5+7F6wzkPmJUMgE66X3KzgtkKnyQlxAlwXZ5X4ppL
         QrUuaSHy+5aRATKNTF3Bhynq83YGfrT5qZpW5IwNd7S7V0I8DNfvHMp2UuRIGB+U7MGv
         xuR9kurkl9EQP0fvn3Q3VyLyN6o/VWaGQQlHE7dtskzIWRK/kRY7fgmr2nH002U2V/xT
         T8L7d00xaKRv0n2Bmee3IYW/v1yByc8O1udkn/h4QzDW7KbKQyXfBrr6lc128kTpQ+gT
         30ZAysijbvC3Ruu1u6pf6lqIi3jslTrNsXwXfqyesioefEZeklOiz/w39haSNlSgrrPb
         q1Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=EpVofC7BzB9knA/dsTOi6ulr9GTOaGb5/4FwhD6WE14=;
        b=FbmnIVAGJsmIsihTg7n6wiQOl2GnujK77DYawBwaaNktuJ/gn/QsCuUa5fRXlbaq2t
         yurn3ivQhzaddkhwBOSv5rCMX7CY3tyT2pro2yCCSMapOLV2mXCYicNL7kSY51buuaeh
         24/g7pYpwEn6AiLXGL2nEOO0ED0K7IyaCxrXevAIGBVCCD6jkJUEKTf1HrqO+OKcbT7e
         GWFwSO2b2qw1eLYX2eZOdPphPqs+DRoO3Td5OW1mGwOSFBWJmdLao0YxYNHaj0a9zWTW
         mi+uYAtw/VMBbHnAnYqOcl+kynmMbUKrm9jTi4rXfbxaG5pzZiLQbeBaHhApg6UQDOXG
         KoXg==
X-Gm-Message-State: AFeK/H1Igt2wWGFtztcPgB0iXQ1ivQGwDjUx0OKfOsGkTjAHX7i7N8RNNuwf8BWZNPjCng==
X-Received: by 10.98.101.7 with SMTP id z7mr5004773pfb.81.1490023371553;
        Mon, 20 Mar 2017 08:22:51 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d1sm33989805pfk.20.2017.03.20.08.22.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 08:22:50 -0700 (PDT)
Date: Mon, 20 Mar 2017 20:52:47 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH] staging: ad7606: Replace mlock with driver private
 lock
Message-ID: <20170320152247.GA6760@arushi-HP-Pavilion-Notebook>
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


