X-GM-THRID: 6138556841984
X-Received: by 10.152.6.232 with SMTP id e8mr4471755laa.2.1425382068050;
        Tue, 03 Mar 2015 03:27:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.38 with SMTP id x6ls25827lax.63.gmail; Tue, 03 Mar 2015
 03:27:46 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr4520975lbc.2.1425382066530;
        Tue, 03 Mar 2015 03:27:46 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id i7si869129wif.0.2015.03.03.03.27.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 03:27:46 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id n12so39411573wgh.1
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 03:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=wTUP0L0EfuOo/qpPbw8p3rlSuWfDBtoVYXwNQHTgmCQ=;
        b=JM1ZraAzcW+EvI/HYPqBPaYv6jMjlzwEzPrg3fjboUyBZDRG6rPkZ+xfktI4in9HJq
         zkBCX/a3y+cpb//p78pjCFdDTCEBIQfZrcjIh7Z4YQGeeGedb09ZjPG4qeNq6CDpSRpM
         e3vltDDTqO+VYhJhRVoiQ3G2+mifTDkMUwrSmhHpPaUlqUXZCgmJX6ia764ZN8Z0S7Ae
         UOs3Au85ZHHCQVQI3pNxLvFyNCaQuxjjeAzP4cbgKBqsbVNGK4UCOoYSnvB9cbYhF20/
         GDdtP5Gu+/2UooL+eWwpI26Ca3AuOBcRy/cejB5OgIMRqa6z9/yGaJO+uR75XMuyHwzM
         45Hg==
X-Received: by 10.194.61.65 with SMTP id n1mr69133928wjr.53.1425382066434;
        Tue, 03 Mar 2015 03:27:46 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.244])
        by mx.google.com with ESMTPSA id e18sm879064wjz.27.2015.03.03.03.27.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 03:27:45 -0800 (PST)
Date: Tue, 3 Mar 2015 13:27:05 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: iio: meter: add check on return variables
Message-ID: <20150303112705.GA11879@waves>
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
v1: added checks on last calls only.
v2: added checks on all calls that return values along with labels.
v3: added changelog that was missed in v2.

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

