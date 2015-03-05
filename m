X-GM-THRID: 6758181371904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f603dc428f6faf02
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.29.66 with SMTP id ju2mr4941725wid.1.1425583902869;
        Thu, 05 Mar 2015 11:31:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.226 with SMTP id t2ls373627laj.42.gmail; Thu, 05 Mar
 2015 11:31:42 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr1820010lbb.13.1425583902372;
        Thu, 05 Mar 2015 11:31:42 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id i8si646451wif.1.2015.03.05.11.31.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 11:31:42 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id l15so5358515wiw.1
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 11:31:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wayV76zsJsNRFGXi74tRH9Q6YRJbQTwsiIg51zjQ4LA=;
        b=zwCHoztZGJpQiGepdov6FyOiP3tdbrVXHpl9mnJyIizw5ylAwZofgfDreHpgXo/qcA
         pNhMgT3NnvibmDf7Nrkruvg3PNYbP915LOKXI1FHAcOcG7mFyxHvHLmo09HX+6quWL0B
         mgA2kIDJA2asc5fc7ZwcwstBxXfGufB33szzR8308IeKVqgEoTeTCBmG/w1NGCBoyrQ6
         xpzKO+Aan6vC4V8NRAKg2yKWlhRAu1eFOYZQ4ocBBNdWjBzat2lXWG8LK8c5I43cwcri
         7fF0LQRZcFCboybQZLKZxDBO11QDCmrlyEPNQRmeasZY5L9PRFuZTXTxv/chX1troL6t
         I9eQ==
X-Received: by 10.180.218.71 with SMTP id pe7mr53582431wic.70.1425583902241;
        Thu, 05 Mar 2015 11:31:42 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id yy9sm11816911wjc.20.2015.03.05.11.31.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 11:31:41 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id D566F62672; Thu,  5 Mar 2015 22:31:50 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 1/7] Staging: media: Clean dev_err() logging
Date: Thu,  5 Mar 2015 22:31:50 +0300
Message-Id: <1425583910-28059-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err. dev_err includes information about:
 (devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E;
expression  msg;
@@

dev_err(E, msg, __func__);

@script:python b@git rebae -i
e << a.msg;
y;
@@

if(e.find("%s: ") == True):
	m = e.replace("%s: ", "", 1);
	coccinelle.y = m;
elif(e.find("%s ") == True):
	m = e.replace("%s ", "", 1);
	coccinelle.y = m;
elif(e.find("%s:") == True):
	m = e.replace("%s:", "", 1);
	coccinelle.y = m;
else:
	m = e.replace("%s", "",1);
	coccinelle.y = m;

@c@
expression a.E, a.msg;
identifier  b.y;
@@

- dev_err(E, msg, __func__);
+ dev_err(E, y);

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/media/lirc/lirc_imon.c  | 32 ++++++++++++--------------------
 drivers/staging/media/lirc/lirc_sasem.c | 25 +++++++++----------------
 drivers/staging/media/lirc/lirc_zilog.c |  3 +--
 3 files changed, 22 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
index 9ce7d99..d490607 100644
--- a/drivers/staging/media/lirc/lirc_imon.c
+++ b/drivers/staging/media/lirc/lirc_imon.c
@@ -251,12 +251,10 @@ static int display_open(struct inode *inode, struct file *file)
 	mutex_lock(&context->ctx_lock);
 
 	if (!context->display) {
-		dev_err(&interface->dev,
-			"%s: display not supported by device\n", __func__);
+		dev_err(&interface->dev, "display not supported by device\n");
 		retval = -ENODEV;
 	} else if (context->display_isopen) {
-		dev_err(&interface->dev,
-			"%s: display port is already open\n", __func__);
+		dev_err(&interface->dev, "display port is already open\n");
 		retval = -EBUSY;
 	} else {
 		context->display_isopen = 1;
@@ -291,11 +289,10 @@ static int display_close(struct inode *inode, struct file *file)
 
 	if (!context->display) {
 		dev_err(&context->usbdev->dev,
-			"%s: display not supported by device\n", __func__);
+			"display not supported by device\n");
 		retval = -ENODEV;
 	} else if (!context->display_isopen) {
-		dev_err(&context->usbdev->dev,
-			"%s: display is not open\n", __func__);
+		dev_err(&context->usbdev->dev, "display is not open\n");
 		retval = -EIO;
 	} else {
 		context->display_isopen = 0;
@@ -352,8 +349,7 @@ static int send_packet(struct imon_context *context)
 		retval = wait_for_completion_interruptible(
 				&context->tx.finished);
 		if (retval)
-			dev_err(&context->usbdev->dev,
-				"%s: task interrupted\n", __func__);
+			dev_err(&context->usbdev->dev, "task interrupted\n");
 		mutex_lock(&context->ctx_lock);
 
 		retval = context->tx.status;
@@ -398,15 +394,13 @@ static ssize_t vfd_write(struct file *file, const char __user *buf,
 	mutex_lock(&context->ctx_lock);
 
 	if (!context->dev_present) {
-		dev_err(&context->usbdev->dev,
-			"%s: no iMON device present\n", __func__);
+		dev_err(&context->usbdev->dev, "no iMON device present\n");
 		retval = -ENODEV;
 		goto exit;
 	}
 
 	if (n_bytes <= 0 || n_bytes > IMON_DATA_BUF_SZ - 3) {
-		dev_err(&context->usbdev->dev,
-			"%s: invalid payload size\n", __func__);
+		dev_err(&context->usbdev->dev, "invalid payload size\n");
 		retval = -EINVAL;
 		goto exit;
 	}
@@ -775,8 +769,7 @@ static int imon_probe(struct usb_interface *interface,
 
 	/* Input endpoint is mandatory */
 	if (!ir_ep_found) {
-		dev_err(dev, "%s: no valid input (IR) endpoint found.\n",
-			__func__);
+		dev_err(dev, "no valid input (IR) endpoint found.\n");
 		retval = -ENODEV;
 		alloc_status = 2;
 		goto alloc_status_switch;
@@ -802,20 +795,19 @@ static int imon_probe(struct usb_interface *interface,
 		goto alloc_status_switch;
 	}
 	if (lirc_buffer_init(rbuf, BUF_CHUNK_SIZE, BUF_SIZE)) {
-		dev_err(dev, "%s: lirc_buffer_init failed\n", __func__);
+		dev_err(dev, "lirc_buffer_init failed\n");
 		alloc_status = 4;
 		goto alloc_status_switch;
 	}
 	rx_urb = usb_alloc_urb(0, GFP_KERNEL);
 	if (!rx_urb) {
-		dev_err(dev, "%s: usb_alloc_urb failed for IR urb\n", __func__);
+		dev_err(dev, "usb_alloc_urb failed for IR urb\n");
 		alloc_status = 5;
 		goto alloc_status_switch;
 	}
 	tx_urb = usb_alloc_urb(0, GFP_KERNEL);
 	if (!tx_urb) {
-		dev_err(dev, "%s: usb_alloc_urb failed for display urb\n",
-		    __func__);
+		dev_err(dev, "usb_alloc_urb failed for display urb\n");
 		alloc_status = 6;
 		goto alloc_status_switch;
 	}
@@ -842,7 +834,7 @@ static int imon_probe(struct usb_interface *interface,
 
 	lirc_minor = lirc_register_driver(driver);
 	if (lirc_minor < 0) {
-		dev_err(dev, "%s: lirc_register_driver failed\n", __func__);
+		dev_err(dev, "lirc_register_driver failed\n");
 		alloc_status = 7;
 		goto unlock;
 	} else
diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index 4a26820..b7261b3 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -224,8 +224,7 @@ static int vfd_open(struct inode *inode, struct file *file)
 	mutex_lock(&context->ctx_lock);
 
 	if (context->vfd_isopen) {
-		dev_err(&interface->dev,
-			"%s: VFD port is already open", __func__);
+		dev_err(&interface->dev, "VFD port is already open");
 		retval = -EBUSY;
 	} else {
 		context->vfd_isopen = 1;
@@ -292,7 +291,7 @@ static int vfd_close(struct inode *inode, struct file *file)
 	mutex_lock(&context->ctx_lock);
 
 	if (!context->vfd_isopen) {
-		dev_err(&context->dev->dev, "%s: VFD is not open\n", __func__);
+		dev_err(&context->dev->dev, "VFD is not open\n");
 		retval = -EIO;
 	} else {
 		context->vfd_isopen = 0;
@@ -383,8 +382,7 @@ static ssize_t vfd_write(struct file *file, const char __user *buf,
 	}
 
 	if (n_bytes <= 0 || n_bytes > SASEM_DATA_BUF_SZ) {
-		dev_err(&context->dev->dev, "%s: invalid payload size\n",
-			__func__);
+		dev_err(&context->dev->dev, "invalid payload size\n");
 		retval = -EINVAL;
 		goto exit;
 	}
@@ -493,8 +491,7 @@ static int ir_open(void *data)
 	mutex_lock(&context->ctx_lock);
 
 	if (context->ir_isopen) {
-		dev_err(&context->dev->dev, "%s: IR port is already open\n",
-			__func__);
+		dev_err(&context->dev->dev, "IR port is already open\n");
 		retval = -EBUSY;
 		goto exit;
 	}
@@ -734,7 +731,7 @@ static int sasem_probe(struct usb_interface *interface,
 	/* Input endpoint is mandatory */
 	if (!ir_ep_found) {
 		dev_err(&interface->dev,
-			"%s: no valid input (IR) endpoint found.\n", __func__);
+			"no valid input (IR) endpoint found.\n");
 		retval = -ENODEV;
 		goto exit;
 	}
@@ -764,15 +761,13 @@ static int sasem_probe(struct usb_interface *interface,
 		goto alloc_status_switch;
 	}
 	if (lirc_buffer_init(rbuf, BUF_CHUNK_SIZE, BUF_SIZE)) {
-		dev_err(&interface->dev,
-			"%s: lirc_buffer_init failed\n", __func__);
+		dev_err(&interface->dev, "lirc_buffer_init failed\n");
 		alloc_status = 4;
 		goto alloc_status_switch;
 	}
 	rx_urb = usb_alloc_urb(0, GFP_KERNEL);
 	if (!rx_urb) {
-		dev_err(&interface->dev,
-			"%s: usb_alloc_urb failed for IR urb\n", __func__);
+		dev_err(&interface->dev, "usb_alloc_urb failed for IR urb\n");
 		alloc_status = 5;
 		goto alloc_status_switch;
 	}
@@ -780,8 +775,7 @@ static int sasem_probe(struct usb_interface *interface,
 		tx_urb = usb_alloc_urb(0, GFP_KERNEL);
 		if (!tx_urb) {
 			dev_err(&interface->dev,
-				"%s: usb_alloc_urb failed for VFD urb",
-				__func__);
+				"usb_alloc_urb failed for VFD urb");
 			alloc_status = 6;
 			goto alloc_status_switch;
 		}
@@ -805,8 +799,7 @@ static int sasem_probe(struct usb_interface *interface,
 
 	lirc_minor = lirc_register_driver(driver);
 	if (lirc_minor < 0) {
-		dev_err(&interface->dev,
-			"%s: lirc_register_driver failed\n", __func__);
+		dev_err(&interface->dev, "lirc_register_driver failed\n");
 		alloc_status = 7;
 		retval = lirc_minor;
 		goto unlock;
diff --git a/drivers/staging/media/lirc/lirc_zilog.c b/drivers/staging/media/lirc/lirc_zilog.c
index e16627c..abcc9e4 100644
--- a/drivers/staging/media/lirc/lirc_zilog.c
+++ b/drivers/staging/media/lirc/lirc_zilog.c
@@ -1590,8 +1590,7 @@ static int ir_probe(struct i2c_client *client, const struct i2c_device_id *id)
 		if (IS_ERR(rx->task)) {
 			ret = PTR_ERR(rx->task);
 			dev_err(tx->ir->l.dev,
-				"%s: could not start IR Rx polling thread\n",
-				__func__);
+				"could not start IR Rx polling thread\n");
 			/* Failed kthread, so put back the ir ref */
 			put_ir_device(ir, true);
 			/* Failure exit, so put back rx ref from i2c_client */
-- 
1.9.1


