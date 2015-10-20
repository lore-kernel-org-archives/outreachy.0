X-GM-THRID: 6207482452562149376
X-Received: by 10.180.79.68 with SMTP id h4mr1169778wix.6.1445371020958;
        Tue, 20 Oct 2015 12:57:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.79 with SMTP id s76ls123031lfs.29.gmail; Tue, 20 Oct
 2015 12:57:00 -0700 (PDT)
X-Received: by 10.112.14.4 with SMTP id l4mr1090578lbc.20.1445371020300;
        Tue, 20 Oct 2015 12:57:00 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id w4si820421wiz.0.2015.10.20.12.57.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 12:57:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id ll6so44497885wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 12:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=sZdr2GhNUBesOtRpBSlSxIXNCn8ZITWL1QTYzWsaEK8=;
        b=feoHRRt0R7Up97SyzhaNbqCYaGJVpM0Mme5C+gDDhDQFPh52E7BWkw2AA3PMPoKwv0
         QlT0RgR9fkKyqusDxjJXYmcDtnNPMxoFn8SOm1UjadYZJ8LJK+B7spPXciwjYnm0Bavs
         YrBcx1cVcdtiOZS4iREl5t0KRiEXlyVfWYjt9Mn+QY1bc2Om/Gnwq5GGM3kmoC5/I3DS
         8xIW58GzBkkXQ41zEWh/+eyZrzomW3hNPrqIPu/Dr6VrAj1j5rbTFryUnD4td0b4fO7+
         EwH9k+OKX7hBwl9/d39uESm3wFhtnMrcQ0UNjIiKKvT6PMr8wd4Ea8vOlat8qbA3OZhJ
         5WMw==
X-Received: by 10.180.198.233 with SMTP id jf9mr24552554wic.66.1445371020185;
        Tue, 20 Oct 2015 12:57:00 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.103.222])
        by smtp.gmail.com with ESMTPSA id wb11sm4224132wic.16.2015.10.20.12.56.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 12:56:59 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH v2 3/9] staging: iio: meter: Remove explicit comparisons
Date: Tue, 20 Oct 2015 22:55:41 +0300
Message-Id: <eb36f2a15c57faf5f4621a75a108c04f6b02cd7d.1445370742.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
 <cover.1445370742.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445370742.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/meter/ade7753.c     | 2 +-
 drivers/staging/iio/meter/ade7754.c     | 2 +-
 drivers/staging/iio/meter/ade7759.c     | 2 +-
 drivers/staging/iio/meter/ade7854-spi.c | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index 3d2e50c..188830d 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -406,7 +406,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
 	ret = kstrtou16(buf, 10, &val);
 	if (ret)
 		return ret;
-	if (val == 0)
+	if (!val)
 		return -EINVAL;
 
 	mutex_lock(&indio_dev->mlock);
diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index 8552c76..664c6e5 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -438,7 +438,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
 	ret = kstrtou16(buf, 10, &val);
 	if (ret)
 		return ret;
-	if (val == 0)
+	if (!val)
 		return -EINVAL;
 
 	mutex_lock(&indio_dev->mlock);
diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
index 23e7392..11c1edc 100644
--- a/drivers/staging/iio/meter/ade7759.c
+++ b/drivers/staging/iio/meter/ade7759.c
@@ -377,7 +377,7 @@ static ssize_t ade7759_write_frequency(struct device *dev,
 	ret = kstrtou16(buf, 10, &val);
 	if (ret)
 		return ret;
-	if (val == 0)
+	if (!val)
 		return -EINVAL;
 
 	mutex_lock(&indio_dev->mlock);
diff --git a/drivers/staging/iio/meter/ade7854-spi.c b/drivers/staging/iio/meter/ade7854-spi.c
index 9b255a5..da77486 100644
--- a/drivers/staging/iio/meter/ade7854-spi.c
+++ b/drivers/staging/iio/meter/ade7854-spi.c
@@ -278,7 +278,7 @@ static int ade7854_spi_probe(struct spi_device *spi)
 	struct iio_dev *indio_dev;
 
 	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
-	if (indio_dev == NULL)
+	if (!indio_dev)
 		return -ENOMEM;
 	st = iio_priv(indio_dev);
 	spi_set_drvdata(spi, indio_dev);
-- 
1.9.1


