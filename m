X-GM-THRID: 6392494565268389888
X-Received: by 10.46.81.66 with SMTP id b2mr1122784lje.3.1488382639399;
        Wed, 01 Mar 2017 07:37:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.27.137 with SMTP id b131ls82088lfb.20.gmail; Wed, 01 Mar
 2017 07:37:18 -0800 (PST)
X-Received: by 10.25.157.14 with SMTP id g14mr989202lfe.28.1488382638842;
        Wed, 01 Mar 2017 07:37:18 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id v70si571923wmf.0.2017.03.01.07.37.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 07:37:18 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id n11so479443wma.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 07:37:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=18CxTXVSptAX/Mm1C8RlWP0tHPrUZzOK4dLgnPVemsw=;
        b=HHfJP3lr0oRiip/PWdQXPZnG5ill8OTv4n4mUQg/NqAO1cnlj6J0qagqj/GrUei4dW
         VgDe8iXf08rD9ky5r+1ymd4o48ZkMzjRJxu6alprigUlN5FRIkvbJ0/uGAu9nXNnIltk
         ZpoS7QOZZZD9w+X0Zdz0TGmdr9l76yuFhMd36JeAnrCmxQU5q9exgdIn8iPo4KoYUD7H
         mdwFimZkFk067YEwr6jdUn1EOJeSZjPgA4sBE5y+S5fq2WNq3FDLMV1VfA+P90W45ZgD
         v58HY+XYRbGSGe0zfH8gnGKzlggKDfIxEfUtWhiC8ZVBP0Ma5fJwxMgR8ZRbruKnLjj7
         aL6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=18CxTXVSptAX/Mm1C8RlWP0tHPrUZzOK4dLgnPVemsw=;
        b=dQfZUjEQM1fq0wVXh22St+sv9HFGVXvQ/8bLRFZdlkMHHsxKmVsR++gWaAbsYPgq27
         GkfUJg9CMaKtKt0cfFX9qgl3KzMhDNpE2WX7j/gpyueHKxIPB3zm4flCUE2cIAygXooG
         aR+gxTZg4goPP2fzNtIo6HJA/qvEnGL4uMJJr0OYYHlRTv0idKd62+KKD+nNsnUVVbA0
         ZwDg8hoLm/LEQjq3jdNMlQDxa57j8itP8n9euX0SZXFx+dLxX/R/nGH4+IgDWQQ2jXCU
         5Iqn7P4n8NiWWwZFYjHr4/FVhTaAFhZ4jn6dQHu3UJRcIvBaHJ+QBOEqNc3UPd6Cv01a
         7Wmw==
X-Gm-Message-State: AMke39kLwj4JlICcLigGyjpMDGFMG31Lcj7nmKyHfvVCqkecjwoez5U9V/qiDW5CXLZUXA==
X-Received: by 10.28.215.18 with SMTP id o18mr4083858wmg.98.1488382638664;
        Wed, 01 Mar 2017 07:37:18 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id 99sm7068941wrm.18.2017.03.01.07.37.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 07:37:18 -0800 (PST)
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
Subject: [PATCH v3 1/2] staging: vc04_services: bcm2835-camera: Move min calculation outside the loop
Date: Wed,  1 Mar 2017 17:37:13 +0200
Message-Id: <e56b661d6e62e48626989f052a5e1603fb1e6913.1488381635.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488381635.git.narcisaanamaria12@gmail.com>
References: <cover.1488381635.git.narcisaanamaria12@gmail.com>

Instead of computing the minimum value in the for loop, store it in a variable.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 53e275e..7b9d33c 100644
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
+		   num_resolutions : cam_info.num_cameras;
+	for (i = 0; i < min_size; i++) {
 		resolutions[i][0] = cam_info.cameras[i].max_width;
 		resolutions[i][1] = cam_info.cameras[i].max_height;
 	}
-- 
1.9.1


