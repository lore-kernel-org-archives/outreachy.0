X-GM-THRID: 9152848986112
X-Received: by 10.180.9.228 with SMTP id d4mr828563wib.1.1426792793700;
        Thu, 19 Mar 2015 12:19:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.11.97 with SMTP id p1ls196750wib.51.gmail; Thu, 19 Mar
 2015 12:19:53 -0700 (PDT)
X-Received: by 10.194.161.194 with SMTP id xu2mr12387324wjb.1.1426792793454;
        Thu, 19 Mar 2015 12:19:53 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id el6si482370wib.0.2015.03.19.12.19.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 12:19:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wifj2 with SMTP id j2so78198905wif.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 12:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=XRZZ6zUewC4DVJrKuYU7PIq88B2ivyQ1gUZ89vnURrY=;
        b=0YVDmRUyhslfd3z18NDEGdYlbCXxYNfjkHp18QMSZy/IqZpP5uuSlsd7TgMzZw1OAi
         UIhk0SxIfW9q9Loke1shoAcXZuvOfcAHIEo5b7nJlPOXwSwwoAyveoG2ebfk8iYfsYdF
         Bd7QQEKiYDvNndMBKaPbMzYt2RUSemrgVDdHewNzbI67GvVTwhU1+L976686VqYD+SK5
         FNq9NpGKxiiLQ06oZ4CuTAR2RFsi3rCLjq2TC1LrDEclGSDwjWZG/4eRlxk/l/Zh7RkB
         5jpm/2uXMlYd84fVdc3B0DiO8eVGnOR0ZZVy1OYhp3mswUUBwUHORiAtVJ55Gx599W38
         d7Ag==
X-Received: by 10.194.60.19 with SMTP id d19mr157183098wjr.133.1426792793342;
        Thu, 19 Mar 2015 12:19:53 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id nh17sm3707923wic.5.2015.03.19.12.19.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 12:19:52 -0700 (PDT)
Date: Thu, 19 Mar 2015 21:19:08 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: iio: Place driver in sleep mode on error
Message-ID: <ff210f9a653e92e158858d4beef1d9dc38106c63.1426790651.git.cristina.opriceana@gmail.com>
References: <cover.1426790651.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426790651.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Added sleep_mode label, on which the device enters sleep mode if
encounters an error after initialization. This helps saving energy
consumption.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843_core.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
index 90cc18b..59afede 100644
--- a/drivers/staging/iio/magnetometer/hmc5843_core.c
+++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
@@ -606,16 +606,17 @@ int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
 	ret = iio_triggered_buffer_setup(indio_dev, NULL,
 		hmc5843_trigger_handler, NULL);
 	if (ret < 0)
-		return ret;
+		goto sleep_mode;
 
 	ret = iio_device_register(indio_dev);
-	if (ret < 0)
-		goto buffer_cleanup;
-
+	if (ret < 0) {
+		iio_triggered_buffer_cleanup(indio_dev);
+		goto sleep_mode;
+	}
 	return 0;
 
-buffer_cleanup:
-	iio_triggered_buffer_cleanup(indio_dev);
+sleep_mode:
+	hmc5843_set_mode(iio_priv(indio_dev), HMC5843_MODE_SLEEP);
 	return ret;
 }
 EXPORT_SYMBOL(hmc5843_common_probe);
-- 
1.9.1


