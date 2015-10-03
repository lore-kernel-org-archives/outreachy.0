X-GM-THRID: 6201460938447519744
X-Received: by 10.13.229.135 with SMTP id o129mr17944748ywe.30.1443892573351;
        Sat, 03 Oct 2015 10:16:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.111.137 with SMTP id ii9ls885147obb.7.gmail; Sat, 03 Oct
 2015 10:16:12 -0700 (PDT)
X-Received: by 10.182.65.134 with SMTP id x6mr18401714obs.14.1443892572965;
        Sat, 03 Oct 2015 10:16:12 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id zg1si2610239pbb.2.2015.10.03.10.16.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 10:16:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhy16 with SMTP id hy16so135015914pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 10:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=syqPfXsI/HzpMdXW9K8P0B5krR6pFJJPK/jrvoChC+U=;
        b=1ASMZyUW+JmyUc7BTpUMblvlFWr6HSIZKMYaou/fLzAHh3MRsKYtoJBAQDdW7Ngtlt
         bVe+ySbdGBPVRiHD2OvktsTLDGWEju8Ah3iWKpPTtu4Wg8RKsQ77OBpPOdknChPc/TZ9
         qzubkHsuiso5X2m24Mub6vYkMysqYxdy7gcQxRvBB4YYxEKQVnl7reFa8QaHlhPz90Kg
         SGz4Rco66f+HhRilBstAPBnQlJnM/im9fPf113k5cXnxoST+Bb9w4DpVLfD0tOUYaXha
         vy9bD6gR76V7A14s+cYz5YdrVil3Qdmu3Actq6gfPbsOeM3LaDZJmNjUuvmS53DHglgu
         Zbbw==
X-Received: by 10.68.179.133 with SMTP id dg5mr28411599pbc.0.1443892572769;
        Sat, 03 Oct 2015 10:16:12 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id u3sm18418981pbs.33.2015.10.03.10.16.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Oct 2015 10:16:12 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] Staging: iio: meter: Use devm_iio_trigger_alloc
Date: Sat,  3 Oct 2015 22:45:56 +0530
Message-Id: <1443892556-9121-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.56100D5B.0072,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Introduce use of managed resource function devm_iio_trigger_alloc
instead of iio_trigger_alloc and remove corresponding calls
to iio_trigger_free in the probe and remove functions.
Also unnecessary label error_free_trig is dropped.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 Use appropriate arguments in devm_iio_trigger_alloc.

 drivers/staging/iio/meter/ade7758_trigger.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_trigger.c b/drivers/staging/iio/meter/ade7758_trigger.c
index 5b35a7f..d5a324a 100644
--- a/drivers/staging/iio/meter/ade7758_trigger.c
+++ b/drivers/staging/iio/meter/ade7758_trigger.c
@@ -63,9 +63,10 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
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
@@ -77,7 +78,7 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
 			  spi_get_device_id(st->us)->name,
 			  st->trig);
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


