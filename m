X-GM-THRID: 6758181371904
X-Received: by 10.180.182.201 with SMTP id eg9mr2295936wic.3.1425592084273;
        Thu, 05 Mar 2015 13:48:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.130 with SMTP id q2ls433997wiy.13.canary; Thu, 05 Mar
 2015 13:48:03 -0800 (PST)
X-Received: by 10.180.75.232 with SMTP id f8mr5012163wiw.0.1425592083958;
        Thu, 05 Mar 2015 13:48:03 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id by11si1496045wib.1.2015.03.05.13.48.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:48:03 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x233.google.com with SMTP id p10so53532873wes.12
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 13:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=2wq5AcWWgVBXeqHcFfWu1BF/Q9lkJqC9czp/bFZP8TE=;
        b=RlzzCCdQRWh1Nds/DdIMUM548EPAy2eIrlMD2XZjZQGsBx5nqxgU08APNj40ogrJwv
         tX+mCDChjZ8Kin5i2QR6j0S2tK2h3sObpLVIp9YHNHBli4QiPAFL7VfWA9+8oHTTJA5V
         9Vj3puZ+ORczM6UTFUYpHvqqhGHTEHI/MRIYOV7iowEb/fEMlgICehkvIpedSeFLr1vd
         rdjVPMREUepDYC8ioGw+HNBe9jVoQB1DCnCHAN3pDx9S5QP+oroBcujHC7te3/XfGmZs
         caUeEvhVTTGOtc2F2C9PySAL3G2Qed64QkUJHgFYAZr0IyAPDFkm9eAwZlQa06dIz+uu
         Z7Gg==
X-Received: by 10.180.90.176 with SMTP id bx16mr69807585wib.14.1425592083865;
        Thu, 05 Mar 2015 13:48:03 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id bd1sm10698220wib.13.2015.03.05.13.48.02
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:48:03 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 92A8562672; Fri,  6 Mar 2015 00:48:00 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v3 3/7] Staging: iio: Clean dev_err() logging
Date: Fri,  6 Mar 2015 00:46:14 +0300
Message-Id: <1425591974-29679-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err. dev_err includes information about:
 (devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E;
expression  msg;
@@

dev_err(E, msg, __func__);

@script:python b@
e << a.msg;
y;
@@

if(e.find("%s: ") == True):
	m = e.replace("%s: ", "", 1);
	coccinelle.y = m;
elif(e.find("%s ") == True):
	m = e.replace("%s ", "", 1);
	coccinelle.y = m;
elif(e.find("%s:") == True):
	m = e.replace("%s:", "", 1);
	coccinelle.y = m;
else:
	m = e.replace("%s", "",1);
	coccinelle.y = m;

@c@
expression a.E, a.msg;
identifier  b.y;
@@

- dev_err(E, msg, __func__);
+ dev_err(E, y);

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/iio/light/tsl2x7x_core.c | 38 +++++++++++---------------------
 1 file changed, 13 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 4a5dc26..1222a57 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -350,8 +350,7 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
 
 	if (chip->tsl2x7x_chip_status != TSL2X7X_CHIP_WORKING) {
 		/* device is not enabled */
-		dev_err(&chip->client->dev, "%s: device is not enabled\n",
-				__func__);
+		dev_err(&chip->client->dev, "device is not enabled\n");
 		ret = -EBUSY;
 		goto out_unlock;
 	}
@@ -359,14 +358,12 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
 	ret = tsl2x7x_i2c_read(chip->client,
 		(TSL2X7X_CMD_REG | TSL2X7X_STATUS), &buf[0]);
 	if (ret < 0) {
-		dev_err(&chip->client->dev,
-			"%s: Failed to read STATUS Reg\n", __func__);
+		dev_err(&chip->client->dev, "Failed to read STATUS Reg\n");
 		goto out_unlock;
 	}
 	/* is data new & valid */
 	if (!(buf[0] & TSL2X7X_STA_ADC_VALID)) {
-		dev_err(&chip->client->dev,
-			"%s: data not valid yet\n", __func__);
+		dev_err(&chip->client->dev, "data not valid yet\n");
 		ret = chip->als_cur_info.lux; /* return LAST VALUE */
 		goto out_unlock;
 	}
@@ -485,8 +482,7 @@ static int tsl2x7x_get_prox(struct iio_dev *indio_dev)
 	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
 
 	if (mutex_trylock(&chip->prox_mutex) == 0) {
-		dev_err(&chip->client->dev,
-			"%s: Can't get prox mutex\n", __func__);
+		dev_err(&chip->client->dev, "Can't get prox mutex\n");
 		return -EBUSY;
 	}
 
@@ -591,8 +587,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
 	reg_val = i2c_smbus_read_byte(chip->client);
 	if ((reg_val & (TSL2X7X_CNTL_ADC_ENBL | TSL2X7X_CNTL_PWR_ON))
 		!= (TSL2X7X_CNTL_ADC_ENBL | TSL2X7X_CNTL_PWR_ON)) {
-		dev_err(&chip->client->dev,
-			"%s: failed: ADC not enabled\n", __func__);
+		dev_err(&chip->client->dev, "failed: ADC not enabled\n");
 		return -1;
 	}
 
@@ -608,14 +603,13 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
 	reg_val = i2c_smbus_read_byte(chip->client);
 	if ((reg_val & TSL2X7X_STA_ADC_VALID) != TSL2X7X_STA_ADC_VALID) {
 		dev_err(&chip->client->dev,
-			"%s: failed: STATUS - ADC not valid.\n", __func__);
+			"failed: STATUS - ADC not valid.\n");
 		return -ENODATA;
 	}
 
 	lux_val = tsl2x7x_get_lux(indio_dev);
 	if (lux_val < 0) {
-		dev_err(&chip->client->dev,
-		"%s: failed to get lux\n", __func__);
+		dev_err(&chip->client->dev, "failed to get lux\n");
 		return lux_val;
 	}
 
@@ -707,8 +701,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 	ret = i2c_smbus_write_byte_data(chip->client,
 		TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
 	if (ret < 0) {
-		dev_err(&chip->client->dev,
-			"%s: failed on CNTRL reg.\n", __func__);
+		dev_err(&chip->client->dev, "failed on CNTRL reg.\n");
 		return ret;
 	}
 
@@ -735,8 +728,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 	ret = i2c_smbus_write_byte_data(chip->client,
 			TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
 	if (ret < 0) {
-		dev_err(&chip->client->dev,
-			"%s: failed on 2nd CTRL reg.\n", __func__);
+		dev_err(&chip->client->dev, "failed on 2nd CTRL reg.\n");
 		return ret;
 	}
 
@@ -755,8 +747,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 			(TSL2X7X_CMD_REG | TSL2X7X_CNTRL), reg_val);
 		if (ret < 0)
 			dev_err(&chip->client->dev,
-				"%s: failed in tsl2x7x_IOCTL_INT_SET.\n",
-				__func__);
+				"failed in tsl2x7x_IOCTL_INT_SET.\n");
 
 		/* Clear out any initial interrupts  */
 		ret = i2c_smbus_write_byte(chip->client,
@@ -764,8 +755,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 			TSL2X7X_CMD_PROXALS_INT_CLR);
 		if (ret < 0) {
 			dev_err(&chip->client->dev,
-				"%s: Failed to clear Int status\n",
-				__func__);
+				"Failed to clear Int status\n");
 		return ret;
 		}
 	}
@@ -1925,8 +1915,7 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
 						"TSL2X7X_event",
 						indio_dev);
 		if (ret) {
-			dev_err(&clientp->dev,
-				"%s: irq request failed", __func__);
+			dev_err(&clientp->dev, "irq request failed");
 			return ret;
 		}
 	}
@@ -1938,8 +1927,7 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
 
 	ret = iio_device_register(indio_dev);
 	if (ret) {
-		dev_err(&clientp->dev,
-			"%s: iio registration failed\n", __func__);
+		dev_err(&clientp->dev, "iio registration failed\n");
 		return ret;
 	}
 
-- 
1.9.1


