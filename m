X-GM-THRID: 6392494565268389888
X-Received: by 10.46.80.1 with SMTP id e1mr1046881ljb.10.1488374432188;
        Wed, 01 Mar 2017 05:20:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.15.1 with SMTP id 1ls413431ljp.36.gmail; Wed, 01 Mar 2017
 05:20:31 -0800 (PST)
X-Received: by 10.46.78.9 with SMTP id c9mr1022780ljb.20.1488374431655;
        Wed, 01 Mar 2017 05:20:31 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id y19si1562491wmd.0.2017.03.01.05.20.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 05:20:31 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id l37so5490782wrc.3
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 05:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KomnxSsOy0v6ZVtOlujMw5NSISu/8+qLF0xs05S1NlU=;
        b=I/vy6cBG2MxyyD+vTJH0A/7jDmYlA/Y14yiWGjweKnLBanG8yf1TXjo/UyAqAdX+gG
         9YsmTmJj19IuQR++GhS4Dxk9HQR3XlUf3QG3EjLOcX+LGFbpcO+FKak6+zd9RKGziKpH
         Qk50tf0sdEgrWtwdSf1RD1n5dO6RMu6oUyzGxZOjZFCiSSQqYKxJpiHturezLUqnxmWD
         oFBR2jdhx+j6a267EkC/ZJ1Pz4l75Djj3uub/5OpF4/QYS6Xre4qY9lZ+aYRwPpDnV9+
         if2Bg8qO3qLOnIHavWFtgQFYE2Z5PIYXGulqHxjssPdfnPYzDTG1PzFOOLEvA9eiGLqd
         gQ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KomnxSsOy0v6ZVtOlujMw5NSISu/8+qLF0xs05S1NlU=;
        b=oMSfjE1bRvRdQFbc7KqxfWP2WY13ROBMpmeFINOZHGVb3n89x3mu98NDLJunVQYLwb
         +t2b9sNSslAAqC8zntY5MBHj0wEC489HsdoNdZsSD7BnpAIZy2p04l6a1rUTANIaa5Ma
         RaeWUNLYj4q5klqq00C1gYaBvdgoQ2HwWvW9fp5Ykhb77/UmUnDyxUL8ahP1wQoQaofz
         I9QTgIaB776WgMcWYKMvxOaKSsXkmPAUhi7ejQsZ05CilVJk4LQFX9jAS0HwqhdueXu6
         z/WKgb5pWnmoH5wFW/dbzjuYlaNcYRN5VeXjsiV51DwkNJ4JsNgDIrHxD4EPISNIBNsP
         NQkw==
X-Gm-Message-State: AMke39lyF+xSyrw5T81Zy78ykuJVu1xUv+KXETMm2pfzbDog0gRkjAq6aJgMFJJGEbvIJA==
X-Received: by 10.223.168.80 with SMTP id l74mr7410204wrc.184.1488374431476;
        Wed, 01 Mar 2017 05:20:31 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id d1sm6625132wrb.62.2017.03.01.05.20.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 05:20:30 -0800 (PST)
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
Subject: [PATCH v2 1/2] staging: vc04_services: bcm2835-camera: Move min calculation outside the loop
Date: Wed,  1 Mar 2017 15:20:09 +0200
Message-Id: <01543a4d9347e90d69877e95c10ff0706fc0ac06.1488373678.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488373678.git.narcisaanamaria12@gmail.com>
References: <cover.1488373678.git.narcisaanamaria12@gmail.com>

Instead of computing the minimum value in the for loop, store it in
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


