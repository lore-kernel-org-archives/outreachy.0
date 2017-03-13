X-GM-THRID: 6396883163908407296
X-Received: by 10.13.224.70 with SMTP id j67mr17405168ywe.44.1489427564095;
        Mon, 13 Mar 2017 10:52:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls754236otd.11.gmail; Mon, 13 Mar
 2017 10:52:43 -0700 (PDT)
X-Received: by 10.157.54.226 with SMTP id s31mr15547230otd.16.1489427563662;
        Mon, 13 Mar 2017 10:52:43 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y90si3211444pfa.6.2017.03.13.10.52.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 10:52:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so19734670pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 10:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OHaywFIAaDrA4ZYxH8E6DVygzhcoXegdi2GgD5fW/eM=;
        b=gpGe4Nrxqy/7Bboc8eqgJEglaa0CE+08CnROfT3hxz0TCkm7QnQ9Xblla91XMgDrIH
         PoPlN8vGBgulSV+mj0YB8clL0qnN7qd9FhceiQHnyca9rLq6anQwuv6yHu95IQWS5Z9r
         kNiTCPTUvMAj4BmnT/0Eet2TBY4ZKtgqxC9/TiD2OlnlmazFQwT6bKe5b9hD3ILU5g4w
         yS0/IvQMOzDgqk/piOnMf/yNrvyCQV1eRtUtGH7I4M8o/Dq0iMgI/kW0owsVLLORZ3lX
         lA1HMl8xDPUl/CWI9MM7MYvq3hQNwFsDhbdbECeUVog+4MX5Id08xHoQKjOzU2AHIX7f
         qmIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OHaywFIAaDrA4ZYxH8E6DVygzhcoXegdi2GgD5fW/eM=;
        b=Ep9/F/Yp1Opg6WSxkqa9YtYaHDBPAKHrUkVieXMxEEEYO195xT9cIjd2UMUcHYBxPn
         iS9braLmqTyqBO1ZtRmVg4qUue+XR4K/1ufteuMl6pZITZA4rW1nHe59ANaZdHd47T91
         eNwgk10ecFKlHbRxzXLQrmCOY2PWfH1Ln8UaANObd8q5Td+MT1CWrO24UG2sNDrdBbDw
         fYyoSiyAFD9Bs2hOc+awBfY9NYU0rtgGAwtoBVyjZzKIJ/lvGIEl77SqH8gNuLgtUikO
         CP8KYs4YKfi0lp651ezS6YGis6bXH6DMwPFl7+ZQ0ZX7K0jugUucnCYzvhnO7t5j8/BR
         Cn6A==
X-Gm-Message-State: AMke39kYCtXIOtfRxTe9MdiKrFTyKQMJxh/kM4XnBy7r6W2gYE8CxWuySfXH7w2M9otmTg==
X-Received: by 10.84.179.165 with SMTP id b34mr49133263plc.147.1489427563176;
        Mon, 13 Mar 2017 10:52:43 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.222.61])
        by smtp.gmail.com with ESMTPSA id c11sm33956590pfe.68.2017.03.13.10.52.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 10:52:42 -0700 (PDT)
Date: Mon, 13 Mar 2017 23:22:14 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH v4 1/2] staging: iio: ad9834: Use private driver lock instead
 of mlock
Message-ID: <b8be73b2cd73e64684c56c8214140571ae65f012.1489424208.git.karniksayli1995@gmail.com>
References: <cover.1489424208.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489424208.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

iio_dev->mlock should be used by the IIO core only for protecting
device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
INDIO_BUFFER_* modes.
Replace mlock with a lock in the device's global data to protect
hardware state changes.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v4:
Initialised the lock with mutex_init() and sent as a patchset
v2:
Fixed mistake by changing mutex_lock() to mutex_unlock()

 drivers/staging/iio/frequency/ad9834.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index f92ff7f..2dffe48 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -63,6 +63,7 @@
  * @msg:		default spi message
  * @freq_xfer:		tuning word spi transfer
  * @freq_msg:		tuning word spi message
+ * @lock:		protect sensor state
  * @data:		spi transmit buffer
  * @freq_data:		tuning word spi transmit buffer
  */
@@ -77,6 +78,7 @@ struct ad9834_state {
 	struct spi_message		msg;
 	struct spi_transfer		freq_xfer[2];
 	struct spi_message		freq_msg;
+	struct mutex                    lock;   /* protect sensor state */
 
 	/*
 	 * DMA (thus cache coherency maintenance) requires the
@@ -149,7 +151,7 @@ static ssize_t ad9834_write(struct device *dev,
 	if (ret)
 		goto error_ret;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->lock);
 	switch ((u32)this_attr->address) {
 	case AD9834_REG_FREQ0:
 	case AD9834_REG_FREQ1:
@@ -207,7 +209,7 @@ static ssize_t ad9834_write(struct device *dev,
 	default:
 		ret = -ENODEV;
 	}
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->lock);
 
 error_ret:
 	return ret ? ret : len;
@@ -224,7 +226,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
 	int ret = 0;
 	bool is_ad9833_7 = (st->devid == ID_AD9833) || (st->devid == ID_AD9837);
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->lock);
 
 	switch ((u32)this_attr->address) {
 	case 0:
@@ -267,7 +269,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
 		st->data = cpu_to_be16(AD9834_REG_CMD | st->control);
 		ret = spi_sync(st->spi, &st->msg);
 	}
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->lock);
 
 	return ret ? ret : len;
 }
@@ -418,6 +420,7 @@ static int ad9834_probe(struct spi_device *spi)
 	}
 	spi_set_drvdata(spi, indio_dev);
 	st = iio_priv(indio_dev);
+	mutex_init(&st->lock);
 	st->mclk = pdata->mclk;
 	st->spi = spi;
 	st->devid = spi_get_device_id(spi)->driver_data;
-- 
2.7.4


