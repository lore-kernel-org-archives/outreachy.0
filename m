X-GM-THRID: 6392511932367110144
X-Received: by 10.46.76.17 with SMTP id z17mr1948244lja.13.1488467759428;
        Thu, 02 Mar 2017 07:15:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.15.1 with SMTP id 1ls737769ljp.36.gmail; Thu, 02 Mar 2017
 07:15:58 -0800 (PST)
X-Received: by 10.46.92.131 with SMTP id q125mr2024232ljb.15.1488467758831;
        Thu, 02 Mar 2017 07:15:58 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id i76si1757649wmh.1.2017.03.02.07.15.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 07:15:58 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id g10so9878962wrg.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 07:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7Rs7UZTUDLiPba4Rwuze/qvkmoLny9YEWiPq2BMIEUw=;
        b=uxNwIldmf9fs4/mOqJb7GHWt5Im4o/AUZng/dEWPBzFFxM47j3VOJ1mC2ysL4XPTQ2
         anP4NZZ5GuEZgtHMrLEFeF9lllu1KJC9Tw2DTtIHIlouY/sWaDA9LjestZCW36S0IUhQ
         n1cONKp7j4m8QNaFafc4u5LSni0Cvuql4CAO2MZp76S4rM0mwJ6SbZ5cbc+Ltzf/gX9T
         M67cDyvZ6/OOGfevb44cBrviGDREFBeg6zG0KvmMxkrhgY8pqiEQfBdStvwejTeQsKqh
         pGGFmDa2R0yzqtUPPwUkngplN9uYxZvdni5JXr/GIkVr/rEEVcoJmOIzjCqi9BndsO48
         ROnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7Rs7UZTUDLiPba4Rwuze/qvkmoLny9YEWiPq2BMIEUw=;
        b=RaNXehoWKXeferr3EJNhcqvV8NS4lKYZL1uJhEzvN8yOFZ1pqnjnCbc3jl8sFWHGjZ
         bY966mkAf6bU7P1MykjjI+R7Cr4liIE7mQv0rNLxtjCnOHIAF1IVEaKGUNRX6t1aLaU4
         uAG6ib6rVUkklccv72UQRQND3I6N8slUxkIq7kEWW++ePaGPpzuYb8RKnQ649Zgv0ovq
         i31ZGHeJWxsPlHbDPc7BNvUXDVEBwFhpL58ONZh6nr9C0SNyOk/bByH0l40l9zl1amg8
         87ECDeEmpg9WrSLnOVbbok5hC08u6UQruVBVF6ZPXxx73wE8MbX6+yP1rMrqnoVXiOG0
         6sVA==
X-Gm-Message-State: AMke39ndZPDP3OtwWvaIToCokvF+R+LWzOGUbKokUYKn/hMoA7hgovsLTYYElcCOrOQblA==
X-Received: by 10.223.135.163 with SMTP id b32mr13148167wrb.170.1488467758519;
        Thu, 02 Mar 2017 07:15:58 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain ([109.166.128.1])
        by smtp.gmail.com with ESMTPSA id 35sm11150466wrj.4.2017.03.02.07.15.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 07:15:57 -0800 (PST)
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
Subject: [PATCH] staging: vc04_services: bcm2835-camera: Remove unnecessary variable
Date: Thu,  2 Mar 2017 17:15:03 +0200
Message-Id: <1488467703-15980-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

Instead of using the ret variable, return 0 directly

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 9c0667e..7bdde87 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -609,18 +609,16 @@ static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,
 			    struct v4l2_ctrl *ctrl,
 			    const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
 {
-	int ret;
 	struct vchiq_mmal_port *encoder_out;
 
 	dev->capture.encode_bitrate = ctrl->val;
 
 	encoder_out = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
-					    mmal_ctrl->mmal_id,
-					    &ctrl->val, sizeof(ctrl->val));
-	ret = 0;
-	return ret;
+	vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
+				      mmal_ctrl->mmal_id,
+				      &ctrl->val, sizeof(ctrl->val));
+	return 0;
 }
 
 static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
-- 
1.9.1


