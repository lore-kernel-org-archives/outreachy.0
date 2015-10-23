X-GM-THRID: 6208922267806597120
X-Received: by 10.66.142.138 with SMTP id rw10mr1442132pab.0.1445627368319;
        Fri, 23 Oct 2015 12:09:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.29.52 with SMTP id g20ls296225igh.23.gmail; Fri, 23 Oct
 2015 12:09:27 -0700 (PDT)
X-Received: by 10.50.66.230 with SMTP id i6mr3905796igt.10.1445627367779;
        Fri, 23 Oct 2015 12:09:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id fa8si2438990pab.1.2015.10.23.12.09.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 12:09:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id fv9so131282671pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 12:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=KqlOHr1z0q44AFrlyRWDuGqLc7C7QF+LbHqC2JqbJ+c=;
        b=TEGG7HlzNYVEW3s9hVrMMLcdiWhbRYZjZiaF/LvUpOksyWEK8niRxiUVMRpd517Ojc
         hRBtvucLLnf5Gh14Rm+8iGKgZW7/AIe1rqg49qP1MIK/hlLRSEyH019xrapS79FgiC1w
         u+DxpZ7erievvWWRdtvmHMRZy5NafBmgcEj+yertegXxrxWdT8W77ZqRyCotRzxmn24Y
         KogZlxuTtgm1c45Qhlnr2WxaPdx0mPKAnevXgu1arCs06KleiLh1+vNrRDxAD19TOnIg
         x+CmWfcLw9TaM6mX8mPwXaN2upkXFj5n2zeGTTWWYpHRyUIDenr1WPC2jaTeP2h81MgK
         fbVQ==
X-Received: by 10.68.211.132 with SMTP id nc4mr6937877pbc.16.1445627367596;
        Fri, 23 Oct 2015 12:09:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.138.208])
        by smtp.gmail.com with ESMTPSA id ah2sm20343889pad.10.2015.10.23.12.09.26
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 23 Oct 2015 12:09:27 -0700 (PDT)
Date: Sat, 24 Oct 2015 00:39:22 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH] char: ipmi: ipmi_ssif: Replace timeval with timespec64
Message-ID: <20151023190922.GA32154@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
will not give current time beyond 2038.

The patch changes the code to use ktime_get_real_ts64() which returns
a 'struct timespec64' instead of do_gettimeofday() which returns a
'struct timeval'

This patch also alters the format strings in pr_info() for now.tv_sec
and now.tv_nsec to incorporate 'long long' on 32 bit architectures and
leading zeroes respectively.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/char/ipmi/ipmi_ssif.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 877205d..926add4 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -52,6 +52,7 @@
 #include <linux/kthread.h>
 #include <linux/acpi.h>
 #include <linux/ctype.h>
+#include <linux/time64.h>
 
 #define PFX "ipmi_ssif: "
 #define DEVICE_NAME "ipmi_ssif"
@@ -1041,12 +1042,12 @@ static void sender(void                *send_info,
 	start_next_msg(ssif_info, flags);
 
 	if (ssif_info->ssif_debug & SSIF_DEBUG_TIMING) {
-		struct timeval t;
+		struct timespec64 t;
 
-		do_gettimeofday(&t);
-		pr_info("**Enqueue %02x %02x: %ld.%6.6ld\n",
+		ktime_get_real_ts64(&t);
+		pr_info("**Enqueue %02x %02x: %lld.%6.06ld\n",
 		       msg->data[0], msg->data[1],
-		       (long) t.tv_sec, (long) t.tv_usec);
+		       (long long) t.tv_sec, (long) t.tv_nsec / NSEC_PER_USEC);
 	}
 }
 
-- 
1.9.1


