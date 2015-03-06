X-GM-THRID: 6950918029312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4f1aeb5db514fe54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.45.7 with SMTP id i7mr2540342lam.9.1425668681473;
        Fri, 06 Mar 2015 11:04:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.135 with SMTP id t7ls102149lag.45.gmail; Fri, 06 Mar
 2015 11:04:41 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr2611013lbb.13.1425668680988;
        Fri, 06 Mar 2015 11:04:40 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22a.google.com (mail-we0-x22a.google.com. [2a00:1450:400c:c03::22a])
        by gmr-mx.google.com with ESMTPS id bg8si204446wib.3.2015.03.06.11.04.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 11:04:40 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) client-ip=2a00:1450:400c:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22a.google.com with SMTP id w55so7975595wes.3
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 11:04:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3nWI9VG4xUlY4UW2iixrVMHDQk4sawHWccNK6kK09/4=;
        b=i1PJkVdUgG1qsOcdbJ7hFIufr6+S8cG/F7Xh+fZxHmQPKpsW7HutE99az+bTS770oB
         7pHz70YXhXDxNrfO1LFZVSi/QE1LVv9Oeg2H5Tb5uHDLqx+1FMaWov6sEZvm75PghBE+
         wNc8b2uJMumjnPnc1E5OKmPVO+b+UIoKZw2mjp2c1bDYaa6YRugVJOYI40hXRVvWiQGJ
         RML75rCzxz7FiP4RNTRIFEAu8X7mC8oIM/4EulgKkJUbU7IFSaTNuqDqZr9jszO4Pyal
         8ZNYwvKa18LPmHCoZHgUbyiiY3CIhE8gTRX/wOIoQh8RWg3qAriXz4K/4br4wPvyui/J
         LJ7A==
X-Received: by 10.194.223.5 with SMTP id qq5mr33046119wjc.152.1425668680883;
        Fri, 06 Mar 2015 11:04:40 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id s19sm35355761wik.18.2015.03.06.11.04.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 11:04:40 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 056F362672; Fri,  6 Mar 2015 22:04:37 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 6/8] Staging: iio: clean dev_err logging
Date: Fri,  6 Mar 2015 22:03:53 +0300
Message-Id: <1425668633-27524-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err. dev_err includes information about:
(devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E, R;
expression  msg;
@@

dev_err(E, msg, __func__, R);

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
expression a.E, a.msg, a.R;
identifier  b.y;
@@

- dev_err(E, msg, __func__, R);
+ dev_err(E, y, R);

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/iio/light/isl29028.c     |  8 ++++----
 drivers/staging/iio/light/tsl2x7x_core.c | 34 +++++++++++++-------------------
 2 files changed, 18 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/iio/light/isl29028.c b/drivers/staging/iio/light/isl29028.c
index 6440e3b..e5b2fdc 100644
--- a/drivers/staging/iio/light/isl29028.c
+++ b/drivers/staging/iio/light/isl29028.c
@@ -441,15 +441,15 @@ static int isl29028_chip_init(struct isl29028_chip *chip)
 
 	ret = isl29028_set_proxim_sampling(chip, chip->prox_sampling);
 	if (ret < 0) {
-		dev_err(chip->dev, "%s(): setting the proximity, err = %d\n",
-			__func__, ret);
+		dev_err(chip->dev, "setting the proximity, err = %d\n",
+			ret);
 		return ret;
 	}
 
 	ret = isl29028_set_als_scale(chip, chip->lux_scale);
 	if (ret < 0)
-		dev_err(chip->dev, "%s(): setting als scale failed, err = %d\n",
-			__func__, ret);
+		dev_err(chip->dev,
+			"setting als scale failed, err = %d\n", ret);
 	return ret;
 }
 
diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 1222a57..2063c71 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -301,8 +301,7 @@ tsl2x7x_i2c_read(struct i2c_client *client, u8 reg, u8 *val)
 	/* select register to write */
 	ret = i2c_smbus_write_byte(client, (TSL2X7X_CMD_REG | reg));
 	if (ret < 0) {
-		dev_err(&client->dev, "%s: failed to write register %x\n"
-				, __func__, reg);
+		dev_err(&client->dev, "failed to write register %x\n", reg);
 		return ret;
 	}
 
@@ -311,8 +310,7 @@ tsl2x7x_i2c_read(struct i2c_client *client, u8 reg, u8 *val)
 	if (ret >= 0)
 		*val = (u8)ret;
 	else
-		dev_err(&client->dev, "%s: failed to read register %x\n"
-						, __func__, reg);
+		dev_err(&client->dev, "failed to read register %x\n", reg);
 
 	return ret;
 }
@@ -374,7 +372,7 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
 			&buf[i]);
 		if (ret < 0) {
 			dev_err(&chip->client->dev,
-				"%s: failed to read. err=%x\n", __func__, ret);
+				"failed to read. err=%x\n", ret);
 			goto out_unlock;
 		}
 	}
@@ -386,8 +384,7 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
 				TSL2X7X_CMD_ALS_INT_CLR));
 	if (ret < 0) {
 		dev_err(&chip->client->dev,
-		"%s: i2c_write_command failed - err = %d\n",
-			__func__, ret);
+			"i2c_write_command failed - err = %d\n", ret);
 		goto out_unlock; /* have no data, so return failure */
 	}
 
@@ -489,8 +486,7 @@ static int tsl2x7x_get_prox(struct iio_dev *indio_dev)
 	ret = tsl2x7x_i2c_read(chip->client,
 		(TSL2X7X_CMD_REG | TSL2X7X_STATUS), &status);
 	if (ret < 0) {
-		dev_err(&chip->client->dev,
-		"%s: i2c err=%d\n", __func__, ret);
+		dev_err(&chip->client->dev, "i2c err=%d\n", ret);
 		goto prox_poll_err;
 	}
 
@@ -579,8 +575,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
 			(TSL2X7X_CMD_REG | TSL2X7X_CNTRL));
 	if (ret < 0) {
 		dev_err(&chip->client->dev,
-		"%s: failed to write CNTRL register, ret=%d\n",
-		__func__, ret);
+			"failed to write CNTRL register, ret=%d\n", ret);
 		return ret;
 	}
 
@@ -595,8 +590,7 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
 			(TSL2X7X_CMD_REG | TSL2X7X_CNTRL));
 	if (ret < 0) {
 		dev_err(&chip->client->dev,
-			"%s: failed to write ctrl reg: ret=%d\n",
-			__func__, ret);
+			"failed to write ctrl reg: ret=%d\n", ret);
 		return ret;
 	}
 
@@ -713,7 +707,7 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 				TSL2X7X_CMD_REG + i, *dev_reg++);
 		if (ret < 0) {
 			dev_err(&chip->client->dev,
-			"%s: failed on write to reg %d.\n", __func__, i);
+				"failed on write to reg %d.\n", i);
 			return ret;
 		}
 	}
@@ -861,8 +855,8 @@ static void tsl2x7x_prox_cal(struct iio_dev *indio_dev)
 
 	if (chip->tsl2x7x_settings.prox_max_samples_cal > MAX_SAMPLES_CAL) {
 		dev_err(&chip->client->dev,
-			"%s: max prox samples cal is too big: %d\n",
-			__func__, chip->tsl2x7x_settings.prox_max_samples_cal);
+			"max prox samples cal is too big: %d\n",
+			chip->tsl2x7x_settings.prox_max_samples_cal);
 		chip->tsl2x7x_settings.prox_max_samples_cal = MAX_SAMPLES_CAL;
 	}
 
@@ -1553,8 +1547,8 @@ static irqreturn_t tsl2x7x_event_handler(int irq, void *private)
 		TSL2X7X_CMD_PROXALS_INT_CLR);
 	if (ret < 0)
 		dev_err(&chip->client->dev,
-			"%s: Failed to clear irq from event handler. err = %d\n",
-			__func__, ret);
+			"Failed to clear irq from event handler. err = %d\n",
+			ret);
 
 	return IRQ_HANDLED;
 }
@@ -1883,8 +1877,8 @@ static int tsl2x7x_probe(struct i2c_client *clientp,
 
 	ret = i2c_smbus_write_byte(clientp, (TSL2X7X_CMD_REG | TSL2X7X_CNTRL));
 	if (ret < 0) {
-		dev_err(&clientp->dev, "%s: write to cmd reg failed. err = %d\n",
-				__func__, ret);
+		dev_err(&clientp->dev, "write to cmd reg failed. err = %d\n",
+			ret);
 		return ret;
 	}
 
-- 
1.9.1


