X-GM-THRID: 6202672545102036992
X-Received: by 10.194.6.170 with SMTP id c10mr6970616wja.7.1444172248430;
        Tue, 06 Oct 2015 15:57:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.91.199 with SMTP id cg7ls18555wib.27.gmail; Tue, 06 Oct
 2015 15:57:27 -0700 (PDT)
X-Received: by 10.180.210.212 with SMTP id mw20mr4123732wic.3.1444172247957;
        Tue, 06 Oct 2015 15:57:27 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id c7si659107wiy.3.2015.10.06.15.57.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 15:57:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id fx3so3770727wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 15:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=f10HXTVx+d8PmSaoAyFWiI+x80A8geIgDdpAEtOKFEY=;
        b=duIEiw2R+SPzzekd66DNYGrxZDEVPDbn164Y4OobP4Y7DWHLXUE7X5alaR/W994NJO
         yLcsNLU8LRY5cDhnzRTBqdWAJYlFOdnkkxm9rVCSrKegnUhoVOBQxU+YSixVo775jCCP
         e5UcXk7ABZXBYgWvMKVI6P4hPxvhehBPRR1KmXCt89f4Ho+hzZxzP2TySD7vdVn5Egjo
         RNF/jHZVkTW2s/JvgIZrHa4DBl5xOI1sv2NLQjCHLaouddZxRG8gMyBYcWOa2TdrTOR0
         7tOWH//aql/CuKtVnWeIWTxvIQPaifVmIX4H0a7OB0UgK4027eDu21dwvchwj91DFp/i
         hwcw==
X-Received: by 10.180.8.232 with SMTP id u8mr19094034wia.26.1444172247884;
        Tue, 06 Oct 2015 15:57:27 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id cv4sm35261421wjc.17.2015.10.06.15.57.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 15:57:27 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 05/10] staging: iio: adc: add spaces around binary operators
Date: Wed,  7 Oct 2015 01:57:05 +0300
Message-Id: <15bcffe00feef9cb0483e24e627b87e0128a2c9e.1444172066.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444172065.git.ciorneiioana@gmail.com>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444172065.git.ciorneiioana@gmail.com>
References: <cover.1444172065.git.ciorneiioana@gmail.com>

Add spaces around binary operators like -, +, * etc
in order to improve readability

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
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


