X-GM-THRID: 6206326590573379584
X-Received: by 10.66.221.131 with SMTP id qe3mr6761277pac.2.1445023017897;
        Fri, 16 Oct 2015 12:16:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.176.227 with SMTP id cl3ls290440igc.6.gmail; Fri, 16 Oct
 2015 12:16:57 -0700 (PDT)
X-Received: by 10.50.17.74 with SMTP id m10mr5683941igd.3.1445023017627;
        Fri, 16 Oct 2015 12:16:57 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id vy6si2089532pbc.1.2015.10.16.12.16.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 12:16:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabrc13 with SMTP id rc13so128275126pab.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 12:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Ud2hUXr5a/g1/r84lNaTpQUeObtuHfwiaXUT6djT8Ho=;
        b=kzSNtBr65ZsHShFUWfB+A+b0iEfrRfHHC7JbdTVzEmikFn776i4WTUCMn7xLor3TC7
         UDP/s3EyCpC0kZueu7dJJEUJwTbRT8+twZiv0JQqiyV/tRewIfYZd9YayhRcihiBNw/P
         3Xhu6L9m7fztldfra0IrJGKGANZJmraEomG8u5gKumRfC6ITyT+ec0lWI+G4G5+N4otf
         E0lo22fYksG97ZlNYp6v11R0A6RozjR9eAVhIILUp1j7A5iNbEUItUsiT8nww8eZXDPE
         utrzp5r+Z5raa2Wtn20t9bC2l5KLmAA6ocaq7Y0EJzSoYGrxZTbD6sj04G1iPthYVjSt
         kG8g==
X-Received: by 10.66.190.6 with SMTP id gm6mr18157077pac.27.1445023017489;
        Fri, 16 Oct 2015 12:16:57 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id po7sm22608464pbc.56.2015.10.16.12.16.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 12:16:57 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] Staging: iio: cdc: ad7152: Remove unused macros
Date: Sat, 17 Oct 2015 00:46:46 +0530
Message-Id: <1445023006-10140-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1445023006-10140-1-git-send-email-shraddha.6596@gmail.com>
References: <1445023006-10140-1-git-send-email-shraddha.6596@gmail.com>

Remove the macros since they are not used anywhere throughout the
kernel.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/iio/cdc/ad7152.c | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index c3d5531..f814f3d 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -35,38 +35,20 @@
 #define AD7152_REG_CH2_GAIN_HIGH	12
 #define AD7152_REG_CH2_SETUP		14
 #define AD7152_REG_CFG			15
-#define AD7152_REG_RESEVERD		16
-#define AD7152_REG_CAPDAC_POS		17
-#define AD7152_REG_CAPDAC_NEG		18
 #define AD7152_REG_CFG2			26
 
-/* Status Register Bit Designations (AD7152_REG_STATUS) */
-#define AD7152_STATUS_RDY1		(1 << 0)
-#define AD7152_STATUS_RDY2		(1 << 1)
-#define AD7152_STATUS_C1C2		(1 << 2)
-#define AD7152_STATUS_PWDN		(1 << 7)
-
 /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
 #define AD7152_SETUP_CAPDIFF		(1 << 5)
-#define AD7152_SETUP_RANGE_2pF		(0 << 6)
-#define AD7152_SETUP_RANGE_0_5pF	(1 << 6)
-#define AD7152_SETUP_RANGE_1pF		(2 << 6)
 #define AD7152_SETUP_RANGE_4pF		(3 << 6)
 #define AD7152_SETUP_RANGE(x)		((x) << 6)
 
 /* Config Register Bit Designations (AD7152_REG_CFG) */
 #define AD7152_CONF_CH2EN		(1 << 3)
 #define AD7152_CONF_CH1EN		(1 << 4)
-#define AD7152_CONF_MODE_IDLE		(0 << 0)
-#define AD7152_CONF_MODE_CONT_CONV	(1 << 0)
 #define AD7152_CONF_MODE_SINGLE_CONV	(2 << 0)
 #define AD7152_CONF_MODE_OFFS_CAL	(5 << 0)
 #define AD7152_CONF_MODE_GAIN_CAL	(6 << 0)
 
-/* Capdac Register Bit Designations (AD7152_REG_CAPDAC_XXX) */
-#define AD7152_CAPDAC_DACEN		(1 << 7)
-#define AD7152_CAPDAC_DACP(x)		((x) & 0x1F)
-
 /* CFG2 Register Bit Designations (AD7152_REG_CFG2) */
 #define AD7152_CFG2_OSR(x)		(((x) & 0x3) << 4)
 
-- 
2.1.4


