X-GM-THRID: 6253387026836488192
X-Received: by 10.66.146.231 with SMTP id tf7mr17532666pab.6.1455980126387;
        Sat, 20 Feb 2016 06:55:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.155 with SMTP id u27ls416627iou.35.gmail; Sat, 20 Feb
 2016 06:55:25 -0800 (PST)
X-Received: by 10.50.13.69 with SMTP id f5mr2404514igc.7.1455980125922;
        Sat, 20 Feb 2016 06:55:25 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id ui7si2244113pab.0.2016.02.20.06.55.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 06:55:25 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id ho8so68008765pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 06:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=OiKUhd+oreXmdHTMulm+xheUNb99SYJmeVF4O4xG/xA=;
        b=smYj1cumcCyhNi1QRzUIFZN/sROKIJ4Rummc/VfZRvXJKLKanbXld7DoQLt1HnnmTQ
         cRqWtGaWkl+/4PuG3MZoU6JhNFFqPDw3YvtRSihsHwRPBXZT7LpTrNNIGXGtJGUnithN
         ukaYBoaDnmWklVnL+NGt4wyLs5MU7GW8EcOsxCJtPZusOc6NuS7+WQRfC8rUS9xfglYL
         KGpmD5tnvyJVOMOcMzQUvVMRRkq9MGo82mmKbPlzqVEweeTuzybCaDJPeQ48MD9y9V1o
         ku/1L8+jVrqHd4z3LyEv0EuQ2fjWbQXPznir7P7e6OhWlFYpI3taXgeQJdJY2fUl50VM
         NMGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OiKUhd+oreXmdHTMulm+xheUNb99SYJmeVF4O4xG/xA=;
        b=meZ9vLh0CW7XedDUAvIxsc+QlNP+aDYM9OsetMrIfXqumPacZ2Wdzk3Sy2UnFkI6hF
         78EmQnOLmAYQUvjWzL8B8/A0Sz73CNm53yLdJTsuLp2vQVG/nvvV595H90mM9j0KGv8E
         rPX6lnFggff/xvTdTZOwQq8ua6PK/IiixK7akr/Wk5ZBLHtLhtchsRwdO4y4OLgl2T9Q
         MnvwE50DSgD1YDzB1+lyWV0cSB10J13hC5Ubm8PDXMhiOPE09m4CzLJ45MzEJIm2mt/E
         sDwGSieWF96ZIui18epbaMFoG10ad04pfGHid58msxETZo/nanI1wOi0xc+L2ROD8fgq
         dTnA==
X-Gm-Message-State: AG10YORVOIOCzSabSAot3YAliW/DwjTZ00SMs46/mnYM3lP+vbfzuhOU/GVHwJxOI11yeA==
X-Received: by 10.66.222.129 with SMTP id qm1mr25581144pac.22.1455980125779;
        Sat, 20 Feb 2016 06:55:25 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.184.176])
        by smtp.gmail.com with ESMTPSA id z67sm25106162pfa.71.2016.02.20.06.55.19
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 06:55:25 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 20 Feb 2016 20:25:12 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: iio: light: Remove __func__ from dev_err
Date: Sat, 20 Feb 2016 20:25:11 +0530
Message-Id: <1455980111-15231-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes __func__ argument from dev_err as dev_err includes
the function name in the log printout, so there is no need to
include it manually.
Found using coccinelle:

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
        m = e.replace("%s: ", "");
        coccinelle.y = m;
elif(e.find("%s ") == True):
        m = e.replace("%s ", "");
        coccinelle.y = m;
else:
        m = e.replace("%s", "");

@c@
expression a.E, a.msg;
identifier  b.y;
@@

- dev_err(E, msg, __func__);
+ dev_err(E, y);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/iio/light/tsl2x7x_core.c | 38 +++++++++++---------------------
 1 file changed, 13 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 2a62718..348c9c2 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -348,8 +348,7 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
 
 	if (chip->tsl2x7x_chip_status != TSL2X7X_CHIP_WORKING) {
 		/* device is not enabled */
-		dev_err(&chip->client->dev, "%s: device is not enabled\n",
-				__func__);
+		dev_err(&chip->client->dev, "device is not enabled\n");
 		ret = -EBUSY;
 		goto out_unlock;
 	}
@@ -357,14 +356,12 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
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
@@ -482,8 +479,7 @@ static int tsl2x7x_get_prox(struct iio_dev *indio_dev)
 	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
 
 	if (mutex_trylock(&chip->prox_mutex) == 0) {
-		dev_err(&chip->client->dev,
-			"%s: Can't get prox mutex\n", __func__);
+		dev_err(&chip->client->dev, "Can't get prox mutex\n");
 		return -EBUSY;
 	}
 
@@ -586,8 +582,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
 	reg_val = i2c_smbus_read_byte(chip->client);
 	if ((reg_val & (TSL2X7X_CNTL_ADC_ENBL | TSL2X7X_CNTL_PWR_ON))
 		!= (TSL2X7X_CNTL_ADC_ENBL | TSL2X7X_CNTL_PWR_ON)) {
-		dev_err(&chip->client->dev,
-			"%s: failed: ADC not enabled\n", __func__);
+		dev_err(&chip->client->dev, "failed: ADC not enabled\n");
 		return -1;
 	}
 
@@ -602,14 +597,13 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
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
 
@@ -701,8 +695,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 	ret = i2c_smbus_write_byte_data(chip->client,
 		TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
 	if (ret < 0) {
-		dev_err(&chip->client->dev,
-			"%s: failed on CNTRL reg.\n", __func__);
+		dev_err(&chip->client->dev, "failed on CNTRL reg.\n");
 		return ret;
 	}
 
@@ -729,8 +722,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 	ret = i2c_smbus_write_byte_data(chip->client,
 			TSL2X7X_CMD_REG | TSL2X7X_CNTRL, utmp);
 	if (ret < 0) {
-		dev_err(&chip->client->dev,
-			"%s: failed on 2nd CTRL reg.\n", __func__);
+		dev_err(&chip->client->dev, "failed on 2nd CTRL reg.\n");
 		return ret;
 	}
 
@@ -749,8 +741,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 			(TSL2X7X_CMD_REG | TSL2X7X_CNTRL), reg_val);
 		if (ret < 0)
 			dev_err(&chip->client->dev,
-				"%s: failed in tsl2x7x_IOCTL_INT_SET.\n",
-				__func__);
+				"failed in tsl2x7x_IOCTL_INT_SET.\n");
 
 		/* Clear out any initial interrupts  */
 		ret = i2c_smbus_write_byte(chip->client,
@@ -758,8 +749,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 			TSL2X7X_CMD_PROXALS_INT_CLR);
 		if (ret < 0) {
 			dev_err(&chip->client->dev,
-				"%s: Failed to clear Int status\n",
-				__func__);
+				"Failed to clear Int status\n");
 		return ret;
 		}
 	}
@@ -1919,8 +1909,7 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
 						"TSL2X7X_event",
 						indio_dev);
 		if (ret) {
-			dev_err(&clientp->dev,
-				"%s: irq request failed", __func__);
+			dev_err(&clientp->dev, "irq request failed");
 			return ret;
 		}
 	}
@@ -1932,8 +1921,7 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
 
 	ret = iio_device_register(indio_dev);
 	if (ret) {
-		dev_err(&clientp->dev,
-			"%s: iio registration failed\n", __func__);
+		dev_err(&clientp->dev, "iio registration failed\n");
 		return ret;
 	}
 
-- 
1.9.1


