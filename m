X-GM-THRID: 6202672545102036992
X-Received: by 10.112.12.132 with SMTP id y4mr1106261lbb.0.1444846732373;
        Wed, 14 Oct 2015 11:18:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.77.80 with SMTP id a77ls95051lfb.70.gmail; Wed, 14 Oct 2015
 11:18:50 -0700 (PDT)
X-Received: by 10.112.54.197 with SMTP id l5mr1093172lbp.21.1444846730817;
        Wed, 14 Oct 2015 11:18:50 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id ch7si366467wib.2.2015.10.14.11.18.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:18:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id q12so95875755wie.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=wQttK6vxP2cJ9xa3NjmFeDjdlAiM+KGcgUYPUNCN/Ig=;
        b=CnePtwVdEMZBpfoHoOHTwOzQU6IFrezDv+YNs2E2HuSYyqiFB/gBTb1ZHAtBRS3woZ
         OtGm4VZBGUM1MW6Of1lQolvMMGILnQ+j3+WV4j951ajETvWtDBc7BEHXODcG3KaWpWEA
         J/+mKovj020tnUcCijvxT9CpjuuXyxawutH+qxoeKLjWHHbeEu7pvZ6TW4h4FaumhWi2
         qD5RI05smSc0ZNUsTsyLjyJbLHw97KKfwzt/7dCnS/IEvkAOLCxItGi2pGGrubwfdiUY
         TutoinoBzYrY9jNOlPZlsQfb7gNilQnGlfxh7PGTqY5y47qzC5c2Gg5SjlnA4KY7zZfB
         8WbQ==
X-Received: by 10.194.87.74 with SMTP id v10mr5505836wjz.114.1444846730716;
        Wed, 14 Oct 2015 11:18:50 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id p4sm20285140wia.15.2015.10.14.11.18.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 11:18:50 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v4 5/9] staging: iio: adc: add spaces around binary operators
Date: Wed, 14 Oct 2015 21:14:16 +0300
Message-Id: <e1f448b6f32e6e7fd0329a4932f7163e8a6963a6.1444845354.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>

Add spaces around binary operators like -, +, * etc
in order to improve readability

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing
Changes in v3:
    - nothing
Changes in v4:
    - invert some changes in order to not break user space


 drivers/staging/iio/adc/ad7816.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

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


