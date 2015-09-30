X-GM-THRID: 6200385233952440320
X-Received: by 10.180.9.104 with SMTP id y8mr5023992wia.7.1443639684705;
        Wed, 30 Sep 2015 12:01:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.2.230 with SMTP id 6ls62949lax.7.gmail; Wed, 30 Sep 2015
 12:01:24 -0700 (PDT)
X-Received: by 10.112.198.33 with SMTP id iz1mr802135lbc.8.1443639684052;
        Wed, 30 Sep 2015 12:01:24 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id ch7si58053wib.2.2015.09.30.12.01.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 12:01:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id fx3so75337115wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 12:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=18142Aobf3FfO59hy4VmOm9cI7+YKyaVW9grzN3JqdY=;
        b=zeO6sDmmLP3jvcnbol0l+98iNI9ktKWnCc2n6WtaiO4UxKFpd7zC6t/omL8GUBsi8b
         as2gR+JbxOF9SRatXQkn5SIRKivFB9HvUMBvGjFIP8QeWOEroajoS7ExgoERjf9ai1vn
         yX8a/T3ZsgCB4SwBZnJ03PaZjV6PwEB+jbMzbVf8TtVtl4IVPUGja+uvSnevxDvE/w1P
         CuLVGrVTdnV5+DoukYiK43N+pKcELtrC+NytqhEAr1VFzyZnTSjistc6DvpGs/ZzMDUH
         Sn8RN/7ox1dsjvawMmcqJoA89MIQJ7poy6L2rwBTSWm6RSog/Zh4m0fyNjdic0x+OA40
         Ycfw==
X-Received: by 10.180.35.199 with SMTP id k7mr7182941wij.13.1443639683910;
        Wed, 30 Sep 2015 12:01:23 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id o10sm2217761wia.4.2015.09.30.12.01.22
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 12:01:23 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: comedi: Use mutex instead of semaphore
Date: Wed, 30 Sep 2015 21:01:15 +0200
Message-Id: <1443639675-18965-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace binary semaphore with mutex because mutex gives better performance
than binary semaphore.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/comedi/drivers/dt9812.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt9812.c b/drivers/staging/comedi/drivers/dt9812.c
index e11c216..7d309f9 100644
--- a/drivers/staging/comedi/drivers/dt9812.c
+++ b/drivers/staging/comedi/drivers/dt9812.c
@@ -233,7 +233,7 @@ struct dt9812_usb_cmd {
 };
 
 struct dt9812_private {
-	struct semaphore sem;
+	struct mutex mut;
 	struct {
 		__u8 addr;
 		size_t size;
@@ -335,7 +335,7 @@ static int dt9812_digital_in(struct comedi_device *dev, u8 *bits)
 	u8 value[2];
 	int ret;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	ret = dt9812_read_multiple_registers(dev, 2, reg, value);
 	if (ret == 0) {
 		/*
@@ -345,7 +345,7 @@ static int dt9812_digital_in(struct comedi_device *dev, u8 *bits)
 		 */
 		*bits = (value[0] & 0x7f) | ((value[1] & 0x08) << 4);
 	}
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -357,9 +357,9 @@ static int dt9812_digital_out(struct comedi_device *dev, u8 bits)
 	u8 value[1] = { bits };
 	int ret;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	ret = dt9812_write_multiple_registers(dev, 1, reg, value);
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -444,7 +444,7 @@ static int dt9812_analog_in(struct comedi_device *dev,
 	u8 val[3];
 	int ret;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	/* 1 select the gain */
 	dt9812_configure_gain(dev, &rmw[0], gain);
@@ -493,7 +493,7 @@ static int dt9812_analog_in(struct comedi_device *dev,
 	}
 
 exit:
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -504,7 +504,7 @@ static int dt9812_analog_out(struct comedi_device *dev, int channel, u16 value)
 	struct dt9812_rmw_byte rmw[3];
 	int ret;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	switch (channel) {
 	case 0:
@@ -545,7 +545,7 @@ static int dt9812_analog_out(struct comedi_device *dev, int channel, u16 value)
 	}
 	ret = dt9812_rmw_multiple_registers(dev, 3, rmw);
 
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -608,9 +608,9 @@ static int dt9812_ao_insn_read(struct comedi_device *dev,
 	struct dt9812_private *devpriv = dev->private;
 	int ret;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 	ret = comedi_readback_insn_read(dev, s, insn, data);
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -774,7 +774,7 @@ static int dt9812_auto_attach(struct comedi_device *dev,
 	if (!devpriv)
 		return -ENOMEM;
 
-	sema_init(&devpriv->sem, 1);
+	mutex_init(&devpriv->mut);
 	usb_set_intfdata(intf, devpriv);
 
 	ret = dt9812_find_endpoints(dev);
@@ -846,11 +846,11 @@ static void dt9812_detach(struct comedi_device *dev)
 	if (!devpriv)
 		return;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	usb_set_intfdata(intf, NULL);
 
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 }
 
 static struct comedi_driver dt9812_driver = {
-- 
1.9.1


