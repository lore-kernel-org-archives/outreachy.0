X-GM-THRID: 6212180238047117312
X-Received: by 10.182.120.231 with SMTP id lf7mr14055435obb.50.1446385923205;
        Sun, 01 Nov 2015 05:52:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.202 with SMTP id j68ls1475091qgf.27.gmail; Sun, 01 Nov
 2015 05:52:02 -0800 (PST)
X-Received: by 10.129.108.212 with SMTP id h203mr14477247ywc.38.1446385922550;
        Sun, 01 Nov 2015 05:52:02 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id fa8si1502878pab.1.2015.11.01.05.52.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 05:52:02 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id hy1so114288471pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 05:52:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=3uVmXm9TEkSPCQOWv+4SL8Pt9Vo4NI5HYM4p+LXvVSE=;
        b=bhEJC3pNM1TI5mBurSKoVruL0px/dLQVybOB4S6HIFwDcnw2Rwvit2PbwfGZIzAs9D
         ibJ64abzv9YttfYeeFY6cdHdFwXMl9uvrA1PSQuSTcti+XnCrKLhJTJ2UjnNvygt6mCK
         mSRteV/hcCdkP7WD01n1uAnyl5ABuUmRWheX8NCv2u6QZ0Fg9fcw1vtFDJucw6prdPrR
         D6ptpZKTsM9EMZ3c0M+mlZetx8Zstii3DY24pgcFcx5+vfyp7z2Em+91MllPuBUC4hyZ
         gdYA6cS/MyYOlkDr9viyDYH1y9CA5kEIWtghIDxuWi7TSl29TC5Vsu9ByxPOsokKQIQa
         2YxQ==
X-Received: by 10.68.137.234 with SMTP id ql10mr20605807pbb.33.1446385922334;
        Sun, 01 Nov 2015 05:52:02 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id jt1sm18628710pbc.83.2015.11.01.05.52.01
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 05:52:01 -0800 (PST)
Date: Sun, 1 Nov 2015 19:21:58 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH] scsi: bfa: bfa_cs: Remove struct timeval
Message-ID: <20151101135158.GA8158@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

32 bit systems using 'struct timeval' will break in the year 2038, so
we replace the code appropriately. However, this driver is not broken
in 2038 since we are using only the microseconds portion of the
current time.

This patch replaces struct timeval and do_gettimeofday() with
ktime_get_real_ns() which returns a 64 bit value which is safer than
struct timeval. 
ktime_get_real_ns() is also faster than the computations done in this
macro previously to get the same value.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/scsi/bfa/bfa_cs.h | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/scsi/bfa/bfa_cs.h b/drivers/scsi/bfa/bfa_cs.h
index 91a8aa3..eeafef0 100644
--- a/drivers/scsi/bfa/bfa_cs.h
+++ b/drivers/scsi/bfa/bfa_cs.h
@@ -22,6 +22,7 @@
 #ifndef __BFA_CS_H__
 #define __BFA_CS_H__
 
+#include <linux/ktime.h>
 #include "bfad_drv.h"
 
 /*
@@ -32,13 +33,7 @@
 #define BFA_TRC_MAX	(4 * 1024)
 #endif
 
-#define BFA_TRC_TS(_trcm)                               \
-	({                                              \
-		struct timeval tv;                      \
-							\
-		do_gettimeofday(&tv);                   \
-		(tv.tv_sec*1000000+tv.tv_usec);         \
-	})
+#define BFA_TRC_TS(_trcm)	(ktime_get_real_ns() / NSEC_PER_USEC)
 
 #ifndef BFA_TRC_TS
 #define BFA_TRC_TS(_trcm)	((_trcm)->ticks++)
-- 
1.9.1


