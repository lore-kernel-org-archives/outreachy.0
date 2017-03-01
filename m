X-GM-THRID: 6392511932367110144
X-Received: by 10.25.223.67 with SMTP id q3mr883111lfj.1.1488372706614;
        Wed, 01 Mar 2017 04:51:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.198 with SMTP id s189ls419909lja.6.gmail; Wed, 01 Mar
 2017 04:51:46 -0800 (PST)
X-Received: by 10.25.157.14 with SMTP id g14mr880089lfe.28.1488372705890;
        Wed, 01 Mar 2017 04:51:45 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id h198si484557wmg.1.2017.03.01.04.51.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 04:51:45 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id m70so7178270wma.1
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 04:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3oU4Bq8qAjEwXjnvH8kQB3ZCIrEgNLBi6J/jQKrIUiM=;
        b=ORKzFGKGgk91ShM198Fh4ySRE6vOg6MQgWaMkECgPX4TiyAajK5HwE30fkysQoxGUT
         Fyh6MtgPHupLS4MeAJLnsrl7zC/JC5NyV3jx1GH+431ZT3l/SnEW1hjmZuipzurv6aGF
         W4kpf4Nb12Ljj1fK6bru/iTCBf4UN+7h9YtaZJUGG7pLPai3Qdw7vG/WuJ43nPk1oTP2
         GtMoaMNznC7eCYrU7JWKYDGOTLQl+o6pzS04IuJE7oMK/18NbgvkY1wlYqXssUmAyNG7
         PS7m0zJzgVK2j73yV/KerNj0qvlx/CRgiuFxb0MPFwm/4PzIhguy+f7j8y+NOqHUy4dU
         qelQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=3oU4Bq8qAjEwXjnvH8kQB3ZCIrEgNLBi6J/jQKrIUiM=;
        b=gNeJmS9niO8JNEpORpLBIXwdbSJnX0Y1Ktyn+wJut1zvX7lYx3PAEuL9YY2IYuRv1j
         NDQbTzLB6tagzk+xyjMBJxGoyEkTgORH5DewR2JSD0OPW4h+j3qsR6GQIM7RjLeDVzB1
         DL639BbCBcEoc5aheX1R3G8VAukyHQbjLQAmm3tQEB5tvjPjQvwzDTi5K1NL6RvWh4pQ
         BS/3fY2WjWXggcokDGjfZ6Optz6DK6OS3IMgeU4brMf7NwEA3sDrpBLgbfx2i20ng8x2
         0Gg3f5FbIRBni+QgFnocDuUwreVgDrvZp0y5Fp4YWqKSevyOxY7zdublyrdibFpor030
         +9LA==
X-Gm-Message-State: AMke39lPQ73D8rvRqTS5tlwD/kyu6ZZLT0bDLZTI8KF9Vsdo6PF8KEYm8wyvwU6iK9WhbQ==
X-Received: by 10.28.137.203 with SMTP id l194mr3270431wmd.63.1488372705675;
        Wed, 01 Mar 2017 04:51:45 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id y65sm22705630wmb.5.2017.03.01.04.51.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 04:51:45 -0800 (PST)
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
Subject: [PATCH 1/2] staging: vc04_services: bcm2835-camera: Remove unnecessary else instruction
Date: Wed,  1 Mar 2017 14:51:37 +0200
Message-Id: <ff2d51e7327a03defd26b7d3561eb2c154a2fa0c.1488371940.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488371940.git.narcisaanamaria12@gmail.com>
References: <cover.1488371940.git.narcisaanamaria12@gmail.com>

Initialize the variable shutter_speed to avoid unnecessary else branch

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 9c0667e..dcd5bec 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -798,7 +798,7 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
 			       const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
 {
 	int ret = 0;
-	int shutter_speed;
+	int shutter_speed = 0;
 	struct vchiq_mmal_port *control;
 
 	v4l2_dbg(0, bcm2835_v4l2_debug, &dev->v4l2_dev,
@@ -815,8 +815,6 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
 
 		if (dev->exposure_mode_user == MMAL_PARAM_EXPOSUREMODE_OFF)
 			shutter_speed = dev->manual_shutter_speed;
-		else
-			shutter_speed = 0;
 
 		v4l2_dbg(0, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "%s: scene mode none: shut_speed %d, exp_mode %d, metering %d\n",
@@ -843,7 +841,7 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
 		/* Set up scene mode */
 		int i;
 		const struct v4l2_mmal_scene_config *scene = NULL;
-		int shutter_speed;
+		int shutter_speed = 0;
 		enum mmal_parameter_exposuremode exposure_mode;
 		enum mmal_parameter_exposuremeteringmode metering_mode;
 
@@ -864,8 +862,7 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
 
 		if (scene->exposure_mode == MMAL_PARAM_EXPOSUREMODE_OFF)
 			shutter_speed = dev->manual_shutter_speed;
-		else
-			shutter_speed = 0;
+		
 		exposure_mode = scene->exposure_mode;
 		metering_mode = scene->metering_mode;
 
-- 
1.9.1


