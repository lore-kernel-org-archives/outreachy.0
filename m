X-GM-THRID: 6200774307110453248
X-Received: by 10.112.130.41 with SMTP id ob9mr1775103lbb.17.1443730274765;
        Thu, 01 Oct 2015 13:11:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.159.82 with SMTP id i79ls151032lfe.102.gmail; Thu, 01 Oct
 2015 13:11:13 -0700 (PDT)
X-Received: by 10.112.136.99 with SMTP id pz3mr192236lbb.11.1443730273975;
        Thu, 01 Oct 2015 13:11:13 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id c7si123554wiy.3.2015.10.01.13.11.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 13:11:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id lk2so4962291wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 13:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=Wjj6ZOizaO8h1wX/PjI6/aVLbhxIoL3T00LGv2e724w=;
        b=kas154mWJDcGfdh17IvgeqQ+LSbu5BT1futnP5q2fTyKS7qGMNqZ7wLPuJ+6rLZCXe
         zuTXCGfieQ7ES821ebduFx8312W+H0mtolhDQnZ+sbGqp2baYf2bjoeGov7LlsV8IeZQ
         8Hxe2OKiS0qqhrnpwlqzyEnIyzd8baUJ2gB+D2u7+1ojcHqkpzmJicTmrlxw0NV0/igG
         nVRLY8RT9Sh0En17in68jzeqmww5dKHKK71FZT7hWZq2/1iPGC7llBSpRUobOAyx/ROJ
         ejmTvYeoPc3f0g0Fpfqf0385kcGtMc7iwAgejfN0MlGdlRsHXhYUQgSbIvYe40tQqalR
         7zsQ==
X-Received: by 10.180.99.66 with SMTP id eo2mr631484wib.88.1443730273875;
        Thu, 01 Oct 2015 13:11:13 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id r9sm7777516wjz.35.2015.10.01.13.11.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 13:11:13 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: iio: cdc: use devm_iio_device_register instead iio_device_register
Date: Thu,  1 Oct 2015 23:10:45 +0300
Message-Id: <809f6405e8e4a3912ee65559df7436090c22a118.1443729484.git.ciorneiioana@gmail.com>
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
 drivers/staging/iio/cdc/ad7150.c | 12 +-----------
 drivers/staging/iio/cdc/ad7152.c | 12 +-----------
 drivers/staging/iio/cdc/ad7746.c | 12 +-----------
 3 files changed, 3 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index a2b7ae3..ff83394 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -636,7 +636,7 @@ static int ad7150_probe(struct i2c_client *client,
 			return ret;
 	}
 
-	ret = iio_device_register(indio_dev);
+	ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
 	if (ret)
 		return ret;
 
@@ -646,15 +646,6 @@ static int ad7150_probe(struct i2c_client *client,
 	return 0;
 }
 
-static int ad7150_remove(struct i2c_client *client)
-{
-	struct iio_dev *indio_dev = i2c_get_clientdata(client);
-
-	iio_device_unregister(indio_dev);
-
-	return 0;
-}
-
 static const struct i2c_device_id ad7150_id[] = {
 	{ "ad7150", 0 },
 	{ "ad7151", 0 },
@@ -669,7 +660,6 @@ static struct i2c_driver ad7150_driver = {
 		.name = "ad7150",
 	},
 	.probe = ad7150_probe,
-	.remove = ad7150_remove,
 	.id_table = ad7150_id,
 };
 module_i2c_driver(ad7150_driver);
diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index 87110d9..c3d5531 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -502,7 +502,7 @@ static int ad7152_probe(struct i2c_client *client,
 	indio_dev->num_channels = ARRAY_SIZE(ad7152_channels);
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
-	ret = iio_device_register(indio_dev);
+	ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
 	if (ret)
 		return ret;
 
@@ -511,15 +511,6 @@ static int ad7152_probe(struct i2c_client *client,
 	return 0;
 }
 
-static int ad7152_remove(struct i2c_client *client)
-{
-	struct iio_dev *indio_dev = i2c_get_clientdata(client);
-
-	iio_device_unregister(indio_dev);
-
-	return 0;
-}
-
 static const struct i2c_device_id ad7152_id[] = {
 	{ "ad7152", 0 },
 	{ "ad7153", 1 },
@@ -533,7 +524,6 @@ static struct i2c_driver ad7152_driver = {
 		.name = KBUILD_MODNAME,
 	},
 	.probe = ad7152_probe,
-	.remove = ad7152_remove,
 	.id_table = ad7152_id,
 };
 module_i2c_driver(ad7152_driver);
diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 10fa372..999c4fa 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -749,7 +749,7 @@ static int ad7746_probe(struct i2c_client *client,
 	if (ret < 0)
 		return ret;
 
-	ret = iio_device_register(indio_dev);
+	ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
 	if (ret)
 		return ret;
 
@@ -758,15 +758,6 @@ static int ad7746_probe(struct i2c_client *client,
 	return 0;
 }
 
-static int ad7746_remove(struct i2c_client *client)
-{
-	struct iio_dev *indio_dev = i2c_get_clientdata(client);
-
-	iio_device_unregister(indio_dev);
-
-	return 0;
-}
-
 static const struct i2c_device_id ad7746_id[] = {
 	{ "ad7745", 7745 },
 	{ "ad7746", 7746 },
@@ -781,7 +772,6 @@ static struct i2c_driver ad7746_driver = {
 		.name = KBUILD_MODNAME,
 	},
 	.probe = ad7746_probe,
-	.remove = ad7746_remove,
 	.id_table = ad7746_id,
 };
 module_i2c_driver(ad7746_driver);
-- 
2.1.4


