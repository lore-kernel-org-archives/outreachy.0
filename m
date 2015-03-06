X-GM-THRID: 6950918029312
X-Received: by 10.112.199.69 with SMTP id ji5mr2522322lbc.0.1425668557095;
        Fri, 06 Mar 2015 11:02:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.186.71 with SMTP id fi7ls162915wic.28.canary; Fri, 06 Mar
 2015 11:02:36 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr5714165wic.3.1425668556761;
        Fri, 06 Mar 2015 11:02:36 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id l8si240924wia.0.2015.03.06.11.02.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 11:02:36 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx12 with SMTP id x12so4334992wgg.13
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 11:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CRyT8GbF4uUIjeJJxLi3faY1TP2h0xVLFRAlqBCpsmU=;
        b=MrXRSHkm6pZeUpggZaYiByLjnJMgLlLv1kTkjcu9Eupw2obdtN9D8vcXW28EjtS9Kg
         U8k9ZcjMDIfB37LcwbQYGyM80zGdQfCnnba955m0w6wrh2t8AcGW247Jj6JPzUvfi85Z
         jxsgRtZYLZYBqq6gjte8h+b3C1lxannpdXn8CicNE3QTmD+YqBan8CGVL2CIkLszHhVi
         6OaAhbZ3h0m1DWA91KMRLEcY6P5hvj8f0RI1ev5nWyifc+6FVZGgg0QtM+40OmZtBygt
         Yq2kjEEcCcQ1GnujgCr98194lDCSE7JMOSHGMHk5pjJguTMZXf54ItoiSbxJ3Qn37Vhu
         JiNg==
X-Received: by 10.180.77.233 with SMTP id v9mr80024331wiw.28.1425668556613;
        Fri, 06 Mar 2015 11:02:36 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id ch6sm16154972wjc.3.2015.03.06.11.02.34
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 11:02:34 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 1404362672; Fri,  6 Mar 2015 22:02:33 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 4/8] Staging: comedi: clean dev_err logging
Date: Fri,  6 Mar 2015 22:01:38 +0300
Message-Id: <1425668498-27423-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err. dev_err includes information about:
(devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E, R;
expression  msg;
@@

dev_err(E, msg, __func__, R);

@script:python b@
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
expression a.E, a.msg, a.R;
identifier  b.y;
@@

- dev_err(E, msg, __func__, R);
+ dev_err(E, y, R);

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/comedi/drivers/ni_mio_common.c |  4 ++--
 drivers/staging/comedi/drivers/usbduxsigma.c   | 26 +++++++++++---------------
 2 files changed, 13 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 176b64a..97728d2 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -670,8 +670,8 @@ static inline void ni_set_bitfield(struct comedi_device *dev, int reg,
 		ni_writeb(dev, devpriv->g0_g1_select_reg, G0_G1_Select);
 		break;
 	default:
-		dev_err(dev->class_dev,
-			"%s called with invalid register %d\n", __func__, reg);
+		dev_err(dev->class_dev, "called with invalid register %d\n",
+			reg);
 		break;
 	}
 	mmiowb();
diff --git a/drivers/staging/comedi/drivers/usbduxsigma.c b/drivers/staging/comedi/drivers/usbduxsigma.c
index 394969b..f50cf8a 100644
--- a/drivers/staging/comedi/drivers/usbduxsigma.c
+++ b/drivers/staging/comedi/drivers/usbduxsigma.c
@@ -243,9 +243,8 @@ static void usbduxsigma_ai_handle_urb(struct comedi_device *dev,
 		urb->dev = comedi_to_usb_dev(dev);
 		ret = usb_submit_urb(urb, GFP_ATOMIC);
 		if (ret < 0) {
-			dev_err(dev->class_dev,
-				"%s: urb resubmit failed (%d)\n",
-				__func__, ret);
+			dev_err(dev->class_dev, "urb resubmit failed (%d)\n",
+				ret);
 			if (ret == -EL2NSYNC)
 				dev_err(dev->class_dev,
 					"buggy USB host controller or bug in IRQ handler\n");
@@ -292,8 +291,8 @@ static void usbduxsigma_ai_urb_complete(struct urb *urb)
 
 	default:
 		/* a real error */
-		dev_err(dev->class_dev, "%s: non-zero urb status (%d)\n",
-			__func__, urb->status);
+		dev_err(dev->class_dev, "non-zero urb status (%d)\n",
+			urb->status);
 		async->events |= COMEDI_CB_ERROR;
 		break;
 	}
@@ -386,9 +385,8 @@ static void usbduxsigma_ao_handle_urb(struct comedi_device *dev,
 		urb->iso_frame_desc[0].status = 0;
 		ret = usb_submit_urb(urb, GFP_ATOMIC);
 		if (ret < 0) {
-			dev_err(dev->class_dev,
-				"%s: urb resubmit failed (%d)\n",
-				__func__, ret);
+			dev_err(dev->class_dev, "urb resubmit failed (%d)\n",
+				ret);
 			if (ret == -EL2NSYNC)
 				dev_err(dev->class_dev,
 					"buggy USB host controller or bug in IRQ handler\n");
@@ -423,8 +421,8 @@ static void usbduxsigma_ao_urb_complete(struct urb *urb)
 
 	default:
 		/* a real error */
-		dev_err(dev->class_dev, "%s: non-zero urb status (%d)\n",
-			__func__, urb->status);
+		dev_err(dev->class_dev, "non-zero urb status (%d)\n",
+			urb->status);
 		async->events |= COMEDI_CB_ERROR;
 		break;
 	}
@@ -1071,9 +1069,8 @@ static void usbduxsigma_pwm_urb_complete(struct urb *urb)
 	default:
 		/* a real error */
 		if (devpriv->pwm_cmd_running) {
-			dev_err(dev->class_dev,
-				"%s: non-zero urb status (%d)\n",
-				__func__, urb->status);
+			dev_err(dev->class_dev, "non-zero urb status (%d)\n",
+				urb->status);
 			usbduxsigma_pwm_stop(dev, 0);	/* w/o unlink */
 		}
 		return;
@@ -1087,8 +1084,7 @@ static void usbduxsigma_pwm_urb_complete(struct urb *urb)
 	urb->status = 0;
 	ret = usb_submit_urb(urb, GFP_ATOMIC);
 	if (ret < 0) {
-		dev_err(dev->class_dev, "%s: urb resubmit failed (%d)\n",
-			__func__, ret);
+		dev_err(dev->class_dev, "urb resubmit failed (%d)\n", ret);
 		if (ret == -EL2NSYNC)
 			dev_err(dev->class_dev,
 				"buggy USB host controller or bug in IRQ handler\n");
-- 
1.9.1


