X-GM-THRID: 6200774307110453248
X-Received: by 10.112.55.69 with SMTP id q5mr2411973lbp.24.1443782282229;
        Fri, 02 Oct 2015 03:38:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.166 with SMTP id az6ls342335wib.15.canary; Fri, 02 Oct
 2015 03:38:01 -0700 (PDT)
X-Received: by 10.180.81.165 with SMTP id b5mr791426wiy.1.1443782281880;
        Fri, 02 Oct 2015 03:38:01 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id o5si212167wib.0.2015.10.02.03.38.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:38:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id gb1so26497308wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Jw/jiuPlXjXRZvrdu1gwIlCPQepyUdHAI+fhV1sK4dI=;
        b=tHqX6Kd6u9cProAw3jcd/zz4DqmYHc+hvUQrVelM6tR2HdAD1K49n6n+NgmzmnJqGO
         iVa1jF0uBDMn6kArqMbN+HTmJ7afc1Le7jiwindpAvrFzVaONfFWeL97Jtr4dojtHv1e
         bMda1HQT8BQ6bnuy4Ijq8ScUdVGUcwr6C15z2nNxiMBuAg8yJSAsJcgiSryl6v08ohuL
         r7JSFJenJK2ksQF9CLNNIqUTiSUYbjCNtlpHajS4gZOKGxWaYTMCysszW0K0VSL52Crb
         GnfE59lZsNjKNO6VYyF3ejbPyzuLFTakqtJvgneholH+iuYH8yUrbxFIAjeaEUkDRjRD
         33CA==
X-Received: by 10.180.11.175 with SMTP id r15mr3724623wib.74.1443782281781;
        Fri, 02 Oct 2015 03:38:01 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([93.122.165.106])
        by smtp.gmail.com with ESMTPSA id g5sm7709038wix.13.2015.10.02.03.38.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 03:38:01 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 2/3] staging: iio: light: use devm_iio_device_register instead iio_device_register
Date: Fri,  2 Oct 2015 13:37:49 +0300
Message-Id: <ba9622a2ea3d11b598a396496b1b4f862293de2b.1443781973.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1443781973.git.ciorneiioana@gmail.com>
References: <cover.1443781973.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1443781973.git.ciorneiioana@gmail.com>
References: <cover.1443781973.git.ciorneiioana@gmail.com>

Replace iio_device_register with resource managed devm_iio_device_register in order
to ease the error path. Also delete the remove function since there is no need after
this change.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - fix accidentally removed comma
    - fix typo in commit message

 drivers/staging/iio/light/isl29028.c | 11 +----------
 drivers/staging/iio/light/tsl2583.c  | 10 +---------
 2 files changed, 2 insertions(+), 19 deletions(-)

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
index b5e1b8b..df60203 100644
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
@@ -940,7 +933,6 @@ static struct i2c_driver taos_driver = {
 	},
 	.id_table = taos_idtable,
 	.probe = taos_probe,
-	.remove = taos_remove,
 };
 module_i2c_driver(taos_driver);
 
-- 
2.1.4


