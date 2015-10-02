X-GM-THRID: 6200774307110453248
X-Received: by 10.112.40.17 with SMTP id t17mr2403773lbk.10.1443782283921;
        Fri, 02 Oct 2015 03:38:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.208.78 with SMTP id h75ls214819lfg.83.gmail; Fri, 02 Oct
 2015 03:38:03 -0700 (PDT)
X-Received: by 10.112.181.10 with SMTP id ds10mr1363539lbc.3.1443782283451;
        Fri, 02 Oct 2015 03:38:03 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id xl3si41351wib.1.2015.10.02.03.38.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:38:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id lk2so27690199wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=NQtrbQQsvwXO/xnG77UtzeyH7gFGn9HGvmU+5KFSEpQ=;
        b=Ci32PjrdXUvGCGIWfvG7E7xxupfVlwpMg3rlOmaRkB+7utnd11qEwY3nhbNFAx7fI+
         FB7Cne6mvfVzt8+BFGmftGHZl14csYBA2hDnQ4H+PBDsqbBq4GlyWrU88y7+fhJWHPS7
         JQsp6VUAldij3tMFtR0ba0i6Ok/p/W024bOx07yk8UhxE76HSw1lYAvx9Ruvjoslv0UI
         x6iWjuSLY8s+5qv843Aykpy7vLdXUbobSd6GMpzqpLHp9U/uAXDesiyc9SxCvzusdcEI
         7C8wxUAFkrrbSaZzcTfRW/lA7tJz+NTVM+oxPCMilJIrxvStZF8eTu0Dkb80pQCkbFF7
         b9wA==
X-Received: by 10.194.236.74 with SMTP id us10mr15308317wjc.39.1443782283310;
        Fri, 02 Oct 2015 03:38:03 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([93.122.165.106])
        by smtp.gmail.com with ESMTPSA id g5sm7709038wix.13.2015.10.02.03.38.02
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 03:38:02 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 3/3] staging: iio: resolver: replace iio_device_register by devm_iio_device_register
Date: Fri,  2 Oct 2015 13:37:50 +0300
Message-Id: <837f374c520a6ad13159d412ec9259733d7426d6.1443781973.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1443781973.git.ciorneiioana@gmail.com>
References: <cover.1443781973.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1443781973.git.ciorneiioana@gmail.com>
References: <cover.1443781973.git.ciorneiioana@gmail.com>

Use devm_iio_device_register instead of iio_device_register when the remove
function is only used to call iio_device_unregister in order to ease the error path.
Since resource managed functions implicitly call unregister at driver detach also remove
iio_device_unregister

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - rework commit message to be clearer

 drivers/staging/iio/resolver/ad2s90.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s90.c b/drivers/staging/iio/resolver/ad2s90.c
index e24c589..c57a296 100644
--- a/drivers/staging/iio/resolver/ad2s90.c
+++ b/drivers/staging/iio/resolver/ad2s90.c
@@ -79,7 +79,7 @@ static int ad2s90_probe(struct spi_device *spi)
 	indio_dev->num_channels = 1;
 	indio_dev->name = spi_get_device_id(spi)->name;
 
-	ret = iio_device_register(indio_dev);
+	ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
 	if (ret)
 		return ret;
 
@@ -91,13 +91,6 @@ static int ad2s90_probe(struct spi_device *spi)
 	return 0;
 }
 
-static int ad2s90_remove(struct spi_device *spi)
-{
-	iio_device_unregister(spi_get_drvdata(spi));
-
-	return 0;
-}
-
 static const struct spi_device_id ad2s90_id[] = {
 	{ "ad2s90" },
 	{}
@@ -110,7 +103,6 @@ static struct spi_driver ad2s90_driver = {
 		.owner = THIS_MODULE,
 	},
 	.probe = ad2s90_probe,
-	.remove = ad2s90_remove,
 	.id_table = ad2s90_id,
 };
 module_spi_driver(ad2s90_driver);
-- 
2.1.4


