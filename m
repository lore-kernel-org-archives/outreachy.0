X-GM-THRID: 6249285930055630848
X-Received: by 10.66.102.8 with SMTP id fk8mr31704853pab.40.1455025265746;
        Tue, 09 Feb 2016 05:41:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.7 with SMTP id rs7ls805054igb.14.gmail; Tue, 09 Feb
 2016 05:41:05 -0800 (PST)
X-Received: by 10.50.61.132 with SMTP id p4mr4180001igr.0.1455025265373;
        Tue, 09 Feb 2016 05:41:05 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x22c.google.com (mail-qg0-x22c.google.com. [2607:f8b0:400d:c04::22c])
        by gmr-mx.google.com with ESMTPS id g136si423745ywb.5.2016.02.09.05.41.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 05:41:05 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) client-ip=2607:f8b0:400d:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22c.google.com with SMTP id y89so66444424qge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 05:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bvVKYanj54mgq0rI8Q3+tlrHB4mlKPuYcfM0mFyds4U=;
        b=qUJEy79gTncakiKiG60ME9/rk23T+8Mt1I7KQdxXvK1F+sKlZHHBbLOCsvzFIs1Mcl
         D8qZyt4Uz2Kmx37Fg9NmgtxFJjulLS4krLZaUHjHyYjozUEtsUkSuDN7zUj1S3o0/2EW
         akb+W8xXYwRRZZZZHLYRlXEI0f2XHw5r23GEFH8z6mamG5u/Vign0hyh8KT/+IlBjXKT
         a1RjkDmp5kpJUIXSGG1meMbAS6HztVWYOZrhUEsvsOu1SU55kQ+MnI+sUAW+hdscbAU9
         eF2o9a01cBASkA9po13/qo5URmcMRoh2ztXJqJrd6ndB0w7hpYKl2G4fj+jVTIYG/vZc
         i8Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=bvVKYanj54mgq0rI8Q3+tlrHB4mlKPuYcfM0mFyds4U=;
        b=MzN9c8GE0wNVCoMm3SmSqdZHJcQ1DNz5gg4aRXYRO6tBs+f+jrmmt/ENfuuSqeuaIu
         gbkwrW2GdiYCZYSu2B0cY9CdvIB5yl+07MsEdfp48cqJgudVAZLiGfewL/SsSJHrySfT
         WYMuMcs88ZAl6KCjz7/+dZeUXbbEaBF2vHRBvh9/MSukww5DVf2znDOonNp50dy8BGCB
         nJ325uemlb9n7P0tz1Ybk556Kn1cmL5CxEKj1f5tt1vnEiiBnh/JMrynf68Q5UJjvXtE
         RwkxbnSqhIVEwnKWYIx8G2QTCLdUuWJCbysE/thtMRrRXFYNsTgk2arMrRZjXydQneng
         lM6Q==
X-Gm-Message-State: AG10YORjJY0OXk78F3Dhc2v67UEKmrnL+AXvmbbBnk2CLVGCEdRNpjgWbfwr1cSgHQ0wDg==
X-Received: by 10.140.25.149 with SMTP id 21mr41975204qgt.89.1455025265215;
        Tue, 09 Feb 2016 05:41:05 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id s23sm4012475qks.31.2016.02.09.05.41.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 05:41:04 -0800 (PST)
Date: Tue, 9 Feb 2016 13:40:28 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: Remove parantheses around right hand side of
 assignment
Message-ID: <20160209184028.GA5758@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove parantheses on the right hand side of assignments as they are not
needed. Coccinelle patch used:
@@
expression a, b, c, d;
@@
  
(
  a = (c == d)
|
  a =
- (
  b
- )
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/iio/adc/ad7280a.c        | 4 ++--
 drivers/staging/iio/light/tsl2x7x_core.c | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index f45ebed..62e5eca 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -214,8 +214,8 @@ static int __ad7280_read32(struct ad7280_state *st, unsigned *val)
 static int ad7280_write(struct ad7280_state *st, unsigned devaddr,
 			unsigned addr, bool all, unsigned val)
 {
-	unsigned reg = (devaddr << 27 | addr << 21 |
-			(val & 0xFF) << 13 | all << 12);
+	unsigned reg = devaddr << 27 | addr << 21 |
+			(val & 0xFF) << 13 | all << 12;
 
 	reg |= ad7280_calc_crc8(st->crc_tab, reg >> 11) << 3 | 0x2;
 	st->buf[0] = cpu_to_be32(reg);
diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 5b1c165..2a62718 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -687,9 +687,9 @@ static int tsl2x7x_chip_on(struct iio_dev *indio_dev)
 
 	/* Set the gain based on tsl2x7x_settings struct */
 	chip->tsl2x7x_config[TSL2X7X_GAIN] =
-		(chip->tsl2x7x_settings.als_gain |
+		chip->tsl2x7x_settings.als_gain |
 			(TSL2X7X_mA100 | TSL2X7X_DIODE1)
-			| ((chip->tsl2x7x_settings.prox_gain) << 2));
+			| ((chip->tsl2x7x_settings.prox_gain) << 2);
 
 	/* set chip struct re scaling and saturation */
 	chip->als_saturation = als_count * 922; /* 90% of full scale */
@@ -983,7 +983,7 @@ static ssize_t tsl2x7x_als_time_store(struct device *dev,
 
 	result.fract /= 3;
 	chip->tsl2x7x_settings.als_time =
-			(TSL2X7X_MAX_TIMER_CNT - (u8)result.fract);
+			TSL2X7X_MAX_TIMER_CNT - (u8)result.fract;
 
 	dev_info(&chip->client->dev, "%s: als time = %d",
 		__func__, chip->tsl2x7x_settings.als_time);
-- 
2.5.0


