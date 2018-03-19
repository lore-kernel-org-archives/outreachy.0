X-GM-THRID: 6532877789444440064
X-Received: by 2002:a9d:5263:: with SMTP id q35-v6mr5574612otg.55.1521468814831;
        Mon, 19 Mar 2018 07:13:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3137:: with SMTP id e52-v6ls6761515otc.7.gmail; Mon, 19
 Mar 2018 07:13:33 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvrtrg633xTuItBPRbVPBAYQS2eYUs9+k4Uo3NNX10Ne1DtGza5i2p0y/wNUBOGDNHy2iaZ
X-Received: by 2002:a9d:3c4e:: with SMTP id j14-v6mr5307682ote.57.1521468813791;
        Mon, 19 Mar 2018 07:13:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521468813; cv=none;
        d=google.com; s=arc-20160816;
        b=rA2wo7UwqbjWeVKCuLSTER5uH1v5VdZjOewkC+WoVqGMEDYIftd8e2OsMRUL5DV6xt
         vunr/e+UeEE6nw+FuSBmLPto0+q9qP12hANi1ojU7xdN9Id9YQ/loS6nwZpRiXCR0cNf
         6EJY1kJBLrWu3ifobnmwTS70b3Ttbj7HOuZfUQf56xdyQPVQaOsLPtoi5Q+R2d6WrP9f
         FqVDZqJweCPtySPN9at3ugwQrhvfiJJl43Y+VC+balvwCqJQXrpMquwpiAECRmyjDOXC
         Hzh+EJ5a7ZpH+y+PuNobVZukNJvKTXJ3XK6QNa7m/gzlH/jfQkeJfqmiKh+1q//Quc8s
         AuKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Qr3Z52tnNfX/5t997b8PvL6ciSRz3Ih0EWd/wJgSAgI=;
        b=WmJjQmArpHkvRnVAcOZGxDR6NqpVb6STq8WHItVQNxfB3YILmmEes97WImGhlO4UV8
         6glbLEfLGBqKLLIAn+WaHAqqmjtmNN/wkbkfq4YPIWuXO3mh2w93yS/oF700o6wKQfHO
         MQehhlJZtakkmz7eKF9z4XpttH1yDHEx1/8rhEoMIBZEJPNGAlw3J+U2Bq3NgowARiCk
         U+Rq3cotrWPhkpQI2XfLD04yyuHjtyJdbvePiAsIwUyznoldq3JA3QN3X1GO4+1y6FPz
         2hrADeZIF/HjE1DGO5N57rbzwcGJ7eKF81BofxFXNCZXbOBysskrx1NUj5MXWMXeVlP6
         DcoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=WCw5upDS;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id v40-v6si3944ote.5.2018.03.19.07.13.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 07:13:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=WCw5upDS;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x22d.google.com with SMTP id j20so7066169pfi.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Mar 2018 07:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=Qr3Z52tnNfX/5t997b8PvL6ciSRz3Ih0EWd/wJgSAgI=;
        b=WCw5upDSYtjLwqKT8Hs2M3HIOCf4Hq7wKGBZTllcCpdTLe6MvtYiPxesVbrXQFIzDk
         FGM8wYQHFNqYHhB6IFkQSnh6f6yCfGXpmf0+vl39kwkoAq0rbfNCeMbAIx/OfSbccHYU
         V19qfsRzqVbVamyRJEonZa4A/gR3kHvETpR5E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Qr3Z52tnNfX/5t997b8PvL6ciSRz3Ih0EWd/wJgSAgI=;
        b=hWfneZ/4hGYD8pvJ9ccw+rtbV54kl0rnEe7DG92zm1INnnxFYybKibqcYXt4iiilak
         402u8XdS052lMuBkQJoJcde/2vseRfipp4roxiZZxWu4fV1Fg0VbhjJ+CpWgoLy7Ayuu
         kTR4mSKOmwz/hetXDtBWW2YaZqRAUMOZKIiWwvZuP5F4qgjvRzv6MqZZBKqY+EAkLxFd
         STDo31la8jZKaEaWKOJmfoWrqDFLJG7H4Xluaqi9mLiTuA09hxs/39S1U+HzaOZbm3lm
         oqqfw6ESA+eWE136zOtdUE+1U0HHG9+90tDRryzHYyVZliNDFspQ+YNNJYnXZcoAAHmy
         2tFg==
X-Gm-Message-State: AElRT7GGk8H1E5wPEUxd1uXFzz5Rv0YKXF1TRFkloriIFuL03oF/c3kQ
	UMbQmPeDQgRyZfnw+G4nfBVdGrus
X-Received: by 10.99.141.200 with SMTP id z191mr9184420pgd.418.1521468813383;
        Mon, 19 Mar 2018 07:13:33 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id y1sm201693pge.78.2018.03.19.07.13.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Mar 2018 07:13:32 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging:vc04_services:bcm2835-camera:Fix multiple line dereference
Date: Mon, 19 Mar 2018 14:13:20 +0000
Message-Id: <1521468800-28333-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Fix multiple line dereference. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index bae7f2e..6f92823 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1196,6 +1196,7 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
 	int ret;
 	int mcc = MMAL_COMPONENT_CAMERA;
 	int mcpp = MMAL_CAMERA_PORT_PREVIEW;
+	int mcpv = MMAL_CAMERA_PORT_VIDEO;
 
 	if ((dev->exposure_mode_active != MMAL_PARAM_EXPOSUREMODE_OFF) &&
 	    (dev->exp_auto_priority)) {
@@ -1226,8 +1227,7 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
 					    MMAL_PARAMETER_FPS_RANGE,
 					    &fps_range, sizeof(fps_range));
 	ret += vchiq_mmal_port_parameter_set(dev->instance,
-					     &dev->component[MMAL_COMPONENT_CAMERA]->
-					     output[MMAL_CAMERA_PORT_VIDEO],
+					     &dev->component[mcc]->output[mcpv],
 					     MMAL_PARAMETER_FPS_RANGE,
 					     &fps_range, sizeof(fps_range));
 	ret += vchiq_mmal_port_parameter_set(dev->instance,
-- 
2.7.4


