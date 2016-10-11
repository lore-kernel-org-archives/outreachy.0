X-GM-THRID: 6339992797560438784
X-Received: by 10.66.89.227 with SMTP id br3mr1492560pab.75.1476225799443;
        Tue, 11 Oct 2016 15:43:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.238.68 with SMTP id b65ls4155482iti.13.canary; Tue, 11 Oct
 2016 15:43:15 -0700 (PDT)
X-Received: by 10.107.130.75 with SMTP id e72mr55477iod.98.1476225795487;
        Tue, 11 Oct 2016 15:43:15 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id p70si658326vkd.0.2016.10.11.15.43.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 15:43:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id b186so1521049vkb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 15:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zxOvFYczpCTsQ/Mvu2s2iqDR3DH0NHvt7hqXGmBNuIY=;
        b=vAal3mKvCE1346aMBQl9md8+s5FzyWihShFlkCJZyedaZ3CY1xJXw2ATD2eV7ZvIf/
         Vsh+8cglMETXMT8N0sC1I4UtDYmtG5iecuGC1GGd0aRRdPCNvKU6rFnntSpETR3sLebD
         nWq1lTKLRTaYm9Gq3fT7gXHETY+nfKNfL+xgSJ6PQDJxN41S8rlCqK811sAeyvoyINIr
         SYEEj9y+wStLpbKfQDOnCMDaimazkGKgTw1Z+PIE1nGzktxy1kb3N/edjwLkH0A7qPY1
         vQ4Dxd94ItfTV28uOoGUjAOm4lS8wjx1dhuxZ4p6PPhL76lRuZuFHVRdp+H65VvL0k8Y
         /5hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zxOvFYczpCTsQ/Mvu2s2iqDR3DH0NHvt7hqXGmBNuIY=;
        b=JnEyk5/kPE100qmie5EiYV7kjDZcrg8QkJy6JEg2A2bqw2rSBPO81RSVMl94bPl4R/
         jRQq91F+KfVvqzBgjx7t7zhTq/mIAwutNhLmF9TDOgjVAow9N3a/20c+c4idCrxR6y08
         k5n502ZtbkiArHUpbWDfY7vrr7+rGuqAEKNuCKqYElcK3kySvN9HB2qgwKieXnNMa/hS
         fxyoYnhrgA5PXvAo3FiQP8g1u+sFDdKJeKaXzUjWqh4Dp8A8IIwjTnwvK5NA2d0bijGS
         fJTz3DQ4nFL6y5oOv4VELhRgcHBjDdjL+16boAu2sdzVOpAlmKnb58maIvpF1R7kjTev
         MhSg==
X-Gm-Message-State: AA6/9RlECLKYy9n20aPXYUblUOJ8UhNqrQB14J1VGF3+vzBksDNoJrvvj5H25bBMuEVJmQ==
X-Received: by 10.31.155.66 with SMTP id d63mr5092949vke.133.1476225795202;
        Tue, 11 Oct 2016 15:43:15 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id k194sm2391247vkf.17.2016.10.11.15.43.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 15:43:14 -0700 (PDT)
Date: Tue, 11 Oct 2016 19:43:07 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: sm750fb: Merge ddk750_help.* into ddk750_chip.*.
Message-ID: <20161011224307.GA31089@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The file ddk750_help.c contained only one function declaration,
so it was merged into ddk750_chip.c to simplify the driver.

Also, ddk750_help.h was merged into ddk750_chip.h to keep consistency.

With these changes a few global variables are removed and the function
ddk750_set_mmio is rewritten, so its purpose in the code is clearer.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

v2: Global variables revId750 and devId750 were removed.
    They were set only once and used to return the chip type,
    so they were replaced with a static variable chip that holds
    the chip type.
    Function ddk750_set_mmio() was removed, it was used to set mmio750
    and to set the chip type, what wasn't explict in its name. It was
    replaced with sm750_set_chip_type() to set the chip type.
    Global variable mmio750 now is set in the function that called
    ddk750_set_mmio() previously.

 drivers/staging/sm750fb/Makefile         |  2 +-
 drivers/staging/sm750fb/ddk750.h         |  1 -
 drivers/staging/sm750fb/ddk750_chip.c    | 23 +++++++++++------------
 drivers/staging/sm750fb/ddk750_chip.h    | 10 +++++++++-
 drivers/staging/sm750fb/ddk750_display.c |  2 +-
 drivers/staging/sm750fb/ddk750_dvi.c     |  2 +-
 drivers/staging/sm750fb/ddk750_help.c    | 17 -----------------
 drivers/staging/sm750fb/ddk750_help.h    | 21 ---------------------
 drivers/staging/sm750fb/ddk750_hwi2c.c   |  2 +-
 drivers/staging/sm750fb/ddk750_mode.c    |  1 -
 drivers/staging/sm750fb/ddk750_power.c   |  2 +-
 drivers/staging/sm750fb/ddk750_swi2c.c   |  2 +-
 drivers/staging/sm750fb/sm750_hw.c       |  5 ++++-
 13 files changed, 30 insertions(+), 60 deletions(-)
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
index c62ebc1..2b231c2 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -1,33 +1,32 @@
 #include <linux/kernel.h>
 #include <linux/sizes.h>
 
-#include "ddk750_help.h"
 #include "ddk750_reg.h"
 #include "ddk750_chip.h"
 #include "ddk750_power.h"
 
 #define MHz(x) ((x) * 1000000)
 
+static logical_chip_type_t chip;
+
 logical_chip_type_t sm750_get_chip_type(void)
 {
-	unsigned short physicalID;
-	char physicalRev;
-	logical_chip_type_t chip;
-
-	physicalID = devId750; /* either 0x718 or 0x750 */
-	physicalRev = revId750;
+	return chip;
+}
 
-	if (physicalID == 0x718)
+void sm750_set_chip_type(unsigned short devId, char revId)
+{
+	if (devId == 0x718)
 		chip = SM718;
-	else if (physicalID == 0x750) {
+	else if (devId == 0x750) {
 		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
-		if (physicalRev == SM750LE_REVISION_ID)
+		if (revId == SM750LE_REVISION_ID) {
 			chip = SM750LE;
+			pr_info("found sm750le\n");
+		}
 	} else
 		chip = SM_UNKNOWN;
-
-	return chip;
 }
 
 static unsigned int get_mxclk_freq(void)
diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
index a4ee359..755aab1 100644
--- a/drivers/staging/sm750fb/ddk750_chip.h
+++ b/drivers/staging/sm750fb/ddk750_chip.h
@@ -6,6 +6,14 @@
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
 
 /* This is all the chips recognized by this library */
 typedef enum _logical_chip_type_t {
@@ -68,9 +76,9 @@ struct initchip_param {
 };
 
 logical_chip_type_t sm750_get_chip_type(void);
+void sm750_set_chip_type(unsigned short devId, char revId);
 unsigned int calcPllValue(unsigned int request, struct  pll_value *pll);
 unsigned int formatPllReg(struct pll_value *pPLL);
-void ddk750_set_mmio(void __iomem *, unsigned short, char);
 unsigned int ddk750_getVMSize(void);
 int ddk750_initHw(struct initchip_param *);
 
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
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index 74a97b4..61d2fdc 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -23,6 +23,8 @@
 #include "ddk750.h"
 #include "sm750_accel.h"
 
+void __iomem *mmio750;
+
 int hw_sm750_map(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 {
 	int ret;
@@ -59,7 +61,8 @@ int hw_sm750_map(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 	sm750_dev->accel.dprBase = sm750_dev->pvReg + DE_BASE_ADDR_TYPE1;
 	sm750_dev->accel.dpPortBase = sm750_dev->pvReg + DE_PORT_ADDR_TYPE1;
 
-	ddk750_set_mmio(sm750_dev->pvReg, sm750_dev->devid, sm750_dev->revid);
+	mmio750 = sm750_dev->pvReg;
+	sm750_set_chip_type(sm750_dev->devid, sm750_dev->revid);
 
 	sm750_dev->vidmem_start = pci_resource_start(pdev, 0);
 	/* don't use pdev_resource[x].end - resource[x].start to
-- 
2.7.4


