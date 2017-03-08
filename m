X-GM-THRID: 6394401254530875392
X-Received: by 10.157.82.157 with SMTP id f29mr2787908oth.114.1488984576703;
        Wed, 08 Mar 2017 06:49:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.46.136 with SMTP id i130ls1029807ita.19.gmail; Wed, 08 Mar
 2017 06:49:35 -0800 (PST)
X-Received: by 10.107.27.9 with SMTP id b9mr2288484iob.44.1488984575934;
        Wed, 08 Mar 2017 06:49:35 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r66si610400pfb.7.2017.03.08.06.49.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:49:35 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so4000275pfg.2
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 06:49:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1rW5Odn5svwmDohUj8tj3q0IK1nTypK56rWcTbt57jg=;
        b=k0gaOR9ASeify3Hbg+ZbO1XHhWD2hgfLOAp1jxJr5bn3dkNsZDSk7pRdS/8b1z9JVI
         Z1sb9CYZS3RSim518I/+oWInP+t4rMaDOV88KroSAlxQaac+hpM1rAoBeILmz3H1G4XR
         ITwQkhCkjS1ptZeLalFuPZMboSnBMFRbOjR1JxEWVqrd6aOMy4lY9b7vWy/YtajWZZp0
         VtrF+NZg9uDjRGHUurVd/rfUspKE/JHPvxQLituqWNFtdV865oI2VbzIJPJ+NytYSS4b
         KRlnsXqlOac9ZnJ6caJOZE4bZMlixgr3CG6a5fumMOJ7NDVBZlk77mzYwj6loKKSdYw0
         ZmPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1rW5Odn5svwmDohUj8tj3q0IK1nTypK56rWcTbt57jg=;
        b=bLrwNicDqj+dNXmZ87m+/p2YwxHCaAKiHf0tO6tpmWHDfUEwE9i71Vq7EwEmnkdQRV
         4s4hAPHEdpanUrrNltLKTq1ZV+3FAjY6FfkKkuT325viMv0VQM3tSCWGi4FB3/aD/l/a
         aqYiz58f+lRBeHyMJSySumjH3ZKdyBfjFlLvGGi0UeHOdgGPjfz7VdDahXEIVNaogFWq
         K5BU2mtynNttO2do6B4XgKin2HW5swssi/I6MVMQvucx6mGwF6csLnbDOJchbfaUYr/5
         7Cl6cslutS0ezJN8ElcHGy3af4JL5L9Po+4E0DKnN8L75yV1ErY/KXCOHucn1My+emjA
         hUkQ==
X-Gm-Message-State: AMke39lN0H43UKTnv0EFQ0YPTp1vuvrOz/SAiOyLkbPygevV0GCH3UmbhwtwPgmjdslVdQ==
X-Received: by 10.98.37.132 with SMTP id l126mr7542816pfl.45.1488984575387;
        Wed, 08 Mar 2017 06:49:35 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.14])
        by smtp.gmail.com with ESMTPSA id m6sm6841005pfm.22.2017.03.08.06.49.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:49:34 -0800 (PST)
Date: Wed, 8 Mar 2017 20:19:31 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 4/8] staging: bcm2835-audio: use conditional only for
 error case
Message-ID: <678d819ece441115fe4b2733f5224c9b7c526952.1488984315.git.aishpant@gmail.com>
References: <cover.1488984315.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488984315.git.aishpant@gmail.com>
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


