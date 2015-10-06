X-GM-THRID: 6202672545102036992
X-Received: by 10.112.130.41 with SMTP id ob9mr6835706lbb.17.1444172260094;
        Tue, 06 Oct 2015 15:57:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.229 with SMTP id 98ls561649lfv.97.gmail; Tue, 06 Oct
 2015 15:57:37 -0700 (PDT)
X-Received: by 10.112.12.132 with SMTP id y4mr6915444lbb.0.1444172257028;
        Tue, 06 Oct 2015 15:57:37 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id c7si659107wiy.3.2015.10.06.15.57.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 15:57:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id fx3so3770727wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 15:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ZAiKmw8+RjyHyVrrihrmVF/c3x9VgOOER5+n2gjF868=;
        b=CrIhGe2FUYnOcaeCXo+MSGuBrki9HcdFyqUhaHqyh1NER2lXO6FljmQEA8NcwVwPsj
         9LjkPAOIhxzaF4ef3rF3lUPxx2WnnGbFl3tZV0X+WFPEP+3BFpgHHMcqsuZaNAvlMo03
         NwNtqRWGj3hnyDnu1fPkrjhho8fV3S3FIRli6lA8xs1R3eKVfaCbi3O/Ao7ddR3TmKOU
         d243HFBotua6v1NhPMAxXBLMBxYjGC9I1PyaqFAvp6l6MuoQLnfGnm6OURVBY+5D6TaG
         QqDcBXUl5IYHwH1p64S+qTYoJkQqqDc1SZoGIFJ6vUilGdQRHrR/2DcYG5E/aRzzA+I1
         ewyQ==
X-Received: by 10.194.6.106 with SMTP id z10mr20043721wjz.104.1444172256944;
        Tue, 06 Oct 2015 15:57:36 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id cv4sm35261421wjc.17.2015.10.06.15.57.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 15:57:36 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 10/10] staging: iio: adc: properly indent block comments
Date: Wed,  7 Oct 2015 01:57:10 +0300
Message-Id: <da76fbcb4571c288a7a66b4488b9196daee5c9ec.1444172066.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444172065.git.ciorneiioana@gmail.com>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444172065.git.ciorneiioana@gmail.com>
References: <cover.1444172065.git.ciorneiioana@gmail.com>

Rework block comments in order to follow
kernel coding style

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 30 ++++++++++++++++++++----------
 1 file changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index f1d4911..2a16731 100644
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


