X-GM-THRID: 6201514199734026240
X-Received: by 10.182.221.196 with SMTP id qg4mr18146463obc.23.1443902542385;
        Sat, 03 Oct 2015 13:02:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.167 with SMTP id f39ls1189482ioj.62.gmail; Sat, 03 Oct
 2015 13:02:22 -0700 (PDT)
X-Received: by 10.107.31.209 with SMTP id f200mr18775389iof.14.1443902542111;
        Sat, 03 Oct 2015 13:02:22 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id wl2si2592795pab.1.2015.10.03.13.02.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 13:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id hy16so137061009pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 13:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=jmg3mzCkgB249jIGkdCjaQKqocsRw9vITbOrPKeT11g=;
        b=rn7dIRu/9CF4re2BowpnJ+0lPZad0AzPXpPNUhED1nmb0cjQwVwGpkoKwTV49GlA+w
         NVUFqRgodJZjZoHYN9e1S4lPLNLh5DN6dPtZ5sMF05ARF3ztJz6A2CN9P5oNXqcRback
         8MRWKnxiV50EYFjNAO2e6XTXFvrTVJI7+uf++WghD/xRWq1zP0iHQNtAJd4efH3fBTJd
         O8d2lMlLfwgbB4hX9tlYJTIXr+0EF19KfIJrw1QvJZwvLqosX3WGFWouC/XDHZffxESw
         M9+fozZbMm230pp4esGpZXPiR+vTs7eGwnJTBtpo6NGemcF+A7MscKi4wK/bNBZ101Wu
         6MwQ==
X-Received: by 10.68.92.194 with SMTP id co2mr29144189pbb.147.1443902541978;
        Sat, 03 Oct 2015 13:02:21 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id sl7sm18851711pbc.54.2015.10.03.13.02.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Oct 2015 13:02:21 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4] Staging: iio: meter: Use devm functions
Date: Sun,  4 Oct 2015 01:32:11 +0530
Message-Id: <1443902531-20190-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.5610344C.006C,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Introduce use of managed resource function devm_iio_trigger_alloc
instead of iio_trigger_alloc and devm_request_irq instead of request_irq
Remove corresponding calls to iio_trigger_free and free_irq in the probe
and remove functions.
The now unnecessary labels error_free_trig and err_free_irq are dropped.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v4-
 Dropped the use of free_irq.Also updated commit message and changed the
 subject.

Changes in v3-
 Used devm_request_irq instead of request_irq.Also updated commit message.

Changes in v2-
 Use appropriate arguments in devm_iio_trigger_alloc. 

 drivers/staging/iio/meter/ade7758_trigger.c | 26 ++++++++++----------------
 1 file changed, 10 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_trigger.c b/drivers/staging/iio/meter/ade7758_trigger.c
index 5b35a7f..e313b37 100644
--- a/drivers/staging/iio/meter/ade7758_trigger.c
+++ b/drivers/staging/iio/meter/ade7758_trigger.c
@@ -63,21 +63,21 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
 	struct ade7758_state *st = iio_priv(indio_dev);
 	int ret;
 
-	st->trig = iio_trigger_alloc("%s-dev%d",
-					spi_get_device_id(st->us)->name,
-					indio_dev->id);
+	st->trig = devm_iio_trigger_alloc(&indio_dev->id, "%s-dev%d",
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
+		goto error_ret
 
 	st->trig->dev.parent = &st->us->dev;
 	st->trig->ops = &ade7758_trigger_ops;
@@ -87,14 +87,10 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
 	/* select default trigger */
 	indio_dev->trig = iio_trigger_get(st->trig);
 	if (ret)
-		goto error_free_irq;
+		goto error_ret;
 
 	return 0;
 
-error_free_irq:
-	free_irq(st->us->irq, st->trig);
-error_free_trig:
-	iio_trigger_free(st->trig);
 error_ret:
 	return ret;
 }
@@ -104,6 +100,4 @@ void ade7758_remove_trigger(struct iio_dev *indio_dev)
 	struct ade7758_state *st = iio_priv(indio_dev);
 
 	iio_trigger_unregister(st->trig);
-	free_irq(st->us->irq, st->trig);
-	iio_trigger_free(st->trig);
 }
-- 
2.1.4


