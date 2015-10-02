X-GM-THRID: 6201143102107811840
X-Received: by 10.180.35.132 with SMTP id h4mr147553wij.5.1443816488568;
        Fri, 02 Oct 2015 13:08:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.223 with SMTP id 92ls285025lft.101.gmail; Fri, 02 Oct
 2015 13:08:07 -0700 (PDT)
X-Received: by 10.112.198.33 with SMTP id iz1mr2938707lbc.8.1443816487946;
        Fri, 02 Oct 2015 13:08:07 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id w4si27476wiz.0.2015.10.02.13.08.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 13:08:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id fx3so44675945wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 13:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=VR5HOYtv22draydd9Jv19XYpNtu3471d44KHX1QNOc0=;
        b=BXgBi9gzexW6semz1dwFZ1N0jxdNMb04P/9S7spHcQOou6s1Aef6YS8lNJ5+tFmo/3
         AbtzjTMSm6okfGs48F74LQNvR8zG7V60xv2MVe4G06wxTvKt4DLX7URVVfQHMDZE5+Cx
         i1G8SmAFyvt775myowbcCWgL+fO6dIK6hV06keZWnK2LqQ9y6tN8HfAvfESv+7EGLa3/
         v7emb31v4Zk2J0V10fWvWNJdF0NTfaAYvBSjd3YU7FFuJen/HlabWszSTKhgbVbRrIE9
         cmz2SE6BxfLxKt4Ra21QoTAdcqewt9WYXo0f/8TEr6Hby9QbMh8sPbEt51w1F5HEgLy/
         MEIg==
X-Received: by 10.194.175.232 with SMTP id cd8mr19876100wjc.45.1443816487828;
        Fri, 02 Oct 2015 13:08:07 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id i10sm12900145wjz.41.2015.10.02.13.08.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 13:08:07 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 3/4] Staging: comedi: Use mutex instead of semaphore in usbduxfast.c
Date: Fri,  2 Oct 2015 22:07:54 +0200
Message-Id: <9e502f131e4647d2ef6314800cdda22527f6a1dc.1443815181.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1443815181.git.ksenija.stanojevic@gmail.com>
References: <cover.1443815181.git.ksenija.stanojevic@gmail.com>

Replace binary semaphore with mutex because mutex gives better
performance.
This change is safe because the thread that decrements the value of semaphore
is also the one that increments it, and acts like a mutex where owner of the
lock is the only one that can release the lock.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Changes in v2:
	-change subject line and commit message

 drivers/staging/comedi/drivers/usbduxfast.c | 36 ++++++++++++++---------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/comedi/drivers/usbduxfast.c b/drivers/staging/comedi/drivers/usbduxfast.c
index c6b2a65..10f94ec 100644
--- a/drivers/staging/comedi/drivers/usbduxfast.c
+++ b/drivers/staging/comedi/drivers/usbduxfast.c
@@ -160,7 +160,7 @@ struct usbduxfast_private {
 	s8 *inbuf;
 	short int ai_cmd_running;	/* asynchronous command is running */
 	int ignore;		/* counter which ignores the first buffers */
-	struct semaphore sem;
+	struct mutex mut;
 };
 
 /*
@@ -221,9 +221,9 @@ static int usbduxfast_ai_cancel(struct comedi_device *dev,
 	struct usbduxfast_private *devpriv = dev->private;
 	int ret;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	ret = usbduxfast_ai_stop(dev, 1);
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -444,7 +444,7 @@ static int usbduxfast_ai_inttrig(struct comedi_device *dev,
 	if (trig_num != cmd->start_arg)
 		return -EINVAL;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	if (!devpriv->ai_cmd_running) {
 		devpriv->ai_cmd_running = 1;
@@ -452,14 +452,14 @@ static int usbduxfast_ai_inttrig(struct comedi_device *dev,
 		if (ret < 0) {
 			dev_err(dev->class_dev, "urbSubmit: err=%d\n", ret);
 			devpriv->ai_cmd_running = 0;
-			up(&devpriv->sem);
+			mutex_unlock(&devpriv->mut);
 			return ret;
 		}
 		s->async->inttrig = NULL;
 	} else {
 		dev_err(dev->class_dev, "ai is already running\n");
 	}
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 	return 1;
 }
 
@@ -472,7 +472,7 @@ static int usbduxfast_ai_cmd(struct comedi_device *dev,
 	int j, ret;
 	long steps, steps_tmp;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	if (devpriv->ai_cmd_running) {
 		ret = -EBUSY;
 		goto cmd_exit;
@@ -751,7 +751,7 @@ static int usbduxfast_ai_cmd(struct comedi_device *dev,
 	}
 
 cmd_exit:
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -772,12 +772,12 @@ static int usbduxfast_ai_insn_read(struct comedi_device *dev,
 	int i, j, n, actual_length;
 	int ret;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	if (devpriv->ai_cmd_running) {
 		dev_err(dev->class_dev,
 			"ai_insn_read not possible, async cmd is running\n");
-		up(&devpriv->sem);
+		mutex_unlock(&devpriv->mut);
 		return -EBUSY;
 	}
 
@@ -799,7 +799,7 @@ static int usbduxfast_ai_insn_read(struct comedi_device *dev,
 
 	ret = usbduxfast_send_cmd(dev, SENDADCOMMANDS);
 	if (ret < 0) {
-		up(&devpriv->sem);
+		mutex_unlock(&devpriv->mut);
 		return ret;
 	}
 
@@ -809,7 +809,7 @@ static int usbduxfast_ai_insn_read(struct comedi_device *dev,
 				   &actual_length, 10000);
 		if (ret < 0) {
 			dev_err(dev->class_dev, "insn timeout, no data\n");
-			up(&devpriv->sem);
+			mutex_unlock(&devpriv->mut);
 			return ret;
 		}
 	}
@@ -820,13 +820,13 @@ static int usbduxfast_ai_insn_read(struct comedi_device *dev,
 				   &actual_length, 10000);
 		if (ret < 0) {
 			dev_err(dev->class_dev, "insn data error: %d\n", ret);
-			up(&devpriv->sem);
+			mutex_unlock(&devpriv->mut);
 			return ret;
 		}
 		n = actual_length / sizeof(u16);
 		if ((n % 16) != 0) {
 			dev_err(dev->class_dev, "insn data packet corrupted\n");
-			up(&devpriv->sem);
+			mutex_unlock(&devpriv->mut);
 			return -EINVAL;
 		}
 		for (j = chan; (j < n) && (i < insn->n); j = j + 16) {
@@ -835,7 +835,7 @@ static int usbduxfast_ai_insn_read(struct comedi_device *dev,
 		}
 	}
 
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return insn->n;
 }
@@ -930,7 +930,7 @@ static int usbduxfast_auto_attach(struct comedi_device *dev,
 	if (!devpriv)
 		return -ENOMEM;
 
-	sema_init(&devpriv->sem, 1);
+	mutex_init(&devpriv->mut);
 	usb_set_intfdata(intf, devpriv);
 
 	devpriv->duxbuf = kmalloc(SIZEOFDUXBUF, GFP_KERNEL);
@@ -989,7 +989,7 @@ static void usbduxfast_detach(struct comedi_device *dev)
 	if (!devpriv)
 		return;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	usb_set_intfdata(intf, NULL);
 
@@ -1003,7 +1003,7 @@ static void usbduxfast_detach(struct comedi_device *dev)
 
 	kfree(devpriv->duxbuf);
 
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 }
 
 static struct comedi_driver usbduxfast_driver = {
-- 
1.9.1


