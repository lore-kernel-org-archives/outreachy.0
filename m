X-GM-THRID: 6394401254530875392
X-Received: by 10.129.175.85 with SMTP id x21mr7263088ywj.31.1488812663858;
        Mon, 06 Mar 2017 07:04:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls13941547otb.2.gmail; Mon, 06 Mar
 2017 07:04:23 -0800 (PST)
X-Received: by 10.157.20.196 with SMTP id r4mr908561otr.137.1488812663536;
        Mon, 06 Mar 2017 07:04:23 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id c123si67390pfa.4.2017.03.06.07.04.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:04:23 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so3167557pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 07:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yItH9/+0MomW46LA3EcYtc311Jois+NLPeClQSOQdUY=;
        b=EDYexgJPZo2iuE03m6of1RgSiXhwF5g/QTBva62oVJXP6qeVHdgAfFLQvy/NThNIiK
         fd3k8rqJ2AuJ1THnhBz+rpveD1Ry04I51UijRq+p3jYT96Ufgz3ezrSsxzQkz/IR4bEC
         k4UeAtjXr8tEx1cQ54tWeXbPBNBLXs9Z48/x9EdmX+VvqL+tiItq/BQ+sVd/wTMTsQax
         LpphBlXYUimGQ/1GPkrfhNbZfG5UNwgrOsFjJFDnzqkc9yqJpcnpW3qmT5cznaG1kAcD
         Z6xUrnV5RZRkn4YvhLW8I/bESOTxQPIwXBk+OaVQ+m37xOBXQUkpqJE6XPVrRwLc/OH3
         L93A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yItH9/+0MomW46LA3EcYtc311Jois+NLPeClQSOQdUY=;
        b=D6Cq+aIlQ5TUT2Ndkt2lu4WNEGFkLFqPnb8VGDvgKRug0h2eByG2xvAFNYIBkX290P
         dT6997UEPxIDzs4suQ/uBM2VbGyEmnGg+H7Oa2DHIgm9Im3DhzBjhmEfX2LymJZnZyh4
         ZteDXiB0HHUw/kmZ2xDpuKxb5p/ahAwLoNfXRk2LXkIuzEPeBDTS78hr+LxOYefrBhZF
         NsFpJ3G70F1YAfXu45I7e610/1ExmsP5ipc74TjVLZYxU1OAWNVxWHHO0vi6ZIh6/FVd
         hUTVISzoCtvWhgOQwulacRhyuqPhpncg+1U2GSdNx8ulLVF7Q9fdlPyZ6Unq4M7QvfqT
         4Faw==
X-Gm-Message-State: AMke39lY6iZUJk/PmmIF4n31kSKb3oopqMEVtIr555gn2dEMAMyLbAF9dgcsZ71VWQz5RQ==
X-Received: by 10.99.64.70 with SMTP id n67mr11239298pga.53.1488812663169;
        Mon, 06 Mar 2017 07:04:23 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id s65sm40506313pgb.64.2017.03.06.07.04.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:04:22 -0800 (PST)
Date: Mon, 6 Mar 2017 20:34:06 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: bcm2835-audio: use conditional only for error
 case
Message-ID: <1e7304c424c82b9f5a03d32aa9dab343b4b70dc4.1488811728.git.aishpant@gmail.com>
References: <cover.1488811728.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488811728.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch refactors conditional to check if memory allocation has
failed and immediately returns (-ENOMEM); the redundant if block for
success case is removed.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 46 +++++++++++-----------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index c5f3be8..75a43a5 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -139,15 +139,15 @@ int bcm2835_audio_start(struct bcm2835_alsa_stream *alsa_stream)
 
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
 		}
+		INIT_WORK(&work->my_work, my_wq_function);
+		work->alsa_stream = alsa_stream;
+		work->cmd = BCM2835_AUDIO_START;
+		if (queue_work(alsa_stream->my_wq, &work->my_work))
+			ret = 0;
 	}
 	LOG_DBG(" .. OUT %d\n", ret);
 	return ret;
@@ -163,15 +163,15 @@ int bcm2835_audio_stop(struct bcm2835_alsa_stream *alsa_stream)
 
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
 		}
+		INIT_WORK(&work->my_work, my_wq_function);
+		work->alsa_stream = alsa_stream;
+		work->cmd = BCM2835_AUDIO_STOP;
+		if (queue_work(alsa_stream->my_wq, &work->my_work))
+			ret = 0;
 	}
 	LOG_DBG(" .. OUT %d\n", ret);
 	return ret;
@@ -188,17 +188,17 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 
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
 		}
+		INIT_WORK(&work->my_work, my_wq_function);
+		work->alsa_stream = alsa_stream;
+		work->cmd = BCM2835_AUDIO_WRITE;
+		work->src = src;
+		work->count = count;
+		if (queue_work(alsa_stream->my_wq, &work->my_work))
+			ret = 0;
 	}
 	LOG_DBG(" .. OUT %d\n", ret);
 	return ret;
-- 
2.7.4


