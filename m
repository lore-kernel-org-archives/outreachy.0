X-GM-THRID: 6470342242879930368
X-Received: by 10.36.69.25 with SMTP id y25mr310426ita.46.1506493949162;
        Tue, 26 Sep 2017 23:32:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.188.207 with SMTP id m198ls261222vkf.21.gmail; Tue, 26 Sep
 2017 23:32:28 -0700 (PDT)
X-Received: by 10.31.83.193 with SMTP id h184mr161071vkb.23.1506493948233;
        Tue, 26 Sep 2017 23:32:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506493948; cv=none;
        d=google.com; s=arc-20160816;
        b=lQGpIJlKGQYH7aKA3UoY5gIxrlKUcyId5SDd5fc9DOBKfphdmAsID9J32EZ9e9zdz2
         qYAvnKKQ9DF1+UIiskwW7hTE9+7SRChpX0QzDVGW1YlG/EmD/sJBR/ywPmxrI/rGoVcL
         LvwYOZFUNIuJ3NqTtdVhoEMq4mv0IWHVlYFfoJtl3Yq9pTHA7RpqjyoHTQ0ikA/y8ZDm
         F+Ig9yueE2WGAX7OjoxFyhRjhMXIIm/r8mDrAsS5sxr/KeSUaxkJ/r9Hs4OgsfWi6QfG
         CxXKh6eNPjFnPz/7ejIvoyyhbY0YskGl5WzGO9wvllpfwme07vM4g82KLL+OaJlvCSOU
         GPOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=/OekZeAHhXmlYVkl5wskY6tdPEW+gmonECBDGfmQCxo=;
        b=eRDA8inkd+0yHrJGYqhtFkXY0ZskqKj4Zb3lDzHccZMzfpxV5lACvzTxDOmk0jNlBV
         eu8W7N8ljd4FfOOQQfG/ulzP0syAramdyOOWay3zwdswa0bDr4gxVdM3LbFNS2xxZTJf
         aX1Yta/QI7YRE0KE63QD1kPT9F1Ngp+IPzfdP6dqGC9e1NFANaeiDZzpn1AT8hORmPce
         4iP/Hj+ZcwDI6TioJB4zfXKpCGiA1k78uEDPHpliuMIACzKKgxcNBWWr0S4J/unovfKG
         JU6MM4MRNwRIPqYP0vAGPo11A2oTCj4ah4BG+R4lChO87DceQMLnorpxjWfaZS6aogwn
         fcZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UkdOdHDd;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id d207si795786pfd.16.2017.09.26.23.32.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 23:32:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UkdOdHDd;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id m30so8159137pgn.5
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 23:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/OekZeAHhXmlYVkl5wskY6tdPEW+gmonECBDGfmQCxo=;
        b=UkdOdHDdZViVHRPbX1Sxy1SStj/cwNGRa3KIsQtNVoRIPrptaLfgbg+RRbs0PjHkkF
         TESgN3yUQKHRqP24Rr/fdGpwOaKHRhX2R+hCxC67JWUB2fSUnThjLXtO5ty3fTpUY3X3
         sifZ+n97ONvVHBqKCEB7MYQT87H1GnN5eZiPyeJ9VU5iv1nJdUFc48zUZZQBwYKJvIWR
         o0LI7zF7LAwWETmnnJoEPd8802ZjPkP5eIJYdSWDDcrR2T2f/wEyKmkLab110SNbXrVd
         fccY3rLvcgKp9YSKOVqUyxN6ZhBG+Od/0JTd2i71zPcvEhvZHSuE+BJwL2G/DE0gVyQI
         VfNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/OekZeAHhXmlYVkl5wskY6tdPEW+gmonECBDGfmQCxo=;
        b=C88UZBqDlFWeTrDFv+0PN5AQloNraeRXPG/nX9IBEX4bamZ+Id8lQJ+H+QdKcRCvgO
         BcWj4xSK4sFDYmaygXRvbZMH/MFnVnTqbyOJB8UfPkxlLfn9JtY4qGDIbE+1f7sDl7Rf
         jd4h9d46zVMoeLEg6CpUaVLDgpAyikSoSsZ7CM7qI7i0/8uYofvkN36x7LxGz/U1UcJR
         fIkbsfOd/2fBQv3iNMqh3uYQVYqIvS3v2Oyidcw+tC8dJ6cWzus+Yh6k7Uz/v01U50lV
         Su85qOZ+89TT57QlGxZbUNnIVlV/rJlUUUdOcwujtAUUxF7kC/QsrgLfz/oV6o27BwpG
         2Zmw==
X-Gm-Message-State: AHPjjUgDCknfQ3YpJ0QogL4yes4dKO5WgnCQ9oXR9DGhL5I70a452rbS
	tolqx3IXhV3JPuOTVT+mm+o=
X-Google-Smtp-Source: AOwi7QAoO1hAWjYDMVUglCgK4XQQqUNUMOOJGGVYLb1G6YBy3/QyMag3ffxDwvCPGdRh7MrkxyEG7g==
X-Received: by 10.98.10.146 with SMTP id 18mr368870pfk.346.1506493947786;
        Tue, 26 Sep 2017 23:32:27 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([47.31.2.166])
        by smtp.gmail.com with ESMTPSA id l12sm23133301pgp.74.2017.09.26.23.32.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 23:32:27 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	hennerich@blackfin.uclinux.org,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v4] staging: iio: adc: ad7192: use driver private lock to protect hardware state changes
Date: Wed, 27 Sep 2017 12:01:59 +0530
Message-Id: <1506493919-3189-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a driver private lock.

Also, as there are state changes in the ad7192_ write_raw function, a lock
is added to prevent the concurrent state changes.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
changes in v4:
	- added comment for mutex
	- improved commit message
 drivers/staging/iio/adc/ad7192.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index d11c6de..c1343ec 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -162,6 +162,7 @@ struct ad7192_state {
 	u32				scale_avail[8][2];
 	u8				gpocon;
 	u8				devid;
+	struct mutex			lock;	/* protect sensor state */
 
 	struct ad_sigma_delta		sd;
 };
@@ -463,10 +464,10 @@ static int ad7192_read_raw(struct iio_dev *indio_dev,
 	case IIO_CHAN_INFO_SCALE:
 		switch (chan->type) {
 		case IIO_VOLTAGE:
-			mutex_lock(&indio_dev->mlock);
+			mutex_lock(&st->lock);
 			*val = st->scale_avail[AD7192_CONF_GAIN(st->conf)][0];
 			*val2 = st->scale_avail[AD7192_CONF_GAIN(st->conf)][1];
-			mutex_unlock(&indio_dev->mlock);
+			mutex_unlock(&st->lock);
 			return IIO_VAL_INT_PLUS_NANO;
 		case IIO_TEMP:
 			*val = 0;
@@ -510,6 +511,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 	switch (mask) {
 	case IIO_CHAN_INFO_SCALE:
 		ret = -EINVAL;
+		mutex_lock(&st->lock);
 		for (i = 0; i < ARRAY_SIZE(st->scale_avail); i++)
 			if (val2 == st->scale_avail[i][1]) {
 				ret = 0;
@@ -523,6 +525,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 				ad7192_calibrate_all(st);
 				break;
 			}
+		mutex_unlock(&st->lock);
 		break;
 	case IIO_CHAN_INFO_SAMP_FREQ:
 		if (!val) {
@@ -634,6 +637,8 @@ static int ad7192_probe(struct spi_device *spi)
 
 	st = iio_priv(indio_dev);
 
+	mutex_init(&st->lock);
+
 	st->avdd = devm_regulator_get(&spi->dev, "avdd");
 	if (IS_ERR(st->avdd))
 		return PTR_ERR(st->avdd);
-- 
2.7.4


