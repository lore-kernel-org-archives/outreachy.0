X-GM-THRID: 6208472977162371072
X-Received: by 10.50.61.234 with SMTP id t10mr13201926igr.4.1445522759468;
        Thu, 22 Oct 2015 07:05:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.225 with SMTP id e88ls998844qgf.59.gmail; Thu, 22 Oct
 2015 07:05:58 -0700 (PDT)
X-Received: by 10.31.149.200 with SMTP id x191mr12656504vkd.14.1445522758689;
        Thu, 22 Oct 2015 07:05:58 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id vy6si1675239pbc.1.2015.10.22.07.05.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 07:05:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id rc13so87624212pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 07:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1+v0Jd3odfl4OxwMT/tmjYTiAiYzY634qVEHGE0DRMY=;
        b=vyjjgPgT+WDiIk0KtHKla6vvYXoHJf8WSfT5CI6OBeTzRQM2tpPbD2T6kBOAzWE28I
         bzuoXfHuphnxj4KSmmWeIGx5WeS8VXaXUSwPkl8dNbC47iYsOOjPB2DGMocskRrz+JMZ
         Xan9dyshwP4XSPT0/EXLYUMpNFO8prKnSkkHtQzkIzIbwY77XocVk14ohYALv5eW7Nzj
         ea+HaF9jrlF8IjkwPM/hiGBs8g2KO8mAIKSoZ55vIOFL8aur/AXQdyZOtGlO+5+NH389
         mNWnOjZqcRlh3jBxE8LUBF3cKOo9X+/TNGJNRm07OH+P2ND/DqM36C/Gdbb+Uq8FA8Ld
         /jFg==
X-Received: by 10.68.93.227 with SMTP id cx3mr17554717pbb.155.1445522758505;
        Thu, 22 Oct 2015 07:05:58 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id rx10sm14188267pab.21.2015.10.22.07.05.56
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Oct 2015 07:05:57 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: y2038@lists.linaro.org
Subject: [PATCH] mtd: tests: Replace timeval with ktime_t
Date: Thu, 22 Oct 2015 19:35:49 +0530
Message-Id: <1445522749-14269-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

Change the 32-bit time type timeval to the 64-bit time type
ktime_t, since 32-bit systems using struct timeval will break in the
year 2038. Correspondingly change do_gettimeofday() to ktime_get()
since ktime_get returns a ktime_t, but do_gettimeofday returns a
struct timeval.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
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


