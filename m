X-GM-THRID: 6207856013446479872
X-Received: by 10.112.205.162 with SMTP id lh2mr60397lbc.15.1445808733061;
        Sun, 25 Oct 2015 14:32:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.150.131 with SMTP id y125ls17886lfd.60.gmail; Sun, 25 Oct
 2015 14:32:12 -0700 (PDT)
X-Received: by 10.112.173.170 with SMTP id bl10mr7550894lbc.7.1445808732562;
        Sun, 25 Oct 2015 14:32:12 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id q6si209919wiz.0.2015.10.25.14.32.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 14:32:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id p11so140448662wij.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 14:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=usW+kYWzMiWyVj7ZUUJ0QdAdiiz59sZB5qPNRGfAX8s=;
        b=tgFRW1tORiYbMAwSUCkXKZ6JumymKVJdYYKlrOjVL2L8p1I4E8w/CWoA7yDqb9Q4CK
         rrJ/rdDIZ/F2txbkmrbeSN0bZ84iJfthNhOsABYoz40cagTC5LDzjoQMlW18m4neK7Sw
         RXMLIxwNTpyt9WxNW+J/vs8RJ66SWWdQsvDNnrqoDe7bC/ZEcCas8Ut7OfVVdC0Lnio7
         5yB50L0F/ZwhZraKd8WB2tB+dlFuZEdJFk+K3EzHRwa019v3BOHcS3FC8HtKppFh8REH
         4tA7/wssiBeenXukRlwbc9HCJ/ieNcERexJFhVB4tEm2imhfZ+7kUQTSge+15/AL/HLG
         Gaqw==
X-Received: by 10.194.88.69 with SMTP id be5mr17273088wjb.125.1445808732439;
        Sun, 25 Oct 2015 14:32:12 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.101.193])
        by smtp.gmail.com with ESMTPSA id gh9sm35365899wjb.27.2015.10.25.14.32.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 25 Oct 2015 14:32:11 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: iio: adis16060_core: Fix error handling
Date: Sun, 25 Oct 2015 23:31:41 +0200
Message-Id: <1445808701-9694-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445446380-19431-1-git-send-email-cristina.moraru09@gmail.com>
References: <1445446380-19431-1-git-send-email-cristina.moraru09@gmail.com>

We need to check adis16060_spi_read return code to avoid feeding user
space with bogus data.
While, at it introduce out_unlock label in order to simplify locking
on error path.

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


