X-GM-THRID: 6252531554516467712
X-Received: by 10.129.132.3 with SMTP id u3mr5879559ywf.5.1455780955171;
        Wed, 17 Feb 2016 23:35:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.108.5 with SMTP id hg5ls102644igb.41.gmail; Wed, 17 Feb
 2016 23:35:54 -0800 (PST)
X-Received: by 10.50.142.73 with SMTP id ru9mr1590556igb.8.1455780954828;
        Wed, 17 Feb 2016 23:35:54 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 12si767854pfb.1.2016.02.17.23.35.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 23:35:54 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id w128so1730868pfb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 23:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=qgolhaX36h83k4ZY0HTX7o1IquE9otm0KQS9XNF/mVg=;
        b=YQJmkG0pNOdY5mIpoyGgUw+Ny4ypKKYHEfTR22rDgdsYgw9sFTMSOw3GXaMDdazKl/
         g1quZcXTUI2mIVZyaAWKc2RkznKMV+QbtAQbghmIK4y4B4LiDPa+Sqy6lhlEqfneTEeF
         O6iB84OBQ9UpZ2RblVlfOpBnb/QdXXdghSu8OsqRaVkExGL6G9UIAaUrMEgWYtUurICT
         LhK/Q2mccJ9aH60CS5tjIePm43ZQajaLZm9V3p44zV9PTA99mDfJ9d8eUlIEogQeY8Lw
         AsEu4cxZll3DR1mODoBfd9cTHZy3U4cpNy4K4+jtfeQFwd3lK6OkFXUciUgx/F7GWpge
         GX+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=qgolhaX36h83k4ZY0HTX7o1IquE9otm0KQS9XNF/mVg=;
        b=BUkFxrvhST6IIn0clZhp7cy0aQWhAUTA5FpsV3g7D/idin3xO7gNaBvhuJ6uPYk+zw
         4Xg6IGGT2/NlFLUdqumgO0/jdTWD+ZzT9+K9yRD9cPYdqAVOH03IHRUy5EQfIr2HouS3
         cRgHMEbpzCxs/R2ftza3/Xde8fblRcJnhI+tGr05F6d9N0IaJJjAnEW1HCBGyfb4O+Ae
         aOGYwRTvRzAM0cgot6LTFRBxzCJJAkbS8K1DuVEeCDGc89MPGGx3ashsc46GrEIrVGQ9
         pDPUKpy8HUqVy6HU48s/9ahK82ZvKl1Gfrr5t7qz/XYquzgAyjAc72eTXdtBkclnsgng
         Yp8Q==
X-Gm-Message-State: AG10YOSo40basv1GspUfmuvf21FMdKh2fk2lPErkLQw4+iN0svP+XfOU8JIQziWjhjfdHQ==
X-Received: by 10.98.10.65 with SMTP id s62mr8083023pfi.119.1455780954716;
        Wed, 17 Feb 2016 23:35:54 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.106])
        by smtp.gmail.com with ESMTPSA id bx1sm7601515pab.33.2016.02.17.23.35.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 23:35:54 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 3/5] staging: iio: light: fix block comments according to kernel coding style
Date: Thu, 18 Feb 2016 15:35:38 +0800
Message-Id: <93345450eeadd03a6f22453b8a7c1d9d4355c7fc.1455730714.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455730714.git.eraretuya@gmail.com>
References: <cover.1455730714.git.eraretuya@gmail.com>
In-Reply-To: <cover.1455730714.git.eraretuya@gmail.com>
References: <cover.1455730714.git.eraretuya@gmail.com>

Add the trailing */ accordingly to suit the preferred way of placing
block comments.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/light/isl29018.c | 12 ++++++++----
 drivers/staging/iio/light/tsl2583.c  | 30 ++++++++++++++++++++----------
 2 files changed, 28 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/iio/light/isl29018.c b/drivers/staging/iio/light/isl29018.c
index 6c9d943..03dbfb6 100644
--- a/drivers/staging/iio/light/isl29018.c
+++ b/drivers/staging/iio/light/isl29018.c
@@ -320,8 +320,10 @@ static ssize_t show_prox_infrared_suppression(struct device *dev,
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct isl29018_chip *chip = iio_priv(indio_dev);
 
-	/* return the "proximity scheme" i.e. if the chip does on chip
-	infrared suppression (1 means perform on chip suppression) */
+	/*
+	 * return the "proximity scheme" i.e. if the chip does on chip
+	 * infrared suppression (1 means perform on chip suppression)
+	 */
 	return sprintf(buf, "%d\n", chip->prox_scheme);
 }
 
@@ -340,8 +342,10 @@ static ssize_t store_prox_infrared_suppression(struct device *dev,
 		return -EINVAL;
 	}
 
-	/* get the  "proximity scheme" i.e. if the chip does on chip
-	infrared suppression (1 means perform on chip suppression) */
+	/*
+	 * get the  "proximity scheme" i.e. if the chip does on chip
+	 * infrared suppression (1 means perform on chip suppression)
+	 */
 	mutex_lock(&chip->lock);
 	chip->prox_scheme = val;
 	mutex_unlock(&chip->lock);
diff --git a/drivers/staging/iio/light/tsl2583.c b/drivers/staging/iio/light/tsl2583.c
index 625a11c..5fc4110 100644
--- a/drivers/staging/iio/light/tsl2583.c
+++ b/drivers/staging/iio/light/tsl2583.c
@@ -240,8 +240,10 @@ static int taos_get_lux(struct iio_dev *indio_dev)
 		}
 	}
 
-	/* clear status, really interrupt status (interrupts are off), but
-	 * we use the bit anyway - don't forget 0x80 - this is a command*/
+	/*
+	 * clear status, really interrupt status (interrupts are off), but
+	 * we use the bit anyway - don't forget 0x80 - this is a command
+	 */
 	ret = i2c_smbus_write_byte(chip->client,
 				   (TSL258X_CMD_REG | TSL258X_CMD_SPL_FN |
 				    TSL258X_CMD_ALS_INT_CLR));
@@ -429,8 +431,10 @@ static int taos_chip_on(struct iio_dev *indio_dev)
 	chip->als_saturation = als_count * 922; /* 90% of full scale */
 	chip->als_time_scale = (als_time + 25) / 50;
 
-	/* TSL258x Specific power-on / adc enable sequence
-	 * Power on the device 1st. */
+	/*
+	 * TSL258x Specific power-on / adc enable sequence
+	 * Power on the device 1st.
+	 */
 	utmp = TSL258X_CNTL_PWR_ON;
 	ret = i2c_smbus_write_byte_data(chip->client,
 					TSL258X_CMD_REG | TSL258X_CNTRL, utmp);
@@ -439,8 +443,10 @@ static int taos_chip_on(struct iio_dev *indio_dev)
 		return ret;
 	}
 
-	/* Use the following shadow copy for our delay before enabling ADC.
-	 * Write all the registers. */
+	/*
+	 * Use the following shadow copy for our delay before enabling ADC.
+	 * Write all the registers.
+	 */
 	for (i = 0, uP = chip->taos_config; i < TSL258X_REG_MAX; i++) {
 		ret = i2c_smbus_write_byte_data(chip->client,
 						TSL258X_CMD_REG + i,
@@ -453,8 +459,10 @@ static int taos_chip_on(struct iio_dev *indio_dev)
 	}
 
 	usleep_range(3000, 3500);
-	/* NOW enable the ADC
-	 * initialize the desired mode of operation */
+	/*
+	 * NOW enable the ADC
+	 * initialize the desired mode of operation
+	 */
 	utmp = TSL258X_CNTL_PWR_ON | TSL258X_CNTL_ADC_ENBL;
 	ret = i2c_smbus_write_byte_data(chip->client,
 					TSL258X_CMD_REG | TSL258X_CNTRL,
@@ -704,8 +712,10 @@ static ssize_t taos_luxtable_show(struct device *dev,
 				  taos_device_lux[i].ch0,
 				  taos_device_lux[i].ch1);
 		if (taos_device_lux[i].ratio == 0) {
-			/* We just printed the first "0" entry.
-			 * Now get rid of the extra "," and break. */
+			/*
+			 * We just printed the first "0" entry.
+			 * Now get rid of the extra "," and break.
+			 */
 			offset--;
 			break;
 		}
-- 
1.9.1


