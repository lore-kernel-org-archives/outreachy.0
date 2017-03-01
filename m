X-GM-THRID: 6392575837302947840
X-Received: by 10.25.141.85 with SMTP id p82mr988983lfd.8.1488387575074;
        Wed, 01 Mar 2017 08:59:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.65 with SMTP id 1ls474456ljv.35.gmail; Wed, 01 Mar 2017
 08:59:34 -0800 (PST)
X-Received: by 10.25.167.5 with SMTP id q5mr1050452lfe.18.1488387574311;
        Wed, 01 Mar 2017 08:59:34 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id h198si552682wmg.1.2017.03.01.08.59.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 08:59:34 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id n11so856015wma.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 08:59:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kS8z+e4jHXEh78b4G6UzoOtjf3HHCsVgk2nw2I8oe8E=;
        b=BeZiDTs1cVyVPNtHCXD+ObhjgG4Edb2Fuy1p5kIS8tr0kLSRIoWeLZBICyPMCruXAQ
         m+VZ2vaopFl5aOqFZgmeW6GVuzSKmgyVMJyjXg5Sc/i96a66Z/soAgy0RfPAx8K+X/gY
         h6YCbC6NV7EKiL+ny8Pwhj8ci21jLhSA3OTp+uZmpok8pnuI6egAZZXj4oavSQ0/EiIu
         e2gGpcRv6zrTfN53D4dAzZ25VuuaPfnQmL/J7w5v8yJkRonGjc1+U5r87rp4OfEH3Sjk
         4D/8jJx8A4/9M8iWWYYNmO9H1Ps7Bz/waxKBEXkANSWIejhUoKQq+9YhmcMjbo8sjg6f
         2gew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=kS8z+e4jHXEh78b4G6UzoOtjf3HHCsVgk2nw2I8oe8E=;
        b=MebqtVMm+7mgafUx6Zx3bPWIM3V4jTt/63caJVGIafy45GdhGALBD8OntzMmcofVg7
         Ww6sL7qbR0YxsoNDmUw1iUUOUKSBu7Io8BsYyY5dyvFkSzNIsfrI8vS38lgLfP0kXxsD
         Z9CyCaUePRdFlqOHESWOolzGA8qbB1qXA+o+cuG/mBhuIX1sw44qG+YR9zj+RHwUDkLn
         tPkXNkK55Fjs/CV4NJK6UuW6iZHGF+gDafRRAkEP56T5TPeTT+k+4sjzOcj4LC1Umgct
         XT2KNfVk0O3gnD7vmuHAu8BRh98f9bLUc57sosFdzT98tWcBS4YR2EqO+U/pCvj/V9zE
         uCoQ==
X-Gm-Message-State: AMke39nd6DasuAqxi/H9sQNaOuY6pY/Kxt7y3dxzipA3EuRLqNzcYbg5F2tLlUhD79WZBA==
X-Received: by 10.28.21.15 with SMTP id 15mr4163056wmv.11.1488387574143;
        Wed, 01 Mar 2017 08:59:34 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id x1sm7302250wrd.63.2017.03.01.08.59.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 08:59:33 -0800 (PST)
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
Subject: [PATCH 2/2] staging: bcm2835-camera: Add spaces around '<<'
Date: Wed,  1 Mar 2017 18:59:29 +0200
Message-Id: <5e3cadef88edc08495f8bdd4497aa05bb1fd1262.1488387254.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488387254.git.narcisaanamaria12@gmail.com>
References: <cover.1488387254.git.narcisaanamaria12@gmail.com>

This patch fixes the checkpatch.pl issue:
CHECK: spaces preferred around that '<<' (ctx:VxV)

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 9c0667e..341a072 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1271,11 +1271,11 @@ int bm2835_mmal_init_controls(struct bm2835_mmal_dev *dev,
 				 * mismatches.
 				 */
 				int i;
-				mask = 1<<V4L2_SCENE_MODE_NONE;
+				mask = 1 << V4L2_SCENE_MODE_NONE;
 				for (i = 0;
 				     i < ARRAY_SIZE(scene_configs);
 				     i++) {
-					mask |= 1<<scene_configs[i].v4l2_scene;
+					mask |= 1 << scene_configs[i].v4l2_scene;
 				}
 				mask = ~mask;
 			}
-- 
1.9.1


