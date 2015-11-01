X-GM-THRID: 6212166539594956800
X-Received: by 10.28.133.3 with SMTP id h3mr1352693wmd.0.1446382764368;
        Sun, 01 Nov 2015 04:59:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.92.138 with SMTP id q132ls457640wmb.25.gmail; Sun, 01 Nov
 2015 04:59:24 -0800 (PST)
X-Received: by 10.28.211.201 with SMTP id k192mr1344606wmg.3.1446382764028;
        Sun, 01 Nov 2015 04:59:24 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id g18si360739wmd.1.2015.11.01.04.59.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 04:59:24 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x230.google.com with SMTP id g8so41252395wme.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 04:59:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Lmpk+VKdRwDzq14B1u8xO1sMZpaEYmb69L1nc8mFRds=;
        b=astH5kh3iCAIiSGICLY+5TbRr8emstaVFEBUjX9Jk3oI367GlkXij044d7Zjn44SMc
         cAvHY2T4A+7LEGGU0wUkgMVluibHSye0zjBwV4b8nGtHAfFz+6jIiEs7XDJ6X9uMLFyr
         vaYlJFXj73v3cYKwgwRN4j3XveYNoiqIC/Osq9dIB30JIUCXiJ3Qvr9IX677Ylgd1rf1
         9ptkS7mVcLfqtYOVB49+tvP2+ETLLD9vpiQeLEQ+SieBHyWtpK6MQYmIzBV8JXDowNF3
         jP96QX2Vhgsjh2gi70Z/QF7EJDIB4qTSLaIOUtbNVTurzbwGFEqIsdn5qIqh2GfxN24V
         KF8g==
X-Received: by 10.28.146.146 with SMTP id u140mr7525302wmd.85.1446382763944;
        Sun, 01 Nov 2015 04:59:23 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id r13sm12750421wmg.12.2015.11.01.04.59.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 04:59:23 -0800 (PST)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: linux-iio@vger.kernel.org,
	jic23@kernel.org
Cc: outreachy-kernel@googlegroups.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 2/2] iio: imu: check sscanf return value
Date: Sun,  1 Nov 2015 14:58:45 +0200
Message-Id: <1446382725-11765-2-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446382725-11765-1-git-send-email-ciorneiioana@gmail.com>
References: <1446382725-11765-1-git-send-email-ciorneiioana@gmail.com>

This patch fixes the following checkpatch warning:
WARNING: unchecked sscanf return value

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---

based on linux-iio testing branch

 drivers/iio/imu/adis16400_core.c | 6 +++++-
 drivers/iio/imu/adis16480.c      | 4 +++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/imu/adis16400_core.c b/drivers/iio/imu/adis16400_core.c
index abc4c50..72bcc24 100644
--- a/drivers/iio/imu/adis16400_core.c
+++ b/drivers/iio/imu/adis16400_core.c
@@ -288,7 +288,11 @@ static int adis16400_initial_setup(struct iio_dev *indio_dev)
 		if (ret)
 			goto err_ret;
 
-		sscanf(indio_dev->name, "adis%u\n", &device_id);
+		ret = sscanf(indio_dev->name, "adis%u\n", &device_id);
+		if (ret != 1) {
+			ret = -EINVAL;
+			goto err_ret;
+		}
 
 		if (prod_id != device_id)
 			dev_warn(&indio_dev->dev, "Device ID(%u) and product ID(%u) do not match.",
diff --git a/drivers/iio/imu/adis16480.c b/drivers/iio/imu/adis16480.c
index b94bfd3..16d4304 100644
--- a/drivers/iio/imu/adis16480.c
+++ b/drivers/iio/imu/adis16480.c
@@ -765,7 +765,9 @@ static int adis16480_initial_setup(struct iio_dev *indio_dev)
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


