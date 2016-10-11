X-GM-THRID: 6339992797560438784
X-Received: by 10.107.138.40 with SMTP id m40mr474756iod.80.1476144603291;
        Mon, 10 Oct 2016 17:10:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.141 with SMTP id o135ls210758ioe.29.gmail; Mon, 10 Oct
 2016 17:10:00 -0700 (PDT)
X-Received: by 10.67.23.233 with SMTP id id9mr233354pad.135.1476144600499;
        Mon, 10 Oct 2016 17:10:00 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id p70si93144vkd.0.2016.10.10.17.10.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 17:10:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 2so243690vkb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 17:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=x8IE3hq4maun0Lycyd8Wv8CwacqfTkCwrdV72+aPKVM=;
        b=d7U/jZMyuqKK3SBWLt0Dab5wfiDmJP8QZSc1zJOt6Aq8uG3Yaf0r93MqWC9yRubz71
         c6JYm4QJ+3b7iA561f5D9oGGiZHHACMNb4gjNvczbKtTxtJ6NbC2JEqX4ToSU3FQ7mv+
         hsjtdp+sJcyFXUf8t7BrKZPFRWXgYtdADmCXL0zZLcHjqoDYqezZ7WX5KHc/Risw3hht
         UKEUK4n/kWGQw346Lsb7SxxuEdwPntdFAdrkNfqBeEHN4hXqwA+jCbIMwF/gAbhiV2NF
         2mzB6g5Y4fynbJgV0D/+PnMBoYMGwlOwSLoiG7KQy8eGxay/AzkZBV0jKvdvq6k/e9vk
         slGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=x8IE3hq4maun0Lycyd8Wv8CwacqfTkCwrdV72+aPKVM=;
        b=cdIvnCeG1UwrlqsIzXd80Jk2CrEAi2ExUBfGVrluXZ8Pkf+RxEOXZ1Pq8BbDS5jFlt
         hgr+hmBIVhSt8QhBTkpnJppLtKC2OziMrLZstLfwL9ZNF/8nBWbaNYIGkFFHIA+OJoAE
         MbmTPHRn4TAkpkx/hh/9v8ef577MqsD8LTNw9+UoP03S+jdnrLYUvUdE40s/mOY4vruR
         Vs+vfw3K6jQPy4zQLKLh5nKSqhSrhHwzgOTc0BigmRP6sRB6vwrR7u4199GsWDSWyMgd
         mT2VuA/i8wSI00tjSqGTD7fz0wSUNOXOtv5LfCxVydJ5BfCZoAQQMca2LfdfTYU72Iiq
         wbvA==
X-Gm-Message-State: AA6/9RldOYfL/HJNUkZl3e4IeKS+kq0/iIC8BZkNb8hIwa2MkOfDYM+4usSM0fOmOt4fFA==
X-Received: by 10.31.254.69 with SMTP id l66mr958535vki.36.1476144599867;
        Mon, 10 Oct 2016 17:09:59 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id f189sm301530vka.14.2016.10.10.17.09.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 17:09:59 -0700 (PDT)
Date: Mon, 10 Oct 2016 21:09:55 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Merge ddk750_help.* into ddk750_chip.*.
Message-ID: <20161011000955.GA16743@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The file ddk750_help.c contained only one function declaration,
so it was merged into ddk750_chip.c to simplify the driver.

Also, ddk750_help.h was merged into ddk750_chip.h to keep consistency.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/sm750fb/Makefile         |  2 +-
 drivers/staging/sm750fb/ddk750.h         |  1 -
 drivers/staging/sm750fb/ddk750_chip.c    | 15 ++++++++++++++-
 drivers/staging/sm750fb/ddk750_chip.h    | 10 ++++++++++
 drivers/staging/sm750fb/ddk750_display.c |  2 +-
 drivers/staging/sm750fb/ddk750_dvi.c     |  2 +-
 drivers/staging/sm750fb/ddk750_help.c    | 17 -----------------
 drivers/staging/sm750fb/ddk750_help.h    | 21 ---------------------
 drivers/staging/sm750fb/ddk750_hwi2c.c   |  2 +-
 drivers/staging/sm750fb/ddk750_mode.c    |  1 -
 drivers/staging/sm750fb/ddk750_power.c   |  2 +-
 drivers/staging/sm750fb/ddk750_swi2c.c   |  2 +-
 12 files changed, 30 insertions(+), 47 deletions(-)
 delete mode 100644 drivers/staging/sm750fb/ddk750_help.c
 delete mode 100644 drivers/staging/sm750fb/ddk750_help.h

diff --git a/drivers/staging/sm750fb/Makefile b/drivers/staging/sm750fb/Makefile
index dcce3f4..4d781f7 100644
--- a/drivers/staging/sm750fb/Makefile
+++ b/drivers/staging/sm750fb/Makefile
@@ -1,4 +1,4 @@
 obj-$(CONFIG_FB_SM750)	+= sm750fb.o
 
 sm750fb-objs		:= sm750.o sm750_hw.o sm750_accel.o sm750_cursor.o ddk750_chip.o ddk750_power.o ddk750_mode.o
-sm750fb-objs		+= ddk750_display.o ddk750_help.o ddk750_swi2c.o ddk750_sii164.o ddk750_dvi.o ddk750_hwi2c.o
+sm750fb-objs		+= ddk750_display.o ddk750_swi2c.o ddk750_sii164.o ddk750_dvi.o ddk750_hwi2c.o
diff --git a/drivers/staging/sm750fb/ddk750.h b/drivers/staging/sm750fb/ddk750.h
index 2c10a08..0566911 100644
--- a/drivers/staging/sm750fb/ddk750.h
+++ b/drivers/staging/sm750fb/ddk750.h
@@ -16,7 +16,6 @@
 #include "ddk750_chip.h"
 #include "ddk750_display.h"
 #include "ddk750_power.h"
-#include "ddk750_help.h"
 #ifdef USE_HW_I2C
 #include "ddk750_hwi2c.h"
 #endif
diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index c62ebc1..6c02f1d 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -1,13 +1,16 @@
 #include <linux/kernel.h>
 #include <linux/sizes.h>
 
-#include "ddk750_help.h"
 #include "ddk750_reg.h"
 #include "ddk750_chip.h"
 #include "ddk750_power.h"
 
 #define MHz(x) ((x) * 1000000)
 
+void __iomem *mmio750;
+char revId750;
+unsigned short devId750;
+
 logical_chip_type_t sm750_get_chip_type(void)
 {
 	unsigned short physicalID;
@@ -174,6 +177,16 @@ static void setMasterClock(unsigned int frequency)
 		}
 }
 
+/* after driver mapped io registers, use this function first */
+void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
+{
+	mmio750 = addr;
+	devId750 = devId;
+	revId750 = revId;
+	if (revId == 0xfe)
+		pr_info("found sm750le\n");
+}
+
 unsigned int ddk750_getVMSize(void)
 {
 	unsigned int reg;
diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
index a4ee359..d581495 100644
--- a/drivers/staging/sm750fb/ddk750_chip.h
+++ b/drivers/staging/sm750fb/ddk750_chip.h
@@ -6,6 +6,16 @@
 #endif
 
 #include <linux/io.h>
+#include <linux/ioport.h>
+#include <linux/uaccess.h>
+
+/* software control endianness */
+#define PEEK32(addr) readl(addr + mmio750)
+#define POKE32(addr, data) writel(data, addr + mmio750)
+
+extern void __iomem *mmio750;
+extern char revId750;
+extern unsigned short devId750;
 
 /* This is all the chips recognized by this library */
 typedef enum _logical_chip_type_t {
diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index 4023c476..aea9736 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -1,5 +1,5 @@
 #include "ddk750_reg.h"
-#include "ddk750_help.h"
+#include "ddk750_chip.h"
 #include "ddk750_display.h"
 #include "ddk750_power.h"
 #include "ddk750_dvi.h"
diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index 8252f77..250c2f4 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -1,6 +1,6 @@
 #define USE_DVICHIP
 #ifdef USE_DVICHIP
-#include "ddk750_help.h"
+#include "ddk750_chip.h"
 #include "ddk750_reg.h"
 #include "ddk750_dvi.h"
 #include "ddk750_sii164.h"
diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
deleted file mode 100644
index e72a29c..0000000
--- a/drivers/staging/sm750fb/ddk750_help.c
+++ /dev/null
@@ -1,17 +0,0 @@
-#include "ddk750_help.h"
-
-void __iomem *mmio750;
-char revId750;
-unsigned short devId750;
-
-/* after driver mapped io registers, use this function first */
-void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
-{
-	mmio750 = addr;
-	devId750 = devId;
-	revId750 = revId;
-	if (revId == 0xfe)
-		pr_info("found sm750le\n");
-}
-
-
diff --git a/drivers/staging/sm750fb/ddk750_help.h b/drivers/staging/sm750fb/ddk750_help.h
deleted file mode 100644
index 009db92..0000000
--- a/drivers/staging/sm750fb/ddk750_help.h
+++ /dev/null
@@ -1,21 +0,0 @@
-#ifndef DDK750_HELP_H__
-#define DDK750_HELP_H__
-#include "ddk750_chip.h"
-#ifndef USE_INTERNAL_REGISTER_ACCESS
-
-#include <linux/ioport.h>
-#include <linux/io.h>
-#include <linux/uaccess.h>
-
-/* software control endianness */
-#define PEEK32(addr) readl(addr + mmio750)
-#define POKE32(addr, data) writel(data, addr + mmio750)
-
-extern void __iomem *mmio750;
-extern char revId750;
-extern unsigned short devId750;
-#else
-/* implement if you want use it*/
-#endif
-
-#endif
diff --git a/drivers/staging/sm750fb/ddk750_hwi2c.c b/drivers/staging/sm750fb/ddk750_hwi2c.c
index d391c12..4ce0fbe 100644
--- a/drivers/staging/sm750fb/ddk750_hwi2c.c
+++ b/drivers/staging/sm750fb/ddk750_hwi2c.c
@@ -1,6 +1,6 @@
 #define USE_HW_I2C
 #ifdef USE_HW_I2C
-#include "ddk750_help.h"
+#include "ddk750_chip.h"
 #include "ddk750_reg.h"
 #include "ddk750_hwi2c.h"
 #include "ddk750_power.h"
diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index 4bbf0c4..4964918 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -1,5 +1,4 @@
 
-#include "ddk750_help.h"
 #include "ddk750_reg.h"
 #include "ddk750_mode.h"
 #include "ddk750_chip.h"
diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
index 7cc6169..710106e 100644
--- a/drivers/staging/sm750fb/ddk750_power.c
+++ b/drivers/staging/sm750fb/ddk750_power.c
@@ -1,4 +1,4 @@
-#include "ddk750_help.h"
+#include "ddk750_chip.h"
 #include "ddk750_reg.h"
 #include "ddk750_power.h"
 
diff --git a/drivers/staging/sm750fb/ddk750_swi2c.c b/drivers/staging/sm750fb/ddk750_swi2c.c
index 72a4233..78bfba0 100644
--- a/drivers/staging/sm750fb/ddk750_swi2c.c
+++ b/drivers/staging/sm750fb/ddk750_swi2c.c
@@ -10,7 +10,7 @@
 *  implementation.
 *
 *******************************************************************/
-#include "ddk750_help.h"
+#include "ddk750_chip.h"
 #include "ddk750_reg.h"
 #include "ddk750_swi2c.h"
 #include "ddk750_power.h"
-- 
2.7.4


