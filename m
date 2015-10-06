X-GM-THRID: 6202672545102036992
X-Received: by 10.195.12.234 with SMTP id et10mr6961104wjd.2.1444172247728;
        Tue, 06 Oct 2015 15:57:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.87.8 with SMTP id l8ls651999lfb.92.gmail; Tue, 06 Oct 2015
 15:57:24 -0700 (PDT)
X-Received: by 10.112.138.170 with SMTP id qr10mr7072507lbb.4.1444172244795;
        Tue, 06 Oct 2015 15:57:24 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id ch7si671844wib.2.2015.10.06.15.57.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 15:57:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id ge5so188053027wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 15:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=T38soHaPJTTlKnTyKF/5Zezuw0UsWMU7ZSheZ/6DE5M=;
        b=ApQV/vZ2HsLwp06ZP149JhmWVwMbaXjeOoNq3LeFhRdJByDQTOTMW6R36ko9vAyxPw
         LuO9TgPQMdZtmC6DTbkfrJiPr1gewr6fpMz7o5Mt31UQrMShRvk2tF6oxJRNBFKwNsPa
         KUxv4LSHLENs/tX4tzvJAifZ4PPaH4G+AE4u1ESLr6f9ROPWW2BkgsYMtos4aGer40E9
         0TBSGAZBsnksQbzr9UCw3/FxPqQpwdlC3gaeb3FsC0gEF2hJZwT5K1HeaaVk8+8ai6d4
         n/T6bcZ1j8tz6y8G/WvzzltuZc/L0L6lUqmm5VJZCOF31kIXuV1Zd7ebEEYuOZDM9iqn
         9rpA==
X-Received: by 10.194.115.199 with SMTP id jq7mr43080901wjb.82.1444172244701;
        Tue, 06 Oct 2015 15:57:24 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id cv4sm35261421wjc.17.2015.10.06.15.57.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 15:57:24 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 03/10] staging: iio: adc: remove explicit comparison to NULL
Date: Wed,  7 Oct 2015 01:57:03 +0300
Message-Id: <586f766c9f7f80287ef3f8b79ad1e9bddbfbadc0.1444172065.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444172065.git.ciorneiioana@gmail.com>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444172065.git.ciorneiioana@gmail.com>
References: <cover.1444172065.git.ciorneiioana@gmail.com>

Use !condition instead off condition == NULL when comparing with NULL

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c    | 2 +-
 drivers/staging/iio/adc/ad7280a.c   | 8 ++++----
 drivers/staging/iio/adc/mxs-lradc.c | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 21d83c5..22b4bf5 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -625,7 +625,7 @@ static int ad7192_probe(struct spi_device *spi)
 	}
 
 	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
-	if (indio_dev == NULL)
+	if (!indio_dev)
 		return -ENOMEM;
 
 	st = iio_priv(indio_dev);
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 26c9c12..9fb664c 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -488,7 +488,7 @@ static int ad7280_channel_init(struct ad7280_state *st)
 
 	st->channels = kcalloc((st->slave_num + 1) * 12 + 2,
 			       sizeof(*st->channels), GFP_KERNEL);
-	if (st->channels == NULL)
+	if (!st->channels)
 		return -ENOMEM;
 
 	for (dev = 0, cnt = 0; dev <= st->slave_num; dev++)
@@ -549,7 +549,7 @@ static int ad7280_attr_init(struct ad7280_state *st)
 	st->iio_attr = kcalloc(2, sizeof(*st->iio_attr) *
 			       (st->slave_num + 1) * AD7280A_CELLS_PER_DEV,
 			       GFP_KERNEL);
-	if (st->iio_attr == NULL)
+	if (!st->iio_attr)
 		return -ENOMEM;
 
 	for (dev = 0, cnt = 0; dev <= st->slave_num; dev++)
@@ -685,7 +685,7 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
 	int i, ret;
 
 	channels = kcalloc(st->scan_cnt, sizeof(*channels), GFP_KERNEL);
-	if (channels == NULL)
+	if (!channels)
 		return IRQ_HANDLED;
 
 	ret = ad7280_read_all_channels(st, st->scan_cnt, channels);
@@ -838,7 +838,7 @@ static int ad7280_probe(struct spi_device *spi)
 	struct iio_dev *indio_dev;
 
 	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
-	if (indio_dev == NULL)
+	if (!indio_dev)
 		return -ENOMEM;
 
 	st = iio_priv(indio_dev);
diff --git a/drivers/staging/iio/adc/mxs-lradc.c b/drivers/staging/iio/adc/mxs-lradc.c
index 208f928..cde7b3a 100644
--- a/drivers/staging/iio/adc/mxs-lradc.c
+++ b/drivers/staging/iio/adc/mxs-lradc.c
@@ -1217,7 +1217,7 @@ static int mxs_lradc_trigger_init(struct iio_dev *iio)
 	struct mxs_lradc *lradc = iio_priv(iio);
 
 	trig = iio_trigger_alloc("%s-dev%i", iio->name, iio->id);
-	if (trig == NULL)
+	if (!trig)
 		return -ENOMEM;
 
 	trig->dev.parent = lradc->dev;
-- 
2.1.4


