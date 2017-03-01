X-GM-THRID: 6392118133032747008
X-Received: by 10.99.45.194 with SMTP id t185mr2138072pgt.114.1488343670562;
        Tue, 28 Feb 2017 20:47:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.99 with SMTP id i96ls917257iod.1.gmail; Tue, 28 Feb
 2017 20:47:49 -0800 (PST)
X-Received: by 10.107.172.198 with SMTP id v189mr1969682ioe.31.1488343669697;
        Tue, 28 Feb 2017 20:47:49 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id s64si446865pfk.0.2017.02.28.20.47.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 20:47:49 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so2410198pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 20:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=YPFa6l/RKM881gtcCfognmzep+2U/MG7oGKWqTiANvE=;
        b=vZDjknQo6Y9/YzheppasTRlfvzNxGVkl1nI5oVr9K61y1HG+VsN5+B+88uTbKV1cKe
         T5/3fc/5iGihY8Pxhtuu9Yce/If1vXvT+K9TZG5pQ5l98Y39CcPhOxflixkWsAxNF5CP
         zRMRsWwvg0QXfirmIxR37gldCs63/8gdPx0Gyy+/+hE6FlXyOSswpJHufZY/4YAB4ptO
         HChnMj+S+CPyX+/nn1K3I7ukcp+TyQQaqxSG/+fbOAOGkAKrWbuBV6K2mcw1wSmT535q
         sqJHRY0NCCD/vz6TO0f2cZWZxoEW+oepLWMMPaToXgaKWGh1ugPjsTNbW+vYHsbT5gWV
         MiAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=YPFa6l/RKM881gtcCfognmzep+2U/MG7oGKWqTiANvE=;
        b=cLDX/g+qTM/l5PksxneVhQ/VseMJ1DMuIz9WLUX+kp4Pwq0lW3HU/RjzaOiVxVi4Yq
         ojBOWaHiSNqv9eqkh23tWyIDoGXA9cPr3Ba9u/FOt3d6SGBrQicQdPcxnt/O+qEBlUW2
         OVIL6fiqruIhIvWIGjrNDNzZ9e9P/1aJURrYVaudHaMf8YCxHp6fxtZ77OFBBY7EPVqg
         l5Og76hN5REavUVuebYPjvdAXmEnZb8JMAMshGtTxhL664e0JDkrzF6dFKXD8Xuod8+S
         PibDk3ohBmhRTTM7Tpyvmwe5T+pczvIaDO6mgT2EDFqXLpMrS8PX6LNP7SsAGjkH0ywh
         tSUg==
X-Gm-Message-State: AMke39llp/5UiG9IkxbdgR+obAgA5hOlKmmxsBgIIZrHd2F5vqAdhHZbkCZ3PcexL++3jw==
X-Received: by 10.98.36.138 with SMTP id k10mr6552592pfk.53.1488343669282;
        Tue, 28 Feb 2017 20:47:49 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id 128sm7100093pfe.23.2017.02.28.20.47.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 20:47:48 -0800 (PST)
Date: Wed, 1 Mar 2017 10:17:35 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: vc04_services: bcm2835-camera: Simplify NULL
 comparisons
Message-ID: <20170301044735.GA13746@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove instances of explicit NULL comparisons in bcm2835-camera driver
for code compaction.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v2:
	- Break up the changes


 .../staging/vc04_services/bcm2835-camera/bcm2835-camera.c  | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

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
-- 
2.7.4


