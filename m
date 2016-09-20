X-GM-THRID: 6331894376811200512
X-Received: by 10.107.133.214 with SMTP id p83mr5364063ioi.59.1474340970980;
        Mon, 19 Sep 2016 20:09:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.10 with SMTP id 10ls1190933oty.10.gmail; Mon, 19 Sep
 2016 20:09:30 -0700 (PDT)
X-Received: by 10.157.36.133 with SMTP id z5mr624409ota.89.1474340970605;
        Mon, 19 Sep 2016 20:09:30 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id um12si5547682pab.2.2016.09.19.20.09.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 20:09:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id hi10so239918pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 20:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=FlDSZjXkqye0KdPk656zdOa4CwKkiXBaTehO2LFKhQA=;
        b=rHggKCt/bHalBFCtMoaTO+7PiGLOpCb2iiB2/qFc9SVNfv3IeDHb3Ft+3XHFFLN3ia
         DOTD2dqog1Jj6Enmebpb5yuaQzbdfqxtFvMyxyEYpqyA0W94GyX/7D9pTs1fMOrmCpWN
         g68brWF2FaO6vIwRHeuxlnBgvjuQLy7BGe7YmqtGUNkMFiG/UjN27ukoS5zZEsgTzayd
         /sWws4HPF/9g32IazyUwglDuOE8Dbs+nCAxKAxUKc+2XkG+F3bhhdAXLe4yTjGJhjYwB
         2QNeVu5IHRK7h/5OiUcOc90v/pUEwuZPSPUoSRX6O6bcGYldn06OXcF3Yim4UIGZiEFT
         hJNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=FlDSZjXkqye0KdPk656zdOa4CwKkiXBaTehO2LFKhQA=;
        b=Z4tW2jiHl3uUgiPqTTBrTsUbuXbZOvFzx59p8NA+xxM8MzfRgQohcCQ1keSU3EIIeu
         xCvNKGq8Z3AEwyFGjYTbj6e8AuwLFBnBtmbZzKf0H8M18UZrvYF6CbXJOImUP8maSyZ+
         R4QZdjtiOesoCgtJww+El9WhigH8LAlueMJTu5nHzus8V8Ew0LtQx4hiYic3tAm1LuJA
         QZAmyy8uNUeqUzDCc/uZCJrRUHcx/5eeaj+1uNQJc7rotqKGHgZBdCSY6noSVJkNlZxw
         /AUdAFz+bZH18udX8l/2VSTIbDDlgsSXeQkdlwstEooYaJWWSeta74sHzOtj15e4qPnE
         S9IQ==
X-Gm-Message-State: AE9vXwP9bHFbc/AUNT/39uwAIPLu/q/ujj5DjebRHWxelUK5KCy3Brcz9IuvuS8O0hCyaQ==
X-Received: by 10.66.135.10 with SMTP id po10mr15716399pab.141.1474340970413;
        Mon, 19 Sep 2016 20:09:30 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.142])
        by smtp.gmail.com with ESMTPSA id s12sm74469033pfj.73.2016.09.19.20.09.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 20:09:30 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2] staging: most: hdm-usb: convert pr_warn() to dev_warn()
Date: Tue, 20 Sep 2016 11:09:05 +0800
Message-Id: <1474340945-6076-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace pr_warn() call with its respective dev_warn() counterpart.
Semantic patch used to detect and apply the transformation:

@a@
identifier dev;
expression E;
@@

	struct device *dev = E;
	<+... when != dev == NULL
- pr_warn(
+ dev_warn(dev,
		...);
	...+>

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
Change in v2:
* amend coccinelle script to drop unnecessary matching statements

 drivers/staging/most/hdm-usb/hdm_usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
index 5b27e96..6fc20b1 100644
--- a/drivers/staging/most/hdm-usb/hdm_usb.c
+++ b/drivers/staging/most/hdm-usb/hdm_usb.c
@@ -1315,8 +1315,8 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 				  ep_desc->bEndpointAddress * 16,
 				  1);
 		if (err < 0)
-			pr_warn("DCI Sync for EP %02x failed",
-				ep_desc->bEndpointAddress);
+			dev_warn(dev, "DCI Sync for EP %02x failed",
+				 ep_desc->bEndpointAddress);
 	}
 	dev_notice(dev, "claimed gadget: Vendor=%4.4x ProdID=%4.4x Bus=%02x Device=%02x\n",
 		   le16_to_cpu(usb_dev->descriptor.idVendor),
-- 
2.7.4


