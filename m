X-GM-THRID: 6665247866619953152
X-Received: by 2002:a1c:7503:: with SMTP id o3mr699254wmc.9.1551874006198;
        Wed, 06 Mar 2019 04:06:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:1b94:: with SMTP id b142ls190780wmb.8.canary-gmail; Wed,
 06 Mar 2019 04:06:45 -0800 (PST)
X-Google-Smtp-Source: APXvYqybs/EZRxbY7LPQzc9k5F2syAp0WOzZZjrJk0B5k70LxZa8wLbchad5NckAEYUg5FH+syhO
X-Received: by 2002:a1c:761a:: with SMTP id r26mr688290wmc.1.1551874005114;
        Wed, 06 Mar 2019 04:06:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551874005; cv=none;
        d=google.com; s=arc-20160816;
        b=KjQMl5V6qI/kJsTgQXYN9Iy1OQnDYXHa2IUg5L3Y4/KDjFznlKCRFzK88mPb3g2ysY
         ypf1MMk5z+oshKfrQc2EUnuuRBSWo6S1DMxSnUh1T96bHn+RPHm5PveTHqrwAq6AsbkJ
         7QX3TQCHz2423HgOgTLryYljAQIp+U/0KashNSrsf9lupoleGY4i/kla1Q8HWd+4QCGs
         odyIi5HhoiKxbuamzEUi+Ee1jJjF4jsA9SNarl+zaUI1VBpvBV4S4fYvfTDQeiCe/Hj/
         DVZXI9JQ+Y6qQRNoKwV1BVT5KIYscn2gVIM5DKnM59XCI9fFPabtLwvHW8XFPglfMxz0
         MNTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=jwqQTDUPB5Uh5Ck2qunEZABmgzeJVYbqnCEjfiXbf6M=;
        b=oSBfNfvy6mkN6kcGFfeTSLFT86ojDJ4uMegYWEJ2gAH1NFzWP0Gguk7Hlx6Rs9SmPU
         I/2OOCOCH3/L9W4LCBMl5fL6HrVkAu5//Ag7l30QJFvVnBzVPmSOXPPoG0W999p1fjml
         l8Bk8yn5aj8sRULju1OE94sqOsj6JLheRrr9EcBPetvNRhCb6Wvt7UipNtTisGd+4VEA
         f3KNAQ+r+/krwrRLmTYpKZ2K8adQTwPO9HY75Sbp2wuvALSzgBn/OscR1pqP5i7D3mQ0
         6s+BvzrI6AS1/a3zD5nb0+ulbdPFVe0e0uzFxeUWOI3hHSvOv63NnHhEVfTnEIP5tx9t
         Wv0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fAAC19C+;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 109si57020wrb.0.2019.03.06.04.06.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 04:06:45 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fAAC19C+;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id w6so13110237wrs.4
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 04:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jwqQTDUPB5Uh5Ck2qunEZABmgzeJVYbqnCEjfiXbf6M=;
        b=fAAC19C+t2+NP+xGav2CbUTGv+JTafXziDmkHWsJkap8/NNM0M3LVyaJ5DCaMDplR7
         xHP2yz78PDKih7JK+ji1U03a65ijFYi0MOf4rJYHdMjS9936UiuPP5v+f9QLdclos8+P
         ozW3/Lsnf7V6HC3cFeT4zhD/WckS/4cI9WjidI4r/CmbhkRg0M4CqV19ARE8H5IhVvle
         lZMyuSt+nEDzTgBq/ba9OHFbfbtADxQ2/u7x4ogGnL4CPZe5sNdOBw0NeVMLAFH8ToFE
         rJur+nYKj251hG1euIblFHZcUmxYjLAsOinLyV5X4bTIt/LVXUviHn/KyTUaM3KC8U7X
         GfgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=jwqQTDUPB5Uh5Ck2qunEZABmgzeJVYbqnCEjfiXbf6M=;
        b=q7hwu51aTDTgOc99WlS7n0xcNOVMLRxLao7dn1SaMIcTzGSoXdHJMI4ZHib/JdIZ2A
         G+zs95hp+CN3OvecRLcZpMoCA2IhLmgk6cTE/K5gBP+Mvh0VFZCGFn2NW2Qj/oIFTsEy
         8+5parR6D+QKqs4Dyt8zf4O/hMLiev4mxakOXkJpB1BhQ2MMG6SbAO+15gmZE+8h1lL9
         g76YwQ5gu/P1KxHMmBqBvm64x/CI5jylK4gJovycMD/3sfuSSY3PYSKIXEfjKtbHM/Oj
         wb5nIWG2LtcEfMla4BOdVwYY4vBB/30jM+dh5gK0wrSodIKpundszi7iAyt9G0f0xV8E
         5aHw==
X-Gm-Message-State: APjAAAV6x7nworJw6iLbxoU5+WkCAiL5Uk4nivmdXH/ctbasooZ/Dh67
	qSOQ3yCL3f+8k7zgdmBCacqnfKS8d6w=
X-Received: by 2002:adf:c082:: with SMTP id d2mr2701317wrf.55.1551874004716;
        Wed, 06 Mar 2019 04:06:44 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.103])
        by smtp.gmail.com with ESMTPSA id b17sm2064956wrt.39.2019.03.06.04.06.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Mar 2019 04:06:44 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v6 2/2] staging: vc04_services: bcm2835-camera: Fix logical continuations warnings
Date: Wed,  6 Mar 2019 14:06:40 +0200
Message-Id: <1551874000-31826-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551873943-31719-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551873943-31719-1-git-send-email-daniela.mormocea@gmail.com>

Break up lines after boolean operator

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---

Changes in v6:
-add driver name in all the patches from the series

Changes in v5:
-add changes in cover letter

Changes in v4:
-add driver name in subject

Changes in v3:
-add cover-letter to patch series

Changes in v2:
-make these a patch series 

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


