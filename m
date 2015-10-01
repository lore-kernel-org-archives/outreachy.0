X-GM-THRID: 6200774307110453248
X-Received: by 10.195.18.100 with SMTP id gl4mr1803541wjd.4.1443730275174;
        Thu, 01 Oct 2015 13:11:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.36 with SMTP id f4ls236088wiy.22.canary; Thu, 01 Oct
 2015 13:11:14 -0700 (PDT)
X-Received: by 10.180.12.170 with SMTP id z10mr145814wib.1.1443730274887;
        Thu, 01 Oct 2015 13:11:14 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id ch7si136005wib.2.2015.10.01.13.11.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 13:11:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id lk2so4907913wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 13:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=wgX+BFjD5wNbmI/KW6HxXE19kfvYFLj14bvcidj2/E4=;
        b=VqAUPEOm8qqSSJy8+LJRQfzqORsgP1B3FYPn0joQEYzVGWvdJKys8iS4VurcZLhtD8
         Bf7pHOLFuxACwFqHzsb7AB7p2FrTrDU4c/GJEI5uixPTJrjuzsP5WfujD+yqp9OqivL5
         rShgwsavV0R9Z/CsHxpu1lf7Srl0y6gE0NCOhTD0A5d/jocIZBU4WSZOEKLvi4O2rc0Q
         gWz4Ab46P48pd9JBcyOvz1bHwegvn2Bhr+8m0k1kHYs3YdNfJdyyJKF8gjbqAMdVXRYl
         1dYtBG2kYd1wTaxkxCWDqEK1nY1uFpkSgC+fwnsouUfM3qWw0u8WoCJ7Cb2R1ZWQAVra
         4zjg==
X-Received: by 10.194.79.98 with SMTP id i2mr12357856wjx.28.1443730274808;
        Thu, 01 Oct 2015 13:11:14 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id r9sm7777516wjz.35.2015.10.01.13.11.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 13:11:14 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: iio: light: use devm_iio_device_register instead iio_device_register
Date: Thu,  1 Oct 2015 23:10:46 +0300
Message-Id: <803a5566a6126da8fb21617fcc852665bc4dd625.1443729484.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1443729484.git.ciorneiioana@gmail.com>
References: <cover.1443729484.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1443729484.git.ciorneiioana@gmail.com>
References: <cover.1443729484.git.ciorneiioana@gmail.com>

Replace iio_device_register with resource managed devm_iio_device_register in order
to ease the error path. Also delete de remove function since there is no need after
this change.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/light/isl29028.c | 11 +----------
 drivers/staging/iio/light/tsl2583.c  | 12 ++----------
 2 files changed, 3 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/iio/light/isl29028.c b/drivers/staging/iio/light/isl29028.c
index cd6f272..32ae112 100644
--- a/drivers/staging/iio/light/isl29028.c
+++ b/drivers/staging/iio/light/isl29028.c
@@ -513,7 +513,7 @@ static int isl29028_probe(struct i2c_client *client,
 	indio_dev->name = id->name;
 	indio_dev->dev.parent = &client->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
-	ret = iio_device_register(indio_dev);
+	ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
 	if (ret < 0) {
 		dev_err(chip->dev, "iio registration fails with error %d\n",
 			ret);
@@ -522,14 +522,6 @@ static int isl29028_probe(struct i2c_client *client,
 	return 0;
 }
 
-static int isl29028_remove(struct i2c_client *client)
-{
-	struct iio_dev *indio_dev = i2c_get_clientdata(client);
-
-	iio_device_unregister(indio_dev);
-	return 0;
-}
-
 static const struct i2c_device_id isl29028_id[] = {
 	{"isl29028", 0},
 	{}
@@ -550,7 +542,6 @@ static struct i2c_driver isl29028_driver = {
 		.of_match_table = isl29028_of_match,
 	},
 	.probe	 = isl29028_probe,
-	.remove  = isl29028_remove,
 	.id_table = isl29028_id,
 };
 
diff --git a/drivers/staging/iio/light/tsl2583.c b/drivers/staging/iio/light/tsl2583.c
index b5e1b8b..b2b66c4 100644
--- a/drivers/staging/iio/light/tsl2583.c
+++ b/drivers/staging/iio/light/tsl2583.c
@@ -862,7 +862,7 @@ static int taos_probe(struct i2c_client *clientp,
 	indio_dev->dev.parent = &clientp->dev;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->name = chip->client->name;
-	ret = iio_device_register(indio_dev);
+	ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
 	if (ret) {
 		dev_err(&clientp->dev, "iio registration failed\n");
 		return ret;
@@ -917,13 +917,6 @@ static SIMPLE_DEV_PM_OPS(taos_pm_ops, taos_suspend, taos_resume);
 #define TAOS_PM_OPS NULL
 #endif
 
-static int taos_remove(struct i2c_client *client)
-{
-	iio_device_unregister(i2c_get_clientdata(client));
-
-	return 0;
-}
-
 static struct i2c_device_id taos_idtable[] = {
 	{ "tsl2580", 0 },
 	{ "tsl2581", 1 },
@@ -939,8 +932,7 @@ static struct i2c_driver taos_driver = {
 		.pm = TAOS_PM_OPS,
 	},
 	.id_table = taos_idtable,
-	.probe = taos_probe,
-	.remove = taos_remove,
+	.probe = taos_probe
 };
 module_i2c_driver(taos_driver);
 
-- 
2.1.4


