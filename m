X-GM-THRID: 6398760479278235648
X-Received: by 10.13.243.65 with SMTP id c62mr9444781ywf.5.1489827520723;
        Sat, 18 Mar 2017 01:58:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.3 with SMTP id f3ls9018070otc.32.gmail; Sat, 18 Mar
 2017 01:58:40 -0700 (PDT)
X-Received: by 10.157.17.228 with SMTP id y33mr8459957oty.102.1489827520377;
        Sat, 18 Mar 2017 01:58:40 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y90si1817222pfa.6.2017.03.18.01.58.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 01:58:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so11165372pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 01:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hH0oyNvpB+C28jZd5wBboy/7RMV2H6P0NaNFdBeW8gc=;
        b=aXyXuYofKdOZ+GXfbPo9F+FymQb8GgxYlXm1NLBcFO9dkkvbo+/Zl+FurYC1tmAXjt
         4fTSW3DpYzGzVyvSdRnQtApy0Bs5O5h0UPSmTOs8kW8sHozRQvoowYrOD351C/bFFicp
         I/6MW6U4IHRuuohuzED2qbgiH/rHmHJY3oCjABuOyZUw3sRg+N0CQrKEd9J8QuV/2m+A
         b+WwgwK2EEYE8rutw2/CHLBRZNBGCdlE3U3pkec+bxbPjxpGEtiYKt+RzzyiHsFCo2qx
         zaCNY6WdyOWpF+ikEd7So2zAVDDJegHwlZZXtrpi/Bdfv+MvSSls5MDHYEvfHmC4cBBx
         jKvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hH0oyNvpB+C28jZd5wBboy/7RMV2H6P0NaNFdBeW8gc=;
        b=Le8ZslRVVrWaXe+BDA6KbMnnmrWJmLUWSO3GruyIITUVbKjsr6SnYoQmUWqu8a8Vy6
         Et7ho1VNqEKqC9KwCeqkjml+Z4cV9pLxiN/Z1K7eA2IOlZwHS4TtrLw0jgZPsFCXRylb
         +KXRBL2cIS9+wlckE1+c4hGYYR5eE8/QCpQAMLjN+RnfpDlGUJfCEIaZ4sOrnA9OJdtE
         JHNAW/biz9oF/cWMDTQhEUQp+tsxqm7OHkn1e+eJeVeYBq/FXUY6o+GKerhpnv4LJcEf
         2tmTmu80oxfhZEQWSNBKzUdcjuiWuR4rJD2/1UJQqggdatormcAtouGqpRwdw/ABPMVr
         sKEw==
X-Gm-Message-State: AFeK/H0xJqUyk8jBTNUNqG3rr5DSqdDlzamT1UyttOLHIQ2Nl6ja/LAsxkUNZyBmlUjMsw==
X-Received: by 10.98.17.200 with SMTP id 69mr21497922pfr.210.1489827520062;
        Sat, 18 Mar 2017 01:58:40 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.89])
        by smtp.gmail.com with ESMTPSA id h9sm21329854pfd.103.2017.03.18.01.58.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 01:58:39 -0700 (PDT)
Date: Fri, 17 Mar 2017 23:54:43 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: iio: accel: adis16201: remove iio_dev mlock
Message-ID: <20170317182443.GA5568@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

In the driver adis16201 read_raw(..) does not require an iio_dev->mlock. 
It can run concurrently as adis_read_reg_16() is protected by a
transaction lock.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

Changes in v2:
	-- Remove read lock
---
 drivers/staging/iio/accel/adis16201.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16201.c b/drivers/staging/iio/accel/adis16201.c
index d6c8658..3b8e0e1 100644
--- a/drivers/staging/iio/accel/adis16201.c
+++ b/drivers/staging/iio/accel/adis16201.c
@@ -223,17 +223,14 @@ static int adis16201_read_raw(struct iio_dev *indio_dev,
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
+
 		val16 &= (1 << bits) - 1;
 		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
 		*val = val16;
-		mutex_unlock(&indio_dev->mlock);
 		return IIO_VAL_INT;
 	}
 	return -EINVAL;
-- 
2.7.4


