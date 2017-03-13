X-GM-THRID: 6396883163908407296
X-Received: by 10.99.61.79 with SMTP id k76mr14950431pga.3.1489390534103;
        Mon, 13 Mar 2017 00:35:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.5 with SMTP id p5ls3940541iop.34.gmail; Mon, 13 Mar
 2017 00:35:33 -0700 (PDT)
X-Received: by 10.99.245.15 with SMTP id w15mr16639065pgh.63.1489390533250;
        Mon, 13 Mar 2017 00:35:33 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y203si2595029pfb.0.2017.03.13.00.35.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 00:35:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so12789979pge.2
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 00:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SBzdP2tFK8bxJN8VGTm0H97pNzqtiNuJHuJvtPcV0DM=;
        b=Aa9Eskl29UavdZLknpvv/CaQnu1+k2VXgKtskjb4qvEzETV58bav36Q6dvKhsmM3LF
         oZUJtKzQIRvUXgbGkkMF6vO2uO/Oc8TkP7rMuqPzwBYWgHW+HEOXjabUqR6ToRcS8kap
         X1VTAdqHx2HbrXQ0orOd3ZWsXZofi6ze/dSH6YPtLpEl3VR67li/bM3TCokytk1ke0wE
         EXD4AUCUU9uKmQVQfQ571oxdSHSnoj9CBfQ/Bvdh6r4RmGzlz4VyeD0BhJKmDQrrIQHC
         +qw4XU/DmbhokX/b/zvRkU4p+kjNZwIGDdL9w71orO24rVaBdS6OYKoG05FNhAbcfIac
         A0ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SBzdP2tFK8bxJN8VGTm0H97pNzqtiNuJHuJvtPcV0DM=;
        b=p8RwpXt1zSszFCaX2yDuSFf0+oE4IcTDBCrEsW1rRCfwCk0j8/4W9RwCi175otMDor
         ZW/REXsNYVLmv6R87/QFNYGrfI1DWxf/ibZ8s0swWaSjQNMcWnwhXzAxG5pp+XpbpY9r
         Ac24ePilL3vMR1RKZ0vsPE3HblEd1RmNbLIK+JY6HL9oMyZXGnbspmisPGV9HHHwQOmb
         83QyRySNzpsU7GIi4zDGkvlosCWvLOh0a1+k7BRc91w7XadnHYn/Ia8gcNKlQZQ6tcee
         xh7TgXnigFs+9qF69fyX4/VTvlxY07WTT03YJFFPxWmSG2tAicj7FAdfNdQ9FW3068cc
         4oLw==
X-Gm-Message-State: AMke39l59xpGRE+CrO9PkbD2I+voK4KsRKEZ62N2EPy6zb/9JPoN5GHYnLmBU4E4nUjCog==
X-Received: by 10.99.131.198 with SMTP id h189mr35747681pge.161.1489390532860;
        Mon, 13 Mar 2017 00:35:32 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.222.61])
        by smtp.gmail.com with ESMTPSA id u80sm31630712pgb.32.2017.03.13.00.35.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 00:35:32 -0700 (PDT)
Date: Mon, 13 Mar 2017 13:05:13 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-iio@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 1/2] staging: iio: ad9834: Use private driver lock instead
 of mlock
Message-ID: <24fc8a025e0c56abfa57e38acef17a32a1e54934.1489389769.git.karniksayli1995@gmail.com>
References: <cover.1489389769.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489389769.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

iio_dev->mlock should be used by the IIO core only for protecting
device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
INDIO_BUFFER_* modes.
Replace mlock with a lock in the device's global data to protect
hardware state changes.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v2:
Fixed mistake by changing mutex_lock() to mutex_unlock()

 drivers/staging/iio/frequency/ad9834.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index f92ff7f..60461a6 100644
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
-- 
2.7.4


