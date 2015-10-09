X-GM-THRID: 6202672545102036992
X-Received: by 10.112.147.7 with SMTP id tg7mr3003828lbb.16.1444420306407;
        Fri, 09 Oct 2015 12:51:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.100 with SMTP id w4ls429331wiz.25.gmail; Fri, 09 Oct
 2015 12:51:46 -0700 (PDT)
X-Received: by 10.180.189.49 with SMTP id gf17mr180805wic.6.1444420306094;
        Fri, 09 Oct 2015 12:51:46 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id bj4si12523wib.1.2015.10.09.12.51.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:51:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id ge5so82296267wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=onyd4Gal3Rl0cw4NTogB3tmheC29QetvPjdUiXflrvE=;
        b=dzV1Fkeb937s4u+uqmOXQiC4izahxHzxzKezI/5mOwoao3B7AvhLl366kmtSndyu6y
         1ZKOB+5HNkWxA2Zr6X2DYbfTLCvtVkgbZtPsxBRgko+Xvimkl1hP5Nn6d5u5zHI2lpTH
         TRdV/CIJWwqtiZi8YfYrfje27hzxhyvfq8iT3ekS+NxiqdjzuQmByGQkNxnjZ3svEmMx
         3eMl2bHn9enOBSTbGBorPY+hAPxZ8l1A/or3FLjwS17w3RwyURfTX8c+hP1Y1lZqMwgO
         dpmjSG1Q8MsJZCQBseT8MwWH9/vOL0lPvHMrdBsYvENWJYu8H1EfsZFC9J6G5Ycesl0b
         UgcA==
X-Received: by 10.180.82.74 with SMTP id g10mr1131117wiy.2.1444420306010;
        Fri, 09 Oct 2015 12:51:46 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id wj4sm3895064wjb.10.2015.10.09.12.51.45
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 12:51:45 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v3 5/9] staging: iio: adc: add spaces around binary operators
Date: Fri,  9 Oct 2015 22:51:04 +0300
Message-Id: <d94402f948a0d2561ee046fd5fcb56ea562ab1bf.1444419393.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>

Add spaces around binary operators like -, +, * etc
in order to improve readability

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---

Changes in v2:
    - nothing
Changes in v3:
    - nothing

 drivers/staging/iio/adc/ad7192.c  | 2 +-
 drivers/staging/iio/adc/ad7280a.c | 4 ++--
 drivers/staging/iio/adc/ad7816.c  | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index e7212c8..1bae258 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -377,7 +377,7 @@ ad7192_show_scale_available(struct device *dev,
 }
 
 static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
-			     in_voltage-voltage_scale_available,
+			     in_voltage - voltage_scale_available,
 			     S_IRUGO, ad7192_show_scale_available, NULL, 0);
 
 static IIO_DEVICE_ATTR(in_voltage_scale_available, S_IRUGO,
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 2c07198..e8e1eb1 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -748,14 +748,14 @@ out:
 }
 
 static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
-		in_voltage-voltage_thresh_low_value,
+		in_voltage - voltage_thresh_low_value,
 		S_IRUGO | S_IWUSR,
 		ad7280_read_channel_config,
 		ad7280_write_channel_config,
 		AD7280A_CELL_UNDERVOLTAGE);
 
 static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
-		in_voltage-voltage_thresh_high_value,
+		in_voltage - voltage_thresh_high_value,
 		S_IRUGO | S_IWUSR,
 		ad7280_read_channel_config,
 		ad7280_write_channel_config,
diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
index 4e954d2..6636087 100644
--- a/drivers/staging/iio/adc/ad7816.c
+++ b/drivers/staging/iio/adc/ad7816.c
@@ -48,7 +48,7 @@ struct ad7816_chip_info {
 	u16 rdwr_pin;
 	u16 convert_pin;
 	u16 busy_pin;
-	u8  oti_data[AD7816_CS_MAX+1];
+	u8  oti_data[AD7816_CS_MAX + 1];
 	u8  channel_id;	/* 0 always be temperature */
 	u8  mode;
 };
-- 
2.1.4


