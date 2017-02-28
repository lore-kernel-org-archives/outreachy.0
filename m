X-GM-THRID: 6392118133032747008
X-Received: by 10.129.73.1 with SMTP id w1mr573766ywa.106.1488280979374;
        Tue, 28 Feb 2017 03:22:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.41 with SMTP id n41ls313645ioe.33.gmail; Tue, 28 Feb
 2017 03:22:58 -0800 (PST)
X-Received: by 10.99.37.5 with SMTP id l5mr558238pgl.165.1488280978744;
        Tue, 28 Feb 2017 03:22:58 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h79si255774pfh.2.2017.02.28.03.22.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 03:22:58 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x66so1003880pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 03:22:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TgqJPWiHsaGzacqcsvee1LNHFPBO8+uH134V+OAv0xA=;
        b=D6TybcX2H578nufVSW37DkXOi6Qw9Inm/TaFp+8qMOBKdaxJh57X9BjWb/9GP2Uixy
         3J2xptPb8cnhyISCvmXrh7jFrMlZHW7lFccQsYGnMOeWO+xnJMXPfS5RqV6Hs/NTSboD
         qLPz6PalwHgilVA8D4rTTaKJ0LjXisOZKvWH4HAb/nkmgLH3TUIRhykmujIXMvbOZM92
         N7Maj2ocSNmLuxbeSpRuPC6kpjw6YXvQ3ZRLazyCTYk91FKODN2R5zLJfVY9lxIzKXmo
         FwL5iCU45CoVhM4q1Tug4wx2F8hOk72M9P1RUZ5+oT54ZaaiDQRvh5Br5+3/ppsIlxKr
         4cig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TgqJPWiHsaGzacqcsvee1LNHFPBO8+uH134V+OAv0xA=;
        b=CRvtVXgBVCZe8aZtiliVELZ8jlVQhmUOpz/Mrv9Su77iBOeKA+VXCe3ZDA0XYodmkY
         I2YVB5EDrsslwxs5y6ZyL6WpDSy8wHrWw7Q78mFq6owUMyK2OkClHsOhl8bNxcT5WiLf
         JbYpWnyDHX++BaevOZK7B9P5UFoIRBk8/1AyW+S6Tfx+tu/2okXiy2qHNo2AVLCGc+RH
         VmD1z3PBHqUsYqwps1UtAwge1yM98sCqQBFdYW6PH6A6kmNHhYjhCFEFardniV7aEs4k
         YhX7fcUwrnkHtfrZCNP2uRu/BtZtxfb/RfaPd6isxleZXEp5n6ZKHSM/cQ2aHq0S0nx2
         +cDw==
X-Gm-Message-State: AMke39kvNWWVUDXQRsS2Ikonx3FP81nXZvD21byp2+JrroGV+HKIw2iU9xblZ/52ru/OLQ==
X-Received: by 10.98.155.149 with SMTP id e21mr2057541pfk.24.1488280978351;
        Tue, 28 Feb 2017 03:22:58 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id 80sm3702816pgd.39.2017.02.28.03.22.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 03:22:57 -0800 (PST)
Date: Tue, 28 Feb 2017 16:52:50 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vc04_services: bcm2835-camera: Simplify NULL
 comparisons
Message-ID: <20170228112250.GA10536@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove instances of explicit NULL comparisons in bcm2835-camera driver
for code compaction.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 .../staging/vc04_services/bcm2835-camera/bcm2835-camera.c  | 14 +++++++-------
 .../staging/vc04_services/bcm2835-camera/bcm2835-camera.h  |  4 ++--
 drivers/staging/vc04_services/bcm2835-camera/controls.c    |  4 +---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c  | 12 ++++++------
 4 files changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index c4dad30..1baeef4 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -250,7 +250,7 @@ static int queue_setup(struct vb2_queue *vq,
 	unsigned long size;
 
 	/* refuse queue setup if port is not configured */
-	if (dev->capture.port == NULL) {
+	if (!dev->capture.port) {
 		v4l2_err(&dev->v4l2_dev,
 			 "%s: capture port not configured\n", __func__);
 		return -EINVAL;
@@ -289,8 +289,8 @@ static int buffer_prepare(struct vb2_buffer *vb)
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "%s: dev:%p\n",
 		 __func__, dev);
 
-	BUG_ON(dev->capture.port == NULL);
-	BUG_ON(dev->capture.fmt == NULL);
+	BUG_ON(!dev->capture.port);
+	BUG_ON(!dev->capture.fmt);
 
 	size = dev->capture.stride * dev->capture.height;
 	if (vb2_plane_size(vb, 0) < size) {
@@ -324,14 +324,14 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 
 	if (status != 0) {
 		/* error in transfer */
-		if (buf != NULL) {
+		if (buf) {
 			/* there was a buffer with the error so return it */
 			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 		}
 		return;
 	} else if (length == 0) {
 		/* stream ended */
-		if (buf != NULL) {
+		if (buf) {
 			/* this should only ever happen if the port is
 			 * disabled and there are buffers still queued
 			 */
@@ -513,7 +513,7 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)
 		 __func__, dev);
 
 	/* ensure a format has actually been set */
-	if (dev->capture.port == NULL)
+	if (!dev->capture.port)
 		return -EINVAL;
 
 	if (enable_camera(dev) < 0) {
@@ -604,7 +604,7 @@ static void stop_streaming(struct vb2_queue *vq)
 	dev->capture.frame_count = 0;
 
 	/* ensure a format has actually been set */
-	if (dev->capture.port == NULL) {
+	if (!dev->capture.port) {
 		v4l2_err(&dev->v4l2_dev,
 			 "no capture port - stream not started?\n");
 		return;
diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
index e6aeb7e..e5bbc6c 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
@@ -125,7 +125,7 @@ int set_framerate_params(struct bm2835_mmal_dev *dev);
 {	\
 	v4l2_dbg(level, debug, dev,	\
 "%s: w %u h %u field %u pfmt 0x%x bpl %u sz_img %u colorspace 0x%x priv %u\n", \
-		desc == NULL ? "" : desc,	\
+		!desc ? "" : desc,	\
 		(pix_fmt)->width, (pix_fmt)->height, (pix_fmt)->field,	\
 		(pix_fmt)->pixelformat, (pix_fmt)->bytesperline,	\
 		(pix_fmt)->sizeimage, (pix_fmt)->colorspace, (pix_fmt)->priv); \
@@ -135,7 +135,7 @@ int set_framerate_params(struct bm2835_mmal_dev *dev);
 	v4l2_dbg(level, debug, dev,	\
 "%s: w %u h %u l %u t %u  field %u chromakey %06X clip %p " \
 "clipcount %u bitmap %p\n", \
-		desc == NULL ? "" : desc,	\
+		!desc ? "" : desc,	\
 		(win_fmt)->w.width, (win_fmt)->w.height, \
 		(win_fmt)->w.left, (win_fmt)->w.top, \
 		(win_fmt)->field,	\
diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 4d7e2a2..9c0667e 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -909,9 +909,7 @@ static int bm2835_mmal_s_ctrl(struct v4l2_ctrl *ctrl)
 	const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl = ctrl->priv;
 	int ret;
 
-	if ((mmal_ctrl == NULL) ||
-	    (mmal_ctrl->id != ctrl->id) ||
-	    (mmal_ctrl->setter == NULL)) {
+	if (!mmal_ctrl || mmal_ctrl->id != ctrl->id || !mmal_ctrl->setter) {
 		pr_warn("mmal_ctrl:%p ctrl id:%d\n", mmal_ctrl, ctrl->id);
 		return -EINVAL;
 	}
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index f0639ee..0f96ac8 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -397,7 +397,7 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 
 	/* get context */
 	msg_context = get_msg_context(instance);
-	if (msg_context == NULL)
+	if (!msg_context)
 		return -ENOMEM;
 
 	/* store bulk message context for when data arrives */
@@ -654,7 +654,7 @@ static void service_callback(void *param,
 			 * should be verified the address lies in the kernel
 			 * address space.
 			 */
-			if (msg->h.context == NULL) {
+			if (!msg->h.context) {
 				pr_err("received message context was null!\n");
 				vchi_held_msg_release(&msg_handle);
 				break;
@@ -1384,7 +1384,7 @@ static int port_enable(struct vchiq_mmal_instance *instance,
 		return 0;
 
 	/* ensure there are enough buffers queued to cover the buffer headers */
-	if (port->buffer_cb != NULL) {
+	if (port->buffer_cb) {
 		hdr_count = 0;
 		list_for_each(buf_head, &port->buffers) {
 			hdr_count++;
@@ -1544,7 +1544,7 @@ int vchiq_mmal_port_connect_tunnel(struct vchiq_mmal_instance *instance,
 		return -EINTR;
 
 	/* disconnect ports if connected */
-	if (src->connected != NULL) {
+	if (src->connected) {
 		ret = port_disable(instance, src);
 		if (ret) {
 			pr_err("failed disabling src port(%d)\n", ret);
@@ -1567,7 +1567,7 @@ int vchiq_mmal_port_connect_tunnel(struct vchiq_mmal_instance *instance,
 		src->connected = NULL;
 	}
 
-	if (dst == NULL) {
+	if (!dst) {
 		/* do not make new connection */
 		ret = 0;
 		pr_debug("not making new connection\n");
@@ -1814,7 +1814,7 @@ int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance)
 {
 	int status = 0;
 
-	if (instance == NULL)
+	if (!instance)
 		return -EINVAL;
 
 	if (mutex_lock_interruptible(&instance->vchiq_mutex))
-- 
2.7.4


