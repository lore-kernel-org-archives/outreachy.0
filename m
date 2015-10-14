X-GM-THRID: 6202672545102036992
X-Received: by 10.180.10.135 with SMTP id i7mr1214560wib.2.1444846743735;
        Wed, 14 Oct 2015 11:19:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.200 with SMTP id cw8ls1351348wib.39.canary; Wed, 14 Oct
 2015 11:19:03 -0700 (PDT)
X-Received: by 10.180.87.164 with SMTP id az4mr575600wib.1.1444846743361;
        Wed, 14 Oct 2015 11:19:03 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id h2si967217wiy.0.2015.10.14.11.19.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:19:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id q12so95823104wie.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=SdddKK/cSeKvalAQih9pmPahu/mjlF0152Qs7MDe7fE=;
        b=qru+oNqDksOu4L8e/6dfXwn4/IxN6EdMyZoynm/Dmp+teavYW5LVwvCiSOd6bvW/gw
         dKkeMDOymiqJLk3VkrLFBlsi59nsapg/tPYeDptMYDBmTMT1s3+IaiIFe9RTtzrlOFmF
         aCPpSK3Kc2XLsqfR54BHZpbdm8PAufyi2RS5Wbxu+Cdvh96lGK/dpCi8Kr0Na2Z4yiIT
         LlKdRtWBzL0FxTms5BbfsjI/il7YHGnwGNTKc9y1/5ulwsoJ+RcBGPYr3IOKw/qRyfpO
         5PkrEj5iCnmMeuovRk+NGfdITiFSwjPCx8twwXmlMuI/M4RM9tO9SFZdiOAkfMl+2mNe
         rKZw==
X-Received: by 10.180.211.39 with SMTP id mz7mr29853565wic.65.1444846743288;
        Wed, 14 Oct 2015 11:19:03 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id p4sm20285140wia.15.2015.10.14.11.19.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 11:19:02 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v4 9/9] staging: iio: adc: properly indent block comments
Date: Wed, 14 Oct 2015 21:14:20 +0300
Message-Id: <b0696c7845ebe157a07b0303e46832752b309574.1444845354.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>

Rework block comments in order to follow
kernel coding style

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing
Changes in v3:
    - nothing
Changes in v4:
    - move comment block above the macro def and not inline with it

 drivers/staging/iio/adc/ad7192.c | 35 +++++++++++++++++++++++++----------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index bb76096..bb58fda 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -35,10 +35,16 @@
 #define AD7192_REG_DATA		3 /* Data Register	     (RO, 24/32-bit) */
 #define AD7192_REG_ID		4 /* ID Register	     (RO, 8-bit) */
 #define AD7192_REG_GPOCON	5 /* GPOCON Register	     (RO, 8-bit) */
-#define AD7192_REG_OFFSET	6 /* Offset Register	     (RW, 16-bit
-				   * (AD7792)/24-bit (AD7192)) */
-#define AD7192_REG_FULLSALE	7 /* Full-Scale Register
-				   * (RW, 16-bit (AD7792)/24-bit (AD7192)) */
+/*
+ * Offset Register	     (RW, 16-bit
+ * (AD7792)/24-bit (AD7192))
+ */
+#define AD7192_REG_OFFSET	6
+/*
+ * Full-Scale Register
+ * (RW, 16-bit (AD7792)/24-bit (AD7192))
+ */
+#define AD7192_REG_FULLSALE	7
 
 /* Communications Register Bit Designations (AD7192_REG_COMM) */
 #define AD7192_COMM_WEN		BIT(7) /* Write Enable */
@@ -80,13 +86,22 @@
 #define AD7192_MODE_CAL_SYS_FULL	7 /* System Full-Scale Calibration */
 
 /* Mode Register: AD7192_MODE_CLKSRC options */
-#define AD7192_CLK_EXT_MCLK1_2		0 /* External 4.92 MHz Clock connected
-					   * from MCLK1 to MCLK2 */
+/*
+ * External 4.92 MHz Clock connected
+ * from MCLK1 to MCLK2
+ */
+#define AD7192_CLK_EXT_MCLK1_2		0
 #define AD7192_CLK_EXT_MCLK2		1 /* External Clock applied to MCLK2 */
-#define AD7192_CLK_INT			2 /* Internal 4.92 MHz Clock not
-					   * available at the MCLK2 pin */
-#define AD7192_CLK_INT_CO		3 /* Internal 4.92 MHz Clock available
-					   * at the MCLK2 pin */
+/*
+ * Internal 4.92 MHz Clock not
+ * available at the MCLK2 pin
+ */
+#define AD7192_CLK_INT			2
+/*
+ * Internal 4.92 MHz Clock available
+ * at the MCLK2 pin
+ */
+#define AD7192_CLK_INT_CO		3
 
 /* Configuration Register Bit Designations (AD7192_REG_CONF) */
 
-- 
2.1.4


