X-GM-THRID: 6212166539594956800
X-Received: by 10.112.202.168 with SMTP id kj8mr501998lbc.23.1446382733769;
        Sun, 01 Nov 2015 04:58:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.207.81 with SMTP id f78ls315386lfg.78.gmail; Sun, 01 Nov
 2015 04:58:53 -0800 (PST)
X-Received: by 10.112.149.7 with SMTP id tw7mr3379234lbb.10.1446382733190;
        Sun, 01 Nov 2015 04:58:53 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id s134si331853wmb.3.2015.11.01.04.58.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 04:58:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x233.google.com with SMTP id c75so41238988wme.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 04:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=19glxDC7xsd7CgLDqv0nEUGku5DAnQDAxyl99nKuRkU=;
        b=CsnLwXaywVqLN8SJe4pQPouUSAC7MlkxzPUdG9T7asR84cm6r4pwCZRzTFsB83W8n9
         TLvzQ5aorwATgvVziYm+tisEURgMmq7qQ4iUdU64I1lCFuANUMPgTO0Fy76pAhZh0VI7
         1qirQERdA7z9oqINYej2Wew3PUxy2i67wvpiDH3F2RWSS/rsMNZNyvxf0N9eDVG7OgvE
         CLiLyaFF/jZYqJWHMj8ZgBXtoSMZqOOi3Gy1PoOlhYnQ5FkO2disTF1LWXM1KjxS2quw
         1qsfSZJEXubULfaovzzWi4PHFpuYeVvZrjvDcFNQBs7NTY/cnd8MlQExJISTuD67wS5S
         K6Ng==
X-Received: by 10.28.218.72 with SMTP id r69mr8188594wmg.98.1446382733070;
        Sun, 01 Nov 2015 04:58:53 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id r13sm12750421wmg.12.2015.11.01.04.58.52
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 04:58:52 -0800 (PST)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: linux-iio@vger.kernel.org,
	jic23@kernel.org
Cc: outreachy-kernel@googlegroups.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 1/2] iio: gyro: check sscanf return value
Date: Sun,  1 Nov 2015 14:58:44 +0200
Message-Id: <1446382725-11765-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

This patch fixes the checkpatch warnings:
WARNING: unchecked sscanf return value

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---

based on linux-iio/testing branch

 drivers/iio/gyro/adis16136.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/gyro/adis16136.c b/drivers/iio/gyro/adis16136.c
index 26de876..bb09bff 100644
--- a/drivers/iio/gyro/adis16136.c
+++ b/drivers/iio/gyro/adis16136.c
@@ -435,7 +435,9 @@ static int adis16136_initial_setup(struct iio_dev *indio_dev)
 	if (ret)
 		return ret;
 
-	sscanf(indio_dev->name, "adis%u\n", &device_id);
+	ret = sscanf(indio_dev->name, "adis%u\n", &device_id);
+	if (ret != 1)
+		return -EINVAL;
 
 	if (prod_id != device_id)
 		dev_warn(&indio_dev->dev, "Device ID(%u) and product ID(%u) do not match.",
-- 
2.1.4


