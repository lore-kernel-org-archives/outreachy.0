X-GM-THRID: 6201460938447519744
X-Received: by 10.182.79.35 with SMTP id g3mr18650280obx.22.1443890141688;
        Sat, 03 Oct 2015 09:35:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.148 with SMTP id p20ls2230264qgp.46.gmail; Sat, 03 Oct
 2015 09:35:41 -0700 (PDT)
X-Received: by 10.31.174.146 with SMTP id x140mr17951134vke.1.1443890141026;
        Sat, 03 Oct 2015 09:35:41 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pe1si2296417pac.2.2015.10.03.09.35.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 09:35:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacex6 with SMTP id ex6so134648242pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 09:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=5IAqhGR/WZdNT3/6tKKkYLdm2jA53aC37Z7yJWj0jC0=;
        b=kjmnN3pT6drDiPhqkZHiORE0300r6Y4aS5U8ZsUT1U31kGqIiW7dIUiwuo2UbdybWf
         H4aHGwm3nmTG2KA0SCeHyQ0WRRsZn0STQm16mg99HX9l2Pzlcmu9/NEpk2sHJhbkxBvj
         8bMrD6Cmuc/IFRB86oyahyMMOdtbBZAcp3GhXBSg4CfPfD8W7gMzcqBbqz5uCgRJNYhz
         Wdt5hC1sJ1joPr8VjyaDFLvpMV3QxryCMatcV+F71wACsWHifRtlIfMIqzxYil1Z9Th9
         wTzQPcjxjRWY1YIIvHPtYmkk0rJFmIjpnT1pDMtIw1Dy3K3ktKyBUQgoQV1E3Ckw4SBK
         05fA==
X-Received: by 10.68.234.167 with SMTP id uf7mr27384295pbc.51.1443890140859;
        Sat, 03 Oct 2015 09:35:40 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id tb9sm18378333pab.13.2015.10.03.09.35.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Oct 2015 09:35:40 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: iio: meter: Use devm_iio_trigger_alloc
Date: Sat,  3 Oct 2015 22:05:25 +0530
Message-Id: <1443890125-2419-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.561003DA.00F1,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Introduce use of managed resource function devm_iio_trigger_alloc
instead of iio_trigger_alloc and remove corresponding calls
to iio_trigger_free in the probe and remove functions.
Also unnecessary label error_free_trig is dropped.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/iio/meter/ade7758_trigger.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_trigger.c b/drivers/staging/iio/meter/ade7758_trigger.c
index 5b35a7f..a5d52bb 100644
--- a/drivers/staging/iio/meter/ade7758_trigger.c
+++ b/drivers/staging/iio/meter/ade7758_trigger.c
@@ -63,9 +63,9 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
 	struct ade7758_state *st = iio_priv(indio_dev);
 	int ret;
 
-	st->trig = iio_trigger_alloc("%s-dev%d",
-					spi_get_device_id(st->us)->name,
-					indio_dev->id);
+	st->trig = devm_iio_trigger_alloc("%s-dev%d",
+					     spi_get_device_id(st->us)->name,
+					     indio_dev->id);
 	if (!st->trig) {
 		ret = -ENOMEM;
 		goto error_ret;
@@ -77,7 +77,7 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
 			  spi_get_device_id(st->us)->name,
 			  st->trig);
 	if (ret)
-		goto error_free_trig;
+		goto error_ret;
 
 	st->trig->dev.parent = &st->us->dev;
 	st->trig->ops = &ade7758_trigger_ops;
@@ -93,8 +93,6 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
 
 error_free_irq:
 	free_irq(st->us->irq, st->trig);
-error_free_trig:
-	iio_trigger_free(st->trig);
 error_ret:
 	return ret;
 }
@@ -105,5 +103,4 @@ void ade7758_remove_trigger(struct iio_dev *indio_dev)
 
 	iio_trigger_unregister(st->trig);
 	free_irq(st->us->irq, st->trig);
-	iio_trigger_free(st->trig);
 }
-- 
2.1.4


