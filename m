X-GM-THRID: 6395446243166781440
X-Received: by 10.157.11.211 with SMTP id 77mr12966752oth.142.1489333152367;
        Sun, 12 Mar 2017 08:39:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls11473072otd.46.gmail; Sun, 12 Mar
 2017 08:39:12 -0700 (PDT)
X-Received: by 10.13.251.70 with SMTP id l67mr14907599ywf.87.1489333152096;
        Sun, 12 Mar 2017 08:39:12 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si2620484pfz.1.2017.03.12.08.39.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:39:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id b5so15537520pgg.1
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 08:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ed72DzlYAxQqo3RYtnQ5QGp09rfGg6eHu6WjddDf2yA=;
        b=eoQYInm/wTlUYx3LUIb315fq+7Uu/BxfagKjABDFysRX2V0mB1zQolVmZWuUBDuqJT
         Ej6z1PkXQfUCVMiMFGQPbbhbsD+bFEeHiXpuR+oIszfqcYbeCHQUxAYkaoHFcZRludxn
         9c6SfDDPSqggjZvt/TeEw9GTXeyhzO6pdYA9ylC5zk8Be7vTMzIgzNI9tgDZOFU449DB
         wHW//HWR2HrtU1JtjQUqWXQ8IaX5qmxyXWx4SXhy8EqflB2UJLtBeXhqgvdy3rLUE+Am
         jbcyvOk5wPyJR/7xZlr6p0AzbyA661u9kecFtWCofqesfP+APjMN5ZYdUNgmNnl3hFxJ
         mjNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ed72DzlYAxQqo3RYtnQ5QGp09rfGg6eHu6WjddDf2yA=;
        b=W37cTuiAaKE9w2oWZ/iNrl397BneT+cwrQZ552crX8pDd0hHvzWc1KeRR8zlswwZA1
         tjRpjc2JOEfVmdgtnaH7Liyf5HeKM4Q+SsJqZ1mT/4wkkTAn67YSAgrF2hjqy3+8HCpx
         /K1fvV7dFDBHnaVA/Qf+CkCPkNOA4yKFEagngL734xCPRcjOjnKkuo1Dv1Ps5jAA4G41
         BTvHjL08cMr+lW+VFU6CtpP3hNUc5EOSU7BzFNfV7KPpeSOiV4MJvytGOfMM+240ltKt
         IP2b+3uHj47af/DcPs6tglDRxTIbVBzMxT9XCp5ly5kpa+K4+313OSJLAWZXKZeV3vK/
         x3Cw==
X-Gm-Message-State: AMke39lY3CQox9+d0HsHSh30BeJKP9Rqw/Vt3NkXqg/TPFcRtZ7OS/f/9jlnsDfmIzDnrA==
X-Received: by 10.99.117.11 with SMTP id q11mr32342812pgc.9.1489333151461;
        Sun, 12 Mar 2017 08:39:11 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.35.14.30])
        by smtp.gmail.com with ESMTPSA id t133sm29179439pgc.24.2017.03.12.08.39.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:39:10 -0700 (PDT)
Date: Sun, 12 Mar 2017 21:09:00 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v7 2/6] staging: bcm2835-audio: replace null with error
 pointer value
Message-ID: <3c2bb619838eb27c24df0289123ee530f4814d3b.1489332734.git.aishpant@gmail.com>
References: <cover.1489332734.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489332734.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces NULL values returned by vc_vchi_audio_init(...) with
error pointer values:
	- Return ERR_PTR(-EINVAL) when too many instances of audio
	  service are initialised
	- Return ERR_PTR(-ENOMEM) when kzalloc fails
	- RETURN ERR_PTR(-EPERM) when vchi connections fail to open

Similarly, a NULL check where vc_vchi_audio_init(...) is called is
replaced by IS_ERR(..)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v6:
	- Add a local variable ret to set error value instead of
	  returning -EPERM when initialisation of vchi_audio_service
          fails
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 66a35ee..d596f43 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -280,6 +280,7 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 	unsigned int i;
 	struct bcm2835_audio_instance *instance;
 	int status;
+	int ret;
 
 	LOG_DBG("%s: start", __func__);
 
@@ -287,12 +288,12 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 		LOG_ERR("%s: unsupported number of connections %u (max=%u)\n",
 			__func__, num_connections, VCHI_MAX_NUM_CONNECTIONS);
 
-		return NULL;
+		return ERR_PTR(-EINVAL);
 	}
 	/* Allocate memory for this instance */
 	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 	if (!instance)
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 
 	instance->num_connections = num_connections;
 
@@ -321,7 +322,7 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 		if (status) {
 			LOG_ERR("%s: failed to open VCHI service connection (status=%d)\n",
 				__func__, status);
-
+			ret = -EPERM;
 			goto err_close_services;
 		}
 		/* Finished with the service for now */
@@ -341,7 +342,7 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 	kfree(instance);
 	LOG_ERR("%s: error\n", __func__);
 
-	return NULL;
+	return ERR_PTR(ret);
 }
 
 static int vc_vchi_audio_deinit(struct bcm2835_audio_instance *instance)
@@ -432,7 +433,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 	/* Initialize an instance of the audio service */
 	instance = vc_vchi_audio_init(vchi_instance, &vchi_connection, 1);
 
-	if (!instance) {
+	if (IS_ERR(instance)) {
 		LOG_ERR("%s: failed to initialize audio service\n", __func__);
 
 		ret = -EPERM;
-- 
2.7.4


