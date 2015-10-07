X-GM-THRID: 6202672545102036992
X-Received: by 10.112.40.17 with SMTP id t17mr527779lbk.10.1444241642066;
        Wed, 07 Oct 2015 11:14:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.141.74 with SMTP id p71ls99576lfd.77.gmail; Wed, 07 Oct
 2015 11:14:01 -0700 (PDT)
X-Received: by 10.112.138.170 with SMTP id qr10mr546049lbb.4.1444241641558;
        Wed, 07 Oct 2015 11:14:01 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id w4si173161wiz.0.2015.10.07.11.14.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 11:14:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id fx3so40375500wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 11:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=K4DUcr6P8BVZB8xmDxEJliaCBObZrDTJTIXutwSiI5Y=;
        b=y7E0IqPVwyVpQ6SFxNhF6iCXH3311qwdOKSANS7j2y2rPG155UvSLM35ASbwf646Uu
         sbGsmIClPPRm6unzdBG6E/DKG0k7vGm+scYKxI9WkJfBCIhs+j1Lqq/YSPHDC+e7dAws
         1RNmq9hX8lR0R5Occ1kP8kXQMHNeogadLCNT0y1EzYKpHkILdzDt0of81dM9CbjfGH63
         DD2rBhTCQAm4vewWZxWmaBvsRhSAgs7CjSXU33PugB8fOQGjS9pqDnMhshGOzuz1NrDm
         VT9+C8NpjafpnnXVJ7onAvH4uJ4TmrbGmpI7rrxlcGSyRu8AF8VolxaEyThyKjzBCt67
         XEPA==
X-Received: by 10.180.74.47 with SMTP id q15mr3494242wiv.73.1444241641460;
        Wed, 07 Oct 2015 11:14:01 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id jf3sm3629403wic.8.2015.10.07.11.14.00
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 11:14:01 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 3/9] staging: iio: adc: remove explicit comparison to NULL
Date: Wed,  7 Oct 2015 21:13:41 +0300
Message-Id: <586f766c9f7f80287ef3f8b79ad1e9bddbfbadc0.1444241200.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444241200.git.ciorneiioana@gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444241200.git.ciorneiioana@gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>

Use !condition instead off condition == NULL when comparing with NULL

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing

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


