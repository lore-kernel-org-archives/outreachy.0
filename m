X-GM-THRID: 6207482452562149376
X-Received: by 10.194.118.65 with SMTP id kk1mr7088132wjb.5.1445292135424;
        Mon, 19 Oct 2015 15:02:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.230 with SMTP id hf6ls474555wib.32.canary; Mon, 19 Oct
 2015 15:02:15 -0700 (PDT)
X-Received: by 10.180.10.202 with SMTP id k10mr4660913wib.2.1445292135020;
        Mon, 19 Oct 2015 15:02:15 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id hs5si581313wib.1.2015.10.19.15.02.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 15:02:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id q8so19134559wik.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 15:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=PBMSLwKmsdKBscvoE5eNDu1rvIe4AFPD7ivTYBaWj98=;
        b=iBbW6Ha4v2Gf4F6ZIH/dLv7+rbFQkIadDu1R05D+Ex21GO5qyihd6JhY9fWD72um58
         QhELwfeLjZ35AgrdI0zeIcakpfHN1+FT5v88LsIXUnV3GvJs3gpIgYSxEabvnjMIXI92
         LchiDVZyVKW/i+MDjH1a+w4iQMijfbKMyOfMfUY2K34ZZUE2BtpmCuoP+ULw/QqHec1T
         A/0zoYnEwgOz/ZqTdLFxrh3bIBaPvOdpX1Jax6gX3B2rzFl+Jp4nW/U6Z7A/5JrSe+pM
         UolGiBkn+WrgkmRk7BY6lgsQ8SkSIZ5aGrzHz+0EdF3UAkCOwfpbCPuc65uIK4EUy9mE
         n3+Q==
X-Received: by 10.180.39.193 with SMTP id r1mr22247939wik.57.1445292134951;
        Mon, 19 Oct 2015 15:02:14 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.61])
        by smtp.gmail.com with ESMTPSA id bf8sm42577788wjc.22.2015.10.19.15.02.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Oct 2015 15:02:14 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 01/10] staging: iio: adc: Remove explicit comparisons
Date: Tue, 20 Oct 2015 01:01:36 +0300
Message-Id: <4385c0d4ac51d689119f0f37b0024cb915d61ca7.1445291799.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL in order to provide efficiency

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c    |  4 ++--
 drivers/staging/iio/adc/ad7280a.c   |  6 +++---
 drivers/staging/iio/adc/mxs-lradc.c | 10 +++++-----
 drivers/staging/iio/adc/spear_adc.c |  2 +-
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index fe56fb6..beb31d3 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -330,7 +330,7 @@ static ssize_t ad7192_write_frequency(struct device *dev,
 	ret = kstrtoul(buf, 10, &lval);
 	if (ret)
 		return ret;
-	if (lval == 0)
+	if (!lval)
 		return -EINVAL;
 
 	mutex_lock(&indio_dev->mlock);
@@ -625,7 +625,7 @@ static int ad7192_probe(struct spi_device *spi)
 	}
 
 	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
-	if (indio_dev == NULL)
+	if (!indio_dev)
 		return -ENOMEM;
 
 	st = iio_priv(indio_dev);
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index edbfba1..5c731b6 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -365,7 +365,7 @@ static int ad7280_chain_setup(struct ad7280_state *st)
 
 	for (n = 0; n <= AD7280A_MAX_CHAIN; n++) {
 		__ad7280_read32(st, &val);
-		if (val == 0)
+		if (!val)
 			return n - 1;
 
 		if (ad7280_check_crc(st, val))
@@ -686,7 +686,7 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
 	int i, ret;
 
 	channels = kcalloc(st->scan_cnt, sizeof(*channels), GFP_KERNEL);
-	if (channels == NULL)
+	if (!channels)
 		return IRQ_HANDLED;
 
 	ret = ad7280_read_all_channels(st, st->scan_cnt, channels);
@@ -839,7 +839,7 @@ static int ad7280_probe(struct spi_device *spi)
 	struct iio_dev *indio_dev;
 
 	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
-	if (indio_dev == NULL)
+	if (!indio_dev)
 		return -ENOMEM;
 
 	st = iio_priv(indio_dev);
diff --git a/drivers/staging/iio/adc/mxs-lradc.c b/drivers/staging/iio/adc/mxs-lradc.c
index 3f7715c..88bd084 100644
--- a/drivers/staging/iio/adc/mxs-lradc.c
+++ b/drivers/staging/iio/adc/mxs-lradc.c
@@ -566,7 +566,7 @@ static unsigned mxs_lradc_read_ts_pressure(struct mxs_lradc *lradc,
 	m1 = mxs_lradc_read_raw_channel(lradc, ch1);
 	m2 = mxs_lradc_read_raw_channel(lradc, ch2);
 
-	if (m2 == 0) {
+	if (!m2) {
 		dev_warn(lradc->dev, "Cannot calculate pressure\n");
 		return 1 << (LRADC_RESOLUTION - 1);
 	}
@@ -1217,7 +1217,7 @@ static int mxs_lradc_trigger_init(struct iio_dev *iio)
 	struct mxs_lradc *lradc = iio_priv(iio);
 
 	trig = iio_trigger_alloc("%s-dev%i", iio->name, iio->id);
-	if (trig == NULL)
+	if (!trig)
 		return -ENOMEM;
 
 	trig->dev.parent = lradc->dev;
@@ -1608,14 +1608,14 @@ static int mxs_lradc_probe(struct platform_device *pdev)
 		return PTR_ERR(lradc->clk);
 	}
 	ret = clk_prepare_enable(lradc->clk);
-	if (ret != 0) {
+	if (ret) {
 		dev_err(dev, "Failed to enable the delay unit clock\n");
 		return ret;
 	}
 
 	touch_ret = mxs_lradc_probe_touchscreen(lradc, node);
 
-	if (touch_ret == 0)
+	if (!touch_ret)
 		lradc->buffer_vchans = BUFFER_VCHANS_LIMITED;
 	else
 		lradc->buffer_vchans = BUFFER_VCHANS_ALL;
@@ -1692,7 +1692,7 @@ static int mxs_lradc_probe(struct platform_device *pdev)
 		goto err_dev;
 
 	/* Register the touchscreen input device. */
-	if (touch_ret == 0) {
+	if (!touch_ret) {
 		ret = mxs_lradc_ts_register(lradc);
 		if (ret)
 			goto err_ts_register;
diff --git a/drivers/staging/iio/adc/spear_adc.c b/drivers/staging/iio/adc/spear_adc.c
index c538237..d721242 100644
--- a/drivers/staging/iio/adc/spear_adc.c
+++ b/drivers/staging/iio/adc/spear_adc.c
@@ -192,7 +192,7 @@ static int spear_adc_write_raw(struct iio_dev *indio_dev,
 
 	if ((val < SPEAR_ADC_CLK_MIN) ||
 		(val > SPEAR_ADC_CLK_MAX) ||
-		(val2 != 0)) {
+		val2) {
 		ret = -EINVAL;
 		goto out;
 	}
-- 
1.9.1


