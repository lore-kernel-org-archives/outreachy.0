X-GM-THRID: 6392511932367110144
X-Received: by 10.46.33.82 with SMTP id h79mr1042100ljh.7.1488372747347;
        Wed, 01 Mar 2017 04:52:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.9 with SMTP id z9ls416529lja.26.gmail; Wed, 01 Mar 2017
 04:52:26 -0800 (PST)
X-Received: by 10.25.79.23 with SMTP id d23mr887865lfb.27.1488372746890;
        Wed, 01 Mar 2017 04:52:26 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id h198si484709wmg.1.2017.03.01.04.52.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 04:52:26 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id u108so1448953wrb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 04:52:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QyvADLPMpaGlWtBmz6zItueiDJV1SbZWTaX7T0MxqJ4=;
        b=tOtXwkF68QLJmHKFzKg2xEgjd6eVuC8ecvQVAXcRM9yAdU2tsnBCikd9VckP6F/r/u
         LknEsAbW5KMYxAD85ZY8RLFs64hs1u6afqcxNAv0h4to6fFOyWtvQyfEumCRi1kKWTTL
         XTTn7nnEL6DB82RU0sDShbCq1no0zsyGc2D2pK+gtE7IqOHgzpjJtmfUdPg/WzH+QmnQ
         2wcaZOOBMV0s6eUqbo2aEs8Nsq5eBNPo/TCoCwCZWHhlbWyKIlmN5CkTFqmhztOpkNPK
         LhZsFQklQb6oAeJSkLQNwwcTb4Sh3/rU4ZanyySI1Xpud/P3yqMD9dMl8i4UYDxQRGrj
         FRAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=QyvADLPMpaGlWtBmz6zItueiDJV1SbZWTaX7T0MxqJ4=;
        b=VU9EmLKLQp1p1yLMqQyNWTGglQSQ9T//gcCPUbilZk161ZjEY0Nb7fd23vwrBiCFst
         QtCSSqIAcuV5etFRegdGys8xqg2Xg6hq6jvgywlTVN+Ah0T8/Jcv6BS1eE+4dT150o1B
         oT5rofJ5v/lZtvO9t7k4GAwYbustJCTYviJIATC3Y2aiTsjwMeJ+Rv8TI+iEran3Ocqm
         w6YCQjEz1Cv3gnVmVYju6C7Zppuq8igI2Q3HoEYbm4dHzFbpvZ8ZwG68loZOBc3phakr
         OhZd4soMrakTVp0w74ddq3LDJf/ohvQ2RwhIyRI0LCNd+IRbTG7gOxZha3ucpk/eTYdx
         TrEg==
X-Gm-Message-State: AMke39l/f8fsrjaOWBZ5J2JeY9OvI0FflBCF/GrSxRZAnleWj3MHyueiOVV83OdcisK04Q==
X-Received: by 10.223.166.5 with SMTP id k5mr6721706wrc.134.1488372746660;
        Wed, 01 Mar 2017 04:52:26 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id w30sm6505001wrb.5.2017.03.01.04.52.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 04:52:26 -0800 (PST)
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
Subject: [PATCH 2/2] staging: vc04_services: bcm2835-camera: Remove unnecessary variable
Date: Wed,  1 Mar 2017 14:52:15 +0200
Message-Id: <c49c187ff219c61323b25f01ab3f051950ae507a.1488371940.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488371940.git.narcisaanamaria12@gmail.com>
References: <cover.1488371940.git.narcisaanamaria12@gmail.com>

Instead of using the ret variable, return 0 directly

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index dcd5bec..e25f1c9 100644
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
@@ -862,7 +860,7 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
 
 		if (scene->exposure_mode == MMAL_PARAM_EXPOSUREMODE_OFF)
 			shutter_speed = dev->manual_shutter_speed;
-		
+
 		exposure_mode = scene->exposure_mode;
 		metering_mode = scene->metering_mode;
 
-- 
1.9.1


