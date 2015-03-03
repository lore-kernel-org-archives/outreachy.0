X-GM-THRID: 6138556841984
X-Received: by 10.194.201.10 with SMTP id jw10mr4467382wjc.3.1425381906978;
        Tue, 03 Mar 2015 03:25:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.246.38 with SMTP id xt6ls20677lac.102.gmail; Tue, 03 Mar
 2015 03:25:06 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr4473555lah.8.1425381906304;
        Tue, 03 Mar 2015 03:25:06 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x22b.google.com (mail-we0-x22b.google.com. [2a00:1450:400c:c03::22b])
        by gmr-mx.google.com with ESMTPS id i8si83419wif.1.2015.03.03.03.25.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 03:25:06 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) client-ip=2a00:1450:400c:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22b.google.com with SMTP id m14so39155591wev.8
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 03:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LwOYkhGvMsYAUPbzYF+zrNdnR4HX88U/gcGol8v8+u8=;
        b=wpwc63otHlMBGQt7iorYjde3xjB7JX4+Lw5dEi5ZHg5hkPS5ERXLSFbclSebmcvxsJ
         8WpfIQZ6nNF+wBO2WvBFY8V30sfYHn0bypCdWePytE2O1cK3r4XFJejobvz1y9vTblgY
         A0oi1t58HExwlTZYPI4/20pIZY7hRvilrCjn9M9CAc7/sv4AUJu26cA4KPvOgXdY4bjX
         d0T1JJfIbueTd8dgBVBLUl+iD3C3//RdVP8q18g49m7WNN7ee6j8qLsLyQKXhnX7LFYk
         /926PhEfquId5iRU9MsDEZ+bdzpnHWufVwVDSSeKXdFg+AP1TyTRyeWLyVDgHMxmrkfA
         U8OA==
X-Received: by 10.194.133.101 with SMTP id pb5mr69685352wjb.40.1425381906215;
        Tue, 03 Mar 2015 03:25:06 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.244])
        by mx.google.com with ESMTPSA id s19sm20118008wik.18.2015.03.03.03.24.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 03:25:05 -0800 (PST)
Date: Tue, 3 Mar 2015 13:24:29 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: iio: meter: add check on return variables
Message-ID: <20150303112429.GA11861@waves>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Adds checks on variables that are used to return values. If
the value is less than zero, this indicates that an error
occured and hence a message is printed through dev_err. Labels
have been added too, since the check is done more than once.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/iio/meter/ade7758_core.c | 35 ++++++++++++++++++++------------
 1 file changed, 22 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 70e96b2..cab392f 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -303,14 +303,18 @@ static int ade7758_reset(struct device *dev)
 	int ret;
 	u8 val;
 
-	ade7758_spi_read_reg_8(dev,
-			ADE7758_OPMODE,
-			&val);
+	ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
+	if (ret < 0) {
+		dev_err(dev, "failed to read from device");
+		goto error_ret;
+	}
 	val |= 1 << 6; /* Software Chip Reset */
-	ret = ade7758_spi_write_reg_8(dev,
-			ADE7758_OPMODE,
-			val);
-
+	ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
+	if (ret < 0) {
+		dev_err(dev, "failed to reset device");
+		goto error_ret;
+	}
+error_ret:
 	return ret;
 }
 
@@ -444,14 +448,19 @@ static int ade7758_stop_device(struct device *dev)
 	int ret;
 	u8 val;
 
-	ade7758_spi_read_reg_8(dev,
-			ADE7758_OPMODE,
-			&val);
+	ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
+	if (ret < 0) {
+		dev_err(dev, "failed to read from device");
+		goto error_ret;
+	}
 	val |= 7 << 3;  /* ADE7758 powered down */
-	ret = ade7758_spi_write_reg_8(dev,
-			ADE7758_OPMODE,
-			val);
+	ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
+	if (ret < 0) {
+		dev_err(dev, "failed to stop device");
+		goto error_ret;
+	}
 
+error_ret:
 	return ret;
 }
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

