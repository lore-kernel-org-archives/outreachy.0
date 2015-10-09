X-GM-THRID: 6202672545102036992
X-Received: by 10.112.26.212 with SMTP id n20mr3015116lbg.2.1444420311514;
        Fri, 09 Oct 2015 12:51:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.108.166 with SMTP id hl6ls378336wib.54.gmail; Fri, 09 Oct
 2015 12:51:51 -0700 (PDT)
X-Received: by 10.180.10.202 with SMTP id k10mr201713wib.2.1444420311190;
        Fri, 09 Oct 2015 12:51:51 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id bh7si39204wib.1.2015.10.09.12.51.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:51:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id fx3so84054906wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=W5kujWeJ33dDwZPwgQuzNFEYXwFW64TNxzqUj1HxWsA=;
        b=yUROEgVOz+LaOfbLeaSXda6kKBiy/ZwKcbW6Ihp5peT40ruf2ZIDvITMOqW+4v3zdm
         fEyHGJFQ69Gg/koJOkIiSCaVwOK19eLA4GnRSY+P61QJup1vYMj3k4x5Apty2g9D0cgz
         uf0gLuS5numVNKytwzK9ly4C3A756PVTmptjFGRiIPjK/5SJjMkgbTUg8SaqyRIMUHCT
         Ko3/2S42epf72qTzUMNBZVVYYT8CWmehd2KbdHF1uWFffernOcFJ8NgHK2dXnRLgt2BG
         IdQeLkv5XvellMyjfGhj7WF4KeVN2KDCY9sssHzsNRzwTfxWQY0lQaytRc3qeqwD7YHP
         0onQ==
X-Received: by 10.180.91.225 with SMTP id ch1mr1085144wib.39.1444420311117;
        Fri, 09 Oct 2015 12:51:51 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id wj4sm3895064wjb.10.2015.10.09.12.51.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 12:51:50 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v3 9/9] staging: iio: adc: properly indent block comments
Date: Fri,  9 Oct 2015 22:51:08 +0300
Message-Id: <96555246f1fed941753791823bec2b0d9b28e303.1444419393.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>

Rework block comments in order to follow
kernel coding style

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing
Changes in v3:
    - nothing

 drivers/staging/iio/adc/ad7192.c | 30 ++++++++++++++++++++----------
 1 file changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index c9a706a..1adfe00 100644
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


