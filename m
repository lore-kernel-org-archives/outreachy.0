X-GM-THRID: 6205156993637810176
X-Received: by 10.182.89.129 with SMTP id bo1mr29012008obb.4.1444750704512;
        Tue, 13 Oct 2015 08:38:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.172 with SMTP id 41ls2764175qgf.79.gmail; Tue, 13 Oct
 2015 08:38:24 -0700 (PDT)
X-Received: by 10.31.21.194 with SMTP id 185mr8271526vkv.10.1444750704092;
        Tue, 13 Oct 2015 08:38:24 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si392162pbb.0.2015.10.13.08.38.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 08:38:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id rc13so24758075pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 08:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=HQLf2sGrX3bkQ9d8y2GgEEeAvAuV24HPyb2RX51F9wE=;
        b=Ta3C8K/iiAqnEDqwFgmlj1S+UY+FZJxmEOb9TwMZSFnQlCazlX127d2oqstix8t4TI
         9rSSPRMsgrXUxR5lMMcpVZDsXTHT8t/Yd4aW06J0hs3Uor2nYsakkAzEkdUopUoTuVYx
         Q5NFAZZSb7BxwrCVOyRfz4OSJaAdUnSstVA2cxmvxPnSpd4bPP8RwsNdW57nSG88oSZu
         2qvZnL7vDO7bUbFtLIb0IiBEdSUacEJDn9a4kD+M6FNaPxe319IagZKMjjmQ+s5f9cNs
         nNtjEERqGuJr1g6zBaqQUFh+Ju0ghOO2qLjOp96FxCuCY19kJ5ykQ9NmD5T0P/g3EeB0
         8fDA==
X-Received: by 10.68.202.40 with SMTP id kf8mr12675035pbc.119.1444750703953;
        Tue, 13 Oct 2015 08:38:23 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yz3sm4562390pbb.37.2015.10.13.08.38.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Oct 2015 08:38:23 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/3] Staging: iio: Remove exceptional & on function name
Date: Tue, 13 Oct 2015 21:07:48 +0530
Message-Id: <1444750669-13552-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444750669-13552-1-git-send-email-shraddha.6596@gmail.com>
References: <1444750669-13552-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.561D256E.00EE,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

In this file, function names are otherwise used as pointers without &.

A simplified version of the Coccinelle semantic patch that makes this
change is as follows:

// <smpl>
@r@
identifier f;
@@

f(...) { ... }
@@
identifier r.f;
@@

- &f
+ f
// </smpl>

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/iio/adc/ad7280a.c       | 2 +-
 drivers/staging/iio/addac/adt7316.c     | 2 +-
 drivers/staging/iio/resolver/ad2s1210.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index d98e229..edbfba1 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -817,7 +817,7 @@ static int ad7280_read_raw(struct iio_dev *indio_dev,
 }
 
 static const struct iio_info ad7280_info = {
-	.read_raw = &ad7280_read_raw,
+	.read_raw = ad7280_read_raw,
 	.event_attrs = &ad7280_event_attrs_group,
 	.attrs = &ad7280_attrs_group,
 	.driver_module = THIS_MODULE,
diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index a1dd745..3adc451 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -2152,7 +2152,7 @@ int adt7316_probe(struct device *dev, struct adt7316_bus *bus,
 
 		ret = devm_request_threaded_irq(dev, chip->bus.irq,
 						NULL,
-						&adt7316_event_handler,
+						adt7316_event_handler,
 						chip->bus.irq_flags |
 						IRQF_ONESHOT,
 						indio_dev->name,
diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 7bc3e4a..3bd65f5 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -633,7 +633,7 @@ error_ret:
 }
 
 static const struct iio_info ad2s1210_info = {
-	.read_raw = &ad2s1210_read_raw,
+	.read_raw = ad2s1210_read_raw,
 	.attrs = &ad2s1210_attribute_group,
 	.driver_module = THIS_MODULE,
 };
-- 
2.1.4


