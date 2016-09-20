X-GM-THRID: 6332315856637263872
X-Received: by 10.107.131.35 with SMTP id f35mr1436251iod.16.1474357176601;
        Tue, 20 Sep 2016 00:39:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.114 with SMTP id l47ls1317958ote.24.gmail; Tue, 20 Sep
 2016 00:39:36 -0700 (PDT)
X-Received: by 10.13.237.135 with SMTP id w129mr5377275ywe.150.1474357176305;
        Tue, 20 Sep 2016 00:39:36 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id si10si6489276pab.1.2016.09.20.00.39.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 00:39:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id hi10so538137pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 00:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7GWr2U+1WVnUSEB3d1boriNP6qLEODjjmYhVVwCiFoU=;
        b=iQGtcwO+2ai/R+e5C6J3SfshE/MaO45b8XSORk77IIJ0dvgtP5QQohDYCcllc08rvF
         uWtMM2LTYTEVu3dv+9YB7xikwnx4JbVI3gPoBSzyjd418ZX+8sBKJrS6nF2SumuhM8GT
         20ZBdverD2RjajYZrlCcBvO3kfVPvIpgd/I39c7WCVI5yYR8itqIWxFk6DAY2ngnYhn/
         qB1AFvAY+Zb3dIP+yQlV7UEfoUuyAqL+GW+mH+bslS4o4bcsxS06Dlcr+7nfNfDHmAdf
         ypCe9G54YAkgBSx/fH2PDyAaLttVVzByGKd07Wtcv6gmJaS1U8t4wL5d2pHpL8zibvpv
         0XSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7GWr2U+1WVnUSEB3d1boriNP6qLEODjjmYhVVwCiFoU=;
        b=hpgWN8YH7iSEvB2KAicmpubP3hCKJoN0M+hNDMHxe/Alf1gyC7lH4Dlk8weZJGLheU
         KCH7j598zm01AkhB6SLY2iX+/TJqLqfhxBhOprZxtOySfV5X9AeZNX7Eom5jd28YRPxg
         eOFO6WG4LkKlTNmRg24VBkSCGa5AeD2ykTorQYrP5Hhvu2bO6liRF5TnGGLog0g1c/6E
         Yopn/rN5KL3ov0KFSNR/UXFnKO1I+bh93SdZSp8zSVdwLpltID1jWvemv7FgGvLNZvb8
         PkPPtTU8ViE7Pka9EVlZUC3LeRIQbLGeucir2JUJswIZeJ+AG0VICYcRpgbvc/++lfKf
         yDDg==
X-Gm-Message-State: AE9vXwP8OidWMgb46sTbioidIWcmsDUtA4vL7d3p7pfafjUWsHrAoCAJllAAdD/FO+Sz1w==
X-Received: by 10.66.54.132 with SMTP id j4mr53773432pap.110.1474357176088;
        Tue, 20 Sep 2016 00:39:36 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c145sm43606846pfb.15.2016.09.20.00.39.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 00:39:35 -0700 (PDT)
Date: Tue, 20 Sep 2016 13:09:28 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/2] staging: media: bcm2048: Merge assignment with return
Message-ID: <20160920073928.GA8773@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Instead of storing the return value into a variable and then returning it, we
can club the two into a single return statement. This change was made using
the following semantic patch by Coccinelle:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
Change in v2:
Make the commit message clearer.

 drivers/staging/media/bcm2048/radio-bcm2048.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 8dade19..ea15cc6 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -483,10 +483,8 @@ static int bcm2048_set_rds_no_lock(struct bcm2048_device *bdev, u8 rds_on)
 		memset(&bdev->rds_info, 0, sizeof(bdev->rds_info));
 	}
 
-	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_RDS_SYSTEM,
-				   bdev->cache_fm_rds_system);
-
-	return err;
+	return bcm2048_send_command(bdev, BCM2048_I2C_FM_RDS_SYSTEM,
+				    bdev->cache_fm_rds_system);
 }
 
 static int bcm2048_get_rds_no_lock(struct bcm2048_device *bdev)
@@ -1834,9 +1832,7 @@ static int bcm2048_deinit(struct bcm2048_device *bdev)
 	if (err < 0)
 		return err;
 
-	err = bcm2048_set_power_state(bdev, BCM2048_POWER_OFF);
-
-	return err;
+	return bcm2048_set_power_state(bdev, BCM2048_POWER_OFF);
 }
 
 /*
@@ -1995,9 +1991,7 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
 									\
 	value = bcm2048_get_##prop(bdev);				\
 									\
-	value = sprintf(buf, mask "\n", value);				\
-									\
-	return value;							\
+	return sprintf(buf, mask "\n", value);				\
 }
 
 #define DEFINE_SYSFS_PROPERTY(prop, signal, size, mask, check)		\
-- 
2.7.4


