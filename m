X-GM-THRID: 6200385233952440320
X-Received: by 10.180.208.7 with SMTP id ma7mr4501527wic.5.1444756092806;
        Tue, 13 Oct 2015 10:08:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.149.7 with SMTP id x7ls664999lfd.51.gmail; Tue, 13 Oct 2015
 10:08:12 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr7187287lbc.23.1444756092168;
        Tue, 13 Oct 2015 10:08:12 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id h2si775678wiy.0.2015.10.13.10.08.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 10:08:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id q8so41015214wij.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 10:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=BsiDW+WXj5ACCLUlQV+qYeIWyJRFTvTArXyxBPjf66Y=;
        b=mmApsAjQSSEfHTLqyOpsy5zn3Qeu2FsDVeIY8UmhxmZqwTBBkSkG/QYPRYC0EF8vbt
         G3JetHRlABKme0DSwI4IUuRgIRK6Hlc7q6UUSWaRaGCq6t7i+5lghTwxZttzogmI6FbB
         ZlHp3TsIw1XcSISATfXLHQTp/7bsdldQCFhPo6WHyDlKDfPo5UNn4M1Mo86RbHRLsLi3
         ehe8n5XJUPwdOLt4+vQCDDrDmZCkTmE0hSMefO7ojVM49LkX6z0U4mHV4EKrNYNR/fFe
         us5XDKG7g6WUlOsrJmEAs7qSkQ6mEJ11V0oDMoBPn/kQSV1dGPNGZeGCsOaMZ04eaOlm
         RWmQ==
X-Received: by 10.180.211.176 with SMTP id nd16mr5817367wic.83.1444756091856;
        Tue, 13 Oct 2015 10:08:11 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id o10sm3651703wia.4.2015.10.13.10.08.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Oct 2015 10:08:11 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [RESEND PATCH] Staging: comedi: Use mutex instead of semaphore
Date: Tue, 13 Oct 2015 19:08:03 +0200
Message-Id: <1444756083-10333-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace binary semaphore with mutex. Mutex also gives better performance
than semaphore.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
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


