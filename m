X-GM-THRID: 6664414939270086656
X-Received: by 2002:a05:660c:2c6:: with SMTP id j6mr2579637itd.9.1551789318764;
        Tue, 05 Mar 2019 04:35:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4c81:: with SMTP id q1ls6663045jad.0.gmail; Tue, 05 Mar
 2019 04:35:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqxh11DwpdzEi7SDH32B6uGMA6+OKFKdS8LBuqgaXnJy9CdiKHnv22z78N2cJ5hJVDDjiaBs
X-Received: by 2002:a02:2501:: with SMTP id g1mr1013193jag.25.1551789317944;
        Tue, 05 Mar 2019 04:35:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551789317; cv=none;
        d=google.com; s=arc-20160816;
        b=HU2DQ/25XrtGGc4GsG7A/w3ajQyTqoW3mKyD+w50GCrhNczUikqN7cjj80bs0ZkXJC
         9jFjAhMvou/vxujEGTyxoPjlqbflnjSAGZdnI2Avtm66B6s4OWRcuQDfsHX0B0sBtVhI
         Emb4O71ppttV7l6v+T6+MEOIoOBKBWTwSyrqa6bp8+X4dKkoSueqlMM7OWwsrKvIOtRy
         Fkx3DO6Wdn+fV5c1P8P0WuKyTTqZbWHIDBXkdWO9bQAZ/lEw/4EOe7zOjocq9w+YdOXs
         q5Ek0bvgd809RYiJ2kmCRoBC0tpGKY7tIJoAam8uRm1V4kkW63tBTdk+EAWeEYjTxsqm
         9/sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=sMDuSl86Ti/diWafKCRbhbwl9QcyrXshppMbtMq/w6A=;
        b=xy3LoYPicyzUaWB0HWBuY4xQc1K0PBrofsmkLqwFoVrplSEf6qK72Dhbykgvr3KwH/
         aWn0EaM7Dj5WYUy9Y1HeWf4w1KtwhsHiboHrHyzGiPP6D5lbDN8BUA4tlZUc1m70nn1q
         C+hZ5J+29xaG3x24jx7UeviV+S0oKx1EdqhiBTtSWP3qL5JdipHdsa/g85vcaw4KGm9d
         OFaDYXjeyZhfvmLbLHSjZBgTSHoi89Sllp14m28DYxkOulDpcyrcOsIAWa1ZHqA8F0fj
         cgR4lTzDsG/9RQapTcGF4J+h5YCmVRc5HGrD0awxXWK/+dYmfkFQFgB9TnpEgCB81XFA
         L//Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Orxfjtmu;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id u13si504970iof.2.2019.03.05.04.35.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 04:35:17 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Orxfjtmu;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id v21so5592764pfm.12
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 04:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sMDuSl86Ti/diWafKCRbhbwl9QcyrXshppMbtMq/w6A=;
        b=OrxfjtmurniE4zZEhaDF6FWmd0mJd2AzcPf926SM2DTYxEXzs+FOT37bgnHQdG+hpX
         vVOPbVJMSkEIYLq9+hB7YMbCDLokEN49BBZsDo9CiXS5SlHvIa5D6teU+zK9I5mzk3+A
         HghCT33fch5Pb0SQqQnQuvu7ZUvLA+DmBSxx6R/f9E5c3KROvrWnq54uaLmUWU1AWU53
         Fof7NKF3VNUsT5EGNqhWnNt5fE6tEgBSfM+/YOSXXclo7m+q/4i+/XM35vJSqsIAv+A7
         biEcEj/WX0lrADmFGyhPFsRqXpSrImM4P+Mjd2gJ6WfdJeJD+NW98sSHTr0DoVgnNHA3
         4mMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sMDuSl86Ti/diWafKCRbhbwl9QcyrXshppMbtMq/w6A=;
        b=bBjXKzBtS707Q52LAmHPAnWMQD8xwKOwxylg4XaJl3eT5/SqCTmZmeuyorapF+MxRD
         HkF54EpWCg51SrdQsFhBWam67lcr15aI6kj78+RcxThxbth6gNu3H502mYz7m8p3g0+4
         HmDZ3xk8TB/STQ1QznaQSqvvU83EFwWxoxArNUj7a9m64H2ZsZKJI9eas5dQ79/9eifh
         PLVOFgFvGigVY1qIdQjF2miJSshQCVx0e9LUmM9cV+MbvILbIYzRcfmwduPOl/ok2BHz
         lxzC2j/Jz5ZskH097HNeRb/ZKtwEZoRUmwsxXA8fJluI05i9mlsOeQS1vT9E82kLy2kT
         T6+g==
X-Gm-Message-State: APjAAAWrLgOegfCg0u4p0AtSJ5iw8OvB2Lne/7REoJPLcqRs8Mdw2oRS
	SbsTAYXkCANz1v3Ag1KP0oi0i1TqA3n41A==
X-Received: by 2002:a62:4817:: with SMTP id v23mr1614558pfa.81.1551789316943;
        Tue, 05 Mar 2019 04:35:16 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e88:a284:7047:faa6:2601:9696])
        by smtp.gmail.com with ESMTPSA id f2sm12379474pgn.43.2019.03.05.04.35.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 04:35:16 -0800 (PST)
Date: Tue, 5 Mar 2019 18:05:11 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 1/1] staging: fbtft: line over 80 characters.
Message-ID: <20190305123511.GA14328@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, which solves checkpatch.pl warning:
"WARNING: line over 80 characters"

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v3:
  - Make the code in original form.
  - Use tab to line up the code.

Changes in v2:
  - Improve code order.
  - Make the code more readable.

 drivers/staging/fbtft/fb_ssd1331.c |  3 ++-
 drivers/staging/fbtft/fbtft.h      | 12 +++++++++---
 drivers/staging/fbtft/flexfb.c     |  6 ++++--
 3 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtft/fb_ssd1331.c
index 9f54fe2..4cfe9f8 100644
--- a/drivers/staging/fbtft/fb_ssd1331.c
+++ b/drivers/staging/fbtft/fb_ssd1331.c
@@ -74,7 +74,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 		for (i = 0; i < len; i++)
 			buf[i] = (u8)va_arg(args, unsigned int);
 		va_end(args);
-		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device, u8, buf, len, "%s: ", __func__);
+		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device,
+				  u8, buf, len, "%s: ", __func__);
 	}
 
 	va_start(args, len);
diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 7fdd3b0..8a9b6b7 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -347,9 +347,15 @@ module_exit(fbtft_driver_module_exit);
 
 /* shorthand debug levels */
 #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
-#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
-#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
-#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
+#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS |		\
+		DEBUG_TIME_FIRST_UPDATE)					\
+#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET |				\
+		DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS |	\
+		DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT |	\
+		DEBUG_SYSFS)							\
+#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE |	\
+		DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA |				\
+		DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)				\
 #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
 #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
 #define DEBUG_LEVEL_7	0xFFFFFFFF
diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/flexfb.c
index c5fa591..82fe989 100644
--- a/drivers/staging/fbtft/flexfb.c
+++ b/drivers/staging/fbtft/flexfb.c
@@ -671,7 +671,8 @@ static int flexfb_probe_common(struct spi_device *sdev,
 			break;
 		case 9:
 			if (regwidth == 16) {
-				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n", regwidth, buswidth);
+				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n",
+					regwidth, buswidth);
 				return -EINVAL;
 			}
 			par->fbtftops.write_register = fbtft_write_reg8_bus9;
@@ -718,7 +719,8 @@ static int flexfb_probe_common(struct spi_device *sdev,
 			par->fbtftops.write_vmem = fbtft_write_vmem16_bus16;
 			break;
 		default:
-			dev_err(dev, "argument 'buswidth': %d is not supported with parallel.\n", buswidth);
+			dev_err(dev, "argument 'buswidth': %d is not supported with parallel.\n",
+				buswidth);
 			return -EINVAL;
 		}
 	}
-- 
2.7.4


