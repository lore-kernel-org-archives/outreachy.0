X-GM-THRID: 6332017798578962432
X-Received: by 10.25.190.137 with SMTP id o131mr660152lff.17.1474287779293;
        Mon, 19 Sep 2016 05:22:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.4 with SMTP id v4ls1450550wmv.21.gmail; Mon, 19 Sep 2016
 05:22:58 -0700 (PDT)
X-Received: by 10.28.56.199 with SMTP id f190mr489186wma.8.1474287778280;
        Mon, 19 Sep 2016 05:22:58 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id w79si1144770wmw.0.2016.09.19.05.22.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 05:22:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id l132so13466190wmf.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 05:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+T43uZJz2SaK0eU56cf6abg9ILj5ybao/72U9auh8/w=;
        b=of2xnM/hr6tS9XTQ50q8KfPP6HA/zEGMRjCMxpToJJ+v/9PwHAHf0Rqz3gxmqHLFXi
         R7fK5Rs7YAw1fede7dXwaTfK2gkn5Ifxh+z26aUZdV8S2q744efU4v0zShfp5SutRmRb
         oz+QHAf9u2ACA6ITRztb3cUp6CH6qwV/u1PE9Tf1/XIaH+NatnGg1ZhGjI1p3zVkIBTF
         BUChyaLezgwGUoeYt1XZo37ye5rGtKXQbnFwoh9demoXDG+pIprhMJ/FzveMmysAs1vz
         pJ9qIEe9jgonQgkooE5HZQ2fR8JFR51k2OmSnaE8qMVijpSJ6fDAHIvr6kZag1ZI8cpz
         pzhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+T43uZJz2SaK0eU56cf6abg9ILj5ybao/72U9auh8/w=;
        b=DDRcDH8sFk7kF1luL8fy3ad+xraycznRRK1YCCXzCaWsRqBQCINsE0lk/pinDQowl/
         NEDOHlSRw/X1g+7lklJjF9tbJA4K+lrMBIuFEW1E/kGirp8siQ1ku/viHVMCpMNoe5kc
         WcON52HLw+A3NAT9mtRdVTBnM7ovL6+r9g0e/6+cjOVVMBPMQQiWimU9RV3Z7r1qc7eC
         ort5PgWVR3oNtAjq/xp4e1hEiwtLxYVPCO6YEdp2rFUo7Dt9ksWS/yhI0/1hhcGWbv5P
         jOJpuFFVu5JUSKItYQYs2/63Gc1Y6Nr8ZhJnnOs5urfvZBHkmHbsKY6QYBbbmlVkrec/
         P3VA==
X-Gm-Message-State: AE9vXwOlvlMPK+VX3A5rcEU3dl3uGXKQxvvRCYhWeOiXP9hxRIw+QYzlWBvqH1Fuizoqhw==
X-Received: by 10.28.65.84 with SMTP id o81mr10244865wma.83.1474287777882;
        Mon, 19 Sep 2016 05:22:57 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id va3sm22909720wjb.18.2016.09.19.05.22.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 05:22:56 -0700 (PDT)
Date: Mon, 19 Sep 2016 15:22:56 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: meter: ade7758_ring: Match alignment with open
 parenthesis
Message-ID: <20160919122255.GA11414@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch indents the lines to match alignment with the open parenthesis.
Also, it organizes the parameters on a single line, in case the
modifications do not break the rule of 80 characters per line.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/iio/meter/ade7758_ring.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_ring.c b/drivers/staging/iio/meter/ade7758_ring.c
index a6b76d4..57c213d 100644
--- a/drivers/staging/iio/meter/ade7758_ring.c
+++ b/drivers/staging/iio/meter/ade7758_ring.c
@@ -38,18 +38,14 @@ static int ade7758_write_waveform_type(struct device *dev, unsigned int type)
 	int ret;
 	u8 reg;
 
-	ret = ade7758_spi_read_reg_8(dev,
-			ADE7758_WAVMODE,
-			&reg);
+	ret = ade7758_spi_read_reg_8(dev, ADE7758_WAVMODE, &reg);
 	if (ret)
 		goto out;
 
 	reg &= ~0x1F;
 	reg |= type & 0x1F;
 
-	ret = ade7758_spi_write_reg_8(dev,
-			ADE7758_WAVMODE,
-			reg);
+	ret = ade7758_spi_write_reg_8(dev, ADE7758_WAVMODE, reg);
 out:
 	return ret;
 }
@@ -94,7 +90,7 @@ static int ade7758_ring_preenable(struct iio_dev *indio_dev)
 				 indio_dev->masklength);
 
 	ade7758_write_waveform_type(&indio_dev->dev,
-		indio_dev->channels[channel].address);
+				    indio_dev->channels[channel].address);
 
 	return 0;
 }
-- 
2.7.4


