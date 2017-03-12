X-GM-THRID: 6395446243166781440
X-Received: by 10.129.45.86 with SMTP id t83mr15197346ywt.68.1489333183238;
        Sun, 12 Mar 2017 08:39:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.73.132 with SMTP id g4ls12774937otf.39.gmail; Sun, 12 Mar
 2017 08:39:42 -0700 (PDT)
X-Received: by 10.157.50.29 with SMTP id t29mr13470599otc.32.1489333182893;
        Sun, 12 Mar 2017 08:39:42 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si2620088pfz.1.2017.03.12.08.39.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:39:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id v190so16317353pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 08:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Xt5EOC23qO18bBwdIrx1HJU4L0NoL3djuEBiD8738LM=;
        b=FPAEtFMJ/43nNYO1dZlIO+xzAKHQproISuJEURtoOWTAHHMHVXacCZfsaa/U0YIpGX
         B7LsiA3cOgxdLYTQuGKdmNWZ8KsJq8WeHqN/kQvuG3xKVU7wdiDpWk2P72RjMItGrl1u
         UVmXFSS1rkSfzbU2dAbhlJ/Xp1M5cIvLiePFSnVeKuxF69ks+/qb2RhP67Y17zAdJx4l
         9vPXY547YqHgjyw5XOqPb48MkgtptSGASk/qG2AYWhwPM8l7EpEJHxDrFcuY8VfSkYTH
         rLdpHXUMgzthgJAXXFrD2xKQfVYf7dX4WV6koCsiLrucXXAOT9pAOaYhRsoKBVVGGioM
         T97A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Xt5EOC23qO18bBwdIrx1HJU4L0NoL3djuEBiD8738LM=;
        b=e85z9r9Kt8f0F23IMJwRZ2iMmH7y7q4KKxpEb3gTT6B1y2uSqiV8y7X5JBotsWxi1M
         d+r3ontL2htNfidimAREO1UVwy1Ltwt1rSCJWB995upwHpDwigX4QzwjUVamniDbcUhn
         TZEJPr4bxSRVL92wL5lC2Ph4/+2+p6XjbdhTDkY/rX7n/9rxPKjgYsmW+qyV8SD8D1ny
         WgYP3kFpX6xoVfEg5gFn+QZrzUFDlkQYG0mR/TpIlzn2IgDLvHekLn6x3YB8B9u723Dv
         3G2kN0500y65R6tqVG2NimCL7fvOT0duoQYFBvkPwSnriba5amNE/ISs2RfPJvRuVuwM
         jo1A==
X-Gm-Message-State: AMke39kXOQwByFYOu9368FTmKZMh8HytkUJCnFX8q2AHHQ0uWR2qPWXTihCDIGa7vKWZLQ==
X-Received: by 10.98.152.219 with SMTP id d88mr32027746pfk.153.1489333182399;
        Sun, 12 Mar 2017 08:39:42 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.35.14.30])
        by smtp.gmail.com with ESMTPSA id h71sm28925585pfj.65.2017.03.12.08.39.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:39:41 -0700 (PDT)
Date: Sun, 12 Mar 2017 21:09:31 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v7 4/6] staging: bcm2835-audio: use conditional only for
 error case
Message-ID: <222e49d625d2c7d1d847a6581f2283f10349bec5.1489332734.git.aishpant@gmail.com>
References: <cover.1489332734.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489332734.git.aishpant@gmail.com>
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
index 698fdff..6feb1a6 100644
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


