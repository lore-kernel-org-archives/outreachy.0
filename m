X-GM-THRID: 6333979787087839232
X-Received: by 10.67.7.4 with SMTP id cy4mr3447886pad.30.1474744590444;
        Sat, 24 Sep 2016 12:16:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.228.13 with SMTP id o13ls1336650ith.4.canary; Sat, 24 Sep
 2016 12:16:27 -0700 (PDT)
X-Received: by 10.107.11.106 with SMTP id v103mr3292628ioi.37.1474744587963;
        Sat, 24 Sep 2016 12:16:27 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id um12si3067091pab.2.2016.09.24.12.16.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 12:16:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so6851592pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 12:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sltz8M2GBBU7qBJ4xjq1UXCwwxyj/A2oc6DaYlJgPNM=;
        b=AygdtwaiEYlH+mWfFEdYfsc1EiEweYLuwX2PN1APDn+fc4vpuhm0+ca+wjfWVK+V5/
         A01YIDtkPTMFTxl4ZKu3GDkkYM+wD/WIFyY5olQjVF95xEbIuExUMNGBSELEdDu/zgSw
         1FIiUSvRclHKnFndobkzw54TAMNARdsTW7Njdu3UuPspte/TQ+XVszoUBOTciPplm64y
         yvS21TqKR7qlTDxtB/yFYOZvr9S4kV+zcq5HYocoD5q/6ng5fBZiA6aKFDNdAn+dQzE8
         3OGmFJ6ZZY0flb88XEOODN5B3Y1ADDqHQjQXn6FhePXSlJUWymq10k2AS4ADjDElcfM7
         fuAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sltz8M2GBBU7qBJ4xjq1UXCwwxyj/A2oc6DaYlJgPNM=;
        b=lK2A3bVMfo3H3kQJorwQ9O+M4cBgkbnOB/q4fT31Efh+J08bGZE/baRzc/m0DYYXcD
         MdDHfVWEE6e8hH0wPtOzLBc2FprH14wCxdbJVV/KolqzZTaFOIoOV+TvqDONkZ7w/1Vh
         PuyaIyY5hRnzoFllt5YnWiPpkVHHKgVcsXdhQC54pFhtyQiIuig1Y7Y9Qm8BcnTJbOyk
         PC8yGreBCgn/y+Y5pPjeSOhTurrNOOpCV9fYh24zivq713BZz/vihK8iw+jusnCPN6y5
         Pz6n3aNGwLBYkl5W3c2hTY3Bpo7UGYfrun37twZbeF1oN1/CcqfDyyKX+/2i/3i+CZQl
         tIXA==
X-Gm-Message-State: AE9vXwMgVVTygvm0vUO+6BTYdFPjw0devV7LHsg1Anoan4AINSewohVehOMgZhafMahPng==
X-Received: by 10.98.15.210 with SMTP id 79mr23862209pfp.183.1474744587764;
        Sat, 24 Sep 2016 12:16:27 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from localhost.localdomain ([182.70.100.235])
        by smtp.gmail.com with ESMTPSA id zy17sm20212419pab.28.2016.09.24.12.16.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 12:16:27 -0700 (PDT)
Date: Sun, 25 Sep 2016 00:46:21 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] drivers: iio: chemical: Fix sparse endianness warnings cast
 to restricted __be16
Message-ID: <20160924191621.GA18812@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix the following sparse endianness warnings:

drivers/iio/chemical/atlas-ph-sensor.c:215:9: warning: cast to restricted __be16
drivers/iio/chemical/atlas-ph-sensor.c:215:9: warning: cast to restricted __be16
drivers/iio/chemical/atlas-ph-sensor.c:215:9: warning: cast to restricted __be16
drivers/iio/chemical/atlas-ph-sensor.c:215:9: warning: cast to restricted __be16
drivers/iio/chemical/atlas-ph-sensor.c:215:9: warning: cast to restricted __be16
drivers/iio/chemical/atlas-ph-sensor.c:215:9: warning: cast to restricted __be16
drivers/iio/chemical/atlas-ph-sensor.c:215:9: warning: cast to restricted __be16
drivers/iio/chemical/atlas-ph-sensor.c:215:9: warning: cast to restricted __be16

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/iio/chemical/atlas-ph-sensor.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/chemical/atlas-ph-sensor.c b/drivers/iio/chemical/atlas-ph-sensor.c
index 407f141..a3fbdb7 100644
--- a/drivers/iio/chemical/atlas-ph-sensor.c
+++ b/drivers/iio/chemical/atlas-ph-sensor.c
@@ -207,13 +207,14 @@ static int atlas_check_ec_calibration(struct atlas_data *data)
 	struct device *dev = &data->client->dev;
 	int ret;
 	unsigned int val;
+	__be16	rval;
 
-	ret = regmap_bulk_read(data->regmap, ATLAS_REG_EC_PROBE, &val, 2);
+	ret = regmap_bulk_read(data->regmap, ATLAS_REG_EC_PROBE, &rval, 2);
 	if (ret)
 		return ret;
 
-	dev_info(dev, "probe set to K = %d.%.2d", be16_to_cpu(val) / 100,
-						 be16_to_cpu(val) % 100);
+	val = be16_to_cpu(rval);
+	dev_info(dev, "probe set to K = %d.%.2d", val / 100, val % 100);
 
 	ret = regmap_read(data->regmap, ATLAS_REG_EC_CALIB_STATUS, &val);
 	if (ret)
-- 
1.8.3.1


