X-GM-THRID: 6200341306580926464
X-Received: by 10.112.40.17 with SMTP id t17mr615003lbk.10.1444248424661;
        Wed, 07 Oct 2015 13:07:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.210 with SMTP id 79ls114322lfq.12.gmail; Wed, 07 Oct
 2015 13:07:03 -0700 (PDT)
X-Received: by 10.112.147.7 with SMTP id tg7mr620724lbb.16.1444248423924;
        Wed, 07 Oct 2015 13:07:03 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id c1si174577wiv.3.2015.10.07.13.07.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 13:07:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id lk2so44437842wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 13:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=i6XhI7hawVJj72tal5k1sPNdPHE/LCK97Uz6RAQ8Pt8=;
        b=whVtaMjWI0erfIkqc6wahTLnjG09+qZdggp5e7HN4kJhwDilFGzeHjqCSibb/QlU4a
         s8w4EgLrN420a/BwTgUsuSB+eME/pXF+bKKtAvEOEXKVGIIuT2XKmdBUEbEDc9tqhPNE
         7aNb70O/mvhAoEJNQMsVYbOtRS9+m1hwt+b3qv6ADBNFLzuUwHMrCMo+2QCaEbUUQxg1
         eeoRZqNXnFPkmVXKjFAdhs6ZS1hrQpeyzUoTXf596s8oQ45eVmsbWbxP7OAw4qS4mWAW
         vA6OQCM3vRWiKCcQbZrRZunWA6erCRn3YmpvcZsZBYRgIKyV8Q/RQfWnNSs9XMjn/KjG
         ygOg==
X-Received: by 10.194.7.97 with SMTP id i1mr3613911wja.87.1444248423760;
        Wed, 07 Oct 2015 13:07:03 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id kr10sm41357361wjc.25.2015.10.07.13.07.02
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 13:07:03 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3] Staging: fbtbt: Replace timespec with ktime_t
Date: Wed,  7 Oct 2015 22:06:55 +0200
Message-Id: <1444248415-16249-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

struct timespec will overflow in year 2038, so replace it with
ktime_t. And replace functions that use struct timespec,
timespec_sub with ktime_sub. Also use monotonic time instead of real
time, by replacing getnstimeofday with ktime_get, to be more robust
against leap seconds and settimeofday() calls.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Changes in v3:
	-fix build error
	-do not access tv64 directly

Changes in v2:
        -use ktime_t instead timespec64
        -use ktime_sub instead timespec64_sub
        -use monotonic instead real-time.

 drivers/staging/fbtft/fbtft-core.c | 32 +++++++++++---------------------
 drivers/staging/fbtft/fbtft.h      |  2 +-
 2 files changed, 12 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 4691bcc..81aa600 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -350,8 +350,7 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned start_line,
 				 unsigned end_line)
 {
 	size_t offset, len;
-	struct timespec ts_start, ts_end, ts_fps, ts_duration;
-	long fps_ms, fps_us, duration_ms, duration_us;
+	ktime_t ts_start, ts_end;
 	long fps, throughput;
 	bool timeit = false;
 	int ret = 0;
@@ -359,7 +358,7 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned start_line,
 	if (unlikely(par->debug & (DEBUG_TIME_FIRST_UPDATE | DEBUG_TIME_EACH_UPDATE))) {
 		if ((par->debug & DEBUG_TIME_EACH_UPDATE) ||
 				((par->debug & DEBUG_TIME_FIRST_UPDATE) && !par->first_update_done)) {
-			getnstimeofday(&ts_start);
+			ts_start = ktime_get();
 			timeit = true;
 		}
 	}
@@ -396,30 +395,21 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned start_line,
 			__func__);
 
 	if (unlikely(timeit)) {
-		getnstimeofday(&ts_end);
-		if (par->update_time.tv_nsec == 0 && par->update_time.tv_sec == 0) {
-			par->update_time.tv_sec = ts_start.tv_sec;
-			par->update_time.tv_nsec = ts_start.tv_nsec;
-		}
-		ts_fps = timespec_sub(ts_start, par->update_time);
-		par->update_time.tv_sec = ts_start.tv_sec;
-		par->update_time.tv_nsec = ts_start.tv_nsec;
-		fps_ms = (ts_fps.tv_sec * 1000) + ((ts_fps.tv_nsec / 1000000) % 1000);
-		fps_us = (ts_fps.tv_nsec / 1000) % 1000;
-		fps = fps_ms * 1000 + fps_us;
+		ts_end = ktime_get();
+		if (ktime_to_ns(par->update_time))
+			par->update_time = ts_start;
+
+		par->update_time = ts_start;
+		fps = ktime_us_delta(ts_start, par->update_time);
 		fps = fps ? 1000000 / fps : 0;
 
-		ts_duration = timespec_sub(ts_end, ts_start);
-		duration_ms = (ts_duration.tv_sec * 1000) + ((ts_duration.tv_nsec / 1000000) % 1000);
-		duration_us = (ts_duration.tv_nsec / 1000) % 1000;
-		throughput = duration_ms * 1000 + duration_us;
+		throughput = ktime_us_delta(ts_end, ts_start);
 		throughput = throughput ? (len * 1000) / throughput : 0;
 		throughput = throughput * 1000 / 1024;
 
 		dev_info(par->info->device,
-			"Display update: %ld kB/s (%ld.%.3ld ms), fps=%ld (%ld.%.3ld ms)\n",
-			throughput, duration_ms, duration_us,
-			fps, fps_ms, fps_us);
+			"Display update: %ld kB/s, fps=%ld\n",
+			throughput, fps);
 		par->first_update_done = true;
 	}
 }
diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 6dd42b2..20e69f0 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -246,7 +246,7 @@ struct fbtft_par {
 	} gamma;
 	unsigned long debug;
 	bool first_update_done;
-	struct timespec update_time;
+	ktime_t update_time;
 	bool bgr;
 	void *extra;
 };
-- 
1.9.1


