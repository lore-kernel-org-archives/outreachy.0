X-GM-THRID: 4475579269120
X-Received: by 10.112.181.198 with SMTP id dy6mr2084673lbc.22.1425042572915;
        Fri, 27 Feb 2015 05:09:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.207.101 with SMTP id lv5ls162728lac.22.gmail; Fri, 27 Feb
 2015 05:09:32 -0800 (PST)
X-Received: by 10.112.219.102 with SMTP id pn6mr2027767lbc.12.1425042572490;
        Fri, 27 Feb 2015 05:09:32 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id cl5si110358wib.3.2015.02.27.05.09.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 05:09:32 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22a.google.com with SMTP id x12so20305567wgg.11
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 05:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ceQ2daUtlzqKMAe6SscKO057T7N+daiyg7NiaafE7rE=;
        b=HQZJVY8xUfGccF9QggVo7sFuDQmeRNcFLRvWHvA6t0i/sVgZCOZW9Xv1VuCIYqvNSn
         4l7KbJ2D4hYIGbrG++WwexoZMjZB3gUcV0ptzx1wOGrosGdD9P4FOPsPZG6yg4LK1n/t
         hbAZJ7kLDOpkYZnTyjCcm1rj3aBvm4kGSD7iKqRewL0hZ2JC9jYcl3n0Y2qC7JnJUe61
         4UkPvzFKq5H+ldGZWbidrkoXA7ZkvBn47gkDVR8CMLrdx1ou0FaLtfaAIVZ6K6tTIzdY
         GFAPcdEk6EsVTCo4yCOHD/cBryLRlmBCn5w0lf62SHoeghvX7oalz21Qc1MZg13QpY/d
         xYwg==
X-Received: by 10.180.12.84 with SMTP id w20mr6457781wib.9.1425042571361;
        Fri, 27 Feb 2015 05:09:31 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id dn7sm2758621wid.12.2015.02.27.05.09.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 05:09:30 -0800 (PST)
Date: Fri, 27 Feb 2015 15:09:21 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 21/24] staging: iio: meter: remove unused variables
Message-ID: <a3c512e1b92259c27416e0d8d0fd4a4db59fc0a9.1425035012.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes variables that were simply used to store the
return value of a function call before returning it.

The issue was detected and resolved using the following
coccinelle script:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/iio/meter/ade7758_core.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 70e96b2..3d2fae4 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -300,18 +300,15 @@ error_ret:
 
 static int ade7758_reset(struct device *dev)
 {
-	int ret;
 	u8 val;
 
 	ade7758_spi_read_reg_8(dev,
 			ADE7758_OPMODE,
 			&val);
 	val |= 1 << 6; /* Software Chip Reset */
-	ret = ade7758_spi_write_reg_8(dev,
+	return ade7758_spi_write_reg_8(dev,
 			ADE7758_OPMODE,
 			val);
-
-	return ret;
 }
 
 static IIO_DEV_ATTR_VPEAK(S_IWUSR | S_IRUGO,
@@ -441,18 +438,15 @@ error_ret:
 /* Power down the device */
 static int ade7758_stop_device(struct device *dev)
 {
-	int ret;
 	u8 val;
 
 	ade7758_spi_read_reg_8(dev,
 			ADE7758_OPMODE,
 			&val);
 	val |= 7 << 3;  /* ADE7758 powered down */
-	ret = ade7758_spi_write_reg_8(dev,
+	return ade7758_spi_write_reg_8(dev,
 			ADE7758_OPMODE,
 			val);
-
-	return ret;
 }
 
 static int ade7758_initial_setup(struct iio_dev *indio_dev)
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

