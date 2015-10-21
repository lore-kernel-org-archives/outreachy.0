X-GM-THRID: 6207856013446479872
X-Received: by 10.112.144.105 with SMTP id sl9mr2721372lbb.3.1445463045368;
        Wed, 21 Oct 2015 14:30:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.229 with SMTP id u5ls509952wia.5.gmail; Wed, 21 Oct 2015
 14:30:44 -0700 (PDT)
X-Received: by 10.180.79.68 with SMTP id h4mr2826581wix.6.1445463044990;
        Wed, 21 Oct 2015 14:30:44 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id cm6si10251wib.1.2015.10.21.14.30.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 14:30:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id fx6so109802201wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 14:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=vGoLhf+GIYSmQDUubt19VYEQ5FNnziqwm+aiRKI0du0=;
        b=hKBn7c2nH4JGjrKG7ZK/+PT45zjWk5cB1qx/n5snrbdoTXxgxmUtdyGtAFE6kL91yI
         fDKpgwHklVeO42AqmvjwVgoQCy0Da7NYEzQMv2fxE59YT9unxHeAQJzzsH+Az3jYwdLp
         XUYOD0fdj5ChHHekh3ov6Y4tmkKO7Rn/Y9MlUThuTxuMJMVqZMHHEeGGyBfVf5s22YHr
         ZU0W2WWGNsh9If6VjsiyqrZHi9M9DEl6Y/qoAb1p+rK8zudknlLVsdep/EGHqQhrBM3s
         7l5PrAWJNE2ZBUcONPLtf23uN/PExHs9u5nw+Ouz5OdQu3bfMqxBTAKZ9oR3bgL1EboN
         vgJA==
X-Received: by 10.194.184.166 with SMTP id ev6mr14107771wjc.125.1445463044882;
        Wed, 21 Oct 2015 14:30:44 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.120])
        by smtp.gmail.com with ESMTPSA id r9sm12767149wjz.35.2015.10.21.14.30.43
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 14:30:44 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: iio: Add error code handling
Date: Thu, 22 Oct 2015 00:30:10 +0300
Message-Id: <1445463010-3525-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Write function can return non-zero values indicating
errors. This values must be caught and handled.

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/addac/adt7316.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index 3adc451..6d67edf 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -1850,10 +1850,11 @@ static ssize_t adt7316_set_int_mask(struct device *dev,
 		mask = ADT7316_INT_MASK2_VDD;	/* disable vdd int */
 
 	ret = chip->bus.write(chip->bus.client, ADT7316_INT_MASK2, mask);
-	if (!ret) {
-		chip->int_mask &= ~ADT7316_VDD_INT_MASK;
-		chip->int_mask |= data & ADT7316_VDD_INT_MASK;
-	}
+	if (ret)
+		return -EIO;
+
+	chip->int_mask &= ~ADT7316_VDD_INT_MASK;
+	chip->int_mask |= data & ADT7316_VDD_INT_MASK;
 
 	if (data & ADT7316_TEMP_AIN_INT_MASK) {
 		if ((chip->id & ID_FAMILY_MASK) == ID_ADT73XX)
@@ -1864,6 +1865,8 @@ static ssize_t adt7316_set_int_mask(struct device *dev,
 			mask = (~data) & ADT7316_TEMP_AIN_INT_MASK;
 	}
 	ret = chip->bus.write(chip->bus.client, ADT7316_INT_MASK1, mask);
+	if (ret)
+		return -EIO;
 
 	chip->int_mask = mask;
 
-- 
1.9.1


