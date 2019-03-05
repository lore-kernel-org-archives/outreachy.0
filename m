X-GM-THRID: 6665043213885112320
X-Received: by 2002:a17:906:350e:: with SMTP id r14mr401579eja.10.1551826355530;
        Tue, 05 Mar 2019 14:52:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:8863:: with SMTP id c32ls6145507edc.2.gmail; Tue, 05 Mar
 2019 14:52:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqwVGw3AO6JdH1aUoGUkjBB1xTnbdaRsMy6okKG6qYwgdHBl6emBzOWKeBPY26TEuRrlb7C1
X-Received: by 2002:aa7:c6c9:: with SMTP id b9mr3700260eds.7.1551826354638;
        Tue, 05 Mar 2019 14:52:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551826354; cv=none;
        d=google.com; s=arc-20160816;
        b=vO8C1YBQmBRQ/nsTW/glsF1/D0dpM2Gu+1n1h9T6+IlNVofFC62Syx+MTJaFvOdhBD
         1oV43JKBY8Elaj/rH4G6MZ5Z00Dz0OcPNSISMfhsUHdIaFLFjLSRPBYnFTv9B2Tfusmq
         8YKWarNg15Bc9sfGgAhTtiXiqisNwwALG5ve8MItsxesUTxW6uZ6MZAE5kPj2kWfL8/E
         /Y3Fcb+mbGXsnom9/KWs6cdbglVhA2imyo0ESNkWduTJFjdar7XN73ltsL3PxP4PpX5U
         dE8Hl5gvUjylFcH00l4UEtYhjTDxjtECKVN4FgMQSsEV7GiAJiSnT91lj8mJ4Im0TFCT
         ZelQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=CYzE9vLlXB/61NpQGom7Lq3Dv+CiJLSqsOQ1Gi1MafM=;
        b=J2HAXJwulyjFOWbFbLUDs4zeIhNLBnMIPUR02lcBLzszhIWq08Rw7o91qbS13bGhuA
         scP7iRhYhP9b8KTUY2HG51SBC9KMFxGGHK9wskDpKuGCyz6PtyLLodaKlnf1yAuCz2+W
         4zADwj5UuPlszVtrqROzHJtTFtZKwQxqmMn2EASajuOAWLpxX/s5X+khBWC60cNalBb0
         MABX2zOf4eeA2Sqm3BCbAjlB48j9FM42SqKJLBr3qv7VGepQ7sbgHp5tY0PzS28Ipr/z
         MochKr1yXx99ZtIARIFkKxl5UnB2gkuAt3Je4VmUsG301HpXsmaL7zc4RVhribRrj5lK
         kuNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EQhqNiBP;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id c7si2920ejx.1.2019.03.05.14.52.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:52:34 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EQhqNiBP;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id d17so11259252wre.10
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:52:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CYzE9vLlXB/61NpQGom7Lq3Dv+CiJLSqsOQ1Gi1MafM=;
        b=EQhqNiBPmGHDQLZhesgNQXb1BsHTlP9aYYzqDa2XZb2QMg07HLEm0QiJqN+Fv3fowY
         rDaGH2fGM39HpFTwjgD7wpvpSInYAJCy7oeS22cBIXIBCBgZkilrlOtUF9t+hKRcrZuh
         iDafD9WGWYg3cNZKE7QdTTS68tbb3MQwWnPjNV/CHuXa+mMRBub9YgkTrODP3BHAKP3L
         1oZYvKje063I1msBxEwrohozQme0kCi6D5sJj8YjlTIN21MzVQ70OwhdoE0fbleV3gh/
         ajXiPXkcvdc2cpgadiQw3JeYEkwWjfntOT9pk9dBjN0x96isv5l5S85Asv98CAUGISIG
         78Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CYzE9vLlXB/61NpQGom7Lq3Dv+CiJLSqsOQ1Gi1MafM=;
        b=cZKEN0ba44TfWDL+AAmqbNZ3/EweCPQBDiqa9KZDh2loaZmEfZeRqbupXCtbNOm95g
         KubXSbnxcf0VaKzKuxP2TdPIBIqBObicUiDyhmdwLfMlYpeqyjLVw01aSs+xwMoQREHX
         hL9i6aWcKhNbWSIbjWrlUp03bc0a2YcfFaaprBjdjAhGPHHrPocP+Z/YKujs6dOBnU2B
         B7NiazB1TZAXWpJhxn7NYbBuskFitDDvsB2V++9jDptHiZOZf+ciGzHGVGSwXp4N4SQb
         DcefPAe5wOXayuFrZwfouJ6ClE1qZztnfTZsYJmtlhBS2pHJzqnupYLqS0hJyRfD0i2A
         jA5Q==
X-Gm-Message-State: APjAAAXdjiqSTW3S3km4V3HaAVAeQRYbhQSzG3jS/TllRb8MLcsRzQNr
	o3D4BrzSIga/faoLpWMy/NEc+0t4
X-Received: by 2002:adf:c3c5:: with SMTP id d5mr721699wrg.308.1551826354312;
        Tue, 05 Mar 2019 14:52:34 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id v6sm99483wme.24.2019.03.05.14.52.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 14:52:33 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v5 2/2] Fix logical continuations warnings
Date: Wed,  6 Mar 2019 00:52:31 +0200
Message-Id: <1551826351-28120-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551826297-28015-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551826297-28015-1-git-send-email-daniela.mormocea@gmail.com>

Fix boolean operators break in the right place

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---

Changes in v5:
-add driver name in all the patches from the series

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


