X-GM-THRID: 6200341306580926464
X-Received: by 10.112.164.1 with SMTP id ym1mr684051lbb.15.1443629457574;
        Wed, 30 Sep 2015 09:10:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.131 with SMTP id m3ls197380wif.47.gmail; Wed, 30 Sep
 2015 09:10:56 -0700 (PDT)
X-Received: by 10.195.12.234 with SMTP id et10mr699134wjd.2.1443629456986;
        Wed, 30 Sep 2015 09:10:56 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id c1si38608wiv.3.2015.09.30.09.10.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 09:10:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id lk2so206112911wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 09:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/qR5vcSVx83ZhfxtyBSxsrygaBqymj0gbpIgYMXKWmA=;
        b=LEs3kMod9CQ47itCF6Eb3B66LeAZBfU9os/OyMztXBvFBLylS6c3ERRYeLemciYuX+
         r/f2uxaoxCEDQTiTbZUvWcHwuwAxJyamJ/iMgGxsGUJBNFq5oN3mSlWz/WdJ06EfPHkv
         Jq+9pv7bbCSyZDmIY1DBHe73F7su9158ySd20Sixtrz/88bME4X/ANjbW/DjMDVSbl2i
         bMPz7pdFVpuJsz/fpgd0/E+qQlWsR5FuwOATzBD315iLN9ewuABZjdq7u57SzgR92dsw
         L9bpx4oNgc2e4gph2MK2W4Ok/+1k9WRbv0b9eJbGpMarGLyGa09MO+z5eQq0rewxNKg5
         3sxg==
X-Received: by 10.180.76.177 with SMTP id l17mr5978300wiw.16.1443629456850;
        Wed, 30 Sep 2015 09:10:56 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id c8sm1385763wja.36.2015.09.30.09.10.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 09:10:56 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: fbtbt: Replace timespec with ktime_t
Date: Wed, 30 Sep 2015 18:10:49 +0200
Message-Id: <1443629449-12352-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

struct timespec will overflow in year 2038, so replace it with
ktime_t. And replace functions that use struct timespec,
timespec_sub with ktime_sub. Also use monotonic time instead of real
time, by replacing getnstimeofday with ktime_get, to be more robust
against leap seconds and settimeofday() calls.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---

Changes in v2:
        -use ktime_t instead timespec64
        -use ktime_sub instead timespec64_sub
        -use monotonic instead real-time.

 drivers/staging/fbtft/fbtft-core.c | 35 +++++++++++++----------------------
 drivers/staging/fbtft/fbtft.h      |  2 +-
 2 files changed, 14 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 7f5fa3d..a1645e1 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -365,16 +365,15 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned start_line,
 				 unsigned end_line)
 {
 	size_t offset, len;
-	struct timespec ts_start, ts_end, ts_fps, ts_duration;
-	long fps_ms, fps_us, duration_ms, duration_us;
-	long fps, throughput;
+	ktime_t ts_start, ts_end, ts_fps;
+	long  long fps, throughput;
 	bool timeit = false;
 	int ret = 0;
 
 	if (unlikely(par->debug & (DEBUG_TIME_FIRST_UPDATE | DEBUG_TIME_EACH_UPDATE))) {
 		if ((par->debug & DEBUG_TIME_EACH_UPDATE) ||
 				((par->debug & DEBUG_TIME_FIRST_UPDATE) && !par->first_update_done)) {
-			getnstimeofday(&ts_start);
+			ts_start = ktime_get();
 			timeit = true;
 		}
 	}
@@ -411,30 +410,22 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned start_line,
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
+		if (par->update_time.tv64 == 0)
+			par->update_time = ts_start;
+
+		ts_fps = ktime_sub(ts_start, par->update_time);
+		par->update_time = ts_start;
+		fps = ktime_to_us(ts_fps);
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
+			"Display update: %lld kB/s, fps=%lld\n",
+			throughput, fps);
 		par->first_update_done = true;
 	}
 }
diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 7e9a506..8107f55 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -251,7 +251,7 @@ struct fbtft_par {
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


