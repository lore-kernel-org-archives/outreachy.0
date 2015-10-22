X-GM-THRID: 6208472977162371072
X-Received: by 10.182.70.4 with SMTP id i4mr12636817obu.15.1445526002897;
        Thu, 22 Oct 2015 08:00:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.67.69 with SMTP id l5ls836726igt.21.gmail; Thu, 22 Oct 2015
 08:00:02 -0700 (PDT)
X-Received: by 10.50.122.2 with SMTP id lo2mr13437780igb.2.1445526002483;
        Thu, 22 Oct 2015 08:00:02 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id el2si1727515pbb.0.2015.10.22.08.00.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 08:00:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id rc13so88630060pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 08:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=SCWNm9qKcT0+IrrO3KfTaZaQ9wcsaUWPgznKbx/wdcA=;
        b=rNtSX0Taj630ITaDPlHmoeaaUF2I3JZcBlfczDo/VSrKYfMPTVwUG/3zBUuP6+sOVS
         sVPa3o8cG0C05AwIG4ZwqjG02tBvEmv7PXsTXq7S6ASCj6cqPWZ1Of9WOPTeJunQNFpL
         So/S5wRaxex5cdICQmVlAHnEmNOxcYq4i6KyAI//NUTSzI3gPocy62t/DOlGWOfEDUUW
         cO7ouAWkT0FAv1UKdsMZHYS16WKDtFCTt+yVeY3O708+R3oWDe7jhLULcOKnsaabt3oi
         aQl7sLKs4Mrg7E5Be/luTxuWC89vstxY9S7WEvErtbfhtOOHJuHvhyaOFtn2z2dHHazO
         JEpA==
X-Received: by 10.68.174.193 with SMTP id bu1mr17913070pbc.136.1445526002360;
        Thu, 22 Oct 2015 08:00:02 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id iy1sm14312201pbb.85.2015.10.22.07.59.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Oct 2015 08:00:01 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: y2038@lists.linaro.org,
	David Woodhouse <dwmw2@infradead.org>,
	Brian Norris <computersforpeace@gmail.com>,
	linux-mtd@lists.infradead.org
Subject: [RESEND v2] mtd: tests: Replace timeval with ktime_t
Date: Thu, 22 Oct 2015 20:29:54 +0530
Message-Id: <1445525994-15331-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

Changes the 32-bit time type timeval to the 64-bit time type
ktime_t, since 32-bit systems using struct timeval will break in the
year 2038. Correspondingly change do_gettimeofday() to ktime_get()
since ktime_get returns a ktime_t, but do_gettimeofday returns a
struct timeval.Here, ktime_get() is used instead of ktime_get_real()
since ktime_get() uses monotonic clock.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
---
Changes in v2-
 Make commit message clearer.

 drivers/mtd/tests/speedtest.c   | 10 +++++-----
 drivers/mtd/tests/torturetest.c | 10 +++++-----
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/mtd/tests/speedtest.c b/drivers/mtd/tests/speedtest.c
index 5a6f31a..0b89418 100644
--- a/drivers/mtd/tests/speedtest.c
+++ b/drivers/mtd/tests/speedtest.c
@@ -22,6 +22,7 @@
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #include <linux/init.h>
+#include <linux/ktime.h>
 #include <linux/module.h>
 #include <linux/moduleparam.h>
 #include <linux/err.h>
@@ -49,7 +50,7 @@ static int pgsize;
 static int ebcnt;
 static int pgcnt;
 static int goodebcnt;
-static struct timeval start, finish;
+static ktime_t start, finish;
 
 static int multiblock_erase(int ebnum, int blocks)
 {
@@ -168,12 +169,12 @@ static int read_eraseblock_by_2pages(int ebnum)
 
 static inline void start_timing(void)
 {
-	do_gettimeofday(&start);
+	start = ktime_get();
 }
 
 static inline void stop_timing(void)
 {
-	do_gettimeofday(&finish);
+	finish = ktime_get();
 }
 
 static long calc_speed(void)
@@ -181,8 +182,7 @@ static long calc_speed(void)
 	uint64_t k;
 	long ms;
 
-	ms = (finish.tv_sec - start.tv_sec) * 1000 +
-	     (finish.tv_usec - start.tv_usec) / 1000;
+	ms = ktime_ms_delta(finish, start);
 	if (ms == 0)
 		return 0;
 	k = (uint64_t)goodebcnt * (mtd->erasesize / 1024) * 1000;
diff --git a/drivers/mtd/tests/torturetest.c b/drivers/mtd/tests/torturetest.c
index e5d6e6d..93c2729 100644
--- a/drivers/mtd/tests/torturetest.c
+++ b/drivers/mtd/tests/torturetest.c
@@ -26,6 +26,7 @@
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #include <linux/init.h>
+#include <linux/ktime.h>
 #include <linux/module.h>
 #include <linux/moduleparam.h>
 #include <linux/err.h>
@@ -79,18 +80,18 @@ static unsigned char *check_buf;
 static unsigned int erase_cycles;
 
 static int pgsize;
-static struct timeval start, finish;
+static ktime_t start, finish;
 
 static void report_corrupt(unsigned char *read, unsigned char *written);
 
 static inline void start_timing(void)
 {
-	do_gettimeofday(&start);
+	start = ktime_get();
 }
 
 static inline void stop_timing(void)
 {
-	do_gettimeofday(&finish);
+	finish = ktime_get();
 }
 
 /*
@@ -333,8 +334,7 @@ static int __init tort_init(void)
 			long ms;
 
 			stop_timing();
-			ms = (finish.tv_sec - start.tv_sec) * 1000 +
-			     (finish.tv_usec - start.tv_usec) / 1000;
+			ms = ktime_ms_delta(finish, start);
 			pr_info("%08u erase cycles done, took %lu "
 			       "milliseconds (%lu seconds)\n",
 			       erase_cycles, ms, ms / 1000);
-- 
2.1.4


