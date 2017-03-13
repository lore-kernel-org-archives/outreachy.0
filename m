X-GM-THRID: 6396883163908407296
X-Received: by 10.99.121.199 with SMTP id u190mr16056519pgc.103.1489422952093;
        Mon, 13 Mar 2017 09:35:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.95.9 with SMTP id r9ls1634816itb.14.gmail; Mon, 13 Mar 2017
 09:35:51 -0700 (PDT)
X-Received: by 10.99.110.139 with SMTP id j133mr18776615pgc.55.1489422950943;
        Mon, 13 Mar 2017 09:35:50 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y203si2779400pfb.0.2017.03.13.09.35.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 09:35:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so19533780pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 09:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qlsCsrAU2obT0WomIW3fFXZuyb+0ZZryUFDvQIunlDM=;
        b=fzHWZFiHXkB4Z2iSFk8e0yiUIzITvaeMby71nuEMMR86JmFLaddUgHUO10uv3xiP6i
         KJMDUXZLfOwg4P8/8nouj1+64vpn3GNgzKPWjSiwzx/RwMpECyJ2C4UQiIhj8DH49JNM
         HM/FbvDKQOhKAN57PO2y1hGivW5i+EnurK9MzOMxYoPDuG7ySF35DrlBpARTYcoZt3RW
         9zTh96f48f9tYu8KmPFI2Ix2/WsO17tFBy66qYKjenadIGYifm8/ET43tqB8oe4gJsdH
         uGkAtBpusPKRnTQ4NmOENDQeZidOWbw2iSHMAhJHx9+k8XgQ4jDRz7qoFJRDj68+ny0k
         WsvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qlsCsrAU2obT0WomIW3fFXZuyb+0ZZryUFDvQIunlDM=;
        b=YsOBjcHVH2Kl8z+1BlzZVZ82ytsjks22uoV9k5u8v63fCydjUmlFaa1DiMbOwgCmqe
         ZGtHUpGVu9WAucGO+urNSNhNF65aSIfaaCiZdptHGfStEuMbUhZgjBSIV2+LDtYnB7hB
         rSB5o+fkNB1npyjjuLkgLH8b4V4UNP3JhzOkr1wyLYxLmLYoZnDSelU/DIs5yj/cUZ4J
         7Vw7Y9p4bxhg89hfs0HwW8XkpYwwtuWaj66/Lc/hZJIl9eqzSgwr4J+649yIQ6MK6XgD
         2UvN3R/9BWFJfhv+aln9r/zMpR3MgDnUjDQd+r8dYiscIUpjzSkKKq1XGUbUVOmlzVH6
         q9cg==
X-Gm-Message-State: AMke39l6jfToUdCIFamDMX5belAHKjQHOgQdrAZNCJ4pwtdsA7bYjUiMXdQc8TsNB7kRDw==
X-Received: by 10.99.95.69 with SMTP id t66mr38270967pgb.0.1489422950428;
        Mon, 13 Mar 2017 09:35:50 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.222.61])
        by smtp.gmail.com with ESMTPSA id w29sm33632873pfi.131.2017.03.13.09.35.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 09:35:49 -0700 (PDT)
Date: Mon, 13 Mar 2017 22:05:27 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH v3] staging: iio: ad9834: Use private driver lock instead of
 mlock
Message-ID: <20170313163527.GA15056@sayli-HP-15-Notebook-PC>
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
v3:
Initialised the lock with mutex_init()
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


