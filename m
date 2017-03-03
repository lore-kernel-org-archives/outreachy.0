X-GM-THRID: 6393338025823174656
X-Received: by 10.36.83.14 with SMTP id n14mr551424itb.30.1488565083867;
        Fri, 03 Mar 2017 10:18:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls9506449otx.21.gmail; Fri, 03 Mar
 2017 10:18:02 -0800 (PST)
X-Received: by 10.129.87.3 with SMTP id l3mr1628361ywb.0.1488565082974;
        Fri, 03 Mar 2017 10:18:02 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si191028pfz.1.2017.03.03.10.18.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:18:02 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so10542610pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 10:18:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=EOAehFr4tO+tdXGiwsE/TkBppcq2wXhUBppFPkWZtv0=;
        b=goODPhsmabE0sGaqqo5Adcj8XUx+Y4n9fHKm6o2nuFn03JGRyBD5KopfCsgl47KYWH
         iNIpasow3TrQbgocAWdKvl1GKaQnSsw+hFklcEAQuYgCi1UOJzDTQK96fhqJ247dIH2X
         S+QpyZkEsZC9hv1WT1dtJrjKmwuLLDz+7jRRNWBEs+6DaOsJgqJtiZ0KAaQjqOORNI7x
         ccoddevYCFqXs8pKzWwKEytguhCKD08X3tFOlvTq1kvG1VaFSVz07eH0RdOwLPGcP/XK
         HLHyVWKgix5ZxyhzTdSOIRfGwqlAZ42zUJD8WigwR3CaeXIRf9AH/Z5QfjG6TFJT4yQw
         vHvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EOAehFr4tO+tdXGiwsE/TkBppcq2wXhUBppFPkWZtv0=;
        b=KfVgBXkkurqmdsJNiejD+tYtiXCnnC0samEponvuiIhGA30xRB+hj7sXZeUcbGq+MD
         dOvrgm6AIm0lBM+Hydyj5GzxMQYzzpghqXJRlU/T60q6RyqbIBNhVSy5tjZgjH/fYt2h
         /EmaYwFymNkD8FjA43z82tGrABN38QCAPYVKEMKWRFR0a5EIb8pjSPY7BykWIeRZFMDy
         pta9CO9zeExLiiOG4wwrC5OrtuudkwP/yy4EhpMNZ7xl0JxdH/b6WMezaysKWjF42W1P
         2PULmdXnViNTLHUI8CO3S+9syNln87WrI2Fnqg/RUqY1x+s8AcCQs9GQDe+NSuLlvCJE
         4ZBg==
X-Gm-Message-State: AMke39kTWjuRrnI3tUVmx04oM0jzm0CABFNf/HD039POQIzyCfbmZY4wQL6MSRrUn7Htmw==
X-Received: by 10.98.158.219 with SMTP id f88mr5158668pfk.50.1488565082689;
        Fri, 03 Mar 2017 10:18:02 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.136.156])
        by smtp.gmail.com with ESMTPSA id e70sm11789650pfh.84.2017.03.03.10.17.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:18:02 -0800 (PST)
Date: Fri, 3 Mar 2017 23:47:51 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] staging: bcm2835-audio: match alignment with open
 parenthesis
Message-ID: <13bbc8e92242eb83ad87cdac052bf7df8779745e.1488564925.git.aishpant@gmail.com>
References: <cover.1488564925.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488564925.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix the following checkpatch warning issued on bcm2835-vchiq.c:
CHECK: Alignment should match open parenthesis

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c       | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index f55c396..09168e7 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -316,7 +316,8 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 
 		LOG_DBG("%s: about to open %i\n", __func__, i);
 		status = vchi_service_open(vchi_instance, &params,
-			&instance->vchi_handle[i]);
+					   &instance->vchi_handle[i]);
+
 		LOG_DBG("%s: opened %i: %p=%d\n", __func__, i, instance->vchi_handle[i], status);
 		if (status) {
 			LOG_ERR("%s: failed to open VCHI service connection (status=%d)\n",
@@ -598,7 +599,7 @@ int bcm2835_audio_set_params(struct bcm2835_alsa_stream *alsa_stream,
 	LOG_DBG(" .. IN\n");
 
 	LOG_INFO(" Setting ALSA channels(%d), samplerate(%d), bits-per-sample(%d)\n",
-		channels, samplerate, bps);
+		 channels, samplerate, bps);
 
 	/* resend ctls - alsa_stream may not have been open when first send */
 	ret = bcm2835_audio_set_ctls_chan(alsa_stream, alsa_stream->chip);
@@ -822,7 +823,7 @@ static int bcm2835_audio_write_worker(struct bcm2835_alsa_stream *alsa_stream,
 	vchi_service_use(instance->vchi_handle[0]);
 
 	if (instance->peer_version == 0 &&
-			vchi_get_peer_version(instance->vchi_handle[0], &instance->peer_version) == 0)
+	    vchi_get_peer_version(instance->vchi_handle[0], &instance->peer_version) == 0)
 		LOG_DBG("%s: client version %d connected\n", __func__, instance->peer_version);
 
 	m.type = VC_AUDIO_MSG_TYPE_WRITE;
@@ -848,13 +849,11 @@ static int bcm2835_audio_write_worker(struct bcm2835_alsa_stream *alsa_stream,
 		if (!m.u.write.max_packet) {
 			/* Send the message to the videocore */
 			status = vchi_bulk_queue_transmit(instance->vchi_handle[0],
-				src, count,
-				0 *
-				VCHI_FLAGS_BLOCK_UNTIL_QUEUED
-				+
-				1 *
-				VCHI_FLAGS_BLOCK_UNTIL_DATA_READ,
-				NULL);
+							  src, count,
+							  0 * VCHI_FLAGS_BLOCK_UNTIL_QUEUED
+							  +
+							  1 * VCHI_FLAGS_BLOCK_UNTIL_DATA_READ,
+							  NULL);
 		} else {
 			while (count > 0) {
 				int bytes = min((int)m.u.write.max_packet, (int)count);
-- 
2.7.4


