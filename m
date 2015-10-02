X-GM-THRID: 6201143102107811840
X-Received: by 10.112.40.17 with SMTP id t17mr2929917lbk.10.1443816592847;
        Fri, 02 Oct 2015 13:09:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.11.4 with SMTP id m4ls441631wib.10.gmail; Fri, 02 Oct 2015
 13:09:52 -0700 (PDT)
X-Received: by 10.180.188.211 with SMTP id gc19mr153142wic.6.1443816592545;
        Fri, 02 Oct 2015 13:09:52 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id bn1si26587wib.0.2015.10.02.13.09.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 13:09:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id lk2so48435199wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 13:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=MBSdwL1Gzk2e9in5H2VXie7mt8qyvNmdIJZhc3pF7Dw=;
        b=i3YsBgrIfgjdA/05COGq8L6xCX1ceUQSATJ0k4/ScCqI0ZH3nOYw46W5wjICq6GV+y
         UZJ6/+70ymn21f+AV8IYft/lcbjzU0H+tOKuZV7HATheuvcB/gjCnqK7+8ViLaPrBhEk
         d0Fwy4vPWhrgHDLTsSfkq4y80CzFOYcE4U4u1nJ9QOw+RkgkjzhJRYhE2gG/AlxYN0KB
         ov3Y2MyrJ1a1rfclYR5sLun2avXv1Svk7YKe/07AhJEeN11ifELTJ9Q5xVpUKho2KEcu
         rFbZwVCXmry/SOPSZmmsv/yZdieScMqZcY75F9Q9q/T8F63plZ0HYC8ItMm6uTgclQaZ
         2SVg==
X-Received: by 10.180.90.107 with SMTP id bv11mr649576wib.69.1443816592454;
        Fri, 02 Oct 2015 13:09:52 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id x9sm12893114wjf.44.2015.10.02.13.09.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 13:09:51 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 4/4] Staging: comedi: Use mutex instead of semaphore in ni_usb6501.c
Date: Fri,  2 Oct 2015 22:09:43 +0200
Message-Id: <c7b910e70881495a10df2f27a7d8db95782c0e9f.1443815181.git.ksenija.stanojevic@gmail.com>
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

 drivers/staging/comedi/drivers/ni_usb6501.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_usb6501.c b/drivers/staging/comedi/drivers/ni_usb6501.c
index 88de8da..95b537a 100644
--- a/drivers/staging/comedi/drivers/ni_usb6501.c
+++ b/drivers/staging/comedi/drivers/ni_usb6501.c
@@ -166,7 +166,7 @@ enum commands {
 struct ni6501_private {
 	struct usb_endpoint_descriptor *ep_rx;
 	struct usb_endpoint_descriptor *ep_tx;
-	struct semaphore sem;
+	struct mutex mut;
 	u8 *usb_rx_buf;
 	u8 *usb_tx_buf;
 };
@@ -183,7 +183,7 @@ static int ni6501_port_command(struct comedi_device *dev, int command,
 	if (command != SET_PORT_DIR && !bitmap)
 		return -EINVAL;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	switch (command) {
 	case READ_PORT:
@@ -248,7 +248,7 @@ static int ni6501_port_command(struct comedi_device *dev, int command,
 		ret = -EINVAL;
 	}
 end:
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -265,7 +265,7 @@ static int ni6501_counter_command(struct comedi_device *dev, int command,
 	if ((command == READ_COUNTER || command ==  WRITE_COUNTER) && !val)
 		return -EINVAL;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	switch (command) {
 	case START_COUNTER:
@@ -338,7 +338,7 @@ static int ni6501_counter_command(struct comedi_device *dev, int command,
 		ret = -EINVAL;
 	}
 end:
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 
 	return ret;
 }
@@ -535,7 +535,7 @@ static int ni6501_auto_attach(struct comedi_device *dev,
 	if (ret)
 		return ret;
 
-	sema_init(&devpriv->sem, 1);
+	mutex_init(&devpriv->mut);
 	usb_set_intfdata(intf, devpriv);
 
 	ret = comedi_alloc_subdevices(dev, 2);
@@ -573,14 +573,14 @@ static void ni6501_detach(struct comedi_device *dev)
 	if (!devpriv)
 		return;
 
-	down(&devpriv->sem);
+	mutex_lock(&devpriv->mut);
 
 	usb_set_intfdata(intf, NULL);
 
 	kfree(devpriv->usb_rx_buf);
 	kfree(devpriv->usb_tx_buf);
 
-	up(&devpriv->sem);
+	mutex_unlock(&devpriv->mut);
 }
 
 static struct comedi_driver ni6501_driver = {
-- 
1.9.1


