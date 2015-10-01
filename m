X-GM-THRID: 6200711161331056640
X-Received: by 10.112.142.195 with SMTP id ry3mr1599156lbb.22.1443715692086;
        Thu, 01 Oct 2015 09:08:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.163.194 with SMTP id m185ls124301lfe.66.gmail; Thu, 01 Oct
 2015 09:08:11 -0700 (PDT)
X-Received: by 10.112.151.9 with SMTP id um9mr1561176lbb.19.1443715691548;
        Thu, 01 Oct 2015 09:08:11 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id o5si112450wib.0.2015.10.01.09.08.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 09:08:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id lk2so41023118wic.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 09:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CXLs5kNnHCF2QYTdZt8E4331GDyODv3MR+cxAIqQysY=;
        b=VJU8SMX0WjAU6/Rr/Qe3CLj/zR8jExSqnLPFqW78b5/ht9kHVJ7Su+zVc5Olm3fwWa
         a9pFvvwoRhqbIsK3jGo3naMfy4ZTahyOD5RAdJdGDb8gUPG6Q+jo2RERrZz+seXhXFUO
         XFdO3782HyuVS+CV66A+mf+9agsem4XMdNlHsAHTJS/xv4fJ/mflq4BkZMX3N9tZiCBJ
         T2XsSFZhvIEtIN3lnNAiHCxoKBgyoK6tXcRiX2Ll7cVxvReA/CyC+RGqM61hA/rK1MFu
         FEXdi9AgP9QgAsd4Mc0qhvIHARJQgNfwM2b//OE8b8zDrV1B+8WsdFQkFC7r276Gnmbp
         o/1w==
X-Received: by 10.194.103.130 with SMTP id fw2mr12865274wjb.121.1443715691430;
        Thu, 01 Oct 2015 09:08:11 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id h8sm3873474wib.21.2015.10.01.09.08.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 09:08:10 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 4/4] Staging: comedi: Use mutex instead of semaphore
Date: Thu,  1 Oct 2015 18:08:02 +0200
Message-Id: <c7b910e70881495a10df2f27a7d8db95782c0e9f.1443715371.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1443715371.git.ksenija.stanojevic@gmail.com>
References: <cover.1443715371.git.ksenija.stanojevic@gmail.com>

Replace binary semaphore with mutex because mutex gives better
performance.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
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


