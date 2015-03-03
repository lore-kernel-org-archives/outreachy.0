X-GM-THRID: 6138556841984
X-Received: by 10.152.4.229 with SMTP id n5mr4231138lan.1.1425358033809;
        Mon, 02 Mar 2015 20:47:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.166 with SMTP id t6ls526328lat.83.gmail; Mon, 02 Mar
 2015 20:47:12 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr4330666lbb.13.1425358032365;
        Mon, 02 Mar 2015 20:47:12 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id v5si312598wif.3.2015.03.02.20.47.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 20:47:12 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgha1 with SMTP id a1so37581961wgh.12
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 20:47:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=eHUR0BebFcwUBu23pxJbNvPDFoIrXV+i/LK2TBOsFrE=;
        b=JLRwxbf4iT1xNTIJmgrd+rm/XWLvkQ7zTZksidvjxPkXndJeMoaswfkdGE+rEj+gCZ
         hEOVxLOCyKtlI7uGJRipsR6TIrfn6srNpTZ2OPdYeJyy6EI3rREGYQVidVxE1DV875BP
         uiDFzHsh8ypw3wl2euqqNxu1UtTJVZE585q24G02gKHAkaBw6fWLroO3oGHiCx4orDsq
         wmqRQDDTIxU6q9Jui5QseGNNmFTAC95oouWvsCQyg/qYRHwRSFfq8ZeGNqgGIhHAQQTD
         8Zm44vj2Qy5ewO0Z4wca8Ti1xBGGOuHTLe/djev1dTGglcfED5j8HWY9/9+LZvgrkhOo
         Jwdw==
X-Received: by 10.180.79.227 with SMTP id m3mr42682262wix.3.1425358032280;
        Mon, 02 Mar 2015 20:47:12 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.214.4])
        by mx.google.com with ESMTPSA id dt7sm18760749wib.19.2015.03.02.20.47.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 20:47:11 -0800 (PST)
Date: Tue, 3 Mar 2015 06:47:08 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: iio: meter: add check on return variables
Message-ID: <1c668dc263a5d3390ae8d53e10493c40c79a314e.1425356586.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425356586.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425356586.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Adds checks on variables that are used to return values. If
the value is less than zero, this indicates that an error
occured and hence a message is printed through dev_err.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/iio/meter/ade7758_core.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 70e96b2..029d223 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -307,10 +307,9 @@ static int ade7758_reset(struct device *dev)
 			ADE7758_OPMODE,
 			&val);
 	val |= 1 << 6; /* Software Chip Reset */
-	ret = ade7758_spi_write_reg_8(dev,
-			ADE7758_OPMODE,
-			val);
-
+	ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
+	if (ret < 0)
+		dev_err(dev, "failed to reset the device");
 	return ret;
 }
 
@@ -451,7 +450,8 @@ static int ade7758_stop_device(struct device *dev)
 	ret = ade7758_spi_write_reg_8(dev,
 			ADE7758_OPMODE,
 			val);
-
+	if (ret < 0)
+		dev_err(dev, "failed to stop device");
 	return ret;
 }
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

