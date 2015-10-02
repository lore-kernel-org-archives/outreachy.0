X-GM-THRID: 6201143102107811840
X-Received: by 10.112.40.17 with SMTP id t17mr2927120lbk.10.1443816367011;
        Fri, 02 Oct 2015 13:06:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.162 with SMTP id q2ls451388wik.20.canary; Fri, 02 Oct
 2015 13:06:06 -0700 (PDT)
X-Received: by 10.180.149.210 with SMTP id uc18mr152754wib.4.1443816366637;
        Fri, 02 Oct 2015 13:06:06 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id bn1si25855wib.0.2015.10.02.13.06.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 13:06:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id lk2so44744568wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 13:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6VdkFmYBIrsmHWvves0QHiAo681PVWZfkzxpSs6gch8=;
        b=IMzF2ued4x3RqGYMiKmv04gsViA2gXFlDRuG3DJYBMkjLW/SqYMk1B+WgpZ/qVIiAX
         TRZSI0YprS5hg67FKLKNJ/K+tRHS6+c2hcbCMFaw5aM6qVlpNayxnCRuvxba23ZnK0OW
         w3LnU6bI2J0/CdKzJtaMa3It+OMz00ePfcvL9oB6TeV53e8r2WAqKHB+qaO3gZX7YjO/
         3D/u18wWY62XIfqRb+5DPrWBal09D2VChJce+m7tdhL/CUlXi0EBD1LEH3PSrBYXulQB
         vl/Cs7O2lvS6mG23LRNVoX6wB2/9ln/wdftgy8NE2VpSr2m+Yme6FRA6MTcXcP9jMYr7
         kmFA==
X-Received: by 10.180.87.37 with SMTP id u5mr677316wiz.42.1443816366531;
        Fri, 02 Oct 2015 13:06:06 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id h8sm590907wib.21.2015.10.02.13.06.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 13:06:05 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 2/4] Staging: comedi: Use mutex instead of semaphore in usbdux.c
Date: Fri,  2 Oct 2015 22:05:57 +0200
Message-Id: <cfec30d2021f3462908802a6fe8cbb46cefe213b.1443815181.git.ksenija.stanojevic@gmail.com>
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


