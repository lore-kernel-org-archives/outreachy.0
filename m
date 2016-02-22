X-GM-THRID: 6254203377087938560
X-Received: by 10.50.164.137 with SMTP id yq9mr4927870igb.0.1456170197746;
        Mon, 22 Feb 2016 11:43:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.20.141 with SMTP id n13ls882213obe.69.gmail; Mon, 22 Feb
 2016 11:43:17 -0800 (PST)
X-Received: by 10.182.112.193 with SMTP id is1mr28977985obb.38.1456170197389;
        Mon, 22 Feb 2016 11:43:17 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id 79si3261677pft.0.2016.02.22.11.43.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 11:43:17 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id c10so100886380pfc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 11:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=of6GoNaFB3OqbFAGZMSSwMc3j23igc31ntSApED2hCY=;
        b=Q7bS8GbTrMcxym/Naae4gX4dX2oPN8yj5/jPZZ+KoaK0EbqCiX1TtYBZIYDlFt+Gjp
         QYoSTjJen6kF5KY0KQ5ggSEYCF25zMXbT6CniqJDGVSxHXowh7YhgJP/fv4g+qQXoqDO
         3bBkB8ZOftTBLrDVrkzUplUUtaAxvKX6GpelQEZ8PvL3bPP+LznJ9Hw+ztS0L4EVNyJF
         gUItLJb+E01Hr0YIY/gYb9BmNJBuP4feibvX+8urOo1c0cQWDTmIY6gsMOpX5dvAs7HU
         6Dd4vtERkxfDOKMHyGCVKnnEPeu/fttK3lu5LJ0aDCVWZSLKOGOEEGzLFJ4PcIuV9VNK
         4dEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=of6GoNaFB3OqbFAGZMSSwMc3j23igc31ntSApED2hCY=;
        b=ffrf/mG232iLidNNMFvhAEzMwo/9+WAcOwOw/iZzzp5A52iwkm1hP3rARizLlrr3rL
         2yWGXacbrE6CBdMXLFJtUoTK9iN2X9ezvTeIVjFsIPRDSunyNOzXtYoMMVC/thGQ2USa
         k5Cwi/Xro659aOgu8AyTintI/RFaycswythlLnCW6xQiaBHlvUwYiJk02z5KS1UGMS6y
         t6fZt14IGkg5p2O4qLIRJzge7TjN7VZ8695mcIQHVMHT4L/gmFYkgwwPfOozM5S+ei5D
         fV9+g/gGK5sqM9ASyyJVy3JniQR2o/e05YYLtAi098JtjgBB/TzOr5B/Cs7I63z7n5fg
         IHrg==
X-Gm-Message-State: AG10YORRinsLMTV88d133fJ77datYqPpSOc4WpZehvTkvOaWnrRGOIUnb6AMI0nPwfQAjQ==
X-Received: by 10.98.69.78 with SMTP id s75mr41048639pfa.102.1456170197164;
        Mon, 22 Feb 2016 11:43:17 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id t12sm38691839pfa.54.2016.02.22.11.43.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 11:43:16 -0800 (PST)
Date: Tue, 23 Feb 2016 01:13:13 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: accel: Replace iio_device_register with
 devm_iio_device_register
Message-ID: <20160222194313.GA9769@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Devm_ functions allocate memory that is released when a driver
detaches. Replace iio_device_register with the resource-managed 
version devm_iio_device_register. Subsequently, remove 
iio_device_unregister from probe and remove functions of this driver.

Also, an unnecessary label was dropped.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/iio/accel/sca3000_core.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
index a8f533a..f7dd359 100644
--- a/drivers/staging/iio/accel/sca3000_core.c
+++ b/drivers/staging/iio/accel/sca3000_core.c
@@ -1123,7 +1123,7 @@ static int sca3000_probe(struct spi_device *spi)
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
 	sca3000_configure_ring(indio_dev);
-	ret = iio_device_register(indio_dev);
+	ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
 	if (ret < 0)
 		return ret;
 
@@ -1135,7 +1135,7 @@ static int sca3000_probe(struct spi_device *spi)
 					   "sca3000",
 					   indio_dev);
 		if (ret)
-			goto error_unregister_dev;
+			return ret;
 	}
 	sca3000_register_ring_funcs(indio_dev);
 	ret = sca3000_clean_setup(st);
@@ -1146,8 +1146,6 @@ static int sca3000_probe(struct spi_device *spi)
 error_free_irq:
 	if (spi->irq)
 		free_irq(spi->irq, indio_dev);
-error_unregister_dev:
-	iio_device_unregister(indio_dev);
 	return ret;
 }
 
@@ -1178,7 +1176,6 @@ static int sca3000_remove(struct spi_device *spi)
 	sca3000_stop_all_interrupts(st);
 	if (spi->irq)
 		free_irq(spi->irq, indio_dev);
-	iio_device_unregister(indio_dev);
 	sca3000_unconfigure_ring(indio_dev);
 
 	return 0;
-- 
1.9.1


