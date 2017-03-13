X-GM-THRID: 6396911560369897472
X-Received: by 10.99.6.212 with SMTP id 203mr16177966pgg.166.1489397035897;
        Mon, 13 Mar 2017 02:23:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls14362429otb.2.gmail; Mon, 13 Mar
 2017 02:23:55 -0700 (PDT)
X-Received: by 10.129.50.12 with SMTP id y12mr17151632ywy.111.1489397035541;
        Mon, 13 Mar 2017 02:23:55 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si3041693pfb.2.2017.03.13.02.23.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 02:23:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so17470520pgc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 02:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GJs8TUQyj1uqAjZYzjnEL8J9pCQWYNT35y8lL3bNaT0=;
        b=M0YbUcTJZyVUtyg+iEx4YsFKnO2998NHWaHic2Xxfb+BJyQQ2G1h5mQXT0HZNcHTba
         leDs2elow/5utLmzVDVcIjFovLTkHh7fRupL+sAp+D/AJsAFPMvcfMlbSiJXOIR8Waqh
         eZK93vugvr9Tbn9jYy99/BLESMZwyxQ2qXExtPFphNPwhCul6G1Pfkmqjo+4j3YkWp2a
         3oSpEoXqT7VZAV62vNTnKbFzjGNFQjTjlztsPbseKUgDYL79Ofx9lXZKFmmb9lMBFY3l
         ElHvsOEJKWf0AI/FKoZqr+s5SjVCSakCMz9aUHHDJqA7wRwWHmFMICBiCbfAZfbX7cYU
         /aCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GJs8TUQyj1uqAjZYzjnEL8J9pCQWYNT35y8lL3bNaT0=;
        b=LOxv1BGc0O0BA4sAb/itavaFRlzF3upQDrmb92GLAxVniLFO+7pYdh+t5PxtVKgBts
         ExEIe34OjlnaPuoMeDbkYe41FrHd+AfVYJCn2npUqOknOB8hEjikfPZQrL44yKx9mWe+
         laqywLUjceqdr6oXApieVJfuW/aibIDTxZlvccr7uNCgP+MRWH8xdb2CFnGpUxY10hE0
         nBAvyxF0kjucfmkwG7HuLPK3uT/338elGCaDbC5iFw1qf883r2gjAIVPXdTsxcizXqvy
         bwCXgA3YkN+p8Zpj39hXAhRdL7t3DwkG9EeJPfRQMcvqJdtBQUjpJUI2THHey7XHu5bx
         tpFQ==
X-Gm-Message-State: AMke39lsALXakp9ZVOB6gZDxA7wmBx3oZBOeIIpgmzK0h4mRhkbiyMj0IuYi9ghZUIHx1Q==
X-Received: by 10.84.146.140 with SMTP id g12mr45434491pla.70.1489397035304;
        Mon, 13 Mar 2017 02:23:55 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.132.44])
        by smtp.gmail.com with ESMTPSA id m6sm32167785pgn.58.2017.03.13.02.23.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 02:23:54 -0700 (PDT)
Message-ID: <58c6652a.467d630a.1c92b.3bea@mx.google.com>
X-Google-Original-Message-ID: <20170313092349.GA14257@<rvarsha016@gmail.com>>
Date: Mon, 13 Mar 2017 14:53:49 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Barry Song <21cnbao@gmail.com>, linux-iio@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: iio: adis16240: Replace mlock with driver
 private lock.
References: <cover.1489395260.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489395260.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

The IIO subsystem is redefining iio_dev->mlock to be used by the IIO
core only for protecting device operating mode changes. ie. Changes
between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state changes.
Replace it with a lock in the devices global data. Also declare and
initialize variable st which is pointer to struct adis, to access
txrx_lock.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/iio/accel/adis16240.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index 27d7f6a..c182b2d 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -229,11 +229,12 @@ static ssize_t adis16240_read_12bit_signed(struct device *dev,
 {
 	ssize_t ret;
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
+	struct adis *st = iio_priv(indio_dev);
 
 	/* Take the iio_dev status lock */
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->txrx_lock);
 	ret =  adis16240_spi_read_signed(dev, attr, buf, 12);
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->txrx_lock);
 
 	return ret;
 }
@@ -295,31 +296,31 @@ static int adis16240_read_raw(struct iio_dev *indio_dev,
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_CALIBBIAS:
 		bits = 10;
-		mutex_lock(&indio_dev->mlock);
+		mutex_lock(&st->txrx_lock);
 		addr = adis16240_addresses[chan->scan_index][0];
 		ret = adis_read_reg_16(st, addr, &val16);
 		if (ret) {
-			mutex_unlock(&indio_dev->mlock);
+			mutex_unlock(&st->txrx_lock);
 			return ret;
 		}
 		val16 &= (1 << bits) - 1;
 		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
 		*val = val16;
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->txrx_lock);
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_PEAK:
 		bits = 10;
-		mutex_lock(&indio_dev->mlock);
+		mutex_lock(&st->txrx_lock);
 		addr = adis16240_addresses[chan->scan_index][1];
 		ret = adis_read_reg_16(st, addr, &val16);
 		if (ret) {
-			mutex_unlock(&indio_dev->mlock);
+			mutex_unlock(&st->txrx_lock);
 			return ret;
 		}
 		val16 &= (1 << bits) - 1;
 		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
 		*val = val16;
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->txrx_lock);
 		return IIO_VAL_INT;
 	}
 	return -EINVAL;
-- 
2.9.3


