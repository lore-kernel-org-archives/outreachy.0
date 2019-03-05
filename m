X-GM-THRID: 6665038779534802944
X-Received: by 2002:a19:da19:: with SMTP id r25mr254653lfg.4.1551825318476;
        Tue, 05 Mar 2019 14:35:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4d0:: with SMTP id a77ls2586128ljf.1.gmail; Tue, 05 Mar
 2019 14:35:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqw3yu4wOACWWSP8pNJwnzWNALDpYFO/3erozpA5KASsC6kLQG7p3ymK5gghMf21yRVRZ9Bp
X-Received: by 2002:a2e:9ac9:: with SMTP id p9mr51592ljj.13.1551825317575;
        Tue, 05 Mar 2019 14:35:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551825317; cv=none;
        d=google.com; s=arc-20160816;
        b=zoB80UbHWRdtiBkuJOelqcHFzIDUXKhgFovUA2uP7I3gGry5uoMQyhRR439keKOQDa
         AiBkgRHKClXNxQPsSraxN2k8BvUKan5jakjla6C2sENqId9g8b1vOy+RCqNsSAeLXwrP
         3Jm/LB7hugetmOB+ED4gviG3Aa77UooRAYUUii05F7g4mOkgtZP7oT3y0HfFuVhKFCTx
         BN7D37ybmaSWVKGZN/0/pC+tVDFea+kim0bFw21u0KB1EJPa4dXCezWBzEVJwmXh1Xw8
         GUcczczVQB10kVbYUneyRvqPMyOKsKPq8LsH6BvGsbwpIqReOcjNBOhvDXEPIE5OB35P
         XxcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=TyNgq0LYUsHmfCsYXDbUMw0cRIsXk3NucoZ0vnDbpmg=;
        b=TOdplt6N4u/4HPaVxKWnoWGgZsbElLi47v3s7lOwRUad/HY1zRFAhwnR7S7fQ13S/P
         0hhjHMra2QPwk8n50DFnxNxy8G1eIZfeM1Z5Pgw1z3qpiUNjVe0qOK47IFIcvKKUvJba
         ZTcPc1Jnkwsv5u6aXuVKR/1vHdtWCxLmI2/Yy0ZOruEK/toA9nnablXfSHTL6SwTCAsC
         DdIQMo4wN1bgOdngyYMGRW3Se1wfz1siGcLWLlAjU5P/Tsn5OynOavuTQnkKO4P+34W3
         vq4GSQNUdGoiDx50hgVh9B13N4BkUiNW01l2m03vCVI9P3SV04EYZClYAO+fv5S6BxzL
         UpbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=il9JF5iz;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id h11si577504lfm.3.2019.03.05.14.35.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:35:17 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=il9JF5iz;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id x7so4096707wmj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TyNgq0LYUsHmfCsYXDbUMw0cRIsXk3NucoZ0vnDbpmg=;
        b=il9JF5izwdf8oni9mrfVv1AFsPT5nsVRZE+8kOWH4Ny5Tn5VrfPeYMXtFkHr/Kmh8r
         1SDrH9J475fjQU713lyv2ms00UOSzhxifcnphHJxqYwWldaQJzPsykZPIOjDfiDDnBu0
         8a/IaREl9kT330hsGXePey+JWRp+V74+yE66Cqx3DZeFxANs+6stc5htsGNw8RuMR6o9
         i9IFTX8a0f0VK0MunsRbUi6X294Wr7UdVBkIRXyROQ0H6m8lyY8MLzWJ65BcPHZlXfl2
         RxnDWecyLOC/uwJLuLpbfHUSF2HZhL4EfO3Phn/FE8CH8UX8vz9yrOBx4KF1iZKOiSc0
         y3rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=TyNgq0LYUsHmfCsYXDbUMw0cRIsXk3NucoZ0vnDbpmg=;
        b=q3oF/8bofck4J3wVzQKza6L/0wh0OkBDapbEaTnvxTX/FRpcIfWYCdhy1d6uMvjL8n
         s2BZdxGwJvZfKpSkA8I4KC/3HPmaWE4+KsnMwslg1MdFDCtjaVI1u16gNem5rzLM+XuB
         az0AOCugWUjvav3nkFDHveTSALbPw8l75Q1nj1xE6et+u1wnPmFSXojEgDs9o939kmp8
         rj3eZ/tLOlzuNTvpxhueuOR8H0nzphMNFn+eUOxxvQkoOpWtO0OjAbuz0wMTjAUJWUSv
         vIHZgWyzhAC6GtYdEdoXL2qnFRGPKDGfW0jZX19XCCX3UGrDA85LWd+p3zJct1z2bdae
         DYAg==
X-Gm-Message-State: APjAAAX9Rek2/HEBl58cswPq1H/x93BkYaRJgJgNOktzsGAXboCHlv/I
	XCsry+XUA1pEIqO3mv8no70=
X-Received: by 2002:a1c:6c0c:: with SMTP id h12mr458798wmc.35.1551825317212;
        Tue, 05 Mar 2019 14:35:17 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id c15sm7358305wrv.69.2019.03.05.14.35.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 14:35:16 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v4 1/2] Fix multiple line dereference
Date: Wed,  6 Mar 2019 00:35:14 +0200
Message-Id: <1551825314-27736-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551825265-27672-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551825265-27672-1-git-send-email-daniela.mormocea@gmail.com>

Fix multiple line dereference to avoid checkpatch warnings

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 39 ++++++++--------------
 1 file changed, 13 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 611a6ee..e71738a 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -312,8 +312,7 @@ static void buffer_cleanup(struct vb2_buffer *vb)
 static inline bool is_capturing(struct bm2835_mmal_dev *dev)
 {
 	return dev->capture.camera_port ==
-	    &dev->
-	    component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
+	    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
 }
 
 static void buffer_cb(struct vchiq_mmal_instance *instance,
@@ -751,8 +750,7 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)
 		return 0;	/* already in requested state */
 
 	src =
-	    &dev->component[MMAL_COMPONENT_CAMERA]->
-	    output[MMAL_CAMERA_PORT_PREVIEW];
+	    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_PREVIEW];
 
 	if (!on) {
 		/* disconnect preview ports and disable component */
@@ -807,8 +805,7 @@ static int vidioc_g_fbuf(struct file *file, void *fh,
 	 */
 	struct bm2835_mmal_dev *dev = video_drvdata(file);
 	struct vchiq_mmal_port *preview_port =
-		    &dev->component[MMAL_COMPONENT_CAMERA]->
-		    output[MMAL_CAMERA_PORT_PREVIEW];
+		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_PREVIEW];
 
 	a->capability = V4L2_FBUF_CAP_EXTERNOVERLAY |
 			V4L2_FBUF_CAP_GLOBAL_ALPHA;
@@ -1000,8 +997,7 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 					       dev->capture.camera_port, NULL);
 		dev->capture.camera_port = NULL;
 		ret = vchiq_mmal_component_disable(dev->instance,
-						   dev->capture.
-						   encode_component);
+						   dev->capture.encode_component);
 		if (ret)
 			v4l2_err(&dev->v4l2_dev,
 				 "Failed to disable encode component %d\n",
@@ -1016,26 +1012,22 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 		if (f->fmt.pix.width <= max_video_width
 		    && f->fmt.pix.height <= max_video_height)
 			camera_port = port =
-			    &dev->component[MMAL_COMPONENT_CAMERA]->
-			    output[MMAL_CAMERA_PORT_VIDEO];
+			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
 		else
 			camera_port = port =
-			    &dev->component[MMAL_COMPONENT_CAMERA]->
-			    output[MMAL_CAMERA_PORT_CAPTURE];
+			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
 		break;
 	case MMAL_COMPONENT_IMAGE_ENCODE:
 		encode_component = dev->component[MMAL_COMPONENT_IMAGE_ENCODE];
 		port = &dev->component[MMAL_COMPONENT_IMAGE_ENCODE]->output[0];
 		camera_port =
-		    &dev->component[MMAL_COMPONENT_CAMERA]->
-		    output[MMAL_CAMERA_PORT_CAPTURE];
+		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
 		break;
 	case MMAL_COMPONENT_VIDEO_ENCODE:
 		encode_component = dev->component[MMAL_COMPONENT_VIDEO_ENCODE];
 		port = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];
 		camera_port =
-		    &dev->component[MMAL_COMPONENT_CAMERA]->
-		    output[MMAL_CAMERA_PORT_VIDEO];
+		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
 		break;
 	default:
 		break;
@@ -1077,13 +1069,11 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 
 	if (!ret
 	    && camera_port ==
-	    &dev->component[MMAL_COMPONENT_CAMERA]->
-	    output[MMAL_CAMERA_PORT_VIDEO]) {
+	    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO]) {
 		bool overlay_enabled =
 		    !!dev->component[MMAL_COMPONENT_PREVIEW]->enabled;
 		struct vchiq_mmal_port *preview_port =
-		    &dev->component[MMAL_COMPONENT_CAMERA]->
-		    output[MMAL_CAMERA_PORT_PREVIEW];
+		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_PREVIEW];
 		/* Preview and encode ports need to match on resolution */
 		if (overlay_enabled) {
 			/* Need to disable the overlay before we can update
@@ -1677,8 +1667,7 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 
 	/* get the video encoder component ready */
 	ret = vchiq_mmal_component_init(dev->instance, "ril.video_encode",
-					&dev->
-					component[MMAL_COMPONENT_VIDEO_ENCODE]);
+					&dev->component[MMAL_COMPONENT_VIDEO_ENCODE]);
 	if (ret < 0)
 		goto unreg_image_encoder;
 
@@ -1801,12 +1790,10 @@ static void bcm2835_cleanup_instance(struct bm2835_mmal_dev *dev)
 				     dev->component[MMAL_COMPONENT_CAMERA]);
 
 	vchiq_mmal_component_finalise(dev->instance,
-				      dev->
-				      component[MMAL_COMPONENT_VIDEO_ENCODE]);
+				      dev->component[MMAL_COMPONENT_VIDEO_ENCODE]);
 
 	vchiq_mmal_component_finalise(dev->instance,
-				      dev->
-				      component[MMAL_COMPONENT_IMAGE_ENCODE]);
+				      dev->component[MMAL_COMPONENT_IMAGE_ENCODE]);
 
 	vchiq_mmal_component_finalise(dev->instance,
 				      dev->component[MMAL_COMPONENT_PREVIEW]);
-- 
2.7.4


