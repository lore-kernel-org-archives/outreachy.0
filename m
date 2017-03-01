X-GM-THRID: 6392494565268389888
X-Received: by 10.46.5.136 with SMTP id 130mr1120746ljf.6.1488382655688;
        Wed, 01 Mar 2017 07:37:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.137.136 with SMTP id l130ls2088520wmd.24.canary-gmail; Wed,
 01 Mar 2017 07:37:34 -0800 (PST)
X-Received: by 10.28.29.78 with SMTP id d75mr151202wmd.3.1488382654534;
        Wed, 01 Mar 2017 07:37:34 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id b186si318809wme.1.2017.03.01.07.37.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 07:37:34 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id g10so6022216wrg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 07:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mbDaSRoxht3l0NwkfzYYlkmH8VDozEqrlEGbsJwK9cE=;
        b=Yu1dcDxoceIpa8A9AlJuJODAV4QcUmNh7MFIvYKLEMtT2DIiI/tuJchZvnJI7vtTbA
         G/lutGhuXyc3532IUo/w1cQ66yQi9dWxoO0B54Bpc+fFpsk5e/4xQ/9DQ6Nulm2jiZAP
         A1zeTwEZh+RyHNmoqj3hcZ5FRYbXzesezUrN2MfbPm7rs3FLP9zYPX9lSo9VmRdeFEC6
         Cdn6EMPkhBYkTEUCaXgH5vN/K701Czwd5mOk4NYKNGeHSAeKDo9A8KVygpXNXvfUZW96
         M47cAtpQu1wypyf99Bf/hMCGTBP4l6o/uiCr2k7/ckDywcSh6aAyBeLdPjdp5ajTzTYX
         bkjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=mbDaSRoxht3l0NwkfzYYlkmH8VDozEqrlEGbsJwK9cE=;
        b=F4U2lMbGGB6VHjnEvlmesA6b7JiA3KyhpYbcgSVWOBdyS5BREnRHNQuyaaYvwJqyhl
         M3NtlvrqAWd2SHylbvs528U1UMTTLr+DSOBH9eCrz5JjiThsUCA/Jv2mLCTbDOXNj1AV
         VsssQl0+5JXGXiPWFBiH8yLw38gzYw/4HfnykTud6xtZ4FWh6RDNayzy0OeEyvJUXnYS
         LFErziYgOEz1YL8KJJKnnsggUNDTJ+FVmV/pcGSryK2Kp/jBJEwqA9ua7ILhfoOQsyVV
         saYf3BJQ3uj8ijkPqJAwO+tAWT5fsFKM/CKEd074KiClASbFP6EA4leNTmDrItVrQUaq
         qcpQ==
X-Gm-Message-State: AMke39kuqb1gTfwxWRtom+eYUbNaybjF5wj2Dh+E4Ql8W2zd5yu2733CXR3BwKfOImGw5g==
X-Received: by 10.223.176.143 with SMTP id i15mr8303695wra.136.1488382654300;
        Wed, 01 Mar 2017 07:37:34 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id 73sm23363594wml.19.2017.03.01.07.37.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 07:37:33 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v3 2/2] staging: vc04_services: bcm2835-camera: Remove unnecessary variable
Date: Wed,  1 Mar 2017 17:37:27 +0200
Message-Id: <b0d1b226e4c6129fc80fde7fcd27db9984165ca3.1488381635.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488381635.git.narcisaanamaria12@gmail.com>
References: <cover.1488381635.git.narcisaanamaria12@gmail.com>

Instead of storing the result, make the function return directly

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 7b9d33c..d5db9e6 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -671,7 +671,6 @@ static void bm2835_mmal_unlock(struct vb2_queue *vq)
 static int set_overlay_params(struct bm2835_mmal_dev *dev,
 			      struct vchiq_mmal_port *port)
 {
-	int ret;
 	struct mmal_parameter_displayregion prev_config = {
 	.set = MMAL_DISPLAY_SET_LAYER | MMAL_DISPLAY_SET_ALPHA |
 	    MMAL_DISPLAY_SET_DEST_RECT | MMAL_DISPLAY_SET_FULLSCREEN,
@@ -685,11 +684,9 @@ static int set_overlay_params(struct bm2835_mmal_dev *dev,
 		      .height = dev->overlay.w.height,
 		      },
 	};
-	ret = vchiq_mmal_port_parameter_set(dev->instance, port,
-					    MMAL_PARAMETER_DISPLAYREGION,
-					    &prev_config, sizeof(prev_config));
-
-	return ret;
+	return vchiq_mmal_port_parameter_set(dev->instance, port,
+					     MMAL_PARAMETER_DISPLAYREGION,
+					     &prev_config, sizeof(prev_config));
 }
 
 /* overlay ioctl */
-- 
1.9.1


