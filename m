X-GM-THRID: 6207856013446479872
X-Received: by 10.194.248.131 with SMTP id ym3mr1203053wjc.7.1445379111302;
        Tue, 20 Oct 2015 15:11:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.86.70 with SMTP id k67ls137162lfb.43.gmail; Tue, 20 Oct
 2015 15:11:50 -0700 (PDT)
X-Received: by 10.112.190.74 with SMTP id go10mr1219690lbc.9.1445379110486;
        Tue, 20 Oct 2015 15:11:50 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id d7si206161wiy.2.2015.10.20.15.11.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 15:11:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id p11so68012327wij.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 15:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=6m5j+Lvkb5OCs2Hlr7GZlKV2D4gSHkHUvlYvmkqyYOc=;
        b=N/QuHN7R+5bcejBCIKkTU5pKdw4gcdhiJsnEQQFLwvMlpQSyXJfAbRVvajKDcYSNS6
         NrbyfxfzDkmjeMEEK2zCq6wMK7pvxejZMti9vb0DfIoeE+LsPyRBWr5RJJVDK7snMThr
         4bk+83oh7cj5Gna/VdTGcDg+O3oF1ahu4K9+XKdVN9MQAXgzX05pFT88h7wIuFR3dAeN
         4+kxTHPGJmWgpUExN7QqnomyFcBD5l4AroxUJ6sMr4nsLi7fzadu8tA9MKXtwFkskmfE
         tfVeV0iktWODWs+cDPdRJv2ygBLbCPbNKllYTCYh0oQivIRWBlyMdef9l1k/vNFHE/8t
         HdRA==
X-Received: by 10.194.134.98 with SMTP id pj2mr7549816wjb.30.1445379110361;
        Tue, 20 Oct 2015 15:11:50 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.103.222])
        by smtp.gmail.com with ESMTPSA id lg1sm21005249wic.17.2015.10.20.15.11.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 15:11:49 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: iio: Add error code handling
Date: Wed, 21 Oct 2015 01:10:22 +0300
Message-Id: <1445379022-14114-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

The function adis16060_spi_read can return negative values
which must be caught and handled.

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/gyro/adis16060_core.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index 80783e7..fb02bed 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -89,11 +89,13 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 		/* Take the iio_dev status lock */
 		mutex_lock(&indio_dev->mlock);
 		ret = adis16060_spi_write(indio_dev, chan->address);
-		if (ret < 0) {
-			mutex_unlock(&indio_dev->mlock);
-			return ret;
-		}
+		if (ret < 0)
+			goto error_ret;
+
 		ret = adis16060_spi_read(indio_dev, &tval);
+		if (ret < 0)
+			goto error_ret;
+
 		mutex_unlock(&indio_dev->mlock);
 		*val = tval;
 		return IIO_VAL_INT;
@@ -108,6 +110,10 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 	}
 
 	return -EINVAL;
+
+error_ret:
+	mutex_unlock(&indio_dev->mlock);
+	return ret;
 }
 
 static const struct iio_info adis16060_info = {
-- 
1.9.1


