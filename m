X-GM-THRID: 6208922267806597120
X-Received: by 10.182.80.198 with SMTP id t6mr8791249obx.32.1445629870183;
        Fri, 23 Oct 2015 12:51:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.94.140 with SMTP id dc12ls21219obb.14.gmail; Fri, 23 Oct
 2015 12:51:09 -0700 (PDT)
X-Received: by 10.182.80.198 with SMTP id t6mr8791233obx.32.1445629869888;
        Fri, 23 Oct 2015 12:51:09 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id fa8si2453849pab.1.2015.10.23.12.51.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 12:51:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id z6so126214159pas.2
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 12:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=v24ZEr8PlbFpsdGZP6d8wDOzcFS/ZTrCtio3yNADs2w=;
        b=TljZYJ/l29h7k1pNmE39aKMJpiH2vk1/YLmPmLpmLuUyWqZRBQGPqJw9bbqgAiv5vA
         fChF0rdYAUDB1UM51IReuA+amGnxq5ktsf7wVJFoGQnP3eeDcnGsoFcBgPqBb6J3BmRE
         AXCQTYciMB/6K2YGKtBISMJmfiOnunnd3O4a/mrma8zFrMxDJonnSwb4TsPa8VUG/dVb
         eDcASNwZXFq5TZqLV1vRjfhrMmA7554xNF+n88g6Z6EUj1/jWDH3OEM760cizG/DH1vL
         Fsh7WJzB6YePY8AUXnyaky5CBGKuaqgswZPfz3GmJelP0Ue6s3fansrw3LtQQ/sEYhZt
         XIFg==
X-Received: by 10.66.61.205 with SMTP id s13mr22393028par.96.1445629869601;
        Fri, 23 Oct 2015 12:51:09 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.138.208])
        by smtp.gmail.com with ESMTPSA id w9sm20397275pbt.29.2015.10.23.12.51.08
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 23 Oct 2015 12:51:09 -0700 (PDT)
Date: Sat, 24 Oct 2015 01:21:04 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org, minyard@acm.org,
	openipmi-developer@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] char: ipmi: ipmi_ssif: Replace timeval with timespec64
Message-ID: <20151023195104.GA32677@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
will not give current time beyond 2038.

The patch changes the code to use ktime_get_real_ts64() which returns
a 'struct timespec64' instead of do_gettimeofday() which returns a
'struct timeval'

This patch also alters the format string in pr_info() for now.tv_sec
to incorporate 'long long' on 32 bit architectures.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Removed unnecessary format string change in pr_info()

 drivers/char/ipmi/ipmi_ssif.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 877205d..90e6246 100644
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
+		pr_info("**Enqueue %02x %02x: %lld.%6.6ld\n",
 		       msg->data[0], msg->data[1],
-		       (long) t.tv_sec, (long) t.tv_usec);
+		       (long long) t.tv_sec, (long) t.tv_nsec / NSEC_PER_USEC);
 	}
 }
 
-- 
1.9.1


