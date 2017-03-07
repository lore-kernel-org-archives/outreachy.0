X-GM-THRID: 6394777428448772096
X-Received: by 10.25.204.21 with SMTP id c21mr132147lfg.19.1488900144777;
        Tue, 07 Mar 2017 07:22:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.20 with SMTP id m20ls99146ljb.27.gmail; Tue, 07 Mar 2017
 07:22:23 -0800 (PST)
X-Received: by 10.46.77.69 with SMTP id a66mr167299ljb.11.1488900143904;
        Tue, 07 Mar 2017 07:22:23 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id n128si370036wmf.2.2017.03.07.07.22.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 07:22:23 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id u132so1545203wmg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 07:22:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5L3IkPEuuorgjimeeVdLV8f8kLmqrUdtkGe7AtQ7HnU=;
        b=sgRdSGeZKI77Cxv4ye2R5FN6d70ggJgzt+Hv98p6zDF6SMpX6Wi0eJX+bwtpqsv05a
         nCS0wpeARq+FpmU4UBsLfViQb3U3ItE3RWeXm0xzrRedt09MynzK/ZTMOwlQYioG6N6Y
         rOp0DAiqg3D6k2klVoFwABi3YPxT87YL3pNuz/BWz2McR7wfeYVBbukyBooK1KHIHosE
         XmfC8cz2Q+UvwaniyHNWL9n4JHQ/zrplTaJXcCYh8kbF5GzMKJHet2YCd77hALL4IUFO
         GGiEpN5rINps/COUQ94gSREbBNl789Gw6HLMWmqJsAwzT/ZrTi0YQLkY4pVLCwxiyDwu
         GHXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5L3IkPEuuorgjimeeVdLV8f8kLmqrUdtkGe7AtQ7HnU=;
        b=KoIPYrZ6EKRZuMimAn639eYxSBE6cDwsNYinPYToSFBbqdqhcJykwLjFTL/dDsaPec
         UQnY1QPCUHz9Lnt7XF3HqGBA9IgDqGHEcA5bY0HjQBhIWQxze5iseaXYcaPxj0oCSwgg
         4Rua4ShxItVf5mdD0cvaFL7TrzDUugt4c4YsvMcqNGJQHzhaecTX7/6HKx8nd2irP5DU
         KkOWN8/vhwp4Qy9a9bTEkzf6pYxaGM31v97MA1q27Y07kSKinLaK2xljcN12iVEzeOzh
         CVgmYjVgGtvley2OLTqFco48XMHzNtA9NFBn3BDkjH9eDv84ykAtvo55b4flAmCIKSCc
         YPkA==
X-Gm-Message-State: AMke39mgjNz2FvsRG8AHwZNX1flsmMb6RC+Zxg6COw52IcQc34MX6Ln4tlcAhlvAOfA0iA==
X-Received: by 10.28.59.8 with SMTP id i8mr18547212wma.27.1488900143653;
        Tue, 07 Mar 2017 07:22:23 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK.precis.pub.ro ([141.85.233.105])
        by smtp.gmail.com with ESMTPSA id z70sm420542wrc.2.2017.03.07.07.22.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 07:22:23 -0800 (PST)
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
Subject: [PATCH] staging: bcm2835-camera: Replace ternary operator with min_t macro
Date: Tue,  7 Mar 2017 17:22:03 +0200
Message-Id: <1488900123-3571-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

Use macro min_t to get the minimum of two values for readability.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index c9a68d4..ab85344 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1539,9 +1539,7 @@ static int get_num_cameras(struct vchiq_mmal_instance *instance,
 		pr_info("Failed to get camera info\n");
 	}
 	for (i = 0;
-	     i < (cam_info.num_cameras > num_resolutions ?
-			num_resolutions :
-			cam_info.num_cameras);
+	     i < min_t(unsigned int, cam_info.num_cameras, num_resolutions);
 	     i++) {
 		resolutions[i][0] = cam_info.cameras[i].max_width;
 		resolutions[i][1] = cam_info.cameras[i].max_height;
--
1.9.1


