X-GM-THRID: 5531311800320
X-Received: by 10.66.229.36 with SMTP id sn4mr23897703pac.32.1425236945642;
        Sun, 01 Mar 2015 11:09:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.8 with SMTP id xs8ls576012obc.8.gmail; Sun, 01 Mar
 2015 11:09:05 -0800 (PST)
X-Received: by 10.182.126.168 with SMTP id mz8mr24369339obb.9.1425236945331;
        Sun, 01 Mar 2015 11:09:05 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id m1si1261717pdc.0.2015.03.01.11.09.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 11:09:05 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x234.google.com with SMTP id ft15so8092778pdb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 11:09:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=SnIyirjNcsg8K2vOmXiPcF3rZAtjWUqafM+xJuP4Nvo=;
        b=BeSjtOelqXj9eYzozOyuFNoDLfcksu38ZTQ7rXTUskIdpqRapaIuasRxaob4rD/qmC
         8dFOK5Pdb3PphGga4pD1stlnULXsSAd4Fp8ZkSoaIY8H2r4Cdppx1vdzZBkBzlrsfsN2
         6zz41vkPgO4iwZByTxLY8j1pFtwP2LliMlsAsCGqczH1iOGCgR3dmnNjImJJKlgND7+g
         BhWmbm5WQbZR4aEgtHA7C5YIjrHEPmA/NUBe+3AoC9y7v2bj7oeWWYSatji3z4aj9S1O
         aEtxjan3fY/mKDyASS7FTVXdw/N9cGqYyqXKxYPaRNu9G01mVaUPrJt3o/xVygfBnlZz
         lqWQ==
X-Received: by 10.68.221.34 with SMTP id qb2mr40683126pbc.47.1425236945176;
        Sun, 01 Mar 2015 11:09:05 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id zt11sm9821210pab.36.2015.03.01.11.09.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 11:09:04 -0800 (PST)
Date: Mon, 2 Mar 2015 00:40:18 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: Remove <linux/moduleparam.h> header.
Message-ID: <20150301191018.GA11439@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch drops #include <linux/moduleparam.h> in all the staging
driver files that also include #include <linux/module.h> as
module.h includes moduleparam.h already.

The following semantic patch is used to make these changes:

@ includesmodule @
@@
@ depends on includesmodule @
@@
- #include <linux/moduleparam.h>

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/gs_fpgaboot/gs_fpgaboot.c             | 1 -
 drivers/staging/iio/iio_simple_dummy.c                | 1 -
 drivers/staging/media/cxd2099/cxd2099.c               | 1 -
 drivers/staging/rtl8192u/ieee80211/ieee80211_module.c | 1 -
 drivers/staging/slicoss/slicoss.c                     | 1 -
 drivers/staging/vme/devices/vme_pio2_core.c           | 1 -
 drivers/staging/vme/devices/vme_pio2_gpio.c           | 1 -
 drivers/staging/wlan-ng/prism2sta.c                   | 1 -
 8 files changed, 8 deletions(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
index 6da7285..a3a10f9 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
@@ -17,7 +17,6 @@
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/module.h>
-#include <linux/moduleparam.h>
 #include <linux/types.h>
 #include <linux/device.h>
 #include <linux/string.h>
diff --git a/drivers/staging/iio/iio_simple_dummy.c b/drivers/staging/iio/iio_simple_dummy.c
index e452021..8341dce 100644
--- a/drivers/staging/iio/iio_simple_dummy.c
+++ b/drivers/staging/iio/iio_simple_dummy.c
@@ -17,7 +17,6 @@
 #include <linux/kernel.h>
 #include <linux/slab.h>
 #include <linux/module.h>
-#include <linux/moduleparam.h>
 
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
index 657ea48..692ba3e 100644
--- a/drivers/staging/media/cxd2099/cxd2099.c
+++ b/drivers/staging/media/cxd2099/cxd2099.c
@@ -25,7 +25,6 @@
 #include <linux/slab.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
-#include <linux/moduleparam.h>
 #include <linux/i2c.h>
 #include <linux/wait.h>
 #include <linux/delay.h>
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index a35ba01..0149225 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -303,7 +303,6 @@ void __exit ieee80211_debug_exit(void)
 	}
 }
 
-#include <linux/moduleparam.h>
 module_param(debug, int, 0444);
 MODULE_PARM_DESC(debug, "debug output mask");
 #endif
diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 5bf5300..45f6a5f 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -84,7 +84,6 @@
 #include <linux/seq_file.h>
 #include <linux/kthread.h>
 #include <linux/module.h>
-#include <linux/moduleparam.h>
 
 #include <linux/firmware.h>
 #include <linux/types.h>
diff --git a/drivers/staging/vme/devices/vme_pio2_core.c b/drivers/staging/vme/devices/vme_pio2_core.c
index 84c5a07..eabbcc7 100644
--- a/drivers/staging/vme/devices/vme_pio2_core.c
+++ b/drivers/staging/vme/devices/vme_pio2_core.c
@@ -13,7 +13,6 @@
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #include <linux/module.h>
-#include <linux/moduleparam.h>
 #include <linux/types.h>
 #include <linux/kernel.h>
 #include <linux/errno.h>
diff --git a/drivers/staging/vme/devices/vme_pio2_gpio.c b/drivers/staging/vme/devices/vme_pio2_gpio.c
index da34d55..77901b3 100644
--- a/drivers/staging/vme/devices/vme_pio2_gpio.c
+++ b/drivers/staging/vme/devices/vme_pio2_gpio.c
@@ -11,7 +11,6 @@
  */
 
 #include <linux/module.h>
-#include <linux/moduleparam.h>
 #include <linux/types.h>
 #include <linux/kernel.h>
 #include <linux/errno.h>
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 10ad24a..afb8263 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -51,7 +51,6 @@
 */
 
 #include <linux/module.h>
-#include <linux/moduleparam.h>
 #include <linux/kernel.h>
 #include <linux/sched.h>
 #include <linux/types.h>
-- 
1.9.1


