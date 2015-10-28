X-GM-THRID: 6210549354962354176
X-Received: by 10.182.56.4 with SMTP id w4mr7287228obp.10.1446006203659;
        Tue, 27 Oct 2015 21:23:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.106 with SMTP id xv10ls260683obc.11.gmail; Tue, 27 Oct
 2015 21:23:23 -0700 (PDT)
X-Received: by 10.182.106.228 with SMTP id gx4mr37032356obb.34.1446006203219;
        Tue, 27 Oct 2015 21:23:23 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pe1si4679553pac.2.2015.10.27.21.23.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 21:23:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id z6so243381465pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 21:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=6OZpovNvQpSQTiKtTb6QKyJ+x/uGLSZA/dD8j9XXIS4=;
        b=mX5eRWYYEyxtOHix1Z2Gwb8maFDJ7q/4519AZ3nqDl2jxibZ2B6AIrs9vUKzgtsPAG
         hcMYNRPRKvtGezicDHuAmWaJ0RvXglR6FLJaYDs+X4QW6XGLIycwQaHa3m6d54tG3ZVd
         z1oCMhE4MeUHIRi/yAa7eTv+ZQJ9HV6IDtZvaIPWd41QoVPFMOIUETPkDUhmNb8u/2xd
         +8yR8VLBcj/ysPMnDLD28FPi4+HzJlFCUSzA25Xe4N9/njQcBsWovrygks7HySno8q+D
         /7uV00nMyMjkMtEyG3+H68sgYimfX/zbnjqUNyqpGHyKwKfBCWuB8gesqRpXdjFZu3Fv
         1Ulg==
X-Received: by 10.66.254.197 with SMTP id ak5mr43359152pad.130.1446006203008;
        Tue, 27 Oct 2015 21:23:23 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id ns1sm42429979pbc.67.2015.10.27.21.23.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Oct 2015 21:23:22 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: comedi: Use rwsemaphore
Date: Tue, 27 Oct 2015 21:23:16 -0700
Message-Id: <1446006196-6294-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Functions that use semaphore for locking are divided into read/write
functions, so use locking mechanism that provides similar semantics.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/comedi/drivers/vmk80xx.c | 54 ++++++++++++++++----------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/comedi/drivers/vmk80xx.c b/drivers/staging/comedi/drivers/vmk80xx.c
index 8c7393e..f08976c 100644
--- a/drivers/staging/comedi/drivers/vmk80xx.c
+++ b/drivers/staging/comedi/drivers/vmk80xx.c
@@ -152,7 +152,7 @@ static const struct vmk80xx_board vmk80xx_boardinfo[] = {
 struct vmk80xx_private {
 	struct usb_endpoint_descriptor *ep_rx;
 	struct usb_endpoint_descriptor *ep_tx;
-	struct semaphore limit_sem;
+	struct rw_semaphore limit_sem;
 	unsigned char *usb_rx_buf;
 	unsigned char *usb_tx_buf;
 	enum vmk80xx_model model;
@@ -249,7 +249,7 @@ static int vmk80xx_ai_insn_read(struct comedi_device *dev,
 	int reg[2];
 	int n;
 
-	down(&devpriv->limit_sem);
+	down_read(&devpriv->limit_sem);
 	chan = CR_CHAN(insn->chanspec);
 
 	switch (devpriv->model) {
@@ -282,7 +282,7 @@ static int vmk80xx_ai_insn_read(struct comedi_device *dev,
 		    devpriv->usb_rx_buf[reg[1]];
 	}
 
-	up(&devpriv->limit_sem);
+	up_read(&devpriv->limit_sem);
 
 	return n;
 }
@@ -298,7 +298,7 @@ static int vmk80xx_ao_insn_write(struct comedi_device *dev,
 	int reg;
 	int n;
 
-	down(&devpriv->limit_sem);
+	down_write(&devpriv->limit_sem);
 	chan = CR_CHAN(insn->chanspec);
 
 	switch (devpriv->model) {
@@ -323,7 +323,7 @@ static int vmk80xx_ao_insn_write(struct comedi_device *dev,
 			break;
 	}
 
-	up(&devpriv->limit_sem);
+	up_write(&devpriv->limit_sem);
 
 	return n;
 }
@@ -338,7 +338,7 @@ static int vmk80xx_ao_insn_read(struct comedi_device *dev,
 	int reg;
 	int n;
 
-	down(&devpriv->limit_sem);
+	down_read(&devpriv->limit_sem);
 	chan = CR_CHAN(insn->chanspec);
 
 	reg = VMK8061_AO_REG - 1;
@@ -352,7 +352,7 @@ static int vmk80xx_ao_insn_read(struct comedi_device *dev,
 		data[n] = devpriv->usb_rx_buf[reg + chan];
 	}
 
-	up(&devpriv->limit_sem);
+	up_read(&devpriv->limit_sem);
 
 	return n;
 }
@@ -367,7 +367,7 @@ static int vmk80xx_di_insn_bits(struct comedi_device *dev,
 	int reg;
 	int retval;
 
-	down(&devpriv->limit_sem);
+	down_read(&devpriv->limit_sem);
 
 	rx_buf = devpriv->usb_rx_buf;
 
@@ -391,7 +391,7 @@ static int vmk80xx_di_insn_bits(struct comedi_device *dev,
 		retval = 2;
 	}
 
-	up(&devpriv->limit_sem);
+	up_read(&devpriv->limit_sem);
 
 	return retval;
 }
@@ -415,7 +415,7 @@ static int vmk80xx_do_insn_bits(struct comedi_device *dev,
 		cmd = VMK8055_CMD_WRT_AD;
 	}
 
-	down(&devpriv->limit_sem);
+	down_write(&devpriv->limit_sem);
 
 	if (comedi_dio_update_state(s, data)) {
 		tx_buf[reg] = s->state;
@@ -435,7 +435,7 @@ static int vmk80xx_do_insn_bits(struct comedi_device *dev,
 	}
 
 out:
-	up(&devpriv->limit_sem);
+	up_write(&devpriv->limit_sem);
 
 	return ret ? ret : insn->n;
 }
@@ -450,7 +450,7 @@ static int vmk80xx_cnt_insn_read(struct comedi_device *dev,
 	int reg[2];
 	int n;
 
-	down(&devpriv->limit_sem);
+	down_read(&devpriv->limit_sem);
 	chan = CR_CHAN(insn->chanspec);
 
 	switch (devpriv->model) {
@@ -479,7 +479,7 @@ static int vmk80xx_cnt_insn_read(struct comedi_device *dev,
 			    + 256 * devpriv->usb_rx_buf[reg[1] * 2 + 2];
 	}
 
-	up(&devpriv->limit_sem);
+	up_read(&devpriv->limit_sem);
 
 	return n;
 }
@@ -495,7 +495,7 @@ static int vmk80xx_cnt_insn_config(struct comedi_device *dev,
 	int reg;
 	int ret;
 
-	down(&devpriv->limit_sem);
+	down_write(&devpriv->limit_sem);
 	switch (data[0]) {
 	case INSN_CONFIG_RESET:
 		if (devpriv->model == VMK8055_MODEL) {
@@ -516,7 +516,7 @@ static int vmk80xx_cnt_insn_config(struct comedi_device *dev,
 		ret = -EINVAL;
 		break;
 	}
-	up(&devpriv->limit_sem);
+	up_write(&devpriv->limit_sem);
 
 	return ret ? ret : insn->n;
 }
@@ -533,7 +533,7 @@ static int vmk80xx_cnt_insn_write(struct comedi_device *dev,
 	int cmd;
 	int n;
 
-	down(&devpriv->limit_sem);
+	down_write(&devpriv->limit_sem);
 	chan = CR_CHAN(insn->chanspec);
 
 	if (!chan)
@@ -560,7 +560,7 @@ static int vmk80xx_cnt_insn_write(struct comedi_device *dev,
 			break;
 	}
 
-	up(&devpriv->limit_sem);
+	up_write(&devpriv->limit_sem);
 
 	return n;
 }
@@ -576,7 +576,7 @@ static int vmk80xx_pwm_insn_read(struct comedi_device *dev,
 	int reg[2];
 	int n;
 
-	down(&devpriv->limit_sem);
+	down_read(&devpriv->limit_sem);
 
 	tx_buf = devpriv->usb_tx_buf;
 	rx_buf = devpriv->usb_rx_buf;
@@ -593,7 +593,7 @@ static int vmk80xx_pwm_insn_read(struct comedi_device *dev,
 		data[n] = rx_buf[reg[0]] + 4 * rx_buf[reg[1]];
 	}
 
-	up(&devpriv->limit_sem);
+	up_read(&devpriv->limit_sem);
 
 	return n;
 }
@@ -609,7 +609,7 @@ static int vmk80xx_pwm_insn_write(struct comedi_device *dev,
 	int cmd;
 	int n;
 
-	down(&devpriv->limit_sem);
+	down_write(&devpriv->limit_sem);
 
 	tx_buf = devpriv->usb_tx_buf;
 
@@ -639,7 +639,7 @@ static int vmk80xx_pwm_insn_write(struct comedi_device *dev,
 			break;
 	}
 
-	up(&devpriv->limit_sem);
+	up_write(&devpriv->limit_sem);
 
 	return n;
 }
@@ -707,7 +707,7 @@ static int vmk80xx_init_subdevices(struct comedi_device *dev)
 	int n_subd;
 	int ret;
 
-	down(&devpriv->limit_sem);
+	down_write(&devpriv->limit_sem);
 
 	if (devpriv->model == VMK8055_MODEL)
 		n_subd = 5;
@@ -715,7 +715,7 @@ static int vmk80xx_init_subdevices(struct comedi_device *dev)
 		n_subd = 6;
 	ret = comedi_alloc_subdevices(dev, n_subd);
 	if (ret) {
-		up(&devpriv->limit_sem);
+		up_write(&devpriv->limit_sem);
 		return ret;
 	}
 
@@ -783,7 +783,7 @@ static int vmk80xx_init_subdevices(struct comedi_device *dev)
 		s->insn_write	= vmk80xx_pwm_insn_write;
 	}
 
-	up(&devpriv->limit_sem);
+	up_write(&devpriv->limit_sem);
 
 	return 0;
 }
@@ -817,7 +817,7 @@ static int vmk80xx_auto_attach(struct comedi_device *dev,
 	if (ret)
 		return ret;
 
-	sema_init(&devpriv->limit_sem, 8);
+	init_rwsem(&devpriv->limit_sem);
 
 	usb_set_intfdata(intf, devpriv);
 
@@ -835,14 +835,14 @@ static void vmk80xx_detach(struct comedi_device *dev)
 	if (!devpriv)
 		return;
 
-	down(&devpriv->limit_sem);
+	down_write(&devpriv->limit_sem);
 
 	usb_set_intfdata(intf, NULL);
 
 	kfree(devpriv->usb_rx_buf);
 	kfree(devpriv->usb_tx_buf);
 
-	up(&devpriv->limit_sem);
+	up_write(&devpriv->limit_sem);
 }
 
 static struct comedi_driver vmk80xx_driver = {
-- 
1.9.1


