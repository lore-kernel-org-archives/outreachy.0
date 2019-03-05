X-GM-THRID: 6664972943325396992
X-Received: by 2002:adf:8121:: with SMTP id 30mr9522wrm.22.1551810077391;
        Tue, 05 Mar 2019 10:21:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:e142:: with SMTP id y63ls454133wmg.7.canary-gmail; Tue,
 05 Mar 2019 10:21:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqz2pmEw0KfIt1MbMeFJAQSvXwHh6HOVuj7977ANxpRSBtvKDeuzLckSqii9Wf1+Z4q8jrPU
X-Received: by 2002:a7b:c18d:: with SMTP id y13mr446297wmi.2.1551810076601;
        Tue, 05 Mar 2019 10:21:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551810076; cv=none;
        d=google.com; s=arc-20160816;
        b=BsqCiLf+/T2stfiaM19ROfKnDUJhjz0o0EiWN56cmuSNlM//5AfHQfwpB54KU+Bd2S
         1c1nP31ccVlSEkbwcVUnM85ej7C00k7fChnL83969RHa6XUW+QX4EjMk9S35jpUpkiWs
         t7HjLvNDHKpd/GGAfWXlsAKQy9koemwtI2RegkKRbuszbElTsICWfG++LsS9U5K1pe53
         OEqO90tCMZBNOr8Lgt/KxCQnUnoxB19BK6vB4VaYJCsbqCMAFGpL1312IM0VIUDSKxO5
         goVops2bRMNowrg3m9Tw1nAvQebNkmwJhLdF43K94ahdcW5nbF9LNKfTUZYzJi3s6E0Y
         /iKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=U8SFxVCid0WL/uQLCyzuplmWq6bhc/t7CQgskirAYUw=;
        b=jChF7SOMgwQyR6AW7GRB2j/t4YU0mXohW6Kp7pf7s/lDAByf4HeJsrE0uLyUf4hiim
         SoKP9eDqkLGqysA6xAy5gDrT0vb8ziFPH1Xavfa+eKgI7mue5FPXCmrmzAmwTSaOySOG
         KXcJNBVsS7B0cQzLJzO+SbBXT33tW6LZmz0kqwAAMOQhwMDYtzr7Zkc3gFtdg5dplOXg
         Kkm2kKqTdle1XPLkk/C2Ss3aVeCNL+6WvrPVxGJH1mRzDnKOotwfQW2dWxh14MosmWKk
         DSaxbXPAapQdXORC2aSzNRwWJWQv9p0flG0+OU7Z5qZBo2q/rUciUpJqQIorA51y8oyR
         Lj9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oq5w62om;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id f2si504989wrq.5.2019.03.05.10.21.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 10:21:16 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oq5w62om;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id d17so10555932wre.10
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 10:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=U8SFxVCid0WL/uQLCyzuplmWq6bhc/t7CQgskirAYUw=;
        b=oq5w62omC16eDHRX3bvIP9E3dqJmeboaFLa/9ss2R8BDjmaltsZxz+JZQReZc5g7Ox
         Os6J8M01GPZoUkHmH6olC6djAUfqDGUf88ql+cMyrOcUnlveXaJ4MXIKldupcWiqHccL
         PiIYrh5dWxhgfbE1T+uuJSL3O7Ht1QcAhH3RMeCZWqsa8j5Vks6HLmb+8w4BaDPeAJUa
         nayFSkIe3ZDEl5klHz3N2rq5xFwFOOZ48/BeQrzFlJsz1XY0EOmgsMjQRIKh7RNUKivM
         JwmR/W3+Sjuk4SC2csLUhbFqXr7dS0WOR5EFO3jjq/wSnTMJ+vGlKd13CUe0n4V2B4FZ
         Yklg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=U8SFxVCid0WL/uQLCyzuplmWq6bhc/t7CQgskirAYUw=;
        b=TQljfn7Zi8cBfQWLwufQI9ia+mvTh9oN6wr6W8f+O5GtXBHdjfGval9ndSvxK6ONi3
         5Twcqt3JMGkvfpvayo71GZeKZUOgVkT6M6hSb2Fw0bwnL/4a8WC4yV7mU+FrStDcFk70
         AprDg6PMo/Sj+RNBCSrZU2PG2yIZ3yaiemRDNLLwTJo6u5tHOyHdV/wPeuvikQ3NJ8QQ
         9SWE6mBFWt2X1vGbNBJBet3K3U8fR09bHZoL4vC07vB9ACglEGwOY51ZvIszsoufn9vY
         m9fEZhnOPaZNElO9bHn/n75CzjqaCnfsSzcoo73R5GC95EUj+boW4gS3Vdsfc+DXS+Zw
         2i0g==
X-Gm-Message-State: APjAAAUWe4LKjINkaGAyDzJqWqLHoZcxhFK2v0ap5BwVCMT0A+aMb9VR
	OCJ120DwfxAqpeyajuLEajk=
X-Received: by 2002:adf:ce90:: with SMTP id r16mr175193wrn.64.1551810076199;
        Tue, 05 Mar 2019 10:21:16 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([93.122.165.106])
        by smtp.gmail.com with ESMTPSA id f13sm136971wmj.29.2019.03.05.10.21.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 10:21:15 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v3 2/2] Fix logical continuations warnings
Date: Tue,  5 Mar 2019 20:21:12 +0200
Message-Id: <1551810072-27010-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551809936-26809-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551809936-26809-1-git-send-email-daniela.mormocea@gmail.com>

Fix boolean operators break in the right place

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 .../staging/vc04_services/bcm2835-camera/bcm2835-camera.c    | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index e71738a..d22b928 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -512,8 +512,8 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)
 		msleep(300);
 
 	/* enable the connection from camera to encoder (if applicable) */
-	if (dev->capture.camera_port != dev->capture.port
-	    && dev->capture.camera_port) {
+	if (dev->capture.camera_port != dev->capture.port &&
+	    dev->capture.camera_port) {
 		ret = vchiq_mmal_port_enable(dev->instance,
 					     dev->capture.camera_port, NULL);
 		if (ret) {
@@ -1009,8 +1009,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 	switch (mfmt->mmal_component) {
 	case MMAL_COMPONENT_CAMERA:
 		/* Make a further decision on port based on resolution */
-		if (f->fmt.pix.width <= max_video_width
-		    && f->fmt.pix.height <= max_video_height)
+		if (f->fmt.pix.width <= max_video_width &&
+		    f->fmt.pix.height <= max_video_height)
 			camera_port = port =
 			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
 		else
@@ -1067,8 +1067,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 
 	ret = vchiq_mmal_port_set_format(dev->instance, camera_port);
 
-	if (!ret
-	    && camera_port ==
+	if (!ret &&
+	    camera_port ==
 	    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO]) {
 		bool overlay_enabled =
 		    !!dev->component[MMAL_COMPONENT_PREVIEW]->enabled;
-- 
2.7.4


