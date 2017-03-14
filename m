X-GM-THRID: 6397390793328295936
X-Received: by 10.157.30.164 with SMTP id n33mr17812635otn.45.1489508616292;
        Tue, 14 Mar 2017 09:23:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.156 with SMTP id 28ls93361iol.20.gmail; Tue, 14 Mar
 2017 09:23:35 -0700 (PDT)
X-Received: by 10.107.175.217 with SMTP id p86mr172001ioo.101.1489508615299;
        Tue, 14 Mar 2017 09:23:35 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id c123si3694053pfa.4.2017.03.14.09.23.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 09:23:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so25360607pgc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 09:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=3pr/3gdvwbo55OX255+ctU2e1UaIp5TRAYtPwzCXAPg=;
        b=jH4l8PzDol9rZW7MBlQw7KOzpdKwbOaDRGPB+DNpYUd8IS4paojdaYM4E6IMepdAtA
         I7bbZKyqrnkRrTLL+eGcYbyrFkzGBQu1xKD6Zjh0Mc1QJUVCu41HQOqooDBzOCYNifzh
         P69FyefR4UZSAejX1iTb3HZkyyUAECkcvOGWHwrQyOLkFxWbRQumUR91eEMJkOIXCHpC
         OsvT8z8WrOruCh/OsDAbDw3VCIAuar8vXwgMaE1XXHAu3v7lN8nYd6pcogmyKpzyRUNa
         NoCUZVe3Ux10+3Jg5OzB5AOd7cUUVr+uUnCmVxnSs1xDZ1q6DjheNai58KTtpzZHynvf
         zVpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=3pr/3gdvwbo55OX255+ctU2e1UaIp5TRAYtPwzCXAPg=;
        b=gkBi58XqvB8B98TeqN7cWoSrFLhnDShbnc+eBZu7a85fpuTrCt7rt1Df+LPK8tbkHl
         rYpqICsNaJ1HZKarPnYnc5NU9KNYNhY4+bxwM2hj6HAuhxx2suOpa7sJinCRhDDRcdF4
         gF5+gfJ1VnrqM2V6CKZ50Xuaw8H9DzjPU1AacyuSx2Nwd52DNwF9Ac4BPMYL/n78fm2x
         R+Co+jHZg/BrJeMPJ2KEVu/7ze382Oo0m+OKsx7gTvXr7Mpcyhe4wxf3Vh6l11ZkWiWu
         2F7U0gJLaxKuk/rqXnT2xaqKfTY8aKphI23GZ3uXzJRNBEIzSvGcGeK2L/y2j4cMd145
         /NWA==
X-Gm-Message-State: AMke39kfCxuoP0oiEtHKYNU3Z7LQEFWi3tOItfkXMKLo7HzS8+rcYAHijAqAQizRGK38sA==
X-Received: by 10.98.70.28 with SMTP id t28mr44372179pfa.176.1489508615039;
        Tue, 14 Mar 2017 09:23:35 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5184:fa9f:d84d:aa06:3fcb:1eae])
        by smtp.gmail.com with ESMTPSA id d63sm39490346pfg.132.2017.03.14.09.23.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 09:23:34 -0700 (PDT)
Message-ID: <58c81906.42d5620a.3e22a.7a2b@mx.google.com>
X-Google-Original-Message-ID: <20170314162317.GA1153@<rvarsha016@gmail.com>>
Date: Tue, 14 Mar 2017 21:53:18 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Barry Song <21cnbao@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
Subject: [PATCH v2] staging: iio: adis16240: Remove mutex_lock() and
 mutex_unlock() function call.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Remove mutex_lock() and mutex_unlock() function calls, as the
adis16240_spi_read_signed() function can be run parallel and safely
multiple times. Also remove the mutex.h header file and comment, which
are no longer required.

As indio_dev is declared and initialized in adis16240_spi_read_signed(),
again declaration to same type and initialization to same value is not
required, remove it from adis16240_read_12bit_signed().

Simplify the return logic, by merging assignment and return into a single
line.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:

- mutex_lock() and mutex_unlock() are removed, instead of replacing
  mlock with driver private lock.
- Commit message modified.
- mutex.h header file is removed.
- Unnecessary comment is removed.
- Return logic is compressed to single line.
- Removed indio_dev declaration and initialization from
  adis16240_read_12bit_signed().

 drivers/staging/iio/accel/adis16240.c | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index 27d7f6a..3a5f6ab 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -10,7 +10,6 @@
 #include <linux/irq.h>
 #include <linux/gpio.h>
 #include <linux/delay.h>
-#include <linux/mutex.h>
 #include <linux/device.h>
 #include <linux/kernel.h>
 #include <linux/spi/spi.h>
@@ -227,15 +226,7 @@ static ssize_t adis16240_read_12bit_signed(struct device *dev,
 					   struct device_attribute *attr,
 					   char *buf)
 {
-	ssize_t ret;
-	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
-
-	/* Take the iio_dev status lock */
-	mutex_lock(&indio_dev->mlock);
-	ret =  adis16240_spi_read_signed(dev, attr, buf, 12);
-	mutex_unlock(&indio_dev->mlock);
-
-	return ret;
+	return adis16240_spi_read_signed(dev, attr, buf, 12);
 }
 
 static IIO_DEVICE_ATTR(in_accel_xyz_squared_peak_raw, 0444,
@@ -295,31 +286,25 @@ static int adis16240_read_raw(struct iio_dev *indio_dev,
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_CALIBBIAS:
 		bits = 10;
-		mutex_lock(&indio_dev->mlock);
 		addr = adis16240_addresses[chan->scan_index][0];
 		ret = adis_read_reg_16(st, addr, &val16);
 		if (ret) {
-			mutex_unlock(&indio_dev->mlock);
 			return ret;
 		}
 		val16 &= (1 << bits) - 1;
 		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
 		*val = val16;
-		mutex_unlock(&indio_dev->mlock);
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_PEAK:
 		bits = 10;
-		mutex_lock(&indio_dev->mlock);
 		addr = adis16240_addresses[chan->scan_index][1];
 		ret = adis_read_reg_16(st, addr, &val16);
 		if (ret) {
-			mutex_unlock(&indio_dev->mlock);
 			return ret;
 		}
 		val16 &= (1 << bits) - 1;
 		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
 		*val = val16;
-		mutex_unlock(&indio_dev->mlock);
 		return IIO_VAL_INT;
 	}
 	return -EINVAL;
-- 
2.9.3


