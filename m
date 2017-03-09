X-GM-THRID: 6395446243166781440
X-Received: by 10.129.87.3 with SMTP id l3mr5037048ywb.0.1489055896474;
        Thu, 09 Mar 2017 02:38:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.232 with SMTP id k37ls2531015ote.15.gmail; Thu, 09 Mar
 2017 02:38:16 -0800 (PST)
X-Received: by 10.237.61.157 with SMTP id i29mr2373920qtf.66.1489055896125;
        Thu, 09 Mar 2017 02:38:16 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a3si1132480pfb.2.2017.03.09.02.38.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:38:16 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so6439303pgg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 02:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=41C8GJvVhsnFe/bC/sDyOY1NoZHjd0ajWlQzK40hYWw=;
        b=AntfWro+aZ/+T9YszuRBuFSMgi/Q1HNezsQcWLvLo+R5hz2XcKlT5bkoQEnlst8ylQ
         7+ky+uThfA4yis4THfbZ9UdZDTZnCZtPOrt2KAj2lKtEs3OTl4Y3kbmsWFfHdubV6NQn
         47H+8DTPkLDf4uI1PMu3puptk1XLIek9t4iv1yD0HfNYf2lHl3gMSvdzA2IiO6TVPdr9
         GTOYw+RwnfGr1Avc8TmPJzrAN5B2ouzSM8XUrRYul3V05MSUwFx05KCPWvXriCAYAwPD
         7zKMi2ZquozabPiCoLqgRMExVLLbtSpquiawVAkIqkSk52DJfh+iWUZLwZPTNpCAzSsY
         DCpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=41C8GJvVhsnFe/bC/sDyOY1NoZHjd0ajWlQzK40hYWw=;
        b=TTImswg/cPq9ticItfaucpBlE4wX3kGAMlns0o3okcMHGrYoJqu2/eL7U7B0KpdZrb
         NNE+Z58DIS68xMCTrkfXmpVbYUUn+ff8U0wKPCjmdOwEeDUoKGVUh8B/ZoM1HJrFRI2B
         PLxNr6fj+jJkMZxW39x7pOpj52sc0hiSUKinyeAV72dyrI35tMfWX3ZhmULgBwkd3sMP
         KQ9YTJ2tGhIbAYyzm824HBXw3hKa38BcxFHmMwRr/Doztw8eU8rxw4EimCCcYobOhNUv
         Sa95O2av/RmMDMaDz0gvzLGeNrx8bEOrRVZhNqhGXRMpE6GkrBMWCNfwaaD5p55tn9l7
         rORQ==
X-Gm-Message-State: AMke39lygNeMusynK0tiiOn2vOdMhiLxJ81wUA7UyAMBd4HIAUhreaL2C0ol8m4SqBBuCQ==
X-Received: by 10.99.94.198 with SMTP id s189mr13051822pgb.211.1489055895676;
        Thu, 09 Mar 2017 02:38:15 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.186.124.141])
        by smtp.gmail.com with ESMTPSA id 187sm11651004pff.17.2017.03.09.02.38.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:38:15 -0800 (PST)
Date: Thu, 9 Mar 2017 16:08:09 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 2/7] staging: bcm2835-audio: replace null with error
 pointer value
Message-ID: <cc9cc8c7a3576a9d556815fd9f57ca58338abb01.1489055580.git.aishpant@gmail.com>
References: <cover.1489055580.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489055580.git.aishpant@gmail.com>
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
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 005e287..d2686b4 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -287,12 +287,12 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
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
 
@@ -341,7 +341,7 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 	kfree(instance);
 	LOG_ERR("%s: error\n", __func__);
 
-	return NULL;
+	return ERR_PTR(-EPERM);
 }
 
 static int vc_vchi_audio_deinit(struct bcm2835_audio_instance *instance)
@@ -432,7 +432,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 	/* Initialize an instance of the audio service */
 	instance = vc_vchi_audio_init(vchi_instance, &vchi_connection, 1);
 
-	if (!instance) {
+	if (IS_ERR(instance)) {
 		LOG_ERR("%s: failed to initialize audio service\n", __func__);
 
 		ret = -EPERM;
-- 
2.7.4


