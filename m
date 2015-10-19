X-GM-THRID: 6207482452562149376
X-Received: by 10.180.221.227 with SMTP id qh3mr51762wic.2.1445292139150;
        Mon, 19 Oct 2015 15:02:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.184.133 with SMTP id eu5ls10881wic.53.gmail; Mon, 19 Oct
 2015 15:02:18 -0700 (PDT)
X-Received: by 10.180.160.194 with SMTP id xm2mr2342147wib.6.1445292138817;
        Mon, 19 Oct 2015 15:02:18 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id hs5si581313wib.1.2015.10.19.15.02.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 15:02:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id q8so19134559wik.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 15:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+jZhLWnMB7i9J9ogllqzSo7LLxbK5I7QPW4A6rA20qY=;
        b=B/TOL31W+vt4ft+sFzuxg7GVdiUIeo5+5hqlohTC8nR2eCv3uJuB0YGFPUJghjjD2o
         7lPVX4fJDxYR4ncf21AQUwF6UX6lt9h1QifwAfoLOz0QZYX65kSh7DlZwJkv52X9BKEq
         NjJjupEcHlan6+E6vgP6Audik4HJGyVy1grjI/NMrVGF667CIJ1V+n2uqF9kC1HcynOt
         WqoCkDUHddHoLl8mgNQUELVYtBCOjQ9CXgFjOzB78yWsIh3Rs5PvMEHfDTmDnWWKcVN9
         SFMhTPmBriUJTvilFehLMUogRJUaHJMjydpaH1/eBL87Xll6IBnmWlcLiPwbYL+beNIM
         lJLw==
X-Received: by 10.194.2.243 with SMTP id 19mr34636306wjx.140.1445292138726;
        Mon, 19 Oct 2015 15:02:18 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.61])
        by smtp.gmail.com with ESMTPSA id bf8sm42577788wjc.22.2015.10.19.15.02.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Oct 2015 15:02:18 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 04/10] staging: iio: meter: Remove explicit comparisons
Date: Tue, 20 Oct 2015 01:01:39 +0300
Message-Id: <99dfd27fc89f368d48fc2ceccb144b5611a9568d.1445291799.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL in order to provide efficiency

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


