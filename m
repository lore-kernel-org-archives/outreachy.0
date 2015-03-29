X-GM-THRID: 10345330507776
X-Received: by 10.112.35.135 with SMTP id h7mr6668847lbj.23.1427634937770;
        Sun, 29 Mar 2015 06:15:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.166 with SMTP id jp6ls590212lab.101.gmail; Sun, 29 Mar
 2015 06:15:37 -0700 (PDT)
X-Received: by 10.112.17.105 with SMTP id n9mr6646580lbd.8.1427634937174;
        Sun, 29 Mar 2015 06:15:37 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id f5si80737wix.1.2015.03.29.06.15.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 06:15:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22f.google.com with SMTP id dm7so37550826wgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 06:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bRl5K6nfUgQG/r4TB+wiNnDZL+QtDGEbIbM5uEWXfXw=;
        b=Rg65BkcgzQ6Jz7Wrp0XRJt5uM1lGBTsl0AdEMXAfZmu1e6h75Cd4ttr+Z291IRFyeo
         64a9N/HoZC0EKqsAoO/5RGWUiRQeFwo0u9Odqhyj7wfmWjT+8vn8QijnKw9bQ1xCYPCG
         cuEMzv6hqErPG5VR6UTBWueoiYzTZhl7bHHXDsvEbh6UdxcaYmPxd0PRMtArp0hBfiW7
         7GpayeZs2yEkawh4fUm+6ncI7ODqN6yDK4GqeW4GK9eBnuhlb75hAxhclmGv9b6nUQir
         MBI0B6a9FLI12Q5eHhX3V2nfzxHwazOCoEG6A92Nc0EqawlhW/3GJalndi03QoF/6BaD
         wheQ==
X-Received: by 10.194.61.51 with SMTP id m19mr54350875wjr.39.1427634937099;
        Sun, 29 Mar 2015 06:15:37 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id gj16sm11155682wic.24.2015.03.29.06.15.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 06:15:36 -0700 (PDT)
Date: Sun, 29 Mar 2015 16:14:39 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: iio: Add error check on iio_register_device()
Message-ID: <20150329131439.GA32324@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch checks if an error occurred on probe and stops the
device in order to avoid wasting power.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/meter/ade7754.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index 6335b58..f12b2e5 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -550,8 +550,15 @@ static int ade7754_probe(struct spi_device *spi)
 	/* Get the device into a sane initial state */
 	ret = ade7754_initial_setup(indio_dev);
 	if (ret)
-		return ret;
-	return iio_device_register(indio_dev);
+		goto powerdown_on_error;
+	ret = iio_device_register(indio_dev);
+	if (ret)
+		goto powerdown_on_error;
+	return ret;
+
+powerdown_on_error:
+	ade7754_stop_device(&indio_dev->dev);
+	return ret;
 }
 
 /* fixme, confirm ordering in this function */
-- 
1.9.1


