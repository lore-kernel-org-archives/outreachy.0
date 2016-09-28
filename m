X-GM-THRID: 6335430862293696512
X-Received: by 10.66.75.130 with SMTP id c2mr7861831paw.98.1475082445580;
        Wed, 28 Sep 2016 10:07:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.98.195 with SMTP id d186ls597657itc.15.gmail; Wed, 28 Sep
 2016 10:07:24 -0700 (PDT)
X-Received: by 10.66.79.199 with SMTP id l7mr7814123pax.42.1475082444443;
        Wed, 28 Sep 2016 10:07:24 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si2325633pab.2.2016.09.28.10.07.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 10:07:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id oz2so2297070pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 10:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rFvjizYgeWgLB64WyZQucGYc8rrH37kdf24X3dPkDjs=;
        b=f9VKGL+W0fd1kE9Li2sgYH7sTglxZ4b4EGaWWoGV9ug0jBlVyjMLX3YGgo6nQWXJ7I
         nboxweuXk6NyD9ujA5KL8qiBck6dSK0uSGygMdcmWs1see7il6eA/PCd1wlRKZP6s3wi
         CEn9zk2WmWIu4O/tmeOUNG3SpO14NceEtoDZ5XaPcNgT54lgPt8d+PlPoHUOfp4GC6wi
         0WdEbKidr8RbSuznrSeKs28yQcuODnO2K4kq6wO+xPI3YnFKbduwtXhn1RGZBphfH+sB
         2ULGl3TM+MPEsR8qEG1ombI6JYK2RJVJ8QsOZg2xHpxXX4gQmiGBc1VL06XkuU61qbeQ
         Ax1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rFvjizYgeWgLB64WyZQucGYc8rrH37kdf24X3dPkDjs=;
        b=DLFb0q+1eNzsLqZpjflcbQQyUi5YMb6mOk+xxLEIh3LCNBV+yuHbT85wBQBZQiQ12P
         g/m6XsrQjnpsFu3QKRMcaJtkSIE8AvUFJAR9IC/WGPdsmsd/cRvW8m4ySXimwvSHo9zP
         QqeeCi0onpCfyCkElnfX1kTjkDyLdGKzDHhoZigV5fPn9YBrnupWZviTy5FRvaowmtCl
         Uc6dBH/NJKx4wcdS0fP1Jni8d8uOKohsr8Jhbet7W61kVVlGe+Lt0tyRJn8HTSjilGdL
         EYScJsF877CWCtZB/qtzJyZbvWdPg67GnzXvFNsuoZYsUu0Gpaz/4aSC/75ndDZ14DgN
         43yg==
X-Gm-Message-State: AA6/9RlEceSb9IotrjDxEdQDpmCci1KDS2SZXn8wDTNCxSP1Eko7dQdz/8rkIKHJIcEttQ==
X-Received: by 10.66.13.34 with SMTP id e2mr41677798pac.103.1475082444258;
        Wed, 28 Sep 2016 10:07:24 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id e4sm13969888pas.21.2016.09.28.10.07.22
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 28 Sep 2016 10:07:23 -0700 (PDT)
Date: Wed, 28 Sep 2016 22:37:17 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: Michael.Hennerich@analog.com
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: gyro: add comment to mutex
Message-ID: <20160928170708.GA6196@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix the checkpatch.pl issues:
CHECK: struct mutes definition without comment

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/iio/gyro/adis16060_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index ab816a2..96230b6 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -33,7 +33,7 @@
 struct adis16060_state {
 	struct spi_device		*us_w;
 	struct spi_device		*us_r;
-	struct mutex			buf_lock;
+	struct mutex			buf_lock; /* protect tx and rx */
 
 	u8 buf[3] ____cacheline_aligned;
 };
-- 
1.9.1


