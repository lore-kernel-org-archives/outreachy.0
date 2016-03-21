X-GM-THRID: 6262913708245123072
X-Received: by 10.66.193.131 with SMTP id ho3mr25043438pac.42.1458599998967;
        Mon, 21 Mar 2016 15:39:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.118.195 with SMTP id ko3ls1440347obb.34.gmail; Mon, 21 Mar
 2016 15:39:58 -0700 (PDT)
X-Received: by 10.182.65.135 with SMTP id x7mr25817400obs.13.1458599998462;
        Mon, 21 Mar 2016 15:39:58 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h69si3696205pfj.0.2016.03.21.15.39.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 15:39:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n5so32360305pfn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 15:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=t9qhakDJAXemngiaQvIXqJWFjVV4hNTCgqiDwjJ+Q3A=;
        b=EHtXI/vTdjAFhmMX92dKzM/sfFfqjY8Mmdu/vMTYW00ToBA3R1gXdEEnKb5HYHVNh7
         GxnxZncl0VXrEH1VW/loOMkme9r+ltrIIXLnV6kEdN9TUZcEMeQ2tcz0tLpFYCKBTNZ8
         U5QqzBYuYN8KfAvSvA0kXz7KLzXjsxjHHi14Fd72lzRvrnC8XR4cZC8VG4XctoZX0l2q
         3IH/+4oPpH/wio4tHGiNxpD2TO4lpTMUvneN0VY/WCrZW4YPRNxGqpaDDs0PHONKloys
         OmVtmTr00Zk0SLlT1A1mug04ALHHQQdIA/n8J2wdtEPGCXcj9HWlfmtyd1PwXKGcQKfH
         7nLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=t9qhakDJAXemngiaQvIXqJWFjVV4hNTCgqiDwjJ+Q3A=;
        b=deXqvpI31VuPYpMq4heQn9Z2Q7tm94aYQF57NFmY+QhzHADqR05f3g5eJ6CdY7ue41
         5bkKFslLWW6jYL/0QO/An0NczupHmrd0lj1d7Oaznfp92y7fKIJPkM3z1Oxrgtg01pGt
         KZgMS0rcBbU7rgzBY1UAFb+vNPiZ4ZbzAwjjUVRnHo/X6fvMsd9aFQggbYe2gf6+Tfa+
         FInExBi++vXypS6WGRqwOnq4F/12PHKAYUUV30ujZkhxKq408Fo/Tfg6ObJEjX+syF01
         P/YhkElHJoWqe7xrjB/k3gR3UwY0J8UG52s2fna3ZELAPD3bc/xoy754qD+nXjqglTiC
         gCxg==
X-Gm-Message-State: AD7BkJKCiIyglBhKkS/K8sp5cRzRxZgpkdsB2w8d0TVccEvYPGWde1ndVPOAQzDqoxT0hg==
X-Received: by 10.98.31.218 with SMTP id l87mr32403934pfj.101.1458599998240;
        Mon, 21 Mar 2016 15:39:58 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-66-27.dhcp.embarqhsd.net. [67.232.66.27])
        by smtp.gmail.com with ESMTPSA id o185sm43067713pfo.36.2016.03.21.15.39.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 15:39:57 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: iio: use kernel preferred block commenting style
Date: Mon, 21 Mar 2016 15:39:53 -0700
Message-Id: <1458599993-8074-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20160317070333.GA7276@d830.WORKGROUP>
References: <20160317070333.GA7276@d830.WORKGROUP>

Use * on subsequent lines and trailing */ on a separate
line in block comments.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
Changes in v2:
 - remove tsl2x7x_core.c, it's already fixed
 - rebase/rebuit

 drivers/staging/iio/adc/ad7192.c                | 20 ++++++++++----------
 drivers/staging/iio/impedance-analyzer/ad5933.c |  5 +++--
 drivers/staging/iio/meter/ade7753.c             |  3 ++-
 drivers/staging/iio/meter/ade7754.c             |  3 ++-
 drivers/staging/iio/meter/ade7758_core.c        |  3 ++-
 drivers/staging/iio/meter/ade7759.c             |  3 ++-
 drivers/staging/iio/meter/ade7854.c             |  3 ++-
 7 files changed, 23 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index f843f19..f91468e 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -35,10 +35,10 @@
 #define AD7192_REG_DATA		3 /* Data Register	     (RO, 24/32-bit) */
 #define AD7192_REG_ID		4 /* ID Register	     (RO, 8-bit) */
 #define AD7192_REG_GPOCON	5 /* GPOCON Register	     (RO, 8-bit) */
-#define AD7192_REG_OFFSET	6 /* Offset Register	     (RW, 16-bit
-				   * (AD7792)/24-bit (AD7192)) */
-#define AD7192_REG_FULLSALE	7 /* Full-Scale Register
-				   * (RW, 16-bit (AD7792)/24-bit (AD7192)) */
+#define AD7192_REG_OFFSET	6 /* Offset Register	     (RW, 16-bit */
+				  /* (AD7792)/24-bit (AD7192)) */
+#define AD7192_REG_FULLSALE	7 /* Full-Scale Register */
+				  /* (RW, 16-bit (AD7792)/24-bit (AD7192)) */
 
 /* Communications Register Bit Designations (AD7192_REG_COMM) */
 #define AD7192_COMM_WEN		BIT(7) /* Write Enable */
@@ -80,13 +80,13 @@
 #define AD7192_MODE_CAL_SYS_FULL	7 /* System Full-Scale Calibration */
 
 /* Mode Register: AD7192_MODE_CLKSRC options */
-#define AD7192_CLK_EXT_MCLK1_2		0 /* External 4.92 MHz Clock connected
-					   * from MCLK1 to MCLK2 */
+#define AD7192_CLK_EXT_MCLK1_2		0 /* External 4.92 MHz Clock connected*/
+					  /* from MCLK1 to MCLK2 */
 #define AD7192_CLK_EXT_MCLK2		1 /* External Clock applied to MCLK2 */
-#define AD7192_CLK_INT			2 /* Internal 4.92 MHz Clock not
-					   * available at the MCLK2 pin */
-#define AD7192_CLK_INT_CO		3 /* Internal 4.92 MHz Clock available
-					   * at the MCLK2 pin */
+#define AD7192_CLK_INT			2 /* Internal 4.92 MHz Clock not */
+					  /* available at the MCLK2 pin */
+#define AD7192_CLK_INT_CO		3 /* Internal 4.92 MHz Clock available*/
+					  /* at the MCLK2 pin */
 
 /* Configuration Register Bit Designations (AD7192_REG_CONF) */
 
diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index 620b33a..e6fdb3d 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -691,8 +691,9 @@ static void ad5933_work(struct work_struct *work)
 	}
 
 	if (status & AD5933_STAT_SWEEP_DONE) {
-		/* last sample received - power down do nothing until
-		 * the ring enable is toggled */
+		/* last sample received - power down do
+		 * nothing until the ring enable is toggled
+		 */
 		ad5933_cmd(st, AD5933_CTRL_POWER_DOWN);
 	} else {
 		/* we just received a valid datum, move on to the next */
diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index b0bc99a..4b5f05f 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -333,7 +333,8 @@ static int ade7753_set_irq(struct device *dev, bool enable)
 
 	if (enable)
 		irqen |= BIT(3); /* Enables an interrupt when a data is
-				    present in the waveform register */
+				  * present in the waveform register
+				  */
 	else
 		irqen &= ~BIT(3);
 
diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index fed1180..c46bef64 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -351,7 +351,8 @@ static int ade7754_set_irq(struct device *dev, bool enable)
 
 	if (enable)
 		irqen |= BIT(14); /* Enables an interrupt when a data is
-				     present in the waveform register */
+				   * present in the waveform register
+				   */
 	else
 		irqen &= ~BIT(14);
 
diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 3102965..ebb8a19 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -413,7 +413,8 @@ int ade7758_set_irq(struct device *dev, bool enable)
 
 	if (enable)
 		irqen |= BIT(16); /* Enables an interrupt when a data is
-				     present in the waveform register */
+				   * present in the waveform register
+				   */
 	else
 		irqen &= ~BIT(16);
 
diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
index c14892d..80144d4 100644
--- a/drivers/staging/iio/meter/ade7759.c
+++ b/drivers/staging/iio/meter/ade7759.c
@@ -289,7 +289,8 @@ static int ade7759_set_irq(struct device *dev, bool enable)
 
 	if (enable)
 		irqen |= BIT(3); /* Enables an interrupt when a data is
-				    present in the waveform register */
+				  * present in the waveform register
+				  */
 	else
 		irqen &= ~BIT(3);
 
diff --git a/drivers/staging/iio/meter/ade7854.c b/drivers/staging/iio/meter/ade7854.c
index 9e439af..75e8685 100644
--- a/drivers/staging/iio/meter/ade7854.c
+++ b/drivers/staging/iio/meter/ade7854.c
@@ -421,7 +421,8 @@ static int ade7854_set_irq(struct device *dev, bool enable)
 
 	if (enable)
 		irqen |= BIT(17); /* 1: interrupt enabled when all periodical
-				     (at 8 kHz rate) DSP computations finish. */
+				   * (at 8 kHz rate) DSP computations finish.
+				   */
 	else
 		irqen &= ~BIT(17);
 
-- 
2.1.4


