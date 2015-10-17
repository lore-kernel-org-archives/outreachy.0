X-GM-THRID: 6202672545102036992
X-Received: by 10.194.192.71 with SMTP id he7mr4751069wjc.2.1445076666055;
        Sat, 17 Oct 2015 03:11:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.86.234 with SMTP id s10ls323777wiz.33.gmail; Sat, 17 Oct
 2015 03:11:05 -0700 (PDT)
X-Received: by 10.181.29.103 with SMTP id jv7mr2333232wid.0.1445076665505;
        Sat, 17 Oct 2015 03:11:05 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x244.google.com (mail-wi0-x244.google.com. [2a00:1450:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id m4si235326wib.0.2015.10.17.03.11.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 03:11:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) client-ip=2a00:1450:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wicuk10 with SMTP id uk10so6722357wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 03:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=6qXCrT0R/kO08ev3aBPIOoCICs0Y2fcg18c6TEIEqWE=;
        b=RZmlaERuyWrgCt3GA0gBCBahRTIo2r9UhpDjS8H1ZxYKowUeLhBEPd7qp7aSu30wgA
         xehtdo3g/jwbN+2ynJa81Np9LPt/w/PoyvNEu1k7XCgYvyQI+MoyurmppsYcJPuNZkeK
         5T2MEps0nhAMgTdOJw9V59KpD+UbOUqDNtCSNqzvra9kM2nQ8Be1bvMOuKKXHx+3FzS9
         K0tPfI8njjZiQE9KTH44sWPAYNBNOKPFsYdS3Rvqqd29g5mC6Ah0TvfwHpJ3JGp9kp6y
         OwPZVqZ9tmNn+6u3KOzEX+BwLnx/9M+lQBl3Esy1dbdaTvotbxa2Y+Ij3jcOtuP04mNK
         Rilw==
X-Received: by 10.180.189.69 with SMTP id gg5mr9628196wic.45.1445076665368;
        Sat, 17 Oct 2015 03:11:05 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id jf3sm6560934wic.8.2015.10.17.03.11.03
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 03:11:04 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: iio: adc: properly indent block comments
Date: Sat, 17 Oct 2015 13:10:55 +0300
Message-Id: <1445076655-26291-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

Rework block comments in order to follow
kernel coding style

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index bb76096..7d3714f 100644
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
+/* Offset Register	     (RW, 16-bit) (AD7792)/24-bit (AD7192)) */
+#define AD7192_REG_OFFSET	6
+/* Full-Scale Register (RW, 16-bit) (AD7792)/24-bit (AD7192)) */
+#define AD7192_REG_FULLSALE	7
 
 /* Communications Register Bit Designations (AD7192_REG_COMM) */
 #define AD7192_COMM_WEN		BIT(7) /* Write Enable */
@@ -80,13 +80,13 @@
 #define AD7192_MODE_CAL_SYS_FULL	7 /* System Full-Scale Calibration */
 
 /* Mode Register: AD7192_MODE_CLKSRC options */
-#define AD7192_CLK_EXT_MCLK1_2		0 /* External 4.92 MHz Clock connected
-					   * from MCLK1 to MCLK2 */
+/* External 4.92 MHz Clock connected from MCLK1 to MCLK2 */
+#define AD7192_CLK_EXT_MCLK1_2		0
 #define AD7192_CLK_EXT_MCLK2		1 /* External Clock applied to MCLK2 */
-#define AD7192_CLK_INT			2 /* Internal 4.92 MHz Clock not
-					   * available at the MCLK2 pin */
-#define AD7192_CLK_INT_CO		3 /* Internal 4.92 MHz Clock available
-					   * at the MCLK2 pin */
+/* Internal 4.92 MHz Clock not available at the MCLK2 pin */
+#define AD7192_CLK_INT			2
+/* Internal 4.92 MHz Clock available at the MCLK2 pin */
+#define AD7192_CLK_INT_CO		3
 
 /* Configuration Register Bit Designations (AD7192_REG_CONF) */
 
-- 
2.1.4


