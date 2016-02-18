X-GM-THRID: 6252531554516467712
X-Received: by 10.107.15.79 with SMTP id x76mr6884431ioi.31.1455780952262;
        Wed, 17 Feb 2016 23:35:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.25 with SMTP id j25ls1774271ioo.59.gmail; Wed, 17 Feb
 2016 23:35:51 -0800 (PST)
X-Received: by 10.66.182.225 with SMTP id eh1mr5644146pac.24.1455780951920;
        Wed, 17 Feb 2016 23:35:51 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ff2si766297pad.2.2016.02.17.23.35.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 23:35:51 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so1664208pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 23:35:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=W0mwwu7mB6GP0na4uSuoEkv2y2W6oHA+Sdc92L8CEZU=;
        b=gtklCS9Zr66MgDzNFCrnBmLUp7tMWf/yHlIqXVIs2ALW4ITuGSqwWJw4cxBUGAhSCj
         hvmPtGptXTIdLTUgYQPKn17KLuq2VwuOqFm1nnAI7Ds3xvraFfAJ6SLwfNYA587Si7y2
         UFAgVhJvQFeFURNc6rnH4USEiGbbfHKPzylrDqQoLozYW738CroHBkAXI7gnq6Xa+LZO
         KM7vOPkoYX7ImqsmAJEormfrdFnnXrPklJnDiWjZbt3oaIZSRFvhuWgklc4Cu45wxCvI
         ag6M2uvvQMHpCtlRJb5Ru8P4ZsqkeVzR0vEd1im/OdivqB09+bjcLiCUSHwK0nbJVgaI
         06LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=W0mwwu7mB6GP0na4uSuoEkv2y2W6oHA+Sdc92L8CEZU=;
        b=Ou3OBiLHrd8tV5rEa7/kEK0rBpUkmdemLnWjEIPtje6aOAUsZQnjdGXEI855nh+U+K
         TLAvIcFvFr0nRY6a2DaTH2MR2btfPTEG026Fo8dwtC9evLc4tPGBjiYKLd94fE31O8Zt
         vJEvicfW1KBCt21YbRcj62IgWJI8sP/I8WYNPeSirFWV1EgKl+nmbxnhOY1MfnRuAqdZ
         4oQU5Ra4yMJPfrM/+DWQZ01fEdikKSUyc/Fr78XLtywfGrM9QfcUysXgedK053+rii3i
         gYBK84bUMl9u7w6T+Jj4ud0Qcwh5dDU4Y/7BnuAmlHdoCLT3RgSZnRu3NrVPm25/nPzs
         zGlw==
X-Gm-Message-State: AG10YOQRVXt5PzFdJjYU1jbycqNGxl+jvzXLXDgMfALTo3sX0B289hBU8S5kIIvApXVyyA==
X-Received: by 10.67.1.237 with SMTP id bj13mr8149150pad.130.1455780951813;
        Wed, 17 Feb 2016 23:35:51 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.106])
        by smtp.gmail.com with ESMTPSA id p9sm7733502pfa.11.2016.02.17.23.35.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 23:35:51 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 2/5] staging: iio: light: omit space after a cast
Date: Thu, 18 Feb 2016 15:35:37 +0800
Message-Id: <69141518c3c2f1a6730bcd20c5aed92c48871b7d.1455730714.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455730714.git.eraretuya@gmail.com>
References: <cover.1455730714.git.eraretuya@gmail.com>
In-Reply-To: <cover.1455730714.git.eraretuya@gmail.com>
References: <cover.1455730714.git.eraretuya@gmail.com>

Remove the unneeded space as pointed out by checkpatch:
CHECK: No space is necessary after a cast

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/light/isl29018.c | 2 +-
 drivers/staging/iio/light/tsl2583.c  | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/light/isl29018.c b/drivers/staging/iio/light/isl29018.c
index 98038d7..6c9d943 100644
--- a/drivers/staging/iio/light/isl29018.c
+++ b/drivers/staging/iio/light/isl29018.c
@@ -702,7 +702,7 @@ static const char *isl29018_match_acpi_device(struct device *dev, int *data)
 	if (!id)
 		return NULL;
 
-	*data = (int) id->driver_data;
+	*data = (int)id->driver_data;
 
 	return dev_name(dev);
 }
diff --git a/drivers/staging/iio/light/tsl2583.c b/drivers/staging/iio/light/tsl2583.c
index 1aae05a..625a11c 100644
--- a/drivers/staging/iio/light/tsl2583.c
+++ b/drivers/staging/iio/light/tsl2583.c
@@ -271,7 +271,7 @@ static int taos_get_lux(struct iio_dev *indio_dev)
 	/* calculate ratio */
 	ratio = (ch1 << 15) / ch0;
 	/* convert to unscaled lux using the pointer to the table */
-	for (p = (struct taos_lux *) taos_device_lux;
+	for (p = (struct taos_lux *)taos_device_lux;
 	     p->ratio != 0 && p->ratio < ratio; p++)
 		;
 
@@ -378,7 +378,7 @@ static int taos_als_calibrate(struct iio_dev *indio_dev)
 		dev_err(&chip->client->dev, "taos_als_calibrate failed to get lux\n");
 		return lux_val;
 	}
-	gain_trim_val = (unsigned int) (((chip->taos_settings.als_cal_target)
+	gain_trim_val = (unsigned int)(((chip->taos_settings.als_cal_target)
 			* chip->taos_settings.als_gain_trim) / lux_val);
 
 	if ((gain_trim_val < 250) || (gain_trim_val > 4000)) {
@@ -387,9 +387,9 @@ static int taos_als_calibrate(struct iio_dev *indio_dev)
 			gain_trim_val);
 		return -ENODATA;
 	}
-	chip->taos_settings.als_gain_trim = (int) gain_trim_val;
+	chip->taos_settings.als_gain_trim = (int)gain_trim_val;
 
-	return (int) gain_trim_val;
+	return (int)gain_trim_val;
 }
 
 /*
-- 
1.9.1


