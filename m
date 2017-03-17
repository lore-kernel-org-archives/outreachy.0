X-GM-THRID: 6398760479278235648
X-Received: by 10.107.38.17 with SMTP id m17mr5444032iom.5.1489841921453;
        Sat, 18 Mar 2017 05:58:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.195 with SMTP id 61ls9584275oto.31.gmail; Sat, 18 Mar
 2017 05:58:41 -0700 (PDT)
X-Received: by 10.157.13.229 with SMTP id 92mr8848035ots.69.1489841921095;
        Sat, 18 Mar 2017 05:58:41 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y203si1873349pfb.0.2017.03.18.05.58.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 05:58:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so5416341pgh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 05:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4leGaBoWEhekwA22oHTlaMCtJBM8M56lPZA1X72zugM=;
        b=kMTZ7teghy3bi2eLMxRErOW7ycPzLr7NnvWfcPNChURrkeJiohqFWVwtz4Di7hWhDQ
         /rma9UdJJLNtVvmqacBdHF14BW3P/IEOmjxKxEvNB2Zwfl1d8JBQbf+AHbn4sVHPV1xu
         QC+EH/Dvyagg37i7ZRhDRCvDmuQB5k5DTUb+ZYuRXQ82LhKWxMElz97iDqqGbPAnYnfm
         6Kzqih+63J83W9s8vau814ALkPakzhn7hfhZojP0uEmXHauiJu8CJb9Pla4QsOtfNxF9
         Jnf44NX6uZFU+hK7qWkudnGEoGr2sOlZH2VYJzPWUgu2+FtmZtzFrAhBvCrtdfwCBPko
         3urA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4leGaBoWEhekwA22oHTlaMCtJBM8M56lPZA1X72zugM=;
        b=hjCbAqUYX/ROvM5uUQEIeX5R+oi+yTKsq0Fc0h77PYH01WCo7bIbQsyS5/1KULbLOt
         WKr3dhig7mQkwFnsDpo419n1EKK1KzKguwzOoqSvrz7OUvB0HONYxSRO2V4kw2cuCs3t
         OWTPQ2YPre3pzI8A72k9cTSMNnCaLSVP5TZ83niAFfEJACauvQkpI29YpsPBZG9bYnIt
         VpFprPpvhUN7xIChFJWqm5wNydaBLLsKi/0IzZnLwWfYniWm3ybGpWQ+nm2b/k7obcYV
         4FhdacsITGT4P2tk3VqYFbuUnYA8Un4swqxzP6kHbCAKoJjMCW3IXA1s+S0lK7+MFgKs
         buxA==
X-Gm-Message-State: AFeK/H01Twq24J5sjqUW3LPouqcu46tKqc0shpibe2s9nLQ9TGuHXJz5GUCHL4sAG1UD+w==
X-Received: by 10.99.211.21 with SMTP id b21mr21551858pgg.166.1489841920762;
        Sat, 18 Mar 2017 05:58:40 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.234.108])
        by smtp.gmail.com with ESMTPSA id y5sm22910084pgy.28.2017.03.18.05.58.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 05:58:40 -0700 (PDT)
Date: Sat, 18 Mar 2017 03:13:56 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Barry Song <21cnbao@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
Subject: [PATCH v3] staging: iio: accel: adis16201: remove iio_dev mlock
Message-ID: <20170317214356.GA8369@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

In the driver adis16201 read raw does not require an iio_dev->mlock for
reads. It can run concurrently as adis_read_reg_16() is protected by a
transaction lock.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v3:
	-- Fix change log format
	-- Send patch to linuc-iio
Changes in v2:
	-- Remove read lock

 drivers/staging/iio/accel/adis16201.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16201.c b/drivers/staging/iio/accel/adis16201.c
index d6c8658..fd2baf2 100644
--- a/drivers/staging/iio/accel/adis16201.c
+++ b/drivers/staging/iio/accel/adis16201.c
@@ -223,17 +223,13 @@ static int adis16201_read_raw(struct iio_dev *indio_dev,
 		default:
 			return -EINVAL;
 		}
-		mutex_lock(&indio_dev->mlock);
 		addr = adis16201_addresses[chan->scan_index];
 		ret = adis_read_reg_16(st, addr, &val16);
-		if (ret) {
-			mutex_unlock(&indio_dev->mlock);
+		if (ret)
 			return ret;
-		}
 		val16 &= (1 << bits) - 1;
 		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
 		*val = val16;
-		mutex_unlock(&indio_dev->mlock);
 		return IIO_VAL_INT;
 	}
 	return -EINVAL;
-- 
2.7.4


