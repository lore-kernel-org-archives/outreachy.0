X-GM-THRID: 6200774307110453248
X-Received: by 10.112.40.17 with SMTP id t17mr2403725lbk.10.1443782280736;
        Fri, 02 Oct 2015 03:38:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.218.207 with SMTP id r198ls225137lfg.40.gmail; Fri, 02 Oct
 2015 03:38:00 -0700 (PDT)
X-Received: by 10.112.12.132 with SMTP id y4mr2439192lbb.0.1443782280300;
        Fri, 02 Oct 2015 03:38:00 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id hs5si214489wib.1.2015.10.02.03.38.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:38:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id lk2so27801755wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=fVtbRNSHQxet+1XzbEs+g4ZWSStMUZl4jk+U/pJPwYA=;
        b=klWpVOn7+YPK6yWUtnaWVOu9F8M/Il2LzFd/LtTTf9mHOgK3rWfNk6hfPnOJCB5UiC
         Ei45R+gtSiOgLlnJGhV4wxAoWdpK4uZTo1dQTL/gte7FOrY9KsI6ze6XP1eDKPBCRMTW
         KELeGGSTk0eAVlg7EfjfxwKYkOuT1ZC7jdMgmjDWaBIAHw/Sx4P7UMG8d3yo/EGG80Xh
         ohS97IGRdRHKPVWCFhwQYG3JH8oITEftDp4MrXWGf3mCAc57mW9Ua1BTa8XzENOsnteO
         ibqKXx1RJPHqg5Ga1CxsrVp3OnrRcl/nyPl4avdbT+j6bMMv0HuW07GIxdO4cjIkbO+q
         93VA==
X-Received: by 10.180.88.201 with SMTP id bi9mr3312295wib.21.1443782280180;
        Fri, 02 Oct 2015 03:38:00 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([93.122.165.106])
        by smtp.gmail.com with ESMTPSA id g5sm7709038wix.13.2015.10.02.03.37.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 03:37:59 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 1/3] staging: iio: cdc: use devm_iio_device_register instead iio_device_register
Date: Fri,  2 Oct 2015 13:37:48 +0300
Message-Id: <809f6405e8e4a3912ee65559df7436090c22a118.1443781973.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1443781973.git.ciorneiioana@gmail.com>
References: <cover.1443781973.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1443781973.git.ciorneiioana@gmail.com>
References: <cover.1443781973.git.ciorneiioana@gmail.com>

Replace iio_device_register with resource managed devm_iio_device_register in order
to ease the error path. Also delete de remove function since there is no need after
this change.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - no change

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


