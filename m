X-GM-THRID: 6394401254530875392
X-Received: by 10.237.60.99 with SMTP id u32mr362745qte.24.1488906753620;
        Tue, 07 Mar 2017 09:12:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.95.9 with SMTP id r9ls339189itb.14.gmail; Tue, 07 Mar 2017
 09:12:33 -0800 (PST)
X-Received: by 10.99.181.73 with SMTP id u9mr727691pgo.39.1488906753021;
        Tue, 07 Mar 2017 09:12:33 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s64si126649pfk.0.2017.03.07.09.12.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:12:32 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so679545pgg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 09:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=81HtZZIfMUHu9jQLPjKaodQaPnSnikhcFO58L1v42Uk=;
        b=QbAs9oorRo5l4PuowUfqqAvvqltwr2ePbPDVJBfNyWtNq0STRrMIRW67DyYblzFEbi
         z2HVfQlmt3MgMKMnvf/SdWumWXKUZYK7pIVBxBknBkzHN2iCnFcd0HjrBQOjnHdw2uRl
         UiYbBGJf3U4vCaOy8E8v46wh7gRgL6qG0ywJGSCHHQZYQjJMLpJV0hUGlItNKMo4q0SB
         beFQzz5RPgTMdXUDPhqtkFexR5f623TlZbSEzkrayl6XvJdEibThOp6Ng77Tq6bv0kuJ
         6WFClBmcvAFf6COohLo7+1jJMJjAoERv3xi191WQihvmEbWv/+aGfajPUSxwX75RXxiB
         4yUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=81HtZZIfMUHu9jQLPjKaodQaPnSnikhcFO58L1v42Uk=;
        b=aW+haRsimxILbptX/RPRD0CRmFK7yUwTMAAe4PfuepJTUeI1rmkp9G/8bEA0QFdp+a
         ywm65Z8wOd1VutHQQzqTqeKt6xjXai9FwKIA6KCo4OHED97a8utCA0vVtgSJJV7fV2n8
         oXBNv9sz8gwrOrkFGrwODQuyAgvPYchn/KVhIL3BLgMIOU4/uoIMmgU6xOCRpi46EBCd
         2GWwhlCKgGafdcw0PXJwmlLKRNiZM13BdbUnpltXDUJw2EeH5slTjpo1+mJWfxUmn2Rh
         3e2SQ1g8F19SoeL2Quh1E1h6PL0AYrfd5WTIlzVWZ/wRlCX/32mkSR5BpWvrjKd8KNJb
         tznw==
X-Gm-Message-State: AMke39lf7OvZ6F0bAUWzTR30jbaHqwOPyyeZPKqh+WuaArZ7hjgF9hJLg1WEjWie/7IQGg==
X-Received: by 10.98.157.12 with SMTP id i12mr1569120pfd.166.1488906752712;
        Tue, 07 Mar 2017 09:12:32 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id l71sm1018195pga.7.2017.03.07.09.12.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:12:32 -0800 (PST)
Date: Tue, 7 Mar 2017 22:42:24 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 4/4] staging: bcm2835-audio: use conditional only for
 error case
Message-ID: <b0229b2efb92a235bfb3dd1f1e889f61904e3c9f.1488906373.git.aishpant@gmail.com>
References: <cover.1488906373.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488906373.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

* Refactor conditional to check if memory allocation has failed and
immediately returns (-ENOMEM); the redundant if block for success case
is removed.

* Return the error value -EBUSY and kfree(work) when queue_work() fails.

* Add __func__ to debug logs

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v3:
	- Deallocate work when queue_work fails
	- Add __func__ to debug logs
	-
Changes in v2:
	- Return error value -EBUSY when queue_work fails

 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 85 +++++++++++-----------
 1 file changed, 44 insertions(+), 41 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index c5f3be8..f5d8a47 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -131,77 +131,80 @@ static void my_wq_function(struct work_struct *work)
 
 int bcm2835_audio_start(struct bcm2835_alsa_stream *alsa_stream)
 {
-	int ret = -1;
-
-	LOG_DBG(" .. IN\n");
+	LOG_DBG("%s: .. IN\n", __func__);
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
-			LOG_ERR(" .. Error: NULL work kmalloc\n");
+		if (!work) {
+			LOG_ERR("%s: Error: NULL work kmalloc\n", __func__);
+			return -ENOMEM;
+		}
+		INIT_WORK(&work->my_work, my_wq_function);
+		work->alsa_stream = alsa_stream;
+		work->cmd = BCM2835_AUDIO_START;
+		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
+			LOG_ERR("%s: Error: Unable to start audio\n", __func__);
+			kfree(work);
+			return -EBUSY;
 		}
 	}
-	LOG_DBG(" .. OUT %d\n", ret);
-	return ret;
+	LOG_DBG("%s: .. OUT\n", __func__);
+	return 0;
 }
 
 int bcm2835_audio_stop(struct bcm2835_alsa_stream *alsa_stream)
 {
-	int ret = -1;
-
-	LOG_DBG(" .. IN\n");
+	LOG_DBG("%s: .. IN\n", __func__);
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
-			LOG_ERR(" .. Error: NULL work kmalloc\n");
+		if (!work) {
+			LOG_ERR("%s: Error: NULL work kmalloc\n", __func__);
+			return -ENOMEM;
+		}
+		INIT_WORK(&work->my_work, my_wq_function);
+		work->alsa_stream = alsa_stream;
+		work->cmd = BCM2835_AUDIO_STOP;
+		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
+			LOG_ERR("%s: Error: Unable to stop audio\n", __func__);
+			kfree(work);
+			return -EBUSY;
 		}
 	}
-	LOG_DBG(" .. OUT %d\n", ret);
-	return ret;
+	LOG_DBG("%s: .. OUT\n", __func__);
+	return 0;
 }
 
 int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 			unsigned int count, void *src)
 {
-	int ret = -1;
-
-	LOG_DBG(" .. IN\n");
+	LOG_DBG("%s: .. IN\n", __func__);
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
-			LOG_ERR(" .. Error: NULL work kmalloc\n");
+		if (!work) {
+			LOG_ERR("%s: Error: NULL work kmalloc\n", __func__);
+			return -ENOMEM;
+		}
+		INIT_WORK(&work->my_work, my_wq_function);
+		work->alsa_stream = alsa_stream;
+		work->cmd = BCM2835_AUDIO_WRITE;
+		work->src = src;
+		work->count = count;
+		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
+			LOG_ERR("%s: Error: Unable to write\n", __func__);
+			kfree(work);
+			return -EBUSY;
 		}
 	}
-	LOG_DBG(" .. OUT %d\n", ret);
-	return ret;
+	LOG_DBG("%s: .. OUT\n", __func__);
+	return 0;
 }
 
 static void my_workqueue_init(struct bcm2835_alsa_stream *alsa_stream)
-- 
2.7.4


