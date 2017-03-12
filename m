X-GM-THRID: 6396739450609598464
X-Received: by 10.99.158.9 with SMTP id s9mr14247227pgd.128.1489357046078;
        Sun, 12 Mar 2017 15:17:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.143.75 with SMTP id r72ls3715554iod.30.gmail; Sun, 12 Mar
 2017 15:17:25 -0700 (PDT)
X-Received: by 10.99.98.193 with SMTP id w184mr14380004pgb.83.1489357045222;
        Sun, 12 Mar 2017 15:17:25 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si2422111pfb.0.2017.03.12.15.17.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 15:17:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so16180314pgg.1
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 15:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SBzdP2tFK8bxJN8VGTm0H97pNzqtiNuJHuJvtPcV0DM=;
        b=caHEDD0tErQ/hmR+R6wsYhI/xTQxEFoDWdhW4C3snSCZOONM8UA0PnT0uiTY1xxGg6
         qKQQ9cM4dazlxEGQfOVYg3EiIow+NA3km3M//Povw/Vqdx9k+NUt5C6p1VwaLArbeQ9Z
         JbVc/zq7y5OybpPixEcql02o1LSfZDJY3M7dguqllq/5V2f1gcra55WkwbfQDqC8jEWU
         BNokaCcr0wG3dcpc8cKID5DG1En4eVKzLN1pCVgV+YleRpajVzgCfL2RK5llQ9Ntf4Oc
         R0bvqPQixJlBQgBl8D0pMDo5b6WgxAYLmtJ326H1Wv0fp7mUKGjtgKwIvCVKRpwlfIG0
         BlXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SBzdP2tFK8bxJN8VGTm0H97pNzqtiNuJHuJvtPcV0DM=;
        b=pbVK2xOFwBB6MSOYjzJaZkMOMf1CwzuEG6W9hKXl4np6dV3io1io2spw8iUHuta+sj
         18dwwxHvLNf7yaQi3IELFCemspv7EzVJDyi9z+y3o7AMS1yKio6u4S1f/Tl/AkHkv/bS
         T0SPL347Ef+aGENHW2KFH+1uEmBXFu3+Pn53286BBvb1nDyY/3dDO/2ZEDIDrQVO+lWK
         zl7zR7dILzBePDQFlKoOSYTdWRLqeW7ELx7UrgqcRsQaLlEjEtcyyspRbrdjh8aEmRwg
         H11vaNPDGzGZSleubV7Tv6fph73gv7fYZSqK//JlHxAAFCP+B0yTAhDPbTx2tZWSDEp+
         L11Q==
X-Gm-Message-State: AMke39lXBSWZ0BUtoB/4mgFlEnxhTTFzgwpoP0+VPz6WNbRNnChDQA1sbBFyeIjOfHN84g==
X-Received: by 10.98.49.1 with SMTP id x1mr33822477pfx.26.1489357044820;
        Sun, 12 Mar 2017 15:17:24 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.240.138])
        by smtp.gmail.com with ESMTPSA id e16sm19976285pfb.102.2017.03.12.15.17.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 15:17:24 -0700 (PDT)
Date: Mon, 13 Mar 2017 03:47:08 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-iio@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/2] staging: iio: ad9834: Use private driver lock instead
 of mlock
Message-ID: <24fc8a025e0c56abfa57e38acef17a32a1e54934.1489356140.git.karniksayli1995@gmail.com>
References: <cover.1489356140.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489356140.git.karniksayli1995@gmail.com>
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


