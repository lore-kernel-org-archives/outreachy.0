X-GM-THRID: 6200711161331056640
X-Received: by 10.180.9.104 with SMTP id y8mr634413wia.7.1443715648490;
        Thu, 01 Oct 2015 09:07:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.147.7 with SMTP id v7ls124336lfd.65.gmail; Thu, 01 Oct 2015
 09:07:27 -0700 (PDT)
X-Received: by 10.112.190.65 with SMTP id go1mr1599696lbc.9.1443715647613;
        Thu, 01 Oct 2015 09:07:27 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id hs5si105161wib.1.2015.10.01.09.07.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 09:07:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id gb1so36793482wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 09:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZU6PL5guVAzyj93SLwJmVhNatTT25/jHD7W6+PLTmwM=;
        b=C4uwl3VDsLgZI+I6VqsNfmiEynm5vwbSrmSEBevUvuyuJyAcIqvx12A69BM7X1aaD3
         qDrfvEtDpljayjtRAcMeMA8S0oaGeRnNkx1xSKkGwU3ebNujLSMpw7KCP5XGariCfY54
         jmox0OXYhzgaFQz9mOYJZDIjJ3tr+VTA7u2vQupzn8DY1MZaS/Wpm93yaF8mRIskjdpC
         ZuonC2aHyHA+29xip+017S1WMNkvLjU3aHh7B+Aa+zU8HGwlXxtcx7GKzDIqPCH7lIGr
         VY3ni7/PsHtEOem+Q6w8w6qUNAvRYY8mIMdyRKMtun64G76KjFSXx3no6ia9gw6Y2TNC
         7/Fw==
X-Received: by 10.180.85.164 with SMTP id i4mr4429944wiz.54.1443715647438;
        Thu, 01 Oct 2015 09:07:27 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id l1sm6844059wjx.13.2015.10.01.09.07.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 09:07:25 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/4] Staging: comedi: Use mutex instead of semaphore
Date: Thu,  1 Oct 2015 18:07:18 +0200
Message-Id: <cfec30d2021f3462908802a6fe8cbb46cefe213b.1443715371.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1443715371.git.ksenija.stanojevic@gmail.com>
References: <cover.1443715371.git.ksenija.stanojevic@gmail.com>

Replace binary semaphore with mutex because mutex gives better
performance.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/comedi/drivers/usbdux.c | 64 ++++++++++++++++-----------------
 1 file changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/comedi/drivers/usbdux.c b/drivers/staging/comedi/drivers/usbdux.c
index 39710f2..f4f05d2 100644
--- a/drivers/staging/comedi/drivers/usbdux.c
+++ b/drivers/staging/comedi/drivers/usbdux.c
@@ -210,7 +210,7 @@ struct usbdux_private {
 	unsigned int ai_interval;
 	/* commands */
 	u8 *dux_commands;
-	struct semaphore sem;
+	struct mutex mut;
 };
 
 static void usbdux_unlink_urbs(struct urb **urbs, int num_urbs)
@@ -237,10 +237,10 @@ static int usbdux_ai_cancel(struct comedi_device *dev,
 	struct usbdux_private *devpriv = dev->private;
 
 	/* prevent other CPUs from submitting new commands just now */
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	/* unlink only if the urb really has been submitted */
 	usbdux_ai_stop(dev, devpriv->ai_cmd_running);
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return 0;
 }
@@ -365,10 +365,10 @@ static int usbdux_ao_cancel(struct comedi_device *dev,
 	struct usbdux_private *devpriv = dev->private;
 
 	/* prevent other CPUs from submitting a command just now */
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	/* unlink only if it is really running */
 	usbdux_ao_stop(dev, devpriv->ao_cmd_running);
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return 0;
 }
@@ -646,7 +646,7 @@ static int usbdux_ai_inttrig(struct comedi_device *dev,
 	if (trig_num != cmd->start_arg)
 		return -EINVAL;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	if (!devpriv->ai_cmd_running) {
 		devpriv->ai_cmd_running = 1;
@@ -662,7 +662,7 @@ static int usbdux_ai_inttrig(struct comedi_device *dev,
 	}
 
 ai_trig_exit:
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 	return ret;
 }
 
@@ -675,7 +675,7 @@ static int usbdux_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 	int i;
 
 	/* block other CPUs from starting an ai_cmd */
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	if (devpriv->ai_cmd_running)
 		goto ai_cmd_exit;
@@ -736,7 +736,7 @@ static int usbdux_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 	}
 
 ai_cmd_exit:
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -754,7 +754,7 @@ static int usbdux_ai_insn_read(struct comedi_device *dev,
 	int ret = -EBUSY;
 	int i;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	if (devpriv->ai_cmd_running)
 		goto ai_read_exit;
@@ -782,7 +782,7 @@ static int usbdux_ai_insn_read(struct comedi_device *dev,
 	}
 
 ai_read_exit:
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret ? ret : insn->n;
 }
@@ -795,9 +795,9 @@ static int usbdux_ao_insn_read(struct comedi_device *dev,
 	struct usbdux_private *devpriv = dev->private;
 	int ret;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	ret = comedi_readback_insn_read(dev, s, insn, data);
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -814,7 +814,7 @@ static int usbdux_ao_insn_write(struct comedi_device *dev,
 	int ret = -EBUSY;
 	int i;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	if (devpriv->ao_cmd_running)
 		goto ao_write_exit;
@@ -838,7 +838,7 @@ static int usbdux_ao_insn_write(struct comedi_device *dev,
 	}
 
 ao_write_exit:
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret ? ret : insn->n;
 }
@@ -854,7 +854,7 @@ static int usbdux_ao_inttrig(struct comedi_device *dev,
 	if (trig_num != cmd->start_arg)
 		return -EINVAL;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	if (!devpriv->ao_cmd_running) {
 		devpriv->ao_cmd_running = 1;
@@ -870,7 +870,7 @@ static int usbdux_ao_inttrig(struct comedi_device *dev,
 	}
 
 ao_trig_exit:
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 	return ret;
 }
 
@@ -960,7 +960,7 @@ static int usbdux_ao_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 	struct comedi_cmd *cmd = &s->async->cmd;
 	int ret = -EBUSY;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	if (devpriv->ao_cmd_running)
 		goto ao_cmd_exit;
@@ -1002,7 +1002,7 @@ static int usbdux_ao_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 	}
 
 ao_cmd_exit:
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -1033,7 +1033,7 @@ static int usbdux_dio_insn_bits(struct comedi_device *dev,
 	struct usbdux_private *devpriv = dev->private;
 	int ret;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	comedi_dio_update_state(s, data);
 
@@ -1055,7 +1055,7 @@ static int usbdux_dio_insn_bits(struct comedi_device *dev,
 	data[1] = le16_to_cpu(devpriv->insn_buf[1]);
 
 dio_exit:
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret ? ret : insn->n;
 }
@@ -1070,7 +1070,7 @@ static int usbdux_counter_read(struct comedi_device *dev,
 	int ret = 0;
 	int i;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	for (i = 0; i < insn->n; i++) {
 		ret = send_dux_commands(dev, USBDUX_CMD_TIMER_RD);
@@ -1084,7 +1084,7 @@ static int usbdux_counter_read(struct comedi_device *dev,
 	}
 
 counter_read_exit:
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret ? ret : insn->n;
 }
@@ -1100,7 +1100,7 @@ static int usbdux_counter_write(struct comedi_device *dev,
 	int ret = 0;
 	int i;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	devpriv->dux_commands[1] = chan;
 
@@ -1112,7 +1112,7 @@ static int usbdux_counter_write(struct comedi_device *dev,
 			break;
 	}
 
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret ? ret : insn->n;
 }
@@ -1148,11 +1148,11 @@ static int usbdux_pwm_cancel(struct comedi_device *dev,
 	struct usbdux_private *devpriv = dev->private;
 	int ret;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	/* unlink only if it is really running */
 	usbdux_pwm_stop(dev, devpriv->pwm_cmd_running);
 	ret = send_dux_commands(dev, USBDUX_CMD_PWM_OFF);
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -1257,7 +1257,7 @@ static int usbdux_pwm_start(struct comedi_device *dev,
 	struct usbdux_private *devpriv = dev->private;
 	int ret = 0;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	if (devpriv->pwm_cmd_running)
 		goto pwm_start_exit;
@@ -1276,7 +1276,7 @@ static int usbdux_pwm_start(struct comedi_device *dev,
 		devpriv->pwm_cmd_running = 0;
 
 pwm_start_exit:
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -1576,7 +1576,7 @@ static int usbdux_auto_attach(struct comedi_device *dev,
 	if (!devpriv)
 		return -ENOMEM;
 
-	sema_init(&devpriv->sem, 1);
+	mutex_init(&devpriv->mut);
 
 	usb_set_intfdata(intf, devpriv);
 
@@ -1691,7 +1691,7 @@ static void usbdux_detach(struct comedi_device *dev)
 	if (!devpriv)
 		return;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	/* force unlink all urbs */
 	usbdux_pwm_stop(dev, 1);
@@ -1700,7 +1700,7 @@ static void usbdux_detach(struct comedi_device *dev)
 
 	usbdux_free_usb_buffers(dev);
 
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 }
 
 static struct comedi_driver usbdux_driver = {
-- 
1.9.1


