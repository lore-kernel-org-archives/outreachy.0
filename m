X-GM-THRID: 6396598979256123392
X-Received: by 10.129.40.134 with SMTP id o128mr16223959ywo.82.1489419366033;
        Mon, 13 Mar 2017 08:36:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls15011717otc.30.gmail; Mon, 13 Mar
 2017 08:36:05 -0700 (PDT)
X-Received: by 10.157.33.49 with SMTP id i46mr15474520otb.30.1489419365637;
        Mon, 13 Mar 2017 08:36:05 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si2754592pfb.0.2017.03.13.08.36.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 08:36:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so18454681pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 08:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KZxgTpGYYMJ8YEZn0/c8cPa9HW+W71wfhwC+UUqSTjw=;
        b=rSY5x1tvTzwrTkTUjE/7LzeHsw3N1FEuVtDGj01yzhHaL/G88yv3KfDHRfrBvDqk5I
         CyWz4k64vpsNag6jqAY+05vpnhDvrMU+lAj4/xdJqSLqmA++4UXY5WBmvzacwJwGxj4o
         XEWO8gaEb2Tnm0KJ5LFHfvfB8rCdlSHZQnI6NZl6+34vZStTjL9c3ccTqt+iHQCzLxUf
         Bkgpsu/vNqGMW4ANkJwaxjd3zLVkBlqUYH9w6z9UTqL9I1u6/nngwU/GE23pyPxhMe3T
         rtlpc1ciqtCLFEVRe4KhQooh0E/WA2n0l8xOuXjAOYidN3rOow+NZvULKW8WsB6bX9fG
         sdBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KZxgTpGYYMJ8YEZn0/c8cPa9HW+W71wfhwC+UUqSTjw=;
        b=ol8mV6uQWrevRAn4EoBMOK+PRswYEIa3urDsM36q+gPHv2SVDXT/Rf+R4AQZRmbJQj
         xYoM7SHkZ4h6SrXHp8C5ePPtlb1bmrg+ca6Vb/q7SJNDFazReLX254hYlWxEXv4/xJFU
         wzV+m/N5hA51QP5y55j0CRNPstGpNdJQbtS0c8bIl8THkCLgTUNHKjZtoJHppXJtnJa2
         szXYfkfCKOPBauATXw/CmDZqsYWv49w5HRecoq+1Hv6qo+2ZGm8hckvBTctNvYyhafSR
         nRWvdM9ySCFTHT+sxoLE+GUWmq8GhmMkyseGzQphGQdo4dzrBZWIFSIFXDSSBP6VOjQ4
         jejA==
X-Gm-Message-State: AMke39lUeYVhUJjhkW2qvd0NF9N22NNouVYkAsvP9qp+d8pCL86K2K7TJ54tzhtPQr08Qw==
X-Received: by 10.98.91.131 with SMTP id p125mr38352636pfb.165.1489419365380;
        Mon, 13 Mar 2017 08:36:05 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l72sm33485863pfi.93.2017.03.13.08.36.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 08:36:04 -0700 (PDT)
Date: Mon, 13 Mar 2017 21:08:11 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com, jic23@kernel.org,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: adis16060_core: Use private driver lock instead
 of mlock
Message-ID: <20170313153811.GA11378@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a lock in the devices global data.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 v2:
   -Fixed compilation error

 drivers/staging/iio/gyro/adis16060_core.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index c9d46e7..0f1bc8a 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -29,11 +29,13 @@
  * @us_r:		actual spi_device to read back data
  * @buf:		transmit or receive buffer
  * @buf_lock:		mutex to protect tx and rx
+ * @lock:		protect sensor state
  **/
 struct adis16060_state {
 	struct spi_device		*us_w;
 	struct spi_device		*us_r;
 	struct mutex			buf_lock;
+	struct mutex			lock;	 /* protect sensor state */
 
 	u8 buf[3] ____cacheline_aligned;
 };
@@ -83,11 +85,12 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 {
 	u16 tval = 0;
 	int ret;
+	struct adis16060_state *st = iio_priv(indio_dev);
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
 		/* Take the iio_dev status lock */
-		mutex_lock(&indio_dev->mlock);
+		mutex_lock(&st->lock);
 		ret = adis16060_spi_write(indio_dev, chan->address);
 		if (ret < 0)
 			goto out_unlock;
@@ -96,7 +99,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 		if (ret < 0)
 			goto out_unlock;
 
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->lock);
 		*val = tval;
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_OFFSET:
@@ -112,7 +115,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 	return -EINVAL;
 
 out_unlock:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->lock);
 	return ret;
 }
 
-- 
2.7.4


