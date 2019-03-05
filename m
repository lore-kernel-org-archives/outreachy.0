X-GM-THRID: 6665038779534802944
X-Received: by 2002:a2e:9a0e:: with SMTP id o14mr50971lji.9.1551825344689;
        Tue, 05 Mar 2019 14:35:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:5f05:: with SMTP id t5ls1864lfb.12.gmail; Tue, 05 Mar
 2019 14:35:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqyBjs4eiNsnJ1Y5+G3FkszeqeshgkktigtCsljuOsaNjTdYKpJ9k7+nl8YGMq7C+4jqmNa1
X-Received: by 2002:a19:dc05:: with SMTP id t5mr255099lfg.0.1551825343859;
        Tue, 05 Mar 2019 14:35:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551825343; cv=none;
        d=google.com; s=arc-20160816;
        b=pJTkXlshwMyRLlP8oPGhLzMAJoLNVBLKyDlsQLjJfdk5bvqhpWuO7hQb37fPASFLeL
         nw3TT1iTa3AaL5Ew/PwuzlmC1HA2QrQ6uXQvCEjr5h6oRsAgw6e87sOx8PPqPey9BDvU
         DBcwKoibvIOECV5fL0nvopDm4G3duaxKxsh9vOuh5SgvaEIoSrKnfWQdcyfHQ6hgI8CJ
         au9m9U8q2xmVFjRMpKnY7zcCwHYTLFXTlCecmAMSETwiRdgcN9bVWnFlJ6FH+xNQP/v3
         zYTx/BAAzTzsW/QAf0V3NHQ8BPrhUlw9E8SasTP+mdsJ16NeCP8DAa+mdoQKNeOs6LUR
         5T8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=80fiocpWBM5fgqI3/T+eWnxV95hy1y5kegbrs926RLg=;
        b=XMt3gEIVu71E5QMK9OrM/63/k3qtN8LJJEokVVIo3732B1fATs9WZwQ7fkHpIvzGNj
         2NSdk4QOtrNdVEuqYm0mUZztrF5DgKgYYaxxdFnpqIvbU2S3LnNXTgj2H0bk2LGnWeAK
         OBHU5Hok+DIM4/9m+XP+AEsr3aqQBgDP7STe1MwDoAh8Ukls5ysXhXw28CxYJeOD4iky
         qefvMPjytFWquaSap9av8IXzWoyhz8F+GXnoQgvM3Nxiq9cIO9C65N+2HCBtcaJrZq96
         lhoO6gVWdS0va6KWTajiDZcI3yZz496GfK5QvJJoo7YBljvUmDAFs/tDvJY00zPHEj3x
         RGsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F4mncqeR;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id h11si577504lfm.3.2019.03.05.14.35.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:35:43 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F4mncqeR;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id x7so4096707wmj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=80fiocpWBM5fgqI3/T+eWnxV95hy1y5kegbrs926RLg=;
        b=F4mncqeRtEJV5yt4KLPj3RJQHrN1eUU4IEnhSamc9I/BRWqROdqAafZs5c9QqGbEIb
         Sna/C2As/ZT/2sl8T3heaWMWkr6LZaANfKRrUhzWUTUYaWq7HDcLrbtDAxv9jbubVAf3
         fu9PXukPQ0PnT0uGG91BWYYLi+tMGFv/TkVkREHZGYBjnMSRg+JGb1UtUbWAsvWfEq/b
         b6/FIhIHIMeco6EziEWkhNfF0K7B0/oCEgfWKF3RpGzyPb6p54ouoPP6w65Nqxx0HyuE
         vo/cYgoOuUaHPlO9jdGyTvhwSwiJmQDiZyX50I/5SwX87GtQhrDji5tG/8a/CbLbxtkh
         eeGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=80fiocpWBM5fgqI3/T+eWnxV95hy1y5kegbrs926RLg=;
        b=p2VF200ik1cmZH2iOpaWM+YK+ZY8QtXiDkEq3OOFAbiZUHyI7yeLWfCVGww83ZuJg3
         SLa1HpUpEGjK7UadbrkL+lcoTEhpoLEUlKQSqwXBNLaF1BBf/XH20gGpPHujcFbToBK/
         lSA7nZUYnyYxOlJq0y4Vv3u4Wpd31E2CjDLDXy1P6XR6Lb9V/RZ019QRU4+wBtCl2wuZ
         Zg2fRuQg9shLMpy6YT6o21zdyY9W9efVaI1d83rK4PLyo5f7YJEVEeXZG96bs8wvY4EP
         15Q/F4Mks/FtA5G80+06HxYF+QWewBLcJOfzfhr4mJ/GbX0fQRQbBe4v2MqTPkunh1pN
         6oLw==
X-Gm-Message-State: APjAAAXOkFzACimhMY18VZzg1QAlkUelUWhWnAG1ToZ1s9CsXXmeMNXE
	eq/FHYZYC/ThKkbOI+hhHIU=
X-Received: by 2002:a1c:9d94:: with SMTP id g142mr433445wme.125.1551825343610;
        Tue, 05 Mar 2019 14:35:43 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id j5sm10572507wrw.59.2019.03.05.14.35.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 14:35:43 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v4 2/2] Fix logical continuations warnings
Date: Wed,  6 Mar 2019 00:35:40 +0200
Message-Id: <1551825340-27788-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551825265-27672-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551825265-27672-1-git-send-email-daniela.mormocea@gmail.com>

Correctly break up lines with boolean operators 
so to avoid checkpatch warning

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


