X-GM-THRID: 6392494565268389888
X-Received: by 10.46.71.15 with SMTP id u15mr1041114lja.9.1488368740908;
        Wed, 01 Mar 2017 03:45:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.93 with SMTP id 90ls398010ljb.13.gmail; Wed, 01 Mar 2017
 03:45:40 -0800 (PST)
X-Received: by 10.46.80.82 with SMTP id v18mr953362ljd.27.1488368740441;
        Wed, 01 Mar 2017 03:45:40 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id k5si122870wmd.0.2017.03.01.03.45.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 03:45:40 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id v190so860881wme.3
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 03:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Z3UzyQ5R22wplqnfUiDlanz3erqYB7OzHzRIUL+2JZg=;
        b=KiH8ItrVwTaeYUDdKPXtSwuzzVK7iBMPASjExKy9a5u+tXJjcL/VfqedFBvzlGZ4sV
         EtycwlNy8cAd4YlEU9jYgVWIFGcbKYdOOwCEli3anRVtd4gRZiCXag1LBjQ+l+i8SO35
         6tHMeXafHyhugCQ9RKyGz18aSfZKUV4psZ+e1WRQK96OxYX3Sg5lrUPsW6qtp373ZvXS
         5qU0OCi5+KCdTo5jp7Z1MbuZEagDKcfjB9rDHduNELGrXEwXiDsqzWZyRT2jEEf4IGUV
         q6y68aB4SaXaXOkSvx4pBVBSP9iK65pdn3V0PJj7aooz89SfIHErJlHBFg1OIOTANrBs
         3E7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Z3UzyQ5R22wplqnfUiDlanz3erqYB7OzHzRIUL+2JZg=;
        b=I81m4pl8snJXTFL8+E1DQQT7sYnZ6RauXwyp7xX3kQIc4cwAne781IBMNPJDfi4dPU
         TRGZseySvPnhGENZ+IifHHESo8gDirYfQyvu9qRjubFttG1Tj1E7Oqd+wmRY/zM8BL9T
         utHJjKBla2QN+4EQDFAQpA3PjkJhrgtfx9TH/ygQK2TXjjdm5TGRn89UQHvv/Rr48QRy
         XAclPlU9Djasi0FHcKYdSDM44qUdD0CfqRH86So6nlfehzMMy/wq72EDvuEmIUAJ5gb7
         MsFIGCHxxXxl9P9NNOhyNT/R1sB5sJUJ+S4BpwbpFX9uyi6PJ+sVwM9ux3IVDCfG5ArK
         Qxzw==
X-Gm-Message-State: AMke39lr8Vp5R0PmNKfFr9DUX0dLwrudi0m7D8tSGDZBWq7yGKtSenjNWTW71SJVmiRibQ==
X-Received: by 10.28.74.28 with SMTP id x28mr3014663wma.131.1488368740275;
        Wed, 01 Mar 2017 03:45:40 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id g5sm2491380wrb.48.2017.03.01.03.45.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 03:45:39 -0800 (PST)
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
Subject: [PATCH 2/2] staging: vc04_services: bcm2835-camera: Removed unnecessary variable
Date: Wed,  1 Mar 2017 13:45:31 +0200
Message-Id: <daabcf56391dbfadac95ab36f36afd3bdaeaf423.1488367580.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488367580.git.narcisaanamaria12@gmail.com>
References: <cover.1488367580.git.narcisaanamaria12@gmail.com>

Instead of storing the result, now the function returns directly

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


