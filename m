X-GM-THRID: 6200774307110453248
X-Received: by 10.194.240.230 with SMTP id wd6mr1803025wjc.0.1443730276293;
        Thu, 01 Oct 2015 13:11:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.77.80 with SMTP id a77ls147494lfb.70.gmail; Thu, 01 Oct
 2015 13:11:15 -0700 (PDT)
X-Received: by 10.112.164.1 with SMTP id ym1mr1768438lbb.15.1443730275737;
        Thu, 01 Oct 2015 13:11:15 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id c7si123497wiy.3.2015.10.01.13.11.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 13:11:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id lk2so6632462wic.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 13:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=ha2JjsLIEHuFuoVWDGAuzS0LKJmuBlPEOlL0iV7o/Is=;
        b=WIA5Kr/grMpCFlsIYQHIq0ei+qH9opJ6eiR6fhd42WlDb3/DAUpUwBzDZivrfuv6bJ
         7X2BziczxI1w5glMkkT40F+zI/+UlSzXp3a8/VoHAYfWeXplium5Gj1U2FKvVoZ7+kb1
         lvgpUG9n7eBsRxvwEzKfpWZS6bXIa4jL76uubMdxtUrR+X5ADzPbsu6R3aRX3fWSnVtZ
         aH54cM0hMYwHfNy9UUD4qGdh/CX1J61YUzf8WpEcZ+gNLL87/YZpmYBI8BDITZvaAbpa
         PaFnwjCuKKNQYRcP2OS1gLBjJBHb+7P1L2SHcQRRUeDcwTCK0aIZ4IMGT+4+ogC/Ussq
         L0fQ==
X-Received: by 10.181.8.72 with SMTP id di8mr620275wid.62.1443730275632;
        Thu, 01 Oct 2015 13:11:15 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id r9sm7777516wjz.35.2015.10.01.13.11.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 13:11:15 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: iio: resolver: replace iio_device_register by devm_iio_device_register
Date: Thu,  1 Oct 2015 23:10:47 +0300
Message-Id: <41516ac4f917514f14dc5f8469a52aa8b6081818.1443729484.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1443729484.git.ciorneiioana@gmail.com>
References: <cover.1443729484.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1443729484.git.ciorneiioana@gmail.com>
References: <cover.1443729484.git.ciorneiioana@gmail.com>

Use devm_iio_device_register instead of iio_device_register when the remove
function is only used to call iio_device_unregister.
Function devm_iio_device_register implicitly calls unregister so there is
wqno need to specifically call it

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
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


