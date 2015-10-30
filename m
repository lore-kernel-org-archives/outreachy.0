X-GM-THRID: 6211329060983799808
X-Received: by 10.50.176.225 with SMTP id cl1mr1063420igc.7.1446187743204;
        Thu, 29 Oct 2015 23:49:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.101.135 with SMTP id fg7ls319200obb.54.gmail; Thu, 29 Oct
 2015 23:49:02 -0700 (PDT)
X-Received: by 10.182.24.42 with SMTP id r10mr4870960obf.42.1446187742826;
        Thu, 29 Oct 2015 23:49:02 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id sm2si553322pab.0.2015.10.29.23.49.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 23:49:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id z6so65161806pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 23:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bCbo61oGOG488qYnDHV1g3crt+EPGe0V7Zhqz1R+FuA=;
        b=n8JLKeFPb7IviRQZzqAtU+jNJA/6rmXYGiq3eYkUkPAgAAs7fwVzMhGU9y+MmX0AyU
         lVx7xyr997I1pbVU3moab49paS3IFxgS7gurzD9Ho9Z+YYB71YQZ/rlVZRXv6VfjNCai
         od+2F/FDiI+Pt1Ul0OWzi1WLbDWPZnRz20Ax/lV9g3j/MlkfKFOAkHvtl5OIrzAUVaqh
         n52MAeegU7D7fqO1m8We8RI1RYg+qNpbMWAGL7GbnsIdUaJtp8TJOX3uhUu+AIioJzVe
         ZBh100QlyFswz9cb2hnwuWDouSHoZGPYCHBon4hDEB1+5OKuDGCMyC3mYP23OD0o/kyK
         ZOmA==
X-Received: by 10.66.100.129 with SMTP id ey1mr6867414pab.94.1446187742613;
        Thu, 29 Oct 2015 23:49:02 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.182.136])
        by smtp.gmail.com with ESMTPSA id dk2sm6032568pbd.57.2015.10.29.23.49.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 23:49:02 -0700 (PDT)
Date: Fri, 30 Oct 2015 12:18:56 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Remove inclusion of version.h
Message-ID: <20151030064856.GA8280@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

version.h header inclusion is not necessary as detected by versioncheck.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index f6a6287..4737f0d 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -23,7 +23,6 @@
 #include <linux/kernel.h>
 #include <linux/skbuff.h>
 
-#include <linux/version.h>
 #include <linux/semaphore.h>
 
 #ifdef WILC_SDIO
-- 
1.9.1


