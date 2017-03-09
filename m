X-GM-THRID: 6395446243166781440
X-Received: by 10.99.164.9 with SMTP id c9mr5388388pgf.4.1489055926188;
        Thu, 09 Mar 2017 02:38:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls6027133otb.2.gmail; Thu, 09 Mar
 2017 02:38:45 -0800 (PST)
X-Received: by 10.157.18.241 with SMTP id g104mr4914140otg.9.1489055925839;
        Thu, 09 Mar 2017 02:38:45 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y90si1114431pfa.6.2017.03.09.02.38.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:38:45 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so6892610pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 02:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=LPp8BVjkOa9d0/2z2gTLAVZvo64zM6VfYnxxerODr0M=;
        b=P3YqB+2h4nQPnb1KGITWxR5rhWJQWVLCmGU6ttR7+QKQli0P6ofKQez3cMcSl9XU+w
         sQPIAbwJpQqTl2d00gZt3wABQUy9Cgg66P4uIWacs2uTVYtpxzXj16qC6yucQ9cMt5pc
         xvb/11Bl0if8p1vsZwiIqnWho2r5doa8r3B+zRfnHv5+bPdVQNVlNMWyXvxxwO+tcCBH
         W9anUH2/X74RQor6MnhowUu62EUf2rqJz5FOGiXKVG9hh6LYnsXWXW7q+LbnA6Sy42g8
         u/aPg75rVpQtUVlc80OqPLW8o69fDfg/6q0U0Doqruca3BII1mokb6WWEIFzlIU3Ywp5
         sktQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=LPp8BVjkOa9d0/2z2gTLAVZvo64zM6VfYnxxerODr0M=;
        b=afPKFcNgnm7wpElNv2bSQeywgbH7zQ6YrspRaaVARWuFGdSRDuhktrewEI+Aczx0Az
         FKjAcmhQk9CF7VJTs/5LDP6BpBcYJhtmbJyNG2wd0VwJfVTSNnsayYn8EozKZcXUuAeX
         dhtBvWCr3gJLa9PUoEXtGaXJ9moM1+WhNDnu2XQTUnE2CHGks1s8uzWQQmQWMHnLyem4
         5OKYbjkz1K5lRbrbcfcYtbmZER5iF50kH79pkhG25CzOzbfcNBUF0iPwXV+IzZx6SWaw
         0766vwewVWIDMbKGFHQFq+OVGTfLwsn63oQwO/diJEqtpGKm5L/P1Se5xzaPIaV0vFSC
         q6LA==
X-Gm-Message-State: AMke39kf/xnN8f33zoLb6A07lLNjQxw1/hq+aYVc2a06pcy8fqxxhHK4VHhXn3UKw3ONyg==
X-Received: by 10.84.177.164 with SMTP id x33mr16036587plb.75.1489055925401;
        Thu, 09 Mar 2017 02:38:45 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.186.124.141])
        by smtp.gmail.com with ESMTPSA id e13sm11694653pgf.48.2017.03.09.02.38.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:38:45 -0800 (PST)
Date: Thu, 9 Mar 2017 16:08:40 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 4/7] staging: bcm2835-audio: use conditional only for
 error case
Message-ID: <678d819ece441115fe4b2733f5224c9b7c526952.1489055580.git.aishpant@gmail.com>
References: <cover.1489055580.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489055580.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

* Refactor conditional to check if memory allocation has failed and
immediately return (-ENOMEM); if block for success case is removed.

* Return the error value -EBUSY when queue_work() fails.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v4:
	- Break up the patch into smaller changes
Changes in v3:
	- Deallocate work when queue_work fails
	- Add __func__ to debug logs
Changes in v2:
	- Return error value -EBUSY when queue_work fails
---
 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 67 +++++++++++-----------
 1 file changed, 32 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index c5f3be8..9545d35 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -131,77 +131,74 @@ static void my_wq_function(struct work_struct *work)
 
 int bcm2835_audio_start(struct bcm2835_alsa_stream *alsa_stream)
 {
-	int ret = -1;
-
 	LOG_DBG(" .. IN\n");
 	if (alsa_stream->my_wq) {
 		struct bcm2835_audio_work *work;
 
 		work = kmalloc(sizeof(*work), GFP_ATOMIC);
 		/*--- Queue some work (item 1) ---*/
-		if (work) {
-			INIT_WORK(&work->my_work, my_wq_function);
-			work->alsa_stream = alsa_stream;
-			work->cmd = BCM2835_AUDIO_START;
-			if (queue_work(alsa_stream->my_wq, &work->my_work))
-				ret = 0;
-		} else {
+		if (!work) {
 			LOG_ERR(" .. Error: NULL work kmalloc\n");
+			return -ENOMEM;
+		}
+		INIT_WORK(&work->my_work, my_wq_function);
+		work->alsa_stream = alsa_stream;
+		work->cmd = BCM2835_AUDIO_START;
+		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
+			return -EBUSY;
 		}
 	}
-	LOG_DBG(" .. OUT %d\n", ret);
-	return ret;
+	LOG_DBG(" .. OUT\n");
+	return 0;
 }
 
 int bcm2835_audio_stop(struct bcm2835_alsa_stream *alsa_stream)
 {
-	int ret = -1;
-
 	LOG_DBG(" .. IN\n");
 	if (alsa_stream->my_wq) {
 		struct bcm2835_audio_work *work;
 
 		work = kmalloc(sizeof(*work), GFP_ATOMIC);
 		/*--- Queue some work (item 1) ---*/
-		if (work) {
-			INIT_WORK(&work->my_work, my_wq_function);
-			work->alsa_stream = alsa_stream;
-			work->cmd = BCM2835_AUDIO_STOP;
-			if (queue_work(alsa_stream->my_wq, &work->my_work))
-				ret = 0;
-		} else {
+		if (!work) {
 			LOG_ERR(" .. Error: NULL work kmalloc\n");
+			return -ENOMEM;
+		}
+		INIT_WORK(&work->my_work, my_wq_function);
+		work->alsa_stream = alsa_stream;
+		work->cmd = BCM2835_AUDIO_STOP;
+		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
+			return -EBUSY;
 		}
 	}
-	LOG_DBG(" .. OUT %d\n", ret);
-	return ret;
+	LOG_DBG(" .. OUT\n");
+	return 0;
 }
 
 int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 			unsigned int count, void *src)
 {
-	int ret = -1;
-
 	LOG_DBG(" .. IN\n");
 	if (alsa_stream->my_wq) {
 		struct bcm2835_audio_work *work;
 
 		work = kmalloc(sizeof(*work), GFP_ATOMIC);
 		/*--- Queue some work (item 1) ---*/
-		if (work) {
-			INIT_WORK(&work->my_work, my_wq_function);
-			work->alsa_stream = alsa_stream;
-			work->cmd = BCM2835_AUDIO_WRITE;
-			work->src = src;
-			work->count = count;
-			if (queue_work(alsa_stream->my_wq, &work->my_work))
-				ret = 0;
-		} else {
+		if (!work) {
 			LOG_ERR(" .. Error: NULL work kmalloc\n");
+			return -ENOMEM;
+		}
+		INIT_WORK(&work->my_work, my_wq_function);
+		work->alsa_stream = alsa_stream;
+		work->cmd = BCM2835_AUDIO_WRITE;
+		work->src = src;
+		work->count = count;
+		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
+			return -EBUSY;
 		}
 	}
-	LOG_DBG(" .. OUT %d\n", ret);
-	return ret;
+	LOG_DBG(" .. OUT\n");
+	return 0;
 }
 
 static void my_workqueue_init(struct bcm2835_alsa_stream *alsa_stream)
-- 
2.7.4


