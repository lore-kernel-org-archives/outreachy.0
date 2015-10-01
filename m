X-GM-THRID: 6200711161331056640
X-Received: by 10.180.210.71 with SMTP id ms7mr644393wic.4.1443715669210;
        Thu, 01 Oct 2015 09:07:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.210.198 with SMTP id j189ls110985lfg.86.gmail; Thu, 01 Oct
 2015 09:07:48 -0700 (PDT)
X-Received: by 10.112.54.197 with SMTP id l5mr1534760lbp.21.1443715668634;
        Thu, 01 Oct 2015 09:07:48 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id bj4si119379wib.1.2015.10.01.09.07.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 09:07:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id gb1so36713679wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 09:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=B74Sp6A+l+uNjRsD61ciNLdZw4hMUqlAxg4DADLCvRQ=;
        b=WNQL0W+RwqA0RvRqjK7FBSUgFkC1D4Q7ggBStGXUNl2kbvlnCzqFEh+dM9coIWzfjH
         0xutMBQnzkzG6D7dyayMnAJpACn16kGb44WtjnMqKObq+/lATffn/EoiJz3QrGE0GT5r
         qrkOH6g1ck/oDwtb6bmitoPo188ija1li7lFFuUNq8Nwq+b6BOlrLld1t6TQgy93RKbg
         REX7v8TIhCzpAnoYa1aFZ0HcCBSQzCkHRXhfO3qTIVwQHI5peYdyiqkfmEtGSFIkWHxx
         QlhW9QbtQi0z4AvZo8E8+Y8IHEOCIGhIjFhiMQ7tuIo06d8nTi1EqdldSkaW+csRRNNl
         o1dg==
X-Received: by 10.194.52.67 with SMTP id r3mr13396480wjo.51.1443715668528;
        Thu, 01 Oct 2015 09:07:48 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id lh11sm3871118wic.18.2015.10.01.09.07.47
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 09:07:47 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 3/4] Staging: comedi: Use mutex instead of semaphore
Date: Thu,  1 Oct 2015 18:07:40 +0200
Message-Id: <9e502f131e4647d2ef6314800cdda22527f6a1dc.1443715371.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1443715371.git.ksenija.stanojevic@gmail.com>
References: <cover.1443715371.git.ksenija.stanojevic@gmail.com>

Replace binary semaphore with mutex because mutex gives better
performance.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
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


