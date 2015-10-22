X-GM-THRID: 6208527977579282432
X-Received: by 10.140.234.135 with SMTP id f129mr13581598qhc.9.1445535565893;
        Thu, 22 Oct 2015 10:39:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.225.34 with SMTP id rh2ls1782671igc.34.canary; Thu, 22 Oct
 2015 10:39:25 -0700 (PDT)
X-Received: by 10.66.136.40 with SMTP id px8mr14074165pab.11.1445535565469;
        Thu, 22 Oct 2015 10:39:25 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id sm2si460934pab.0.2015.10.22.10.39.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 10:39:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id hk11so92380952pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 10:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6j1/MNG+KM9sjLVLuqcZZ8fmmEQtWQdn9w82N5/zS/8=;
        b=mrroiOc97OqodvKSX1Q31sn+/S5Ond/i5NS3SuDBjL148b7iWDhxW6oTKDxa+MivGX
         f3VvZqk1lDjXDheUQBlmGonQN/I63nhKMwraIrPNbV277tsoalrZdmGIoKuKic4WgxVB
         uE45/VL0HwbzY/WEyd7iTVTzzBIkYUoyONv31Sx5BDPjuKl7AWJadZEhcBKMw9avHjet
         Dy09Xz7qemNMtU95u0kEfKLujyhymbpMcN+zbXJkQUZfPdGKgaOl6cBT9TdefOuQCfDp
         yPdbJqb4V8SPE5SaHdpMPKDMSrGt6WO0QxsIYshlxMMVzpaXQyLbIakPOxfti5w92exd
         FM6A==
X-Received: by 10.68.69.45 with SMTP id b13mr18603479pbu.67.1445535565293;
        Thu, 22 Oct 2015 10:39:25 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.215.145])
        by smtp.gmail.com with ESMTPSA id sz9sm14881947pab.13.2015.10.22.10.39.24
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 10:39:24 -0700 (PDT)
Date: Thu, 22 Oct 2015 23:09:20 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH] misc: ibmasm: Replace timeval with timespec64
Message-ID: <20151022173920.GA32329@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
will not give current time beyond 2038.

This also changes the code to use ktime_get_real_ts64() which returns
a 'struct timespec64' instead of do_gettimeofday() which returns a
'struct timeval'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/misc/ibmasm/ibmasm.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/ibmasm/ibmasm.h b/drivers/misc/ibmasm/ibmasm.h
index 9b08344..0c7bb6d 100644
--- a/drivers/misc/ibmasm/ibmasm.h
+++ b/drivers/misc/ibmasm/ibmasm.h
@@ -34,6 +34,7 @@
 #include <linux/kref.h>
 #include <linux/device.h>
 #include <linux/input.h>
+#include <linux/time64.h>
 
 /* Driver identification */
 #define DRIVER_NAME	"ibmasm"
@@ -53,9 +54,9 @@ extern int ibmasm_debug;
 
 static inline char *get_timestamp(char *buf)
 {
-	struct timeval now;
-	do_gettimeofday(&now);
-	sprintf(buf, "%lu.%lu", now.tv_sec, now.tv_usec);
+	struct timespec64 now;
+	ktime_get_real_ts64(&now);
+	sprintf(buf, "%lu.%lu", now.tv_sec, now.tv_nsec / NSEC_PER_USEC);
 	return buf;
 }
 
-- 
1.9.1


