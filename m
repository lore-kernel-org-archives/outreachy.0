X-GM-THRID: 6950918029312
X-Received: by 10.180.39.164 with SMTP id q4mr3003060wik.5.1425668415665;
        Fri, 06 Mar 2015 11:00:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.193 with SMTP id jy1ls213485wid.52.gmail; Fri, 06 Mar
 2015 11:00:15 -0800 (PST)
X-Received: by 10.194.95.67 with SMTP id di3mr2553638wjb.0.1425668415369;
        Fri, 06 Mar 2015 11:00:15 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id el6si219339wib.2.2015.03.06.11.00.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 11:00:15 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id ex7so5070660wid.1
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 11:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wi2JEx0TGRUfWIW2zKzBGmm9/TNzIxPYfiBXyeXbZjU=;
        b=kM/xz0oo562r0AMwCzq7E7G+rgTRcqEd3qcXHQBuwR8/L7KPOxbPEtNhcEXT3k8pDy
         xTCs6oPApx1+fzh5hPIHiVpd4GKWPKfCHv+XA9Ieo8xZEid2DNjD+vgm55btByxLMN/O
         slnQvjlUCz6W6lI6ElRJXGoyoBv3L/gDgh3tiowzhKa3QikA9NuUcUYbdz0rM5jl1fuk
         AW5gnOlIIa/artnIfIe2kfA94XL3ozgWWIHMzdlBghPPdGeDlFg/PYD25qzjp+cD7uGa
         rO4DLpH3/TmDIQp0u+U4KNSyAkpx6RXNFV2Zuz/91y6lP9DkFe6vSIj5iq9LrtWiozMq
         Ck/g==
X-Received: by 10.180.82.201 with SMTP id k9mr8598716wiy.58.1425668414325;
        Fri, 06 Mar 2015 11:00:14 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id dc9sm3208540wib.9.2015.03.06.11.00.12
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 11:00:13 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 8D92662672; Fri,  6 Mar 2015 22:00:11 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 2/8] Staging: media: clean dev_err logging
Date: Fri,  6 Mar 2015 22:00:10 +0300
Message-Id: <1425668410-27324-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err. dev_err includes information about:
(devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E, R;
expression  msg;
@@

dev_err(E, msg, __func__, R);

@script:python b@
e << a.msg;
y;
@@

if(e.find("%s: ") == True):
	m = e.replace("%s: ", "", 1);
	coccinelle.y = m;
elif(e.find("%s ") == True):
	m = e.replace("%s ", "", 1);
	coccinelle.y = m;
elif(e.find("%s:") == True):
	m = e.replace("%s:", "", 1);
	coccinelle.y = m;
else:
	m = e.replace("%s", "",1);
	coccinelle.y = m;

@c@
expression a.E, a.msg, a.R;
identifier  b.y;
@@

- dev_err(E, msg, __func__, R);
+ dev_err(E, y, R);

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/media/lirc/lirc_imon.c     | 26 +++++++++++---------------
 drivers/staging/media/lirc/lirc_sasem.c    | 18 +++++++-----------
 drivers/staging/media/omap4iss/iss.c       | 16 ++++++++--------
 drivers/staging/media/omap4iss/iss_video.c |  3 +--
 4 files changed, 27 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
index d490607..cb16e8d 100644
--- a/drivers/staging/media/lirc/lirc_imon.c
+++ b/drivers/staging/media/lirc/lirc_imon.c
@@ -208,8 +208,7 @@ static void deregister_from_lirc(struct imon_context *context)
 	retval = lirc_unregister_driver(minor);
 	if (retval)
 		dev_err(&context->usbdev->dev,
-			": %s: unable to deregister from lirc(%d)",
-			__func__, retval);
+			"unable to deregister from lirc(%d)", retval);
 	else
 		dev_info(&context->usbdev->dev,
 			 "Deregistered iMON driver (minor:%d)\n", minor);
@@ -241,9 +240,8 @@ static int display_open(struct inode *inode, struct file *file)
 	context = usb_get_intfdata(interface);
 
 	if (!context) {
-		dev_err(&interface->dev,
-			"%s: no context found for minor %d\n",
-			__func__, subminor);
+		dev_err(&interface->dev, "no context found for minor %d\n",
+			subminor);
 		retval = -ENODEV;
 		goto exit;
 	}
@@ -341,8 +339,8 @@ static int send_packet(struct imon_context *context)
 	retval = usb_submit_urb(context->tx_urb, GFP_KERNEL);
 	if (retval) {
 		atomic_set(&(context->tx.busy), 0);
-		dev_err(&context->usbdev->dev,
-			"%s: error submitting urb(%d)\n", __func__, retval);
+		dev_err(&context->usbdev->dev, "error submitting urb(%d)\n",
+			retval);
 	} else {
 		/* Wait for transmission to complete (or abort) */
 		mutex_unlock(&context->ctx_lock);
@@ -355,8 +353,7 @@ static int send_packet(struct imon_context *context)
 		retval = context->tx.status;
 		if (retval)
 			dev_err(&context->usbdev->dev,
-				"%s: packet tx failed (%d)\n",
-				__func__, retval);
+				"packet tx failed (%d)\n", retval);
 	}
 
 	return retval;
@@ -431,8 +428,8 @@ static ssize_t vfd_write(struct file *file, const char __user *buf,
 		retval = send_packet(context);
 		if (retval) {
 			dev_err(&context->usbdev->dev,
-				"%s: send packet failed for packet #%d\n",
-				__func__, seq/2);
+				"send packet failed for packet #%d\n",
+				seq / 2);
 			goto exit;
 		} else {
 			seq += 2;
@@ -448,8 +445,8 @@ static ssize_t vfd_write(struct file *file, const char __user *buf,
 		retval = send_packet(context);
 		if (retval)
 			dev_err(&context->usbdev->dev,
-				"%s: send packet failed for packet #%d\n",
-					__func__, seq/2);
+				"send packet failed for packet #%d\n",
+				seq / 2);
 	}
 
 exit:
@@ -869,8 +866,7 @@ static int imon_probe(struct usb_interface *interface,
 	retval = usb_submit_urb(context->rx_urb, GFP_KERNEL);
 
 	if (retval) {
-		dev_err(dev, "%s: usb_submit_urb failed for intf0 (%d)\n",
-			__func__, retval);
+		dev_err(dev, "usb_submit_urb failed for intf0 (%d)\n", retval);
 		alloc_status = 8;
 		goto unlock;
 	}
diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index b7261b3..9986bc1 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -214,9 +214,8 @@ static int vfd_open(struct inode *inode, struct file *file)
 	context = usb_get_intfdata(interface);
 
 	if (!context) {
-		dev_err(&interface->dev,
-			"%s: no context found for minor %d\n",
-			__func__, subminor);
+		dev_err(&interface->dev, "no context found for minor %d\n",
+			subminor);
 		retval = -ENODEV;
 		goto exit;
 	}
@@ -336,8 +335,8 @@ static int send_packet(struct sasem_context *context)
 	retval =  usb_submit_urb(context->tx_urb, GFP_KERNEL);
 	if (retval) {
 		atomic_set(&(context->tx.busy), 0);
-		dev_err(&context->dev->dev, "%s: error submitting urb (%d)\n",
-			__func__, retval);
+		dev_err(&context->dev->dev, "error submitting urb (%d)\n",
+			retval);
 	} else {
 		/* Wait for transmission to complete (or abort) */
 		mutex_unlock(&context->ctx_lock);
@@ -347,8 +346,7 @@ static int send_packet(struct sasem_context *context)
 		retval = context->tx.status;
 		if (retval)
 			dev_err(&context->dev->dev,
-				"%s: packet tx failed (%d)\n",
-				__func__, retval);
+				"packet tx failed (%d)\n", retval);
 	}
 
 	return retval;
@@ -442,8 +440,7 @@ static ssize_t vfd_write(struct file *file, const char __user *buf,
 		retval = send_packet(context);
 		if (retval) {
 			dev_err(&context->dev->dev,
-				"%s: send packet failed for packet #%d\n",
-				__func__, i);
+				"send packet failed for packet #%d\n", i);
 			goto exit;
 		}
 	}
@@ -506,8 +503,7 @@ static int ir_open(void *data)
 
 	if (retval)
 		dev_err(&context->dev->dev,
-			"%s: usb_submit_urb failed for ir_open (%d)\n",
-			__func__, retval);
+			"usb_submit_urb failed for ir_open (%d)\n", retval);
 	else {
 		context->ir_isopen = 1;
 		dev_info(&context->dev->dev, "IR port opened\n");
diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index 44b81a2..e0ad5e5 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -1160,8 +1160,8 @@ iss_register_subdev_group(struct iss_device *iss,
 		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
 				board_info->board_info, NULL);
 		if (subdev == NULL) {
-			dev_err(iss->dev, "%s: Unable to register subdev %s\n",
-				__func__, board_info->board_info->type);
+			dev_err(iss->dev, "Unable to register subdev %s\n",
+				board_info->board_info->type);
 			continue;
 		}
 
@@ -1185,16 +1185,16 @@ static int iss_register_entities(struct iss_device *iss)
 	iss->media_dev.link_notify = iss_pipeline_link_notify;
 	ret = media_device_register(&iss->media_dev);
 	if (ret < 0) {
-		dev_err(iss->dev, "%s: Media device registration failed (%d)\n",
-			__func__, ret);
+		dev_err(iss->dev, "Media device registration failed (%d)\n",
+			ret);
 		return ret;
 	}
 
 	iss->v4l2_dev.mdev = &iss->media_dev;
 	ret = v4l2_device_register(iss->dev, &iss->v4l2_dev);
 	if (ret < 0) {
-		dev_err(iss->dev, "%s: V4L2 device registration failed (%d)\n",
-			__func__, ret);
+		dev_err(iss->dev, "V4L2 device registration failed (%d)\n",
+			ret);
 		goto done;
 	}
 
@@ -1252,8 +1252,8 @@ static int iss_register_entities(struct iss_device *iss)
 			break;
 
 		default:
-			dev_err(iss->dev, "%s: invalid interface type %u\n",
-				__func__, subdevs->interface);
+			dev_err(iss->dev, "invalid interface type %u\n",
+				subdevs->interface);
 			ret = -EINVAL;
 			goto done;
 		}
diff --git a/drivers/staging/media/omap4iss/iss_video.c b/drivers/staging/media/omap4iss/iss_video.c
index 6955044..55938cc 100644
--- a/drivers/staging/media/omap4iss/iss_video.c
+++ b/drivers/staging/media/omap4iss/iss_video.c
@@ -1221,8 +1221,7 @@ int omap4iss_video_register(struct iss_video *video, struct v4l2_device *vdev)
 	ret = video_register_device(&video->video, VFL_TYPE_GRABBER, -1);
 	if (ret < 0)
 		dev_err(video->iss->dev,
-			"%s: could not register video device (%d)\n",
-			__func__, ret);
+			"could not register video device (%d)\n", ret);
 
 	return ret;
 }
-- 
1.9.1


