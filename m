X-GM-THRID: 6199956515015622656
X-Received: by 10.194.109.233 with SMTP id hv9mr4392278wjb.1.1443539866210;
        Tue, 29 Sep 2015 08:17:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.30.98 with SMTP id r2ls57214lah.45.gmail; Tue, 29 Sep 2015
 08:17:45 -0700 (PDT)
X-Received: by 10.112.142.195 with SMTP id ry3mr2765420lbb.22.1443539865540;
        Tue, 29 Sep 2015 08:17:45 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id c1si674835wiv.3.2015.09.29.08.17.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 08:17:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id lk2so156211407wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 08:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jEvALvpPDRe4y2t56+Ry2xBgjDSP2yp6ESRaxHAQbWs=;
        b=w0MtiXaVN3Q1pZez2pjpU1dPjW/8tR6xJH7lL4O1XUS+WZpFvnASSR1hH5YKi/mSNy
         DcUuIlRoAyNMuoJ+vRPRIJoPb7+B+Ks5Thej6SWDSJeo+w0gFadKy63ShmGyqZoy4hFR
         kOL7rQSf4dqH5VedwDUKYUOwPK4LOE6uFEnbokf21tTrH7A6EMJ8dkrUw1Ce7ac77Z29
         ucR+SUHB1c2egUO/uVv/dP+H8ROLg3vbzwphvOg1wJmFiUBoNt5ZmCP8ZrsVJs8cUZ7T
         xFMu1zvRkjrD9u5jqjZJHeUYQkBxCZ6fs/oRqbl9WqjR3Kv4Kg5GWMEx+rGfsgYLboE2
         W/OQ==
X-Received: by 10.194.117.39 with SMTP id kb7mr27410172wjb.129.1443539865320;
        Tue, 29 Sep 2015 08:17:45 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id hd7sm19167701wib.23.2015.09.29.08.17.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2015 08:17:44 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: fbtbt: Replace timespec with timespec64
Date: Tue, 29 Sep 2015 17:17:35 +0200
Message-Id: <1443539855-3255-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

struct timespec will overflow in year 2038, so replace it with
timespec64. And replace functions that use struct timespec,
timespec_sub with timespec64_sub and getnstimeofday with
getnstimeofday64. Also use parameters to convert the timespec64 values
instead of hard code.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 26 +++++++++++++-------------
 drivers/staging/fbtft/fbtft.h      |  2 +-
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 23392eb..3e4eeac 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -365,16 +365,16 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned start_line,
 				 unsigned end_line)
 {
 	size_t offset, len;
-	struct timespec ts_start, ts_end, ts_fps, ts_duration;
+	struct timespec64 ts_start, ts_end, ts_fps, ts_duration;
 	long fps_ms, fps_us, duration_ms, duration_us;
-	long fps, throughput;
+	long  long fps, throughput;
 	bool timeit = false;
 	int ret = 0;
 
 	if (unlikely(par->debug & (DEBUG_TIME_FIRST_UPDATE | DEBUG_TIME_EACH_UPDATE))) {
 		if ((par->debug & DEBUG_TIME_EACH_UPDATE) ||
 				((par->debug & DEBUG_TIME_FIRST_UPDATE) && !par->first_update_done)) {
-			getnstimeofday(&ts_start);
+			getnstimeofday64(&ts_start);
 			timeit = true;
 		}
 	}
@@ -411,28 +411,28 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned start_line,
 			__func__);
 
 	if (unlikely(timeit)) {
-		getnstimeofday(&ts_end);
+		getnstimeofday64(&ts_end);
 		if (par->update_time.tv_nsec == 0 && par->update_time.tv_sec == 0) {
 			par->update_time.tv_sec = ts_start.tv_sec;
 			par->update_time.tv_nsec = ts_start.tv_nsec;
 		}
-		ts_fps = timespec_sub(ts_start, par->update_time);
+		ts_fps = timespec64_sub(ts_start, par->update_time);
 		par->update_time.tv_sec = ts_start.tv_sec;
 		par->update_time.tv_nsec = ts_start.tv_nsec;
-		fps_ms = (ts_fps.tv_sec * 1000) + ((ts_fps.tv_nsec / 1000000) % 1000);
-		fps_us = (ts_fps.tv_nsec / 1000) % 1000;
-		fps = fps_ms * 1000 + fps_us;
+		fps_ms = (ts_fps.tv_sec * MSEC_PER_SEC) + (ts_fps.tv_nsec / NSEC_PER_MSEC);
+		fps_us = ts_fps.tv_nsec / NSEC_PER_USEC;
+		fps = fps_ms * USEC_PER_MSEC + fps_us;
 		fps = fps ? 1000000 / fps : 0;
 
-		ts_duration = timespec_sub(ts_end, ts_start);
-		duration_ms = (ts_duration.tv_sec * 1000) + ((ts_duration.tv_nsec / 1000000) % 1000);
-		duration_us = (ts_duration.tv_nsec / 1000) % 1000;
-		throughput = duration_ms * 1000 + duration_us;
+		ts_duration = timespec64_sub(ts_end, ts_start);
+		duration_ms = (ts_duration.tv_sec * MSEC_PER_SEC) + (ts_duration.tv_nsec / NSEC_PER_MSEC);
+		duration_us = ts_duration.tv_nsec / NSEC_PER_USEC;
+		throughput = duration_ms * USEC_PER_MSEC + duration_us;
 		throughput = throughput ? (len * 1000) / throughput : 0;
 		throughput = throughput * 1000 / 1024;
 
 		dev_info(par->info->device,
-			"Display update: %ld kB/s (%ld.%.3ld ms), fps=%ld (%ld.%.3ld ms)\n",
+			"Display update: %lld kB/s (%ld.%.3ld ms), fps=%lld (%ld.%.3ld ms)\n",
 			throughput, duration_ms, duration_us,
 			fps, fps_ms, fps_us);
 		par->first_update_done = true;
diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 7e9a506..bf4c358 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -251,7 +251,7 @@ struct fbtft_par {
 	} gamma;
 	unsigned long debug;
 	bool first_update_done;
-	struct timespec update_time;
+	struct timespec64 update_time;
 	bool bgr;
 	void *extra;
 };
-- 
1.9.1


