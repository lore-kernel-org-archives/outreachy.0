X-GM-THRID: 6394401254530875392
X-Received: by 10.99.104.130 with SMTP id d124mr2922512pgc.13.1488984549220;
        Wed, 08 Mar 2017 06:49:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.30.168 with SMTP id n37ls3194242otn.25.gmail; Wed, 08 Mar
 2017 06:49:08 -0800 (PST)
X-Received: by 10.13.194.199 with SMTP id e190mr3105295ywd.93.1488984548819;
        Wed, 08 Mar 2017 06:49:08 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si616702pfx.8.2017.03.08.06.49.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:49:08 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id v190so4012524pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 06:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=41C8GJvVhsnFe/bC/sDyOY1NoZHjd0ajWlQzK40hYWw=;
        b=ru3RRK1LUCf4yWiNkvlh5PTcD/Qc9xxq3Osl9/gD3QiBhf0KOObEYrd2utTc54sJ+n
         Rb5qyIJ9ok3gd6dHzz8lI6aoCKzGT1Zv1TmTKpdM12YUzAyB4i18up+A6eqAAvG7RD91
         utQJ0IBtlyLjJ2eGib1n3X/bvOAxIe+hP2hP60yGQJoDrM6jfxnaK3aTRBfe6xiFdTua
         nhXwch/PR+NPEtJ1sUWOS5sap2P2aX6dxjNNr2Pej/7VmKvwRMQhGIoj/IFgVyJv8HNB
         suByAGi8E8eWGhYYGaXK0zZY8yhrFDY0f6YTZXuu6GI9CvRUe2+iJ79rE91LeyZzPXnM
         muaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=41C8GJvVhsnFe/bC/sDyOY1NoZHjd0ajWlQzK40hYWw=;
        b=bNwrwXt51fZKFkR9LmtOmn6D3ZbTqwYiVO65LIG3zxRJ/2ilvdZQ9rHZRvyEI/lCYl
         go7TFqzOci3CUR2DXKOMZ/duOEuehU6jU98lsrby9MXiEiHLLa2hsPVb+w6c5UwxyVpE
         AHWC4B84cnbjsi1jIRIZLytM9WRWthpJ2akASLWWbhfiPfiOsewXSElBVZnMYLa7TU1w
         aRwmwi2kzkarsffPNTELVyDyRGXboJ5CBBcIV9CsiafMzZpziisTArUxfigECDVE0ucW
         GE8W68A3pO/ze6Qv8E+43AcT3Imo2DeIBSJIqd+WsvYizmV29VR5G/HIVxTTLscttTKZ
         hpwA==
X-Gm-Message-State: AMke39mxavz0Rnu4C5ZexP2LPQ7lUfWuk0WKNELZ35cv9V9Jn5tYrm5Q64E5FDHZvHv88g==
X-Received: by 10.99.231.83 with SMTP id j19mr7335943pgk.50.1488984548216;
        Wed, 08 Mar 2017 06:49:08 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.14])
        by smtp.gmail.com with ESMTPSA id h3sm6798335pfc.82.2017.03.08.06.49.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:49:07 -0800 (PST)
Date: Wed, 8 Mar 2017 20:19:03 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 2/8] staging: bcm2835-audio: replace null with error
 pointer value
Message-ID: <cc9cc8c7a3576a9d556815fd9f57ca58338abb01.1488984315.git.aishpant@gmail.com>
References: <cover.1488984315.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488984315.git.aishpant@gmail.com>
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


