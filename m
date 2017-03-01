X-GM-THRID: 6392494565268389888
X-Received: by 10.25.168.20 with SMTP id r20mr917453lfe.10.1488374445342;
        Wed, 01 Mar 2017 05:20:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.65 with SMTP id y1ls395153ljd.17.gmail; Wed, 01 Mar 2017
 05:20:44 -0800 (PST)
X-Received: by 10.25.17.102 with SMTP id g99mr886206lfi.6.1488374444735;
        Wed, 01 Mar 2017 05:20:44 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id k5si145172wmd.0.2017.03.01.05.20.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 05:20:44 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id g10so5493744wrg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 05:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eGmpPlEPJLO+eo11+tBH7Ocq9ZEioWzfgma1MmRW56E=;
        b=as9SfiDmXA8Pxzp4KQuGjJ0dmzXszdGszjVcTFQsQu4enkXhI0VYrJCtF/8mJcICZo
         tKUAVM03wDiVARn4k++4q+nvRR9cKx08UEZM5qXu0MteFOzIXJ5jPR1xHUee764GyHou
         dHOCItLDfkfPVaG+/jfCzuw7dUhQyQb9An+zzJTy7Wt6fzA/3brC9THv83FUJffITCos
         PCFK0a8cwCP6yj+P8J7ni0STipLlRJ+5q8zsXRG3G9fZmM24MrvHOxDB+YuTB1mZ8Nrz
         8vA71L/kP6Pzdr/hCapBAxk34TcuMM04lIhzdoxtJEEjwr9Mn1vxx+6H6n29rLZm+NEY
         IUBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eGmpPlEPJLO+eo11+tBH7Ocq9ZEioWzfgma1MmRW56E=;
        b=VLfPdVGG+tIGXClxQMAe+NEzq7gZ7IjzDla1J4HnG4QGPGpJuzG6qMQBXiyoDkTtnq
         7pd9rXm42p6IhFA3P9IBpQOwQyXcPiegq2ZgmMv8gt10lnZVZRIw31yHF3m59Wr/9dwr
         CQCjrkPFnH463iKNP5TQy3TsnGVBZsntNOoj6ubK3rkBOclqkq8gz7VMLJ5/kPcOJMCO
         oTPGZ8IbN2W37nqjmTnIHMGfdik/pRmlkJedMHbAIBDCH8dmTyFKTKayrXCiVKKCO/7W
         ksRpo0T//Qf5NvGrtozrDSEvW1WtZTnlxcWru1v9hPgheyz5ukThsOOh14loiROxdrnZ
         bj3g==
X-Gm-Message-State: AMke39lfjI3DhAeKpCCX/Mk3FCYK/ul/y6UiC0ArMkl8RBAT4zMMX+9z/PN8HAhoSMOflg==
X-Received: by 10.223.155.193 with SMTP id e1mr6943480wrc.86.1488374444391;
        Wed, 01 Mar 2017 05:20:44 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id k8sm6583460wre.19.2017.03.01.05.20.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 05:20:43 -0800 (PST)
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
Subject: [PATCH v2 2/2] staging: vc04_services: bcm2835-camera: Remove unnecessary variable
Date: Wed,  1 Mar 2017 15:20:40 +0200
Message-Id: <f65f4c89e9d1e054d65a13a35f8f32e9139f1ae5.1488373678.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488373678.git.narcisaanamaria12@gmail.com>
References: <cover.1488373678.git.narcisaanamaria12@gmail.com>

Instead of storing the result, make the function return directly

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 347d8fff..d00e00b 100644
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
+	return vchiq_mmal_port_parameter_set(dev->instance, port,
 					    MMAL_PARAMETER_DISPLAYREGION,
 					    &prev_config, sizeof(prev_config));
-
-	return ret;
 }
 
 /* overlay ioctl */
-- 
1.9.1


