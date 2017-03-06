X-GM-THRID: 6394401254530875392
X-Received: by 10.157.50.139 with SMTP id u11mr7024728otb.90.1488829638609;
        Mon, 06 Mar 2017 11:47:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls8071513otb.38.gmail; Mon, 06 Mar
 2017 11:47:18 -0800 (PST)
X-Received: by 10.200.36.187 with SMTP id s56mr6255021qts.40.1488829638230;
        Mon, 06 Mar 2017 11:47:18 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s64si219782pfk.0.2017.03.06.11.47.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:47:18 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so3787191pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 11:47:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rnJF0pZsIVI4k2BFtj5UQ+zczr4rmkAOUOjlaoB2TYM=;
        b=FHJcZYUXWIWHIPbV9bQn0NNLxtw+fciGEcGzAokJrvCbYARVrO5W50v663YPQ1psk9
         ieQcer2qI21sL3udXN7p/0hlNV1xUE2sWWJzBI9cOMLGTieoEtSsDT3pn9Qb0oxXA15G
         p41kU+Xn7eGQiSXHto+MmmXTbBWfPQBWBnNZ7hz1SGp+LazPvN3PZVOrY4P0U9Wykb/h
         nE9NujaaINKbc8k/Fhje5qTDpsuknojs9qsFOhrak3IPphI9ZMLMDrwAeVx/oXx/L+aK
         EMi4DCrcm3Y+Lop7bZ/FSrwqF0dRYZpMAza9ui0aJRHTGpnJBOj+1RqwWGy06ytYVfxL
         gRxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rnJF0pZsIVI4k2BFtj5UQ+zczr4rmkAOUOjlaoB2TYM=;
        b=eqGd3mPWBEBD5tSsy3y3Ltcm3ANty3ULvOF4O5L8tcSOiHZK5IA0OHcQoXAk1rE39d
         zpYU9iG6u22mAsjcQKbKPyK5kPGEu2NU6Lu6+glApGlbLHkFJ/Q9qkO5KDmkXf5ccq34
         k0/Rde186POwdW2+mlcfCL0xsHIHLQ2eilB6974yUVlAge5UV5RrVoUfHcenThOuT8+S
         VsI43PQ2EIdUCMHILOcHguNJpvxnAu//R5BV5W0OmqjD0K9afTwmMOYh978Hyn/a1pLK
         fTQ/EWmLsh+9KRWtNVGDbJcHkKU8fO7fZu5xlespmX5U9PnMvzpBD+282/1soymYNEts
         1jLA==
X-Gm-Message-State: AMke39mVWV1sJTTwXGatUtwDV/5d1yZEu2PpRxmrV+iSrWc/E1oqbhkB4qNHh0gCZnFeKA==
X-Received: by 10.98.206.78 with SMTP id y75mr23295157pfg.108.1488829637893;
        Mon, 06 Mar 2017 11:47:17 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id m20sm41337294pgd.67.2017.03.06.11.47.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:47:17 -0800 (PST)
Date: Tue, 7 Mar 2017 01:17:12 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/4] staging: bcm2835-audio: use conditional only for
 error case
Message-ID: <b013f557b3bff6e4264bc9e6d1f7e502a8d1ac8c.1488829304.git.aishpant@gmail.com>
References: <cover.1488829304.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488829304.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch refactors conditional to check if memory allocation has
failed and immediately returns (-ENOMEM); the redundant if block for
success case is removed. The work functions now return the error value
-EBUSY instead of -1 when queue_work() fails.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v2:
	- Return error value -EBUSY when queue_work fails

 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 70 +++++++++++-----------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index c5f3be8..08f200f 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -131,77 +131,77 @@ static void my_wq_function(struct work_struct *work)
 
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
+			LOG_ERR(" .. Error: Unable to queue work\n");
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
+			LOG_ERR(" .. Error: Unable to queue work\n");
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
+			LOG_ERR(" .. Error: Unable to queue work\n");
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


