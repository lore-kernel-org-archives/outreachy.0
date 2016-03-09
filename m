X-GM-THRID: 6257160535052124160
X-Received: by 10.141.0.9 with SMTP id b9mr4847251qhd.16.1457551849512;
        Wed, 09 Mar 2016 11:30:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.142 with SMTP id u14ls1214848qge.82.gmail; Wed, 09 Mar
 2016 11:30:49 -0800 (PST)
X-Received: by 10.140.42.43 with SMTP id b40mr4835632qga.9.1457551849090;
        Wed, 09 Mar 2016 11:30:49 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id sf5si18302pac.1.2016.03.09.11.30.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2016 11:30:49 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 184so4237343pff.1
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Mar 2016 11:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=P4Vj1kwDJi0iKNnpOYegqphc27FxYNRBvnxnDm8B1Ws=;
        b=d4gkzlXEO1T2RyEcNsvPHbO10F/V80XLZkLtPmSoOiv0QKiILtUhoV/YAcUO0wq2yc
         IXd77N6IeBre/o56bpVItUaTBkBk4/YRguCAFUo7ckXN81ZNGqng4RD5EfBaSmj1j4mC
         EWz6KpECQg6A1PIDQPGQTu88tXxQtnIDS4dqtt6InuvJWWQu2DaZ+IMsRkqDUxFVYsVN
         av49iEo0wExEHxIIv2CtCHSjyFQeN+Kw5/NeDAU14wrbi9/3X9voYlW3ly+E2R5qT86b
         zxD/zNiIXmcJ/zSGanXApWhk+jgksY1uQVtj6x/xnIe+zzQc9TLNd4B1AobvNYrbmv3S
         RqZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=P4Vj1kwDJi0iKNnpOYegqphc27FxYNRBvnxnDm8B1Ws=;
        b=FKuKfHEMxsEHamAco0X9u6cCsofbjow1+jJ1/dE+14mSex82RWzHJKGyRghpmJf52X
         4bEKgtMU3sD+s5TZBkVVX9MfLJdT2yF9c7QA2mIqth97E39/wgeDsgt66TzXpa4hpYYS
         f+c1Y/nV8gim6OVDQjsAUZzI07S3xBm9oohf4Fx2mBjsXcvRrBjaalVqRNDhUGC1g/E6
         C9nlF2COrPK5TW8O9MIEBdrvBEyvpgnSbaYx+E9Cx0R2OKI3j9CeOSlxqaOPp9uouYse
         WYnwG+f7O1gA/4mAnt4bG4kvXjHiDrkKQg1dDBv9A7KmRHKOkHlaQmWos/Vkwl9dfeFu
         pHEg==
X-Gm-Message-State: AD7BkJIISn+xuKu0T+VbASsDGEHvbZx5xf/yey+B2ZUHtbn2UrYSKCAtUTGm3jNo1oEbyQ==
X-Received: by 10.98.80.10 with SMTP id e10mr52533441pfb.141.1457551848870;
        Wed, 09 Mar 2016 11:30:48 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-44.dhcp.embarqhsd.net. [67.232.71.44])
        by smtp.gmail.com with ESMTPSA id i1sm90032pfj.17.2016.03.09.11.30.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 09 Mar 2016 11:30:48 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael.Hennerich@analog.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [RFC PATCH v2 2/2] staging: iio: ad7192: use iio_device_{claim|release}_direct_mode()
Date: Wed,  9 Mar 2016 11:30:43 -0800
Message-Id: <dd3f346d97cfb11f4d18e44eb67309c889639ba7.1457549841.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1457549841.git.amsfield22@gmail.com>
References: <cover.1457549841.git.amsfield22@gmail.com>

Replace the code that guarantees the device stays in direct mode with
iio_device_{claim|release}_direct_mode() which does same.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index f843f19..94a2e06 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -349,11 +349,9 @@ static ssize_t ad7192_write_frequency(struct device *dev,
 	if (lval == 0)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
-	if (iio_buffer_enabled(indio_dev)) {
-		mutex_unlock(&indio_dev->mlock);
+	ret = iio_device_claim_direct_mode(indio_dev);
+	if (ret)
 		return -EBUSY;
-	}
 
 	div = st->mclk / (lval * st->f_order * 1024);
 	if (div < 1 || div > 1023) {
@@ -366,7 +364,7 @@ static ssize_t ad7192_write_frequency(struct device *dev,
 	ad_sd_write_reg(&st->sd, AD7192_REG_MODE, 3, st->mode);
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	iio_device_release_direct_mode(indio_dev);
 
 	return ret ? ret : len;
 }
@@ -434,11 +432,9 @@ static ssize_t ad7192_set(struct device *dev,
 	if (ret < 0)
 		return ret;
 
-	mutex_lock(&indio_dev->mlock);
-	if (iio_buffer_enabled(indio_dev)) {
-		mutex_unlock(&indio_dev->mlock);
+	ret = iio_device_claim_direct_mode(indio_dev);
+	if (ret)
 		return -EBUSY;
-	}
 
 	switch ((u32)this_attr->address) {
 	case AD7192_REG_GPOCON:
@@ -461,7 +457,7 @@ static ssize_t ad7192_set(struct device *dev,
 		ret = -EINVAL;
 	}
 
-	mutex_unlock(&indio_dev->mlock);
+	iio_device_release_direct_mode(indio_dev);
 
 	return ret ? ret : len;
 }
@@ -555,11 +551,9 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 	int ret, i;
 	unsigned int tmp;
 
-	mutex_lock(&indio_dev->mlock);
-	if (iio_buffer_enabled(indio_dev)) {
-		mutex_unlock(&indio_dev->mlock);
+	ret = iio_device_claim_direct_mode(indio_dev);
+	if (ret)
 		return -EBUSY;
-	}
 
 	switch (mask) {
 	case IIO_CHAN_INFO_SCALE:
@@ -582,7 +576,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 		ret = -EINVAL;
 	}
 
-	mutex_unlock(&indio_dev->mlock);
+	iio_device_release_direct_mode(indio_dev);
 
 	return ret;
 }
-- 
2.1.4


