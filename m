X-GM-THRID: 6200499301082202112
X-Received: by 10.66.146.131 with SMTP id tc3mr6257686pab.20.1443666243568;
        Wed, 30 Sep 2015 19:24:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.225.34 with SMTP id rh2ls78148igc.34.canary; Wed, 30 Sep
 2015 19:24:01 -0700 (PDT)
X-Received: by 10.50.41.99 with SMTP id e3mr591059igl.0.1443666241253;
        Wed, 30 Sep 2015 19:24:01 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id el2si642839pbb.0.2015.09.30.19.24.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 19:24:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id ex6so58445120pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 19:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=X8gE89mKziEC66uvGC0B0xjCIBskWzbk/caXM1nU8Ms=;
        b=PVUx0E9C/Lxmko4izwVta6hpoHD4ofuFeAkEFuy++UAJLHSqcyCORyU2+/YRhhOtP+
         NTn/RPe25n8eGEYqNtIeY7HTuOupyWet54+kkYREU9UJ6en4q0Aq1aw6zIhFtTw4nRMr
         ulKgu+z6QncGPJiDQ+izpb7CjsSw2rK06OIXN76xc/lkwapbdq1eKIWYOD01nAocTuKM
         8+fOwPSUdjU2n6SxPjbV5V12Bh8L85jPDDylqvImk2nq7yWEk8WFWLK90nIIc+dmfK/s
         hWJGyDitnYuLRTSSlMx3YwR7MMvC2Iw7A6iEeJRNe6I57Wf+CqIwQwC56PFJ0heUDNvf
         N/9Q==
X-Received: by 10.66.120.80 with SMTP id la16mr8908530pab.1.1443666241113;
        Wed, 30 Sep 2015 19:24:01 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id a17sm3168525pbu.55.2015.09.30.19.23.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 19:24:00 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] Staging: iio: cdc: Use BIT and GENMASK macro
Date: Thu,  1 Oct 2015 07:53:50 +0530
Message-Id: <1443666230-8999-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.560C993F.00B6,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Use BIT()/GENMASK() macros for all register definitions instead of
hand-writing bit masks.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 Used GENMASK macro; covered more cases of BIT macro and updated 
 commit message

 drivers/staging/iio/cdc/ad7746.c | 52 ++++++++++++++++++++--------------------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 10fa372..a8049ef 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -52,42 +52,42 @@
 #define AD7746_STATUS_RDYCAP		BIT(0)
 
 /* Capacitive Channel Setup Register Bit Designations (AD7746_REG_CAP_SETUP) */
-#define AD7746_CAPSETUP_CAPEN		(1 << 7)
-#define AD7746_CAPSETUP_CIN2		(1 << 6) /* AD7746 only */
-#define AD7746_CAPSETUP_CAPDIFF		(1 << 5)
-#define AD7746_CAPSETUP_CACHOP		(1 << 0)
+#define AD7746_CAPSETUP_CAPEN		BIT(7)
+#define AD7746_CAPSETUP_CIN2		BIT(6) /* AD7746 only */
+#define AD7746_CAPSETUP_CAPDIFF		BIT(5)
+#define AD7746_CAPSETUP_CACHOP		BIT(0)
 
 /* Voltage/Temperature Setup Register Bit Designations (AD7746_REG_VT_SETUP) */
-#define AD7746_VTSETUP_VTEN		(1 << 7)
-#define AD7746_VTSETUP_VTMD_INT_TEMP	(0 << 5)
-#define AD7746_VTSETUP_VTMD_EXT_TEMP	(1 << 5)
-#define AD7746_VTSETUP_VTMD_VDD_MON	(2 << 5)
-#define AD7746_VTSETUP_VTMD_EXT_VIN	(3 << 5)
-#define AD7746_VTSETUP_EXTREF		(1 << 4)
-#define AD7746_VTSETUP_VTSHORT		(1 << 1)
-#define AD7746_VTSETUP_VTCHOP		(1 << 0)
+#define AD7746_VTSETUP_VTEN		BIT(7)
+#define AD7746_VTSETUP_VTMD_INT_TEMP	0
+#define AD7746_VTSETUP_VTMD_EXT_TEMP	BIT(5)
+#define AD7746_VTSETUP_VTMD_VDD_MON	GENMASK(6, 0)
+#define AD7746_VTSETUP_VTMD_EXT_VIN	GENMASK(6, 5)
+#define AD7746_VTSETUP_EXTREF		BIT(4)
+#define AD7746_VTSETUP_VTSHORT		BIT(1)
+#define AD7746_VTSETUP_VTCHOP		BIT(0)
 
 /* Excitation Setup Register Bit Designations (AD7746_REG_EXC_SETUP) */
-#define AD7746_EXCSETUP_CLKCTRL		(1 << 7)
-#define AD7746_EXCSETUP_EXCON		(1 << 6)
-#define AD7746_EXCSETUP_EXCB		(1 << 5)
-#define AD7746_EXCSETUP_NEXCB		(1 << 4)
-#define AD7746_EXCSETUP_EXCA		(1 << 3)
-#define AD7746_EXCSETUP_NEXCA		(1 << 2)
-#define AD7746_EXCSETUP_EXCLVL(x)	(((x) & 0x3) << 0)
+#define AD7746_EXCSETUP_CLKCTRL		BIT(7)
+#define AD7746_EXCSETUP_EXCON		BIT(6)
+#define AD7746_EXCSETUP_EXCB		BIT(5)
+#define AD7746_EXCSETUP_NEXCB		BIT(4)
+#define AD7746_EXCSETUP_EXCA		BIT(3)
+#define AD7746_EXCSETUP_NEXCA		BIT(2)
+#define AD7746_EXCSETUP_EXCLVL(x)	GENMASK(((x) & 0x3), 0)
 
 /* Config Register Bit Designations (AD7746_REG_CFG) */
 #define AD7746_CONF_VTFS(x)		((x) << 6)
 #define AD7746_CONF_CAPFS(x)		((x) << 3)
-#define AD7746_CONF_MODE_IDLE		(0 << 0)
-#define AD7746_CONF_MODE_CONT_CONV	(1 << 0)
-#define AD7746_CONF_MODE_SINGLE_CONV	(2 << 0)
-#define AD7746_CONF_MODE_PWRDN		(3 << 0)
-#define AD7746_CONF_MODE_OFFS_CAL	(5 << 0)
-#define AD7746_CONF_MODE_GAIN_CAL	(6 << 0)
+#define AD7746_CONF_MODE_IDLE		0
+#define AD7746_CONF_MODE_CONT_CONV	GENMASK(1, 0)
+#define AD7746_CONF_MODE_SINGLE_CONV	GENMASK(2, 0)
+#define AD7746_CONF_MODE_PWRDN		GENMASK(3, 0)
+#define AD7746_CONF_MODE_OFFS_CAL	GENMASK(5, 0)
+#define AD7746_CONF_MODE_GAIN_CAL	GENMASK(6, 0)
 
 /* CAPDAC Register Bit Designations (AD7746_REG_CAPDACx) */
-#define AD7746_CAPDAC_DACEN		(1 << 7)
+#define AD7746_CAPDAC_DACEN		BIT(7)
 #define AD7746_CAPDAC_DACP(x)		((x) & 0x7F)
 
 /*
-- 
2.1.4


