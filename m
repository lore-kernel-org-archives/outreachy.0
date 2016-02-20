X-GM-THRID: 6253319309318160384
X-Received: by 10.194.85.169 with SMTP id i9mr2373331wjz.4.1455964359673;
        Sat, 20 Feb 2016 02:32:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.34.79 with SMTP id i76ls140628lfi.82.gmail; Sat, 20 Feb
 2016 02:32:38 -0800 (PST)
X-Received: by 10.112.150.105 with SMTP id uh9mr787242lbb.17.1455964358973;
        Sat, 20 Feb 2016 02:32:38 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by gmr-mx.google.com with ESMTPS id w10si532036wmw.3.2016.02.20.02.32.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 02:32:38 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22f.google.com with SMTP id a4so102125304wme.1
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 02:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=FYuH3hz294TLoumMU8u9lYN4a51m8m83NEZT+F61OiI=;
        b=eLCTXYykI8WB/r2p/A2O96Gd/kFbx3z2iQ6iUSocsQFtwQMpT4uQzv2QmYDmgHgGTh
         4vRaqNJD2wHWfkBsTb72GkC7aPD7MkmMOS4pBdfDkbVIBOW8+kxU/ff9+OCvlSYgrjn4
         U+Zi830VqhGJmqMnq20jez9xEnoPJIXPMeqpcQq+shZ1q88r+0yV+4fE88BP2aA2A20s
         WRo3wbOxJEHzfIH9XQrc6C5jwgQKSJAVC3YW30fg7eHM46Q3TRXVGB73N7X30qisez2u
         FEXXGIoGOs62naZZUNcC8GEewed8Jo4LGMA8MRKLGrWwXV6QvM/sTYhM12N4SbjTi4rz
         HGpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=FYuH3hz294TLoumMU8u9lYN4a51m8m83NEZT+F61OiI=;
        b=di/Rf/4+GL9EsCofHBf40sQpiFcCCHagrFwSDgitD1aMKsR5JpcwYDYvv6UspfAKyo
         ieuEiSHFrL5zzUQHJ3/zSaj4HNX9t9ggJ+4vMstDwpJEdClbmEQp/V3Y0W+ZLxcVsWKI
         IVjBqL/rwTeYCq6s9yqh4A7gtp8oh65+PjiMa97BBiO9KoRYF3LXNEs6HMOgl38o2k99
         WdLIAgV26bwTEzZkclBpy0DpuFrbNjoTQEDRN8rjIoVutwo0Xxt0+mxT8c4RiiL2W3dM
         n98P9aQeNsbHOdFWrXW+5YQkB+k/NQzwoKQDBrURR+ATfFnN4wM7b6kvzKwT+Aag5/oz
         OG7w==
X-Gm-Message-State: AG10YOQ7IRzaHw8W9PhHraW27SmI8zFVytqnrEtlwLTOU0AUegUlWo+RPOAcEc4RCFBYwQ==
X-Received: by 10.28.45.71 with SMTP id t68mr2104961wmt.46.1455964358864;
        Sat, 20 Feb 2016 02:32:38 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id lc3sm15120770wjb.7.2016.02.20.02.32.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 02:32:38 -0800 (PST)
Date: Sat, 20 Feb 2016 11:32:36 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: nvec: Use the BIT macro
Message-ID: <20160220103232.GA3277@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Prefer using the BIT macro instead of (1 << X). Checkpatch detected this
issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/nvec/nvec.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 1503ad7..bdea8fa 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -38,18 +38,18 @@
 #include "nvec.h"
 
 #define I2C_CNFG			0x00
-#define I2C_CNFG_PACKET_MODE_EN		(1 << 10)
-#define I2C_CNFG_NEW_MASTER_SFM		(1 << 11)
+#define I2C_CNFG_PACKET_MODE_EN		BIT(10)
+#define I2C_CNFG_NEW_MASTER_SFM		BIT(11)
 #define I2C_CNFG_DEBOUNCE_CNT_SHIFT	12
 
 #define I2C_SL_CNFG		0x20
-#define I2C_SL_NEWSL		(1 << 2)
-#define I2C_SL_NACK		(1 << 1)
-#define I2C_SL_RESP		(1 << 0)
-#define I2C_SL_IRQ		(1 << 3)
-#define END_TRANS		(1 << 4)
-#define RCVD			(1 << 2)
-#define RNW			(1 << 1)
+#define I2C_SL_NEWSL		BIT(2)
+#define I2C_SL_NACK		BIT(1)
+#define I2C_SL_RESP		BIT(0)
+#define I2C_SL_IRQ		BIT(3)
+#define END_TRANS		BIT(4)
+#define RCVD			BIT(2)
+#define RNW			BIT(1)
 
 #define I2C_SL_RCVD		0x24
 #define I2C_SL_STATUS		0x28
-- 
2.7.0


