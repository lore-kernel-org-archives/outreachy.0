X-GM-THRID: 6395446243166781440
X-Received: by 10.99.49.83 with SMTP id x80mr9678700pgx.2.1489161625216;
        Fri, 10 Mar 2017 08:00:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.92 with SMTP id u28ls334742otd.12.gmail; Fri, 10 Mar
 2017 08:00:24 -0800 (PST)
X-Received: by 10.157.56.39 with SMTP id i36mr7403087otc.71.1489161624687;
        Fri, 10 Mar 2017 08:00:24 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si1833923pfx.8.2017.03.10.08.00.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:00:24 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id j5so11215778pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 08:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TgKwbqZgnJLxebdZt8pm0edhn8TucHDCAwvTiep/Q/U=;
        b=No7h96KsPNAxRmAS9qIlxSTGNjERwN87hTAzxmR7Mbjee2lOahoSqq4iZ/7zGBVZED
         pHx5uKNFBF0PCyqSQ1wtpwyBftRh883Eo7pShQkZZrh7A48dfV9s0b0Qd6VUIPQ+TJBH
         PxcugMmVchYfbP3uzDLQptJ1pSSQQymV+wd909yMs364hwgwS7NGEQKrxmKNHnfypdZJ
         E7ViCLvsjUlt8KucOMzwVxsjIvSRQEsdRpV9MrzkhEebFtF2qYAlGhlzzz6cikMyGEjg
         UldoAew9bkMkuVSJf2U3BVnefO+P1Yz90WPma7PrPt7oJnBJXOj2bVdiKN3yP4icY/3G
         MQfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TgKwbqZgnJLxebdZt8pm0edhn8TucHDCAwvTiep/Q/U=;
        b=EnskkGgO99Rl17tTisp5qsXRmdDbwVOPW71PLoRQK0luknWIV5Y9gi0L0hfkV2jNy3
         hzI8nJLo5TmoXW2x3OzzTK0w0or+Eszhnrj82U7zJrCaAMVQIlAqbjNyRFHt6ciPfjdf
         xSeLfjp5HKcmU9G4O65O8pUcmdDeeEX51bRxGbxYjprvg2KNwgNqigvQnCnJ3TdfFJHW
         84yina8lWvhv7iJDHKZlbiboDj9AIpLdogKu6E6NSMJV/0unSsMY1LJelpJAdMzv8JiP
         JcYICGyCLC9wrF1VVKGxmtlD7eu6KnqCDplZ8+b7SdgCMBTFzpzjTmBaOaBHg86WPrun
         dRYQ==
X-Gm-Message-State: AMke39nJ0vLnhXnb608fv/EI2+bxUdtAhDdSuwFlnfmg4E1ZJgGb13gGqM1Jqn+hEbCHNA==
X-Received: by 10.99.149.66 with SMTP id t2mr21504220pgn.152.1489161624387;
        Fri, 10 Mar 2017 08:00:24 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.147])
        by smtp.gmail.com with ESMTPSA id g29sm19542110pfg.37.2017.03.10.08.00.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:00:23 -0800 (PST)
Date: Fri, 10 Mar 2017 21:30:05 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v6 4/7] staging: bcm2835-audio: use conditional only for
 error case
Message-ID: <6e250eeab3b6e261f35a06bc24d2d82e85a2a5b8.1489160830.git.aishpant@gmail.com>
References: <cover.1489160830.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489160830.git.aishpant@gmail.com>
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
index 7186c98..9b10027 100644
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


