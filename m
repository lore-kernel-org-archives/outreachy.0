X-GM-THRID: 6252275562391273472
X-Received: by 10.140.136.135 with SMTP id 129mr1826921qhi.10.1455721350252;
        Wed, 17 Feb 2016 07:02:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.205 with SMTP id p74ls2062506ioi.11.gmail; Wed, 17 Feb
 2016 07:02:29 -0800 (PST)
X-Received: by 10.50.176.231 with SMTP id cl7mr3335367igc.0.1455721349922;
        Wed, 17 Feb 2016 07:02:29 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id ff2si236775pad.2.2016.02.17.07.02.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 07:02:29 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id q63so12826070pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 07:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=gbQZkSxP76Z1907DlP0KR7p91einb37M0EvaC+5V1go=;
        b=NRSxFU+/7V28cbX17M/3Jv8dZAvM2WZL1xR4DCh3tdXwbvzBsP6juF2xwE1J4/6v87
         PckB/T2uMbrY/c9YLpvd6UMNl3B+l+zCAFwUhs/4SoPZG6psmv44GgkzmKywzvFopIOW
         yZEuyl2WkX91mkWvpp+EBtFvN+mZTNHw+fEBgRphLKPfnWMqsm09jMTITV4wOcp1EEEu
         YPEru/CyvgL8fI0yHxW65DTwFnHGq/6yTF7K+ySXiGi7/CjTHDIUSAnYoMzBTgyqkElx
         9SJfQswXYYUqigOSAFhiCvr6gfFN85+H3xMk6ZdZOk8VFhtOOSCbLagJuPcVJY22l86W
         A/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=gbQZkSxP76Z1907DlP0KR7p91einb37M0EvaC+5V1go=;
        b=U6/XqaKK1XxCxwXLMbXR+iuNAz2rjHCBvULCpvuBtv9h7Q/sAfzGlxX5fyZ9y/xk6H
         yq1zvhkgaoQW5gy7TyTN2qDh1EddIhKekMlBoyrFbcQSi83bXuOKGiMLOwAtNbXAQbSO
         hZnTm7yd1nSnrrSisNyEDRR29dgHStdagf9J33ckf1TSxHfnB6B1QpPdLSMQA4K9n3cD
         mFGLS2Y/0uvQzDO7NDsGK2Y5x2HgnIhtb+Ua79gXLqLgLk6nph1qydWU/ShQ38i5R7no
         qQ0rfBkgbOsTYH0fYzCpP84grdUZBHp6MgL3s6nIFhZBgE3x6/L1cvg6TedqEBeEMUSo
         h7gg==
X-Gm-Message-State: AG10YORoTN8Jl2Pp4ifxZ/uECyrsPOvDnFD504nUHhB68hEaSY00n5W3KlSiDNL1pUEpXQ==
X-Received: by 10.98.74.202 with SMTP id c71mr2746622pfj.25.1455721349815;
        Wed, 17 Feb 2016 07:02:29 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.168])
        by smtp.gmail.com with ESMTPSA id w89sm3473976pfi.13.2016.02.17.07.02.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 07:02:29 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 2/5] staging: iio: tsl2x7x_core: use preferred comment style
Date: Wed, 17 Feb 2016 23:02:14 +0800
Message-Id: <1455721337-31883-3-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455721337-31883-1-git-send-email-eraretuya@gmail.com>
References: <1455721337-31883-1-git-send-email-eraretuya@gmail.com>

Adjust block comments by adding the necessary trailing */ on a separate
line. Checkpatch found this issue.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/light/tsl2x7x_core.c | 38 +++++++++++++++++++++-----------
 1 file changed, 25 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 3cb9891..9ab002f 100644
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


