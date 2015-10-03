X-GM-THRID: 6201460938447519744
X-Received: by 10.66.252.6 with SMTP id zo6mr18268903pac.29.1443898084150;
        Sat, 03 Oct 2015 11:48:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.13 with SMTP id y13ls752947iod.90.gmail; Sat, 03 Oct
 2015 11:48:03 -0700 (PDT)
X-Received: by 10.107.19.153 with SMTP id 25mr19217102iot.24.1443898083737;
        Sat, 03 Oct 2015 11:48:03 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id uv4si2744728pac.0.2015.10.03.11.48.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 11:48:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fv12so138882470pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 11:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=FRUt4b3UFJZn2fgzry4803WCVYtorK052fSNqpxhRKE=;
        b=MYqOaofDrtSQIY7pNrGPak0OvL+/iy5qn1O4C90z7IsyMHmZ/8tIHWo0Nvtsgex65A
         LR3AlPrdKG6Efmzqz7M7ydM25Xi09qzg104pHGezdkWvFOHLQvGAwnmVaqVvDaDQf958
         Ph8+MC5hu2gmBVbsMZ3FuZKc/0kPYOSu8e+dDDPiof0M2eI2FYd+fK6NybJeQgFix0m7
         M11KhVtxlPtY00RUfS7rEyt07D3b+MVrhCHrBoB2QWAn8FvvnYSKiUVh+NUpPHeohXoF
         CEjRl9hxG5ZKzaAtTwVWxud7vItF/y6zFypzDQhy9RftXGp8CAt4sCy9DPBHeMamjvFd
         8Zcw==
X-Received: by 10.68.195.3 with SMTP id ia3mr28135359pbc.106.1443898083610;
        Sat, 03 Oct 2015 11:48:03 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id y5sm18648830pbt.77.2015.10.03.11.47.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Oct 2015 11:48:02 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3] Staging: iio: meter: Use devm_iio_trigger_alloc
Date: Sun,  4 Oct 2015 00:17:53 +0530
Message-Id: <1443898073-12111-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150205.561022E1.0091,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Introduce use of managed resource function devm_iio_trigger_alloc
instead of iio_trigger_alloc and remove corresponding calls
to iio_trigger_free in the probe and remove functions.Also
use devm_request_irq instead of request_irq.
The now unnecessary label error_free_trig is dropped.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v3-
 Used devm_request_irq instead of request_irq.Also updated commit message.

Changes in v2-
 Use appropriate arguments in devm_iio_trigger_alloc.

 drivers/staging/iio/meter/ade7758_trigger.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_trigger.c b/drivers/staging/iio/meter/ade7758_trigger.c
index 5b35a7f..20ed84b 100644
--- a/drivers/staging/iio/meter/ade7758_trigger.c
+++ b/drivers/staging/iio/meter/ade7758_trigger.c
@@ -63,21 +63,22 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
 	struct ade7758_state *st = iio_priv(indio_dev);
 	int ret;
 
-	st->trig = iio_trigger_alloc("%s-dev%d",
-					spi_get_device_id(st->us)->name,
-					indio_dev->id);
+	st->trig = devm_iio_trigger_alloc(&indio_dev->dev,
+					  "%s-dev%d",
+					  spi_get_device_id(st->us)->name,
+					  indio_dev->id);
 	if (!st->trig) {
 		ret = -ENOMEM;
 		goto error_ret;
 	}
 
-	ret = request_irq(st->us->irq,
-			  ade7758_data_rdy_trig_poll,
-			  IRQF_TRIGGER_LOW,
-			  spi_get_device_id(st->us)->name,
-			  st->trig);
+	ret = devm_request_irq(&indio_dev->dev, st->us->irq,
+			       ade7758_data_rdy_trig_poll,
+			       IRQF_TRIGGER_LOW,
+			       spi_get_device_id(st->us)->name,
+			       st->trig);
 	if (ret)
-		goto error_free_trig;
+		goto error_ret;
 
 	st->trig->dev.parent = &st->us->dev;
 	st->trig->ops = &ade7758_trigger_ops;
@@ -93,8 +94,6 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
 
 error_free_irq:
 	free_irq(st->us->irq, st->trig);
-error_free_trig:
-	iio_trigger_free(st->trig);
 error_ret:
 	return ret;
 }
@@ -105,5 +104,4 @@ void ade7758_remove_trigger(struct iio_dev *indio_dev)
 
 	iio_trigger_unregister(st->trig);
 	free_irq(st->us->irq, st->trig);
-	iio_trigger_free(st->trig);
 }
-- 
2.1.4


