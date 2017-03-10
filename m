X-GM-THRID: 6395446243166781440
X-Received: by 10.129.90.215 with SMTP id o206mr8432408ywb.101.1489161572939;
        Fri, 10 Mar 2017 07:59:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.57.77 with SMTP id l74ls627052ita.5.canary-gmail; Fri, 10
 Mar 2017 07:59:32 -0800 (PST)
X-Received: by 10.99.158.9 with SMTP id s9mr8508109pgd.128.1489161571952;
        Fri, 10 Mar 2017 07:59:31 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y90si1802514pfa.6.2017.03.10.07.59.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 07:59:31 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so6224254pge.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 07:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gXWlYhLjvr35zkm5hm9DVsIny/T9AvSVd29F9vPlABs=;
        b=U+xYds9Je7WZ8kp+A2A6IQp8DGA0Rf4wQ3y/EYaf4Mu4CaYF8STLYlYL+wchzHAy/L
         AgftZs/fjHFXIh5Ilg4T3k+rREEZwJto0XeZ0QXaJNR7NuZQpcDZCCcnGmW4CA4H/oXh
         KHnRoGJCD4cdf6ddVMi8xshUcmkt3aVDqKqzcOaRmpv8AQacqU2UfIHo9ugQTfI3kdtL
         i5d6Fsc2ko4tB6Oy9sIwGMrX+/ApRKZJ41QAHBxoeAuiZyJe8BPO335MWGwioa/BQSAv
         mjzVbvLmumvru2nCa6v7czNpGeZOurbArlmnDr3AxX6YQJvTqLQwr9mFXU5byOG8V6jZ
         3L9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gXWlYhLjvr35zkm5hm9DVsIny/T9AvSVd29F9vPlABs=;
        b=QgplU/aQENvrcBDDMWMAOUK4J8TmNSBCi5+Y6AtVkUq/T0ZnZMgmiwVDFGo0aTAB9t
         eOnp09r0zPfg5g6CYyX3GGblrMBMRGbsnRQ62I9Eyw+26ADkwPsQNXSOU3hF0s9XkE+2
         TtYP7EGn+TVs0KkUgMXLuNf4LIyf3WJiE81TQx5OlTnCGDqDBxFJZuY8dsIdkvPB2Z+q
         qvcKoU+TXPq06Gsr6RR9TFQukDiNaLWENqVFNCts9L54K3h4AIcX/nw8bP3H/O4XSg8q
         JO4tyn3QnCBP0Ej6fVSBV+1EXp5fuLvFBp77uuqhNhXzZ5RMWp7H6SDfspEriuFhk8w1
         zpYw==
X-Gm-Message-State: AMke39mi3qZACjjYyaU+8QllHF2IuDk0VrA/LFV9kdMjPMn0+NLgcKqR788K6Dj0m2mqaw==
X-Received: by 10.98.204.25 with SMTP id a25mr21764665pfg.6.1489161571468;
        Fri, 10 Mar 2017 07:59:31 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.147])
        by smtp.gmail.com with ESMTPSA id e13sm19647210pgn.38.2017.03.10.07.59.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 07:59:30 -0800 (PST)
Date: Fri, 10 Mar 2017 21:29:08 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v6 2/7] staging: bcm2835-audio: replace null with error
 pointer value
Message-ID: <f50a265e1e3e25cdcca533dfd408c02f6ba67d4e.1489160830.git.aishpant@gmail.com>
References: <cover.1489160830.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489160830.git.aishpant@gmail.com>
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
index 005e287..6de5209 100644
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


