X-GM-THRID: 6202672545102036992
X-Received: by 10.112.26.212 with SMTP id n20mr540587lbg.2.1444241644809;
        Wed, 07 Oct 2015 11:14:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.35.137 with SMTP id h9ls1369971wij.0.canary; Wed, 07 Oct
 2015 11:14:04 -0700 (PDT)
X-Received: by 10.180.12.170 with SMTP id z10mr673345wib.1.1444241644446;
        Wed, 07 Oct 2015 11:14:04 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id xl3si150886wib.1.2015.10.07.11.14.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 11:14:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id ge5so224935886wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 11:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ZgiNu8fk8iRDVnLaAjQ0v8lD9sul+GqEdvZwYolHyOE=;
        b=RJDItCJqqHtwuV86hphwY2UUbb39d3ri9NpNF6gJwssxRtdfxfJvOItcJug1xjtzkT
         FJ3o68CxDHnyNNnAXX/KbQtopebuDwnI0NHHnKFRsjR0kVhKKxKBbvUdUhzsraDiQo7O
         zObhcqkk+Ittky6ffmbN/486IqwRVdhNfX8EjNr0A73Etbda1/upN2geZIyzHppXmP6G
         ZJazjapQo4b8QSAZq+N4ptK5mGA6NNCAdwGYRDVA+dDt/jwCN+u5geuUByxcRvr8gV14
         aqV8Tk8FIjGJrPu4ehIF8/yeULAoSikm1AeekT6VStBqQgOLW3SxEZvdR3qNBj+0ZOvB
         0+hw==
X-Received: by 10.194.118.34 with SMTP id kj2mr2790259wjb.156.1444241644350;
        Wed, 07 Oct 2015 11:14:04 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id jf3sm3629403wic.8.2015.10.07.11.14.03
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 11:14:03 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 5/9] staging: iio: adc: add spaces around binary operators
Date: Wed,  7 Oct 2015 21:13:43 +0300
Message-Id: <15bcffe00feef9cb0483e24e627b87e0128a2c9e.1444241200.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444241200.git.ciorneiioana@gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444241200.git.ciorneiioana@gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>

Add spaces around binary operators like -, +, * etc
in order to improve readability

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing

 drivers/staging/iio/adc/ad7192.c  | 2 +-
 drivers/staging/iio/adc/ad7280a.c | 4 ++--
 drivers/staging/iio/adc/ad7816.c  | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index ab87724..495ddb6 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -376,7 +376,7 @@ static ssize_t ad7192_show_scale_available(struct device *dev,
 }
 
 static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
-			     in_voltage-voltage_scale_available,
+			     in_voltage - voltage_scale_available,
 			     S_IRUGO, ad7192_show_scale_available, NULL, 0);
 
 static IIO_DEVICE_ATTR(in_voltage_scale_available, S_IRUGO,
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index ad1a44f..8d9e7f7 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -740,14 +740,14 @@ out:
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


