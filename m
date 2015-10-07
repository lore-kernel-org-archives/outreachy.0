X-GM-THRID: 6202672545102036992
X-Received: by 10.180.91.233 with SMTP id ch9mr2725456wib.4.1444241654943;
        Wed, 07 Oct 2015 11:14:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.20.65 with SMTP id k62ls88664lfi.16.gmail; Wed, 07 Oct 2015
 11:14:14 -0700 (PDT)
X-Received: by 10.112.54.197 with SMTP id l5mr508010lbp.21.1444241654377;
        Wed, 07 Oct 2015 11:14:14 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id w4si173161wiz.0.2015.10.07.11.14.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 11:14:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id fx3so40375500wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 11:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=RQOptW3lw2whvUu649xRzTCsC1CG4r7FHzecmhQ8oUY=;
        b=FEmG6GI6/CM2v6vE6syv2EoQL5s3K325TTmdG5pGKabyyrSuwDuSQPYryyuJ6f7gSK
         8tEqB+pSmMDLOoNYtYPT62mdKF459jj29JyMGzstT33IQBDDcsL0TtUx1daen3Eill05
         IOdgcqOcuYwObUNGgsv3lYHbegA0hZhHiyBoSCawIOaQogtqEhEflclo0EegBpi9139f
         ez+CTsiWTjfXm3Xgv75pwVN/bFjECPwngN14kXNfPkQUXej8cEgvy+W+1n8G8QMZqxUz
         cmdUqZU8vooMvhEgKqERu6Q6vGr4VWKTxcibk2Jz/CX7s0yaPJxZNcaBSNfkByWRW+KF
         dywQ==
X-Received: by 10.180.85.226 with SMTP id k2mr3531068wiz.67.1444241654271;
        Wed, 07 Oct 2015 11:14:14 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id jf3sm3629403wic.8.2015.10.07.11.14.13
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 11:14:13 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 9/9] staging: iio: adc: properly indent block comments
Date: Wed,  7 Oct 2015 21:13:47 +0300
Message-Id: <4bd5f417535f2bc4631ddc27ab2c44019b632163.1444241200.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444241200.git.ciorneiioana@gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444241200.git.ciorneiioana@gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>

Rework block comments in order to follow
kernel coding style

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    -nothing

 drivers/staging/iio/adc/ad7192.c | 30 ++++++++++++++++++++----------
 1 file changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index c849307..d97f116 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -35,10 +35,14 @@
 #define AD7192_REG_DATA		3 /* Data Register	     (RO, 24/32-bit) */
 #define AD7192_REG_ID		4 /* ID Register	     (RO, 8-bit) */
 #define AD7192_REG_GPOCON	5 /* GPOCON Register	     (RO, 8-bit) */
-#define AD7192_REG_OFFSET	6 /* Offset Register	     (RW, 16-bit
-				   * (AD7792)/24-bit (AD7192)) */
-#define AD7192_REG_FULLSALE	7 /* Full-Scale Register
-				   * (RW, 16-bit (AD7792)/24-bit (AD7192)) */
+#define AD7192_REG_OFFSET	6 /*
+				   * Offset Register	     (RW, 16-bit
+				   * (AD7792)/24-bit (AD7192))
+				   */
+#define AD7192_REG_FULLSALE	7 /*
+				   * Full-Scale Register
+				   * (RW, 16-bit (AD7792)/24-bit (AD7192))
+				   */
 
 /* Communications Register Bit Designations (AD7192_REG_COMM) */
 #define AD7192_COMM_WEN		BIT(7) /* Write Enable */
@@ -80,13 +84,19 @@
 #define AD7192_MODE_CAL_SYS_FULL	7 /* System Full-Scale Calibration */
 
 /* Mode Register: AD7192_MODE_CLKSRC options */
-#define AD7192_CLK_EXT_MCLK1_2		0 /* External 4.92 MHz Clock connected
-					   * from MCLK1 to MCLK2 */
+#define AD7192_CLK_EXT_MCLK1_2		0 /*
+					   * External 4.92 MHz Clock connected
+					   * from MCLK1 to MCLK2
+					   */
 #define AD7192_CLK_EXT_MCLK2		1 /* External Clock applied to MCLK2 */
-#define AD7192_CLK_INT			2 /* Internal 4.92 MHz Clock not
-					   * available at the MCLK2 pin */
-#define AD7192_CLK_INT_CO		3 /* Internal 4.92 MHz Clock available
-					   * at the MCLK2 pin */
+#define AD7192_CLK_INT			2 /*
+					   * Internal 4.92 MHz Clock not
+					   * available at the MCLK2 pin
+					   */
+#define AD7192_CLK_INT_CO		3 /*
+					   * Internal 4.92 MHz Clock available
+					   * at the MCLK2 pin
+					   */
 
 /* Configuration Register Bit Designations (AD7192_REG_CONF) */
 
-- 
2.1.4


