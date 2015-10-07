X-GM-THRID: 6202978899734822912
X-Received: by 10.112.54.197 with SMTP id l5mr531035lbp.21.1444243569763;
        Wed, 07 Oct 2015 11:46:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.169 with SMTP id b9ls208241wiy.35.gmail; Wed, 07 Oct
 2015 11:46:09 -0700 (PDT)
X-Received: by 10.194.156.193 with SMTP id wg1mr548360wjb.3.1444243569374;
        Wed, 07 Oct 2015 11:46:09 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id ch7si163619wib.2.2015.10.07.11.46.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 11:46:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id fx3so225873641wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 11:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=nwglUwqa2uAIkIK/g9VCWgq+aUQtV9FIC/L1Kk9+jqk=;
        b=jn/SF2lIixvmvqXBTPiv8fQob+6bXI2l5hfDlHvzw020EGwa24NwOyZ6Gu98lHLcDj
         +NFySW07Xc6Xy5CvAEgtB3kbHWOwDAj3UP9pQtMVJNrOM+XiVwXf2gn7S47fHhYqKAsk
         1LMrDS15bRDBrUO6nZPUOCCL9byeM6/f3LolelCgwINd0BBieUrYdn0FhzaaI4C65wjq
         1D9WIMsh2ScY3CNswF7guezAMuuDm7bCxYPAS2m2AErdJmsRPfbrlSeCBSaGz1JKevss
         5dEFs7ZHjWTysegeu09viyNaZZGfHaMdZmhUjEMnjSV0y47pdNTIt0dWD/UgNEI072KE
         VwNQ==
X-Received: by 10.194.48.81 with SMTP id j17mr2846107wjn.81.1444243569259;
        Wed, 07 Oct 2015 11:46:09 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id hs5sm3753833wib.6.2015.10.07.11.46.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 11:46:08 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: iio: adc: remove unused definitions
Date: Wed,  7 Oct 2015 21:46:02 +0300
Message-Id: <1444243562-19812-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

Remove definitions since there are not used at all

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index fe56fb6..53bce3a 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -118,12 +118,6 @@
 
 /* GPOCON Register Bit Designations (AD7192_REG_GPOCON) */
 #define AD7192_GPOCON_BPDSW	BIT(6) /* Bridge power-down switch enable */
-#define AD7192_GPOCON_GP32EN	BIT(5) /* Digital Output P3 and P2 enable */
-#define AD7192_GPOCON_GP10EN	BIT(4) /* Digital Output P1 and P0 enable */
-#define AD7192_GPOCON_P3DAT	BIT(3) /* P3 state */
-#define AD7192_GPOCON_P2DAT	BIT(2) /* P2 state */
-#define AD7192_GPOCON_P1DAT	BIT(1) /* P1 state */
-#define AD7192_GPOCON_P0DAT	BIT(0) /* P0 state */
 
 #define AD7192_INT_FREQ_MHz	4915200
 
-- 
2.1.4


