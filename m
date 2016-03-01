X-GM-THRID: 6257160535052124160
X-Received: by 10.140.88.139 with SMTP id t11mr34699802qgd.21.1456859044209;
        Tue, 01 Mar 2016 11:04:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.105 with SMTP id x102ls1739193ioi.65.gmail; Tue, 01 Mar
 2016 11:04:03 -0800 (PST)
X-Received: by 10.66.182.225 with SMTP id eh1mr18296921pac.24.1456859043896;
        Tue, 01 Mar 2016 11:04:03 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ui7si4616422pab.0.2016.03.01.11.04.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 11:04:03 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id y7so10963822paa.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 11:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=PauVi4pbxg4Cq05CMsoHYQAdVrxa+l3+5QHAvVSkilQ=;
        b=NAtMsczOYu8apa9gVRzU2hFnITnY5qbW1DL+Y+58yXrur4FkC9mgogU3+CwTMvX0/B
         8AtTmaL0ZCBIaPOilZVYZYxMvYPnjVIdN+LjMDnOtlXfC2RHvM3iNXOcAZIpfIxN3rks
         lSeAjNQj8BLqDzAgOBvbUyT7EuZzo8Jcklso3Skt1zN8h2zx6XzJxzCoEnZEegU1iRLs
         XKBhPX9bNNI7MYcb3U7IB/RxbF5aBo+Ch8NbG1jcL5NAkXgB/m8gLkjBguCW9jmv7oti
         6RzVbzgUv7bBx3Hz28Kg3fTqni72y0kN0P0oU6Jm5rNJsD6XtE2kK8hRUoWi/lgn4AlS
         zpUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=PauVi4pbxg4Cq05CMsoHYQAdVrxa+l3+5QHAvVSkilQ=;
        b=ND1PwUvWQndwlBW0iFUETO88sU6oHg+G3D58+mrPFNN4/qQ33jcxv6TzEsBbB4sfIp
         q8oh+HfmQe1YommJ6KLy/+D1tebN9WNwjWVPiB4VWwbmMU/eKzcHfta4uKb88obnHNAy
         3dzadiXl+xTZeB92rgOsmqF2umkMkQYOOM6xRs6gyn6UQWkPYwoIcHqySSaa/Sk/1W5L
         P6EMCXdB3s3h+Uz5IE/JGf0JGXsoHU26YTSyZceLMMmlDCg1hnW4lXnX2rEqZpU9DCDa
         hamsIH2At77jAGlTjqqy03UNrlWN0KU6p2A1NmzQwPgaa1gKgzQidegym6Uuda/Hk5AB
         oxJg==
X-Gm-Message-State: AD7BkJLFrdmbvkirlMvKjHD3xsUUpyNm+JFmJkOUxir5oNgPeWyq+naLSQ9f64duC+U+lQ==
X-Received: by 10.66.234.104 with SMTP id ud8mr32605192pac.143.1456859043720;
        Tue, 01 Mar 2016 11:04:03 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-235.dhcp.embarqhsd.net. [67.232.71.235])
        by smtp.gmail.com with ESMTPSA id kw10sm47399666pab.0.2016.03.01.11.04.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 11:04:03 -0800 (PST)
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
Subject: [RFC PATCH 2/2] staging: iio: adc7192: use iio_{claim|release}_direct_mode()
Date: Tue,  1 Mar 2016 11:03:52 -0800
Message-Id: <2345ebfd89c408206e623a8b29072dafa6041dff.1456794364.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456794364.git.amsfield22@gmail.com>
References: <cover.1456794364.git.amsfield22@gmail.com>

Replace the code that guarantees the device stays in direct mode with
iio_{claim|release}_direct_mode() which does same.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index f843f19..401ec91 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -349,11 +349,9 @@ static ssize_t ad7192_write_frequency(struct device *dev,
 	if (lval == 0)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
-	if (iio_buffer_enabled(indio_dev)) {
-		mutex_unlock(&indio_dev->mlock);
+	ret = iio_claim_direct_mode(indio_dev);
+	if (ret)
 		return -EBUSY;
-	}
 
 	div = st->mclk / (lval * st->f_order * 1024);
 	if (div < 1 || div > 1023) {
@@ -366,7 +364,7 @@ static ssize_t ad7192_write_frequency(struct device *dev,
 	ad_sd_write_reg(&st->sd, AD7192_REG_MODE, 3, st->mode);
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	iio_release_direct_mode(indio_dev);
 
 	return ret ? ret : len;
 }
@@ -434,11 +432,9 @@ static ssize_t ad7192_set(struct device *dev,
 	if (ret < 0)
 		return ret;
 
-	mutex_lock(&indio_dev->mlock);
-	if (iio_buffer_enabled(indio_dev)) {
-		mutex_unlock(&indio_dev->mlock);
+	ret = iio_claim_direct_mode(indio_dev);
+	if (ret)
 		return -EBUSY;
-	}
 
 	switch ((u32)this_attr->address) {
 	case AD7192_REG_GPOCON:
@@ -461,7 +457,7 @@ static ssize_t ad7192_set(struct device *dev,
 		ret = -EINVAL;
 	}
 
-	mutex_unlock(&indio_dev->mlock);
+	iio_release_direct_mode(indio_dev);
 
 	return ret ? ret : len;
 }
@@ -555,11 +551,9 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 	int ret, i;
 	unsigned int tmp;
 
-	mutex_lock(&indio_dev->mlock);
-	if (iio_buffer_enabled(indio_dev)) {
-		mutex_unlock(&indio_dev->mlock);
+	ret = iio_claim_direct_mode(indio_dev);
+	if (ret)
 		return -EBUSY;
-	}
 
 	switch (mask) {
 	case IIO_CHAN_INFO_SCALE:
@@ -582,7 +576,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 		ret = -EINVAL;
 	}
 
-	mutex_unlock(&indio_dev->mlock);
+	iio_release_direct_mode(indio_dev);
 
 	return ret;
 }
-- 
2.1.4


