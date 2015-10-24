X-GM-THRID: 6209222856637677568
X-Received: by 10.66.253.37 with SMTP id zx5mr7992168pac.37.1445697354299;
        Sat, 24 Oct 2015 07:35:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.81 with SMTP id 78ls370554iog.81.gmail; Sat, 24 Oct 2015
 07:35:53 -0700 (PDT)
X-Received: by 10.107.16.9 with SMTP id y9mr20576697ioi.7.1445697353848;
        Sat, 24 Oct 2015 07:35:53 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id zg1si2784437pbb.2.2015.10.24.07.35.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 07:35:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id hk11so143986742pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 07:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=46Akc17udHP+r3fiuLK5BRTSkaqAMEJnNJpFvLMVK1U=;
        b=sOfTnHpGf8M0aSLLRQduim/xcbnnW9bLlautj4X6TvJKL0WQzOvootH15O0owNuUXc
         KMMOEZZ8T7N3miBiynTD+LGrDqEahNEYz81DE7IkFMfktbleH14S3RjjlshmvcHiOzdI
         JdEWnob/bMmMQGXDJvHbzRsBOhxdLh85uu1otkkRtU1nMQi1fReVuQ5GkzcX4nQYuNNA
         dbqh+sLfh8fkACUDbdGr6n4MLH78VbloiIppjeFotku8/25GoP9zWni1pWYLCOdrJ26m
         635fiY57tKQj6b5CJ5OLlHmNClNGzFjoU3rgPRoQkSyOxrmOczLIMaf3Z12HjULzCbhB
         VdZQ==
X-Received: by 10.66.171.171 with SMTP id av11mr11471059pac.85.1445697353720;
        Sat, 24 Oct 2015 07:35:53 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([125.212.122.114])
        by smtp.gmail.com with ESMTPSA id rw8sm4174740pbc.70.2015.10.24.07.35.52
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 24 Oct 2015 07:35:53 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] Staging: mt29f_spinand: Prefer using the BIT macro
Date: Sat, 24 Oct 2015 22:35:47 +0800
Message-Id: <1445697347-32590-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace all instances of bit shifting on 1 with the BIT(x) macro. In
addition, convert other non-1 shift operations with the equivalent
BIT(x) macro for uniformity. Issue pointed out by checkpatch.

CHECK: Prefer using the BIT macro

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/mt29f_spinand/mt29f_spinand.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.h b/drivers/staging/mt29f_spinand/mt29f_spinand.h
index fe6c15a..ae62975 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.h
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.h
@@ -44,19 +44,19 @@
 
 /* status */
 #define STATUS_OIP_MASK			0x01
-#define STATUS_READY			(0 << 0)
-#define STATUS_BUSY			(1 << 0)
+#define STATUS_READY			0
+#define STATUS_BUSY			BIT(0)
 
 #define STATUS_E_FAIL_MASK		0x04
-#define STATUS_E_FAIL			(1 << 2)
+#define STATUS_E_FAIL			BIT(2)
 
 #define STATUS_P_FAIL_MASK		0x08
-#define STATUS_P_FAIL			(1 << 3)
+#define STATUS_P_FAIL			BIT(3)
 
 #define STATUS_ECC_MASK			0x30
-#define STATUS_ECC_1BIT_CORRECTED	(1 << 4)
-#define STATUS_ECC_ERROR		(2 << 4)
-#define STATUS_ECC_RESERVED		(3 << 4)
+#define STATUS_ECC_1BIT_CORRECTED	BIT(4)
+#define STATUS_ECC_ERROR		BIT(5)
+#define STATUS_ECC_RESERVED		(BIT(5) | BIT(4))
 
 /*ECC enable defines*/
 #define OTP_ECC_MASK			0x10
-- 
1.9.1


