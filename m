X-GM-THRID: 6208527977579282432
X-Received: by 10.182.102.194 with SMTP id fq2mr17402474obb.43.1445612875390;
        Fri, 23 Oct 2015 08:07:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.197 with SMTP id n66ls1117390ioi.86.gmail; Fri, 23 Oct
 2015 08:07:55 -0700 (PDT)
X-Received: by 10.67.7.35 with SMTP id cz3mr17345810pad.40.1445612874993;
        Fri, 23 Oct 2015 08:07:54 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id pe1si2264506pac.2.2015.10.23.08.07.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 08:07:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id z6so120653372pas.2
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 08:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+ECptmosJmMKiOYrBL2uFoBqSVaF+nDNTjc8Xf99fiU=;
        b=sSv+NQQ2sYlussfIJUpVuVHsGB3DngXIr49lqWVvRPy0/xAQ5PTZZs7ITdUPPGUgfi
         vIFlW30R7ZFMTkaI4WNBn1avfUB/KnRAtfwe56L6O+DEJsOPAI4/bSXhB11XV/UZtblm
         OwUwd3EoZaZ09oClLiUqzep7TO7aK2Acp8O0TU0ZIkzAipwpExjzgr/KJh/VYYwVNs2u
         W89zAibeRkez0/53a/IccAAcVjNxYOOpKTT/7eM6OR3q4Mp8hVU7ZKpMIbV8Ppbuc8yo
         gDmH//NPQzETdw+e5MjJTO3VAN0dS1Gfxr5EnYfb9+OThQXJfyJnt8pt0WkEkRq3PcjM
         WdpA==
X-Received: by 10.69.14.225 with SMTP id fj1mr5604683pbd.103.1445612874826;
        Fri, 23 Oct 2015 08:07:54 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.64.69.106])
        by smtp.gmail.com with ESMTPSA id gv1sm19519653pbc.38.2015.10.23.08.07.53
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 23 Oct 2015 08:07:54 -0700 (PDT)
Date: Fri, 23 Oct 2015 20:37:49 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnd@arndb.de, gregkh@linuxfoundation.org, y2038@lists.linaro.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] misc: ibmasm: Replace timeval with timespec64
Message-ID: <20151023150749.GA13762@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
will not give current time beyond 2038.

The patch changes the code to use ktime_get_real_ts64() which returns
a 'struct timespec64' instead of do_gettimeofday() which returns a
'struct timeval'

This patch also alters the format strings in sprintf() for now.tv_sec
and now.tv_nsec to incorporate 'long long' on 32 bit architectures and
leading zeroes respectively.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
---
Changes in v2:
        -change format string of now.tv_sec to '%llu'
        -change format string of now.tv_nsec to '%.08lu'
Changes in v3:
        -Replace tv_usec with tv_nsec, error made in v2
        -Build tested

 drivers/misc/ibmasm/ibmasm.h | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/ibmasm/ibmasm.h b/drivers/misc/ibmasm/ibmasm.h
index 9b08344..82380ae 100644
--- a/drivers/misc/ibmasm/ibmasm.h
+++ b/drivers/misc/ibmasm/ibmasm.h
@@ -34,6 +34,7 @@
 #include <linux/kref.h>
 #include <linux/device.h>
 #include <linux/input.h>
+#include <linux/time64.h>
 
 /* Driver identification */
 #define DRIVER_NAME	"ibmasm"
@@ -53,9 +54,10 @@ extern int ibmasm_debug;
 
 static inline char *get_timestamp(char *buf)
 {
-	struct timeval now;
-	do_gettimeofday(&now);
-	sprintf(buf, "%lu.%lu", now.tv_sec, now.tv_usec);
+	struct timespec64 now;
+	ktime_get_real_ts64(&now);
+	sprintf(buf, "%llu.%.08lu", (long long)now.tv_sec, 
+					now.tv_nsec / NSEC_PER_USEC);
 	return buf;
 }
 
-- 
1.9.1


