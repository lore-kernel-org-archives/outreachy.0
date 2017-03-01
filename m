X-GM-THRID: 6392494565268389888
X-Received: by 10.46.76.17 with SMTP id z17mr938957lja.13.1488368694491;
        Wed, 01 Mar 2017 03:44:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.227.79 with SMTP id c15ls70657lfk.49.gmail; Wed, 01 Mar
 2017 03:44:53 -0800 (PST)
X-Received: by 10.25.196.68 with SMTP id u65mr913230lff.0.1488368693823;
        Wed, 01 Mar 2017 03:44:53 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id h62si946074wme.2.2017.03.01.03.44.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 03:44:53 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id u63so6896603wmu.2
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 03:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tbfQfD7rlkERCK1s+ygY2VGg4FKzYWVbey7mdqy1jng=;
        b=bDQdrLJk7zeW5129qID05kN18Tj57Q8IfJdBBqMh+AjPnH9tV0WBSo30PQTqCsED1z
         Pa5p1WygzTDD4cjTuF4aedW+X4VJUO0ILqjM1suT3n99UbtNYZecrZGBIDrLsBuiX0vg
         Iy3A12LuOFqm5zXYkpXZ3r2+B7ymTdGTHsoKW6Ac6qXm6eGWhOilZARAfDMkc4waRTTx
         PJj5mO9h+evioK0kIodGnRaNhF3xnKnDgTVC5UnMuMew9xAvnPbndZ34DsoJr9Shq2nB
         NVwcSXKEwI5aP3UEApUTmroebnSgk9Ae6MJeTPqRFTFfeyegC87wAFKLJ4OUPI8/brmh
         5vtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=tbfQfD7rlkERCK1s+ygY2VGg4FKzYWVbey7mdqy1jng=;
        b=uOOHbrn7rY/UeFbUSgFO4SPOJLMyTkeQdw1KKVVRyFl1DXnQ8CkQOrT7545cEf+vQ6
         6yYi1nufolGNmnlPXAxtYtHZ3pPnCg6w0KDt/Z2Y/sR2S2VcMOwCx72ehhjVPZmOnwya
         po/0jzeY6oIPDFbBO55/RHNnhhSQNMt6gH2ik3dU6/ZiRIILNtoaAl8rpgUvhK717t/N
         BBqZR1jn6z0jdQoPi6yLn+JpaLVI0lLHxO2yt6k2k3LwPtRxJsNWBwjbkaEaVa8VwVkS
         idj4gxrZeLE6eee/wV3SMLZQcMor+0Qm4tosZjawIOnSQrwQV7seu5ZG/GFMWZmmqLh9
         nZjA==
X-Gm-Message-State: AMke39naMvzpfEGx1wyS6HUckk+uRPX2jT0VX9t+i2w9HwAvDexHufCZSRNQwHauJ2cO6A==
X-Received: by 10.28.156.151 with SMTP id f145mr3149917wme.8.1488368693594;
        Wed, 01 Mar 2017 03:44:53 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id r6sm6593306wmd.4.2017.03.01.03.44.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 03:44:53 -0800 (PST)
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
Subject: [PATCH 1/2] staging: vc04_services: bcm2835-camera: Moved condition outside the for statement
Date: Wed,  1 Mar 2017 13:44:43 +0200
Message-Id: <04783e886f993597ef3b14f2602864884e0ac7b7.1488367580.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488367580.git.narcisaanamaria12@gmail.com>
References: <cover.1488367580.git.narcisaanamaria12@gmail.com>

Instead of computing the minimum value in the for loop, I store it in
a variable.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 53e275e..347d8fff 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1526,6 +1526,7 @@ static int get_num_cameras(struct vchiq_mmal_instance *instance,
 	struct mmal_parameter_camera_info_t cam_info = {0};
 	int param_size = sizeof(cam_info);
 	int i;
+	int min_size;
 
 	/* create a camera_info component */
 	ret = vchiq_mmal_component_init(instance, "camera_info",
@@ -1541,11 +1542,10 @@ static int get_num_cameras(struct vchiq_mmal_instance *instance,
 					  &param_size)) {
 		pr_info("Failed to get camera info\n");
 	}
-	for (i = 0;
-	     i < (cam_info.num_cameras > num_resolutions ?
-			num_resolutions :
-			cam_info.num_cameras);
-	     i++) {
+
+	min_size = cam_info.num_cameras > num_resolutions ?
+			num_resolutions : cam_info.num_cameras;
+	for (i = 0; i < min_size; i++) {
 		resolutions[i][0] = cam_info.cameras[i].max_width;
 		resolutions[i][1] = cam_info.cameras[i].max_height;
 	}
-- 
1.9.1


