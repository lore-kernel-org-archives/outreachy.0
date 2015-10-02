X-GM-THRID: 6201143102107811840
X-Received: by 10.180.210.212 with SMTP id mw20mr146018wic.3.1443816270916;
        Fri, 02 Oct 2015 13:04:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.4 with SMTP id gq4ls450976wib.25.gmail; Fri, 02 Oct
 2015 13:04:30 -0700 (PDT)
X-Received: by 10.194.156.193 with SMTP id wg1mr2976223wjb.3.1443816270557;
        Fri, 02 Oct 2015 13:04:30 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id o5si18466wib.0.2015.10.02.13.04.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 13:04:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id gb1so47463025wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 13:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=+WW7qQPpcHHHI9V/ssULGzbcHFG+R1V/EkClBEfxviA=;
        b=f5VJFmq3QCRDEChqxbbcsbRdv515IlfLbgxRUSuT1ktVDtcvwV+7EbzKesK9ciF4NB
         eETKBn/Zogtd2LlsJDMVury+20M1YxIMNaZqMdQPC//WMWbLVHDisgwb8kE5rPfL0NH3
         JYzKoYQ33gnISUBZk1PMtLVbNAXZfEy79EmIYXw40rNxwwPJUSBRb7n9gX4Lh6Qx4eYv
         ghG2Rgo/2DLe4MG2UjqQeOAXVzNm6LQWv0jFokrHQB/V+JjoJRH28GCAvSu8A8FfAjSd
         3xgpm9mtiyNFYc6Qn4nYi2K0yBYGpZuhVDIv/J+dQ8/FV+hBD1txvMCgnU7k/coeEJ7T
         R+3g==
X-Received: by 10.180.37.76 with SMTP id w12mr703508wij.0.1443816270448;
        Fri, 02 Oct 2015 13:04:30 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id jf3sm601703wic.8.2015.10.02.13.04.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 13:04:29 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH  v2 1/4] Staging: comedi: Use mutex instead of semaphore in usbduxsigma.c
Date: Fri,  2 Oct 2015 22:04:22 +0200
Message-Id: <9a65d840cc57e2ec29bf2dc1ea6269c2e80e6859.1443815181.git.ksenija.stanojevic@gmail.com>
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


