X-GM-THRID: 6261077782348955648
X-Received: by 10.31.154.65 with SMTP id c62mr5850554vke.8.1457770777846;
        Sat, 12 Mar 2016 00:19:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.210 with SMTP id p76ls3033522qgp.17.gmail; Sat, 12 Mar
 2016 00:19:37 -0800 (PST)
X-Received: by 10.140.221.134 with SMTP id r128mr10365257qhb.0.1457770777385;
        Sat, 12 Mar 2016 00:19:37 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 12si1823494pfb.1.2016.03.12.00.19.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 00:19:37 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x3so547208pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 00:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=LFzuktxHowLwq8c2XwHogK5mQpe+geN5U1LfKIt2iKY=;
        b=uB/wnTnVdD97ZbQCa/PIknoEc6NKN6/09moRG6zU6JrHxT0sTh718Y3xU9HU68KfoL
         NAWvCiiYrLesa1VDzCXlCHG5mAndSzGpJ31Ebt2cnh+NetFuXXmlmeY6w3vDgEmb2aVk
         SR7SStIDJKiAo9u4VgA4G3SdB3QR+0b79YjYlGQXmNJXBlH2c+PlA9eZyqfNH6KSBH/1
         64xd2qo8W8Apc5/KItYcfqPUmk5Tn/AP+mNxjyVhWY3hyi8x04E2+YBhiObfpqB5EsX8
         7/suiHKMMxeqith7M+jbq+ZaHThLVZ4Wam3Jjyddu41wmX0fvBO6TWm34alxijIOU/Ub
         4eIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=LFzuktxHowLwq8c2XwHogK5mQpe+geN5U1LfKIt2iKY=;
        b=UshzawCIWOvcYeFSJr8te7+++L4w/HPfk88CRGf+UfcHXv9FHH7bhN8wletidbSKfM
         l4WDr9l6kViATr+WDBQBqAxLH1QSwO+PkK5ko2RZrIOfi6xNgajon8P6ibrcKC6q0bj4
         47uF/IO1yGU5dByxBxomA8V4njj2hG7YAcsJMxqMIFvNnBOcQNLrqHYa6gjPu7NWvTSI
         Twb9AwLcMvFRnN30Nu+itFnpR/YVluIf9TbRw4XdIoaKP3rPjZEWy+f0suU0UaUJlHIN
         SL0F4/5Du5W1PY0cXtlc1hskMMLosdIFQwJ72hdyhBJmTxUefGsP/IAe0NqlSeRUkTCK
         G7Ig==
X-Gm-Message-State: AD7BkJKMZUpoTBB2RRs7tET1tJi+KsIA0mQaObbx4nRL9Rt/LlFArp1li3zhw7H3qHN05A==
X-Received: by 10.98.79.203 with SMTP id f72mr14349389pfj.102.1457770777207;
        Sat, 12 Mar 2016 00:19:37 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.81])
        by smtp.gmail.com with ESMTPSA id fk9sm17976750pad.9.2016.03.12.00.19.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 00:19:36 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 2/5] staging: iio: tsl2x7x_core: use preferred comment style
Date: Sat, 12 Mar 2016 16:19:21 +0800
Message-Id: <975b2a305fb7200d6f16bd7a0e3854739e0f1e72.1457769810.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1457769810.git.eraretuya@gmail.com>
References: <cover.1457769810.git.eraretuya@gmail.com>
In-Reply-To: <cover.1457769810.git.eraretuya@gmail.com>
References: <cover.1457769810.git.eraretuya@gmail.com>

Adjust block comments by adding the necessary trailing */ on a separate
line. Checkpatch found this issue.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/light/tsl2x7x_core.c | 38 +++++++++++++++++++++-----------
 1 file changed, 25 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 4948791..de069be 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -187,9 +187,11 @@ struct tsl2X7X_chip {
 	const struct tsl2x7x_chip_info	*chip_info;
 	const struct iio_info *info;
 	s64 event_timestamp;
-	/* This structure is intentionally large to accommodate
-	 * updates via sysfs. */
-	/* Sized to 9 = max 8 segments + 1 termination segment */
+	/*
+	 * This structure is intentionally large to accommodate
+	 * updates via sysfs.
+	 * Sized to 9 = max 8 segments + 1 termination segment
+	 */
 	struct tsl2x7x_lux tsl2x7x_device_lux[TSL2X7X_MAX_LUX_TABLE_SIZE];
 };
 
@@ -695,8 +697,10 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 	chip->als_saturation = als_count * 922; /* 90% of full scale */
 	chip->als_time_scale = (als_time + 25) / 50;
 
-	/* TSL2X7X Specific power-on / adc enable sequence
-	 * Power on the device 1st. */
+	/*
+	 * TSL2X7X Specific power-on / adc enable sequence
+	 * Power on the device 1st.
+	 */
 	utmp = TSL2X7X_CNTL_PWR_ON;
 	ret = i2c_smbus_write_byte_data(chip->client,
 					TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
@@ -706,8 +710,10 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 		return ret;
 	}
 
-	/* Use the following shadow copy for our delay before enabling ADC.
-	 * Write all the registers. */
+	/*
+	 * Use the following shadow copy for our delay before enabling ADC.
+	 * Write all the registers.
+	 */
 	for (i = 0, dev_reg = chip->tsl2x7x_config;
 			i < TSL2X7X_MAX_CONFIG_REG; i++) {
 		ret = i2c_smbus_write_byte_data(chip->client,
@@ -722,8 +728,10 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 
 	mdelay(3);	/* Power-on settling time */
 
-	/* NOW enable the ADC
-	 * initialize the desired mode of operation */
+	/*
+	 * NOW enable the ADC
+	 * initialize the desired mode of operation
+	 */
 	utmp = TSL2X7X_CNTL_PWR_ON |
 			TSL2X7X_CNTL_ADC_ENBL |
 			TSL2X7X_CNTL_PROX_DET_ENBL;
@@ -1164,8 +1172,10 @@ static ssize_t tsl2x7x_luxtable_show(struct device *dev,
 			chip->tsl2x7x_device_lux[i].ch0,
 			chip->tsl2x7x_device_lux[i].ch1);
 		if (chip->tsl2x7x_device_lux[i].ratio == 0) {
-			/* We just printed the first "0" entry.
-			 * Now get rid of the extra "," and break. */
+			/*
+			 * We just printed the first "0" entry.
+			 * Now get rid of the extra "," and break.
+			 */
 			offset--;
 			break;
 		}
@@ -1912,8 +1922,10 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
 		return ret;
 	}
 
-	/* ALS and PROX functions can be invoked via user space poll
-	 * or H/W interrupt. If busy return last sample. */
+	/*
+	 * ALS and PROX functions can be invoked via user space poll
+	 * or H/W interrupt. If busy return last sample.
+	 */
 	mutex_init(&chip->als_mutex);
 	mutex_init(&chip->prox_mutex);
 
-- 
1.9.1


