X-GM-THRID: 6207856013446479872
X-Received: by 10.112.144.105 with SMTP id sl9mr2439955lbb.3.1445446397115;
        Wed, 21 Oct 2015 09:53:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.89.33 with SMTP id bl1ls450011wib.52.gmail; Wed, 21 Oct
 2015 09:53:15 -0700 (PDT)
X-Received: by 10.180.86.227 with SMTP id s3mr2565053wiz.0.1445446395855;
        Wed, 21 Oct 2015 09:53:15 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id bn7si550621wib.0.2015.10.21.09.53.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 09:53:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id fx6so100217789wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 09:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=B6yR0ndBRX2CtsqqGrFKXEyB7mNKL/gr5aih2i7nf1A=;
        b=xzkZFR6uDg5jZDrHYng2jqd94ty5jmt1Plm/Y/cdfpoW1mWikWZDyu94V1H7fVMag7
         chwy9qmZ6yi06r2bgbfzFjWRriSHcOyb/4oxyl/97d4xZkjuXs0afaw4n3/Li566/RiM
         E4njJRYZwZvksex+XuGa0EakRLzrtBpDjhPwH3wPLgcqkE7QRM8okJg8VRIhg7yY18KP
         Wd50w8XzITn1oKmNeWwW1TzFt1uCgkn1I0zeeOkhHQS9EBHZ2dftF4HTddOQ6l2oTrFn
         xRj1QZyJ6PjrrpWFwDy5/2AopqSK41egJU3eIWkewnhR17w21lu10RhZiSbHmjmb4TW2
         oGlg==
X-Received: by 10.180.35.163 with SMTP id i3mr37560602wij.55.1445446395767;
        Wed, 21 Oct 2015 09:53:15 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.204])
        by smtp.gmail.com with ESMTPSA id fl7sm5579949wic.18.2015.10.21.09.53.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 09:53:15 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH v2] staging: iio: Add exit label and error code handling
Date: Wed, 21 Oct 2015 19:53:00 +0300
Message-Id: <1445446380-19431-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445379022-14114-1-git-send-email-cristina.moraru09@gmail.com>
References: <1445379022-14114-1-git-send-email-cristina.moraru09@gmail.com>

This commit introduces a label for unlocking the mutex
and exiting the function adis16060_read_raw and redirects
the exit on failure of function call adis16060_spi_write
to that label. Also, adds error handling of the function
call adis16060_spi_read by a redirection to the same label.

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/gyro/adis16060_core.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index 80783e7..981b63f 100644
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
+			goto out_unlock;
+
 		ret = adis16060_spi_read(indio_dev, &tval);
+		if (ret < 0)
+			goto out_unlock;
+
 		mutex_unlock(&indio_dev->mlock);
 		*val = tval;
 		return IIO_VAL_INT;
@@ -108,6 +110,10 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 	}
 
 	return -EINVAL;
+
+out_unlock:
+	mutex_unlock(&indio_dev->mlock);
+	return ret;
 }
 
 static const struct iio_info adis16060_info = {
-- 
1.9.1


