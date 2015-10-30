X-GM-THRID: 6211294151973011456
X-Received: by 10.31.170.17 with SMTP id t17mr4606835vke.2.1446179615303;
        Thu, 29 Oct 2015 21:33:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.3.69 with SMTP id a5ls54879iga.4.gmail; Thu, 29 Oct 2015
 21:33:34 -0700 (PDT)
X-Received: by 10.68.92.35 with SMTP id cj3mr4545899pbb.11.1446179614954;
        Thu, 29 Oct 2015 21:33:34 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id iz5si465522pbc.2.2015.10.29.21.33.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 21:33:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id z6so61479144pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 21:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=2Ij+SuJtXlmIZvww+emcX9Who4x6w7sPNAlUYJkYUcM=;
        b=E/0JFaKX5h1qC83hsyzS3IA4B++Z8d9zmfS3gPnwDvEHBPHS6xuwT6XCLlFsH6NWgh
         Syd9Fv14NrrmoLaoK/U0qJ4oK0rgsmYSv16AMdpkfmJn8vWHGHtJ5RS3RtWDlM1qbrGd
         kiAuH9lF5azoKSrAaUrHYajq7zrkCFgh8rql+Ix7elakr2bz5/Ve1ZHNLLFCr7j5ScHE
         2KR3DgWHN15uJ1WHgTSBt4p62TiyZ/iL01y8FTPOxl12FUaWiBfEMtcQHXTadbolcNju
         jQb+zE3Mmz5eccyjQtpCeyvf4fKasupiQK6qzGyw9baUQO24Of85gcjrwbfKT5O4m0K1
         c+rA==
X-Received: by 10.66.243.225 with SMTP id xb1mr6220434pac.1.1446179614825;
        Thu, 29 Oct 2015 21:33:34 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id ij3sm5232311pbb.62.2015.10.29.21.33.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 21:33:34 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: comedi: vmk80xx: Replace semaphore with mutex
Date: Thu, 29 Oct 2015 21:33:26 -0700
Message-Id: <1446179606-29779-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace semaphore with mutex because mutex gives better performance.
This change is safe because the thread that decrements the value of
semaphore is also the one that increments it, and acts like a mutex
where owner of the lock is the only one that can release the lock.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Changes in v2:
 - replace rw_semaphore with mutex

 drivers/staging/comedi/drivers/vmk80xx.c | 54 ++++++++++++++++----------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/comedi/drivers/vmk80xx.c b/drivers/staging/comedi/drivers/vmk80xx.c
index 8c7393e..6299cba 100644
--- a/drivers/staging/comedi/drivers/vmk80xx.c
+++ b/drivers/staging/comedi/drivers/vmk80xx.c
@@ -152,7 +152,7 @@ static const struct vmk80xx_board vmk80xx_boardinfo[] = {
 struct vmk80xx_private {
 	struct usb_endpoint_descriptor *ep_rx;
 	struct usb_endpoint_descriptor *ep_tx;
-	struct semaphore limit_sem;
+	struct mutex limit_mut;
 	unsigned char *usb_rx_buf;
 	unsigned char *usb_tx_buf;
 	enum vmk80xx_model model;
@@ -249,7 +249,7 @@ static int vmk80xx_ai_insn_read(struct comedi_device *dev,
 	int reg[2];
 	int n;
 
-	down(&devpriv->limit_sem);
+	mutex_lock(&devpriv->limit_mut);
 	chan = CR_CHAN(insn->chanspec);
 
 	switch (devpriv->model) {
@@ -282,7 +282,7 @@ static int vmk80xx_ai_insn_read(struct comedi_device *dev,
 		    devpriv->usb_rx_buf[reg[1]];
 	}
 
-	up(&devpriv->limit_sem);
+	mutex_unlock(&devpriv->limit_mut);
 
 	return n;
 }
@@ -298,7 +298,7 @@ static int vmk80xx_ao_insn_write(struct comedi_device *dev,
 	int reg;
 	int n;
 
-	down(&devpriv->limit_sem);
+	mutex_lock(&devpriv->limit_mut);
 	chan = CR_CHAN(insn->chanspec);
 
 	switch (devpriv->model) {
@@ -323,7 +323,7 @@ static int vmk80xx_ao_insn_write(struct comedi_device *dev,
 			break;
 	}
 
-	up(&devpriv->limit_sem);
+	mutex_unlock(&devpriv->limit_mut);
 
 	return n;
 }
@@ -338,7 +338,7 @@ static int vmk80xx_ao_insn_read(struct comedi_device *dev,
 	int reg;
 	int n;
 
-	down(&devpriv->limit_sem);
+	mutex_lock(&devpriv->limit_mut);
 	chan = CR_CHAN(insn->chanspec);
 
 	reg = VMK8061_AO_REG - 1;
@@ -352,7 +352,7 @@ static int vmk80xx_ao_insn_read(struct comedi_device *dev,
 		data[n] = devpriv->usb_rx_buf[reg + chan];
 	}
 
-	up(&devpriv->limit_sem);
+	mutex_unlock(&devpriv->limit_mut);
 
 	return n;
 }
@@ -367,7 +367,7 @@ static int vmk80xx_di_insn_bits(struct comedi_device *dev,
 	int reg;
 	int retval;
 
-	down(&devpriv->limit_sem);
+	mutex_lock(&devpriv->limit_mut);
 
 	rx_buf = devpriv->usb_rx_buf;
 
@@ -391,7 +391,7 @@ static int vmk80xx_di_insn_bits(struct comedi_device *dev,
 		retval = 2;
 	}
 
-	up(&devpriv->limit_sem);
+	mutex_unlock(&devpriv->limit_mut);
 
 	return retval;
 }
@@ -415,7 +415,7 @@ static int vmk80xx_do_insn_bits(struct comedi_device *dev,
 		cmd = VMK8055_CMD_WRT_AD;
 	}
 
-	down(&devpriv->limit_sem);
+	mutex_lock(&devpriv->limit_mut);
 
 	if (comedi_dio_update_state(s, data)) {
 		tx_buf[reg] = s->state;
@@ -435,7 +435,7 @@ static int vmk80xx_do_insn_bits(struct comedi_device *dev,
 	}
 
 out:
-	up(&devpriv->limit_sem);
+	mutex_unlock(&devpriv->limit_mut);
 
 	return ret ? ret : insn->n;
 }
@@ -450,7 +450,7 @@ static int vmk80xx_cnt_insn_read(struct comedi_device *dev,
 	int reg[2];
 	int n;
 
-	down(&devpriv->limit_sem);
+	mutex_lock(&devpriv->limit_mut);
 	chan = CR_CHAN(insn->chanspec);
 
 	switch (devpriv->model) {
@@ -479,7 +479,7 @@ static int vmk80xx_cnt_insn_read(struct comedi_device *dev,
 			    + 256 * devpriv->usb_rx_buf[reg[1] * 2 + 2];
 	}
 
-	up(&devpriv->limit_sem);
+	mutex_unlock(&devpriv->limit_mut);
 
 	return n;
 }
@@ -495,7 +495,7 @@ static int vmk80xx_cnt_insn_config(struct comedi_device *dev,
 	int reg;
 	int ret;
 
-	down(&devpriv->limit_sem);
+	mutex_lock(&devpriv->limit_mut);
 	switch (data[0]) {
 	case INSN_CONFIG_RESET:
 		if (devpriv->model == VMK8055_MODEL) {
@@ -516,7 +516,7 @@ static int vmk80xx_cnt_insn_config(struct comedi_device *dev,
 		ret = -EINVAL;
 		break;
 	}
-	up(&devpriv->limit_sem);
+	mutex_unlock(&devpriv->limit_mut);
 
 	return ret ? ret : insn->n;
 }
@@ -533,7 +533,7 @@ static int vmk80xx_cnt_insn_write(struct comedi_device *dev,
 	int cmd;
 	int n;
 
-	down(&devpriv->limit_sem);
+	mutex_lock(&devpriv->limit_mut);
 	chan = CR_CHAN(insn->chanspec);
 
 	if (!chan)
@@ -560,7 +560,7 @@ static int vmk80xx_cnt_insn_write(struct comedi_device *dev,
 			break;
 	}
 
-	up(&devpriv->limit_sem);
+	mutex_unlock(&devpriv->limit_mut);
 
 	return n;
 }
@@ -576,7 +576,7 @@ static int vmk80xx_pwm_insn_read(struct comedi_device *dev,
 	int reg[2];
 	int n;
 
-	down(&devpriv->limit_sem);
+	mutex_lock(&devpriv->limit_mut);
 
 	tx_buf = devpriv->usb_tx_buf;
 	rx_buf = devpriv->usb_rx_buf;
@@ -593,7 +593,7 @@ static int vmk80xx_pwm_insn_read(struct comedi_device *dev,
 		data[n] = rx_buf[reg[0]] + 4 * rx_buf[reg[1]];
 	}
 
-	up(&devpriv->limit_sem);
+	mutex_unlock(&devpriv->limit_mut);
 
 	return n;
 }
@@ -609,7 +609,7 @@ static int vmk80xx_pwm_insn_write(struct comedi_device *dev,
 	int cmd;
 	int n;
 
-	down(&devpriv->limit_sem);
+	mutex_lock(&devpriv->limit_mut);
 
 	tx_buf = devpriv->usb_tx_buf;
 
@@ -639,7 +639,7 @@ static int vmk80xx_pwm_insn_write(struct comedi_device *dev,
 			break;
 	}
 
-	up(&devpriv->limit_sem);
+	mutex_unlock(&devpriv->limit_mut);
 
 	return n;
 }
@@ -707,7 +707,7 @@ static int vmk80xx_init_subdevices(struct comedi_device *dev)
 	int n_subd;
 	int ret;
 
-	down(&devpriv->limit_sem);
+	mutex_lock(&devpriv->limit_mut);
 
 	if (devpriv->model == VMK8055_MODEL)
 		n_subd = 5;
@@ -715,7 +715,7 @@ static int vmk80xx_init_subdevices(struct comedi_device *dev)
 		n_subd = 6;
 	ret = comedi_alloc_subdevices(dev, n_subd);
 	if (ret) {
-		up(&devpriv->limit_sem);
+		mutex_unlock(&devpriv->limit_mut);
 		return ret;
 	}
 
@@ -783,7 +783,7 @@ static int vmk80xx_init_subdevices(struct comedi_device *dev)
 		s->insn_write	= vmk80xx_pwm_insn_write;
 	}
 
-	up(&devpriv->limit_sem);
+	mutex_unlock(&devpriv->limit_mut);
 
 	return 0;
 }
@@ -817,7 +817,7 @@ static int vmk80xx_auto_attach(struct comedi_device *dev,
 	if (ret)
 		return ret;
 
-	sema_init(&devpriv->limit_sem, 8);
+	mutex_init(&devpriv->limit_mut);
 
 	usb_set_intfdata(intf, devpriv);
 
@@ -835,14 +835,14 @@ static void vmk80xx_detach(struct comedi_device *dev)
 	if (!devpriv)
 		return;
 
-	down(&devpriv->limit_sem);
+	mutex_lock(&devpriv->limit_mut);
 
 	usb_set_intfdata(intf, NULL);
 
 	kfree(devpriv->usb_rx_buf);
 	kfree(devpriv->usb_tx_buf);
 
-	up(&devpriv->limit_sem);
+	mutex_unlock(&devpriv->limit_mut);
 }
 
 static struct comedi_driver vmk80xx_driver = {
-- 
1.9.1


