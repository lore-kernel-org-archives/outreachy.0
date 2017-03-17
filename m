X-GM-THRID: 6398485501253255168
X-Received: by 10.99.115.27 with SMTP id o27mr3823107pgc.12.1489763497227;
        Fri, 17 Mar 2017 08:11:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.4 with SMTP id w4ls7796823otb.8.gmail; Fri, 17 Mar 2017
 08:11:36 -0700 (PDT)
X-Received: by 10.157.37.82 with SMTP id j18mr6906323otd.68.1489763496464;
        Fri, 17 Mar 2017 08:11:36 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si1413934pfz.1.2017.03.17.08.11.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 08:11:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so10259847pgg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Mar 2017 08:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=H1eKMp5pTU5n/j+uYO6e3mQf4ZJJQOcAu2T5IUUi+u0=;
        b=FB5hAxe5vbU0Oic6TJcbiBfeZ2Gq6Y70lQUUXEQDDemisRw5zKZZANiuBRUwSORqL4
         fivUsuWPQIuaxNX80Y8yans4W8Dnw5+SNs4PXYvMmWDPMYA8xvcbw4YyEM7LmYVzqc3t
         ZT2RbBjDm6XIPeUlBWTHFXBoTkVKleXoDLjpWXzKW5sDqQyqe4OtgeYUv7PKHVA2T5kX
         8TyQ0mQ1WePEQjKfIP8S27eHCIBJ6/GY1/lnyy2CzstKWdoWZjz3vyGWJeW12A1EKKgw
         QKIQTR8+TnyAYT6tz8XIs7dzo8FV8ifFf/0bQkcPydFsFAX+4mWGta8nNUkhp2a2Xe4O
         0L7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=H1eKMp5pTU5n/j+uYO6e3mQf4ZJJQOcAu2T5IUUi+u0=;
        b=amalASi2c9YOACUyULl9OuA8jnx+0YX02Ll7klTPa32Np74rW+RY2H8KuJrIvmCrLU
         nMk8aTxWHeuvkwpIQINVX0y9R0+wUe1h+LI9EloENpgRyMa5paNIr9upeIMqYr6T98yF
         yvHyGTu4H/8F+bJF8iwSqW8r02Ao8IMLKYJqq42pa+N1pPwqnm00g5VQv8ocLQJk4JEu
         CA2h3yTCsytTcACrMRv8KOiZ8N6vpZTG5tK+WKo73Xccnp4KgRINUdCtqqadZJwdrLUj
         s3sAaizxmkEQw5J9UjMs0zhF+asZO1bc4fJQewsmyfTCXCXI0VvRei5heBqCOqZNbr2e
         VLgQ==
X-Gm-Message-State: AFeK/H06dVZ5HI1Lm3lbG6QGpqcCUy6AoV6nboMkcM5tWakE9e6xVNg8oAtdLObanaZIaA==
X-Received: by 10.84.197.1 with SMTP id m1mr20958816pld.123.1489763496177;
        Fri, 17 Mar 2017 08:11:36 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([2405:204:2005:cd14:c57b:f0d:39df:5753])
        by smtp.gmail.com with ESMTPSA id v26sm17496403pfl.16.2017.03.17.08.11.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 08:11:35 -0700 (PDT)
Date: Fri, 17 Mar 2017 20:41:11 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: meter: ade7758_core: Replace mlock with
 driver's private lock
Message-ID: <20170317151110.GA26848@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

iio_dev->mlock should be used by the IIO core only for protecting
device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
INDIO_BUFFER_* modes.
Replace mlock with a lock in the device's global data to protect
hardware state changes.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/meter/ade7758_core.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 99c89e6..1723eb8 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -522,13 +522,14 @@ static int ade7758_read_raw(struct iio_dev *indio_dev,
 			    int *val2,
 			    long mask)
 {
+	struct ade7758_state *st = iio_priv(indio_dev);
 	int ret;
 
 	switch (mask) {
 	case IIO_CHAN_INFO_SAMP_FREQ:
-		mutex_lock(&indio_dev->mlock);
+		mutex_lock(&st->buf_lock);
 		ret = ade7758_read_samp_freq(&indio_dev->dev, val);
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->buf_lock);
 		return ret;
 	default:
 		return -EINVAL;
@@ -541,15 +542,16 @@ static int ade7758_write_raw(struct iio_dev *indio_dev,
 			     struct iio_chan_spec const *chan,
 			     int val, int val2, long mask)
 {
+	struct ade7758_state *st = iio_priv(indio_dev);
 	int ret;
 
 	switch (mask) {
 	case IIO_CHAN_INFO_SAMP_FREQ:
 		if (val2)
 			return -EINVAL;
-		mutex_lock(&indio_dev->mlock);
+		mutex_lock(&st->buf_lock);
 		ret = ade7758_write_samp_freq(&indio_dev->dev, val);
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->buf_lock);
 		return ret;
 	default:
 		return -EINVAL;
-- 
2.7.4


