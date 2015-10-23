X-GM-THRID: 6208527977579282432
X-Received: by 10.13.236.135 with SMTP id v129mr18573132ywe.9.1445602932222;
        Fri, 23 Oct 2015 05:22:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.201 with SMTP id h67ls2004953qgh.60.gmail; Fri, 23 Oct
 2015 05:22:11 -0700 (PDT)
X-Received: by 10.129.51.213 with SMTP id z204mr16879539ywz.20.1445602931586;
        Fri, 23 Oct 2015 05:22:11 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id el2si2241048pbb.0.2015.10.23.05.22.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 05:22:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id fv9so122855637pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 05:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XVZY2ve7TgY+kS9PTXV8Ang9wMiYR9wbkgydZcT++NE=;
        b=mQ0QWbLThZ3anfpm3aX/bSv83HFNO7/66l+r/v18Nt+hRS2wQC/XNk0g/p3uoe5YQn
         5Us/H6UURrt4pwKjVDBly+2gJ4DQkqQrzntLBmpZ78AgIGmD+NxP9C7SArnY5AO4A343
         0yUb0VgEQ8p11VO6xIq9wluXWuneLhsX2rHC+hwtDgHSRsNKgRmv8n3KbUDGLobv/DfG
         XQuhPgIt53SxZ30XIp6Tc2KYZm0myfiQ4Ik7zLaW4TrVLFQssyJJvO+VB+oCW9lOYmIn
         z7LM9eBCGYMaTsLzcE+aSZWsO/u64b1osJNMnTqHOOtq20vnsjh+cwWpaqNNEntkWGRJ
         r7XQ==
X-Received: by 10.68.98.195 with SMTP id ek3mr4937538pbb.36.1445602931362;
        Fri, 23 Oct 2015 05:22:11 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.64.235.225])
        by smtp.gmail.com with ESMTPSA id kp4sm18844683pbc.34.2015.10.23.05.22.10
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 23 Oct 2015 05:22:10 -0700 (PDT)
Date: Fri, 23 Oct 2015 17:52:06 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH v2] misc: ibmasm: Replace timeval with timespec64
Message-ID: <20151023122206.GA16757@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
will not give current time beyond 2038.

The patch changes the code to use ktime_get_real_ts64() which returns
a 'struct timespec64' instead of do_gettimeofday() which returns a
'struct timeval'

This patch also alters the format strings in sprintf() for now.tv_sec and
now.tv_nsec to incorporate 'long long' on 32 bit architectures and
leading zeroes respectively.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -change format string of now.tv_sec to '%llu'
        -change format string of now.tv_nsec to '%.08lu' 

 drivers/misc/ibmasm/ibmasm.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/ibmasm/ibmasm.h b/drivers/misc/ibmasm/ibmasm.h
index 9b08344..d73be61 100644
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
+	sprintf(buf, "%llu.%.08lu", (long long)now.tv_sec, now.tv_usec);
 	return buf;
 }
 
-- 
1.9.1


