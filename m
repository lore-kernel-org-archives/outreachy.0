X-GM-THRID: 6200711161331056640
X-Received: by 10.112.149.39 with SMTP id tx7mr1591149lbb.11.1443715615204;
        Thu, 01 Oct 2015 09:06:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.88.42 with SMTP id bd10ls183967wib.9.canary; Thu, 01 Oct
 2015 09:06:54 -0700 (PDT)
X-Received: by 10.180.12.170 with SMTP id z10mr638404wib.1.1443715614718;
        Thu, 01 Oct 2015 09:06:54 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id bj4si119378wib.1.2015.10.01.09.06.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 09:06:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id fx3so35613470wic.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 09:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=C4JzpA3Sk64XgSAp80b0pOP5KEM4Riyj/8k02gX4RqM=;
        b=K281kUfNaqbq6rIrA5DP5d/LzDRckyHgLBwLUBEVLjodil1baoxiV4ocUcNmU/3qzv
         QCqKKmaTdbfKy90MAPGaodrX4e3FE+3uHmWVUcXyxNWBSG9afVA5+2rXAKiHLPrwKcpa
         u4bk3ot0Zlfonwm0i9osaRuxUbkYMEH95jK/zMY63X8lSaMq0ktJNPI5vGRcOz+HrRaT
         tO1JMYaB4rKZluH3m9V7MHIjqCiSVXrT62yppTsgVuFANl234pXil+kHZxZsjGMsvaSl
         Ab5gHHN8VpdaRCAYKXe5cIuZpvk9mNJwgl5xFj2IpE2AhyYVGbevTCXO0n/NHxU9Yv6+
         g9xg==
X-Received: by 10.180.81.228 with SMTP id d4mr4418533wiy.38.1443715614593;
        Thu, 01 Oct 2015 09:06:54 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id ka10sm6826559wjc.30.2015.10.01.09.06.53
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 09:06:54 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/4] Staging: comedi: Use mutex instead of semaphore
Date: Thu,  1 Oct 2015 18:06:45 +0200
Message-Id: <9a65d840cc57e2ec29bf2dc1ea6269c2e80e6859.1443715371.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1443715371.git.ksenija.stanojevic@gmail.com>
References: <cover.1443715371.git.ksenija.stanojevic@gmail.com>

Replace binary semaphore with mutex because mutex gives better
performance.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/comedi/drivers/usbduxsigma.c | 70 ++++++++++++++--------------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/comedi/drivers/usbduxsigma.c b/drivers/staging/comedi/drivers/usbduxsigma.c
index d49147b..456e9f1 100644
--- a/drivers/staging/comedi/drivers/usbduxsigma.c
+++ b/drivers/staging/comedi/drivers/usbduxsigma.c
@@ -173,7 +173,7 @@ struct usbduxsigma_private {
 	unsigned int ai_interval;
 	/* commands */
 	u8 *dux_commands;
-	struct semaphore sem;
+	struct mutex mut;
 };
 
 static void usbduxsigma_unlink_urbs(struct urb **urbs, int num_urbs)
@@ -199,10 +199,10 @@ static int usbduxsigma_ai_cancel(struct comedi_device *dev,
 {
 	struct usbduxsigma_private *devpriv = dev->private;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	/* unlink only if it is really running */
 	usbduxsigma_ai_stop(dev, devpriv->ai_cmd_running);
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return 0;
 }
@@ -325,10 +325,10 @@ static int usbduxsigma_ao_cancel(struct comedi_device *dev,
 {
 	struct usbduxsigma_private *devpriv = dev->private;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	/* unlink only if it is really running */
 	usbduxsigma_ao_stop(dev, devpriv->ao_cmd_running);
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return 0;
 }
@@ -609,19 +609,19 @@ static int usbduxsigma_ai_inttrig(struct comedi_device *dev,
 	if (trig_num != cmd->start_arg)
 		return -EINVAL;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	if (!devpriv->ai_cmd_running) {
 		devpriv->ai_cmd_running = 1;
 		ret = usbduxsigma_submit_urbs(dev, devpriv->ai_urbs,
 					      devpriv->n_ai_urbs, 1);
 		if (ret < 0) {
 			devpriv->ai_cmd_running = 0;
-			up(&devpriv->sem);
+			mutex_unlock(&devpriv->mut);
 			return ret;
 		}
 		s->async->inttrig = NULL;
 	}
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return 1;
 }
@@ -638,7 +638,7 @@ static int usbduxsigma_ai_cmd(struct comedi_device *dev,
 	int ret;
 	int i;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	if (devpriv->high_speed) {
 		/*
@@ -673,7 +673,7 @@ static int usbduxsigma_ai_cmd(struct comedi_device *dev,
 
 	ret = usbbuxsigma_send_cmd(dev, USBBUXSIGMA_AD_CMD);
 	if (ret < 0) {
-		up(&devpriv->sem);
+		mutex_unlock(&devpriv->mut);
 		return ret;
 	}
 
@@ -686,7 +686,7 @@ static int usbduxsigma_ai_cmd(struct comedi_device *dev,
 					      devpriv->n_ai_urbs, 1);
 		if (ret < 0) {
 			devpriv->ai_cmd_running = 0;
-			up(&devpriv->sem);
+			mutex_unlock(&devpriv->mut);
 			return ret;
 		}
 		s->async->inttrig = NULL;
@@ -694,7 +694,7 @@ static int usbduxsigma_ai_cmd(struct comedi_device *dev,
 		s->async->inttrig = usbduxsigma_ai_inttrig;
 	}
 
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return 0;
 }
@@ -712,9 +712,9 @@ static int usbduxsigma_ai_insn_read(struct comedi_device *dev,
 	int ret;
 	int i;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	if (devpriv->ai_cmd_running) {
-		up(&devpriv->sem);
+		mutex_unlock(&devpriv->mut);
 		return -EBUSY;
 	}
 
@@ -731,7 +731,7 @@ static int usbduxsigma_ai_insn_read(struct comedi_device *dev,
 	/* adc commands */
 	ret = usbbuxsigma_send_cmd(dev, USBDUXSIGMA_SINGLE_AD_CMD);
 	if (ret < 0) {
-		up(&devpriv->sem);
+		mutex_unlock(&devpriv->mut);
 		return ret;
 	}
 
@@ -740,7 +740,7 @@ static int usbduxsigma_ai_insn_read(struct comedi_device *dev,
 
 		ret = usbduxsigma_receive_cmd(dev, USBDUXSIGMA_SINGLE_AD_CMD);
 		if (ret < 0) {
-			up(&devpriv->sem);
+			mutex_unlock(&devpriv->mut);
 			return ret;
 		}
 
@@ -750,7 +750,7 @@ static int usbduxsigma_ai_insn_read(struct comedi_device *dev,
 		val &= 0x00ffffff;	/* strip status byte */
 		data[i] = comedi_offset_munge(s, val);
 	}
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return insn->n;
 }
@@ -763,9 +763,9 @@ static int usbduxsigma_ao_insn_read(struct comedi_device *dev,
 	struct usbduxsigma_private *devpriv = dev->private;
 	int ret;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	ret = comedi_readback_insn_read(dev, s, insn, data);
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -780,9 +780,9 @@ static int usbduxsigma_ao_insn_write(struct comedi_device *dev,
 	int ret;
 	int i;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	if (devpriv->ao_cmd_running) {
-		up(&devpriv->sem);
+		mutex_unlock(&devpriv->mut);
 		return -EBUSY;
 	}
 
@@ -792,12 +792,12 @@ static int usbduxsigma_ao_insn_write(struct comedi_device *dev,
 		devpriv->dux_commands[3] = chan;	/* channel number */
 		ret = usbbuxsigma_send_cmd(dev, USBDUXSIGMA_DA_CMD);
 		if (ret < 0) {
-			up(&devpriv->sem);
+			mutex_unlock(&devpriv->mut);
 			return ret;
 		}
 		s->readback[chan] = data[i];
 	}
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return insn->n;
 }
@@ -813,19 +813,19 @@ static int usbduxsigma_ao_inttrig(struct comedi_device *dev,
 	if (trig_num != cmd->start_arg)
 		return -EINVAL;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	if (!devpriv->ao_cmd_running) {
 		devpriv->ao_cmd_running = 1;
 		ret = usbduxsigma_submit_urbs(dev, devpriv->ao_urbs,
 					      devpriv->n_ao_urbs, 0);
 		if (ret < 0) {
 			devpriv->ao_cmd_running = 0;
-			up(&devpriv->sem);
+			mutex_unlock(&devpriv->mut);
 			return ret;
 		}
 		s->async->inttrig = NULL;
 	}
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return 1;
 }
@@ -856,7 +856,7 @@ static int usbduxsigma_ao_cmdtest(struct comedi_device *dev,
 	err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);
 
 	if (err) {
-		up(&devpriv->sem);
+		mutex_unlock(&devpriv->mut);
 		return 1;
 	}
 
@@ -905,7 +905,7 @@ static int usbduxsigma_ao_cmd(struct comedi_device *dev,
 	struct comedi_cmd *cmd = &s->async->cmd;
 	int ret;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	/*
 	 * For now, only "scan" timing is supported.  A future version may
@@ -924,7 +924,7 @@ static int usbduxsigma_ao_cmd(struct comedi_device *dev,
 					      devpriv->n_ao_urbs, 0);
 		if (ret < 0) {
 			devpriv->ao_cmd_running = 0;
-			up(&devpriv->sem);
+			mutex_unlock(&devpriv->mut);
 			return ret;
 		}
 		s->async->inttrig = NULL;
@@ -932,7 +932,7 @@ static int usbduxsigma_ao_cmd(struct comedi_device *dev,
 		s->async->inttrig = usbduxsigma_ao_inttrig;
 	}
 
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return 0;
 }
@@ -963,7 +963,7 @@ static int usbduxsigma_dio_insn_bits(struct comedi_device *dev,
 	struct usbduxsigma_private *devpriv = dev->private;
 	int ret;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	comedi_dio_update_state(s, data);
 
@@ -990,7 +990,7 @@ static int usbduxsigma_dio_insn_bits(struct comedi_device *dev,
 	ret = insn->n;
 
 done:
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -1462,7 +1462,7 @@ static int usbduxsigma_auto_attach(struct comedi_device *dev,
 	if (!devpriv)
 		return -ENOMEM;
 
-	sema_init(&devpriv->sem, 1);
+	mutex_init(&devpriv->mut);
 
 	usb_set_intfdata(intf, devpriv);
 
@@ -1576,7 +1576,7 @@ static void usbduxsigma_detach(struct comedi_device *dev)
 	if (!devpriv)
 		return;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	/* force unlink all urbs */
 	usbduxsigma_ai_stop(dev, 1);
@@ -1585,7 +1585,7 @@ static void usbduxsigma_detach(struct comedi_device *dev)
 
 	usbduxsigma_free_usb_buffers(dev);
 
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 }
 
 static struct comedi_driver usbduxsigma_driver = {
-- 
1.9.1


