X-GM-THRID: 6258590629737005056
X-Received: by 10.50.117.33 with SMTP id kb1mr3425736igb.2.1457191684999;
        Sat, 05 Mar 2016 07:28:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.37 with SMTP id c5ls593893igt.22.canary; Sat, 05 Mar
 2016 07:28:04 -0800 (PST)
X-Received: by 10.66.146.10 with SMTP id sy10mr10013055pab.24.1457191684613;
        Sat, 05 Mar 2016 07:28:04 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id r75si2081659pfr.0.2016.03.05.07.28.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 07:28:04 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fl4so52096908pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 07:28:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=H59N+HuGaSm+AsYbfp+QM7li5ouPrzKEh/SgOHUSDqA=;
        b=f3FzhpJO8MisEfK8yRVtZ3d8avTz8Jdfbw9PHX84h/xdORZEUV0FR0k0lpg2vHdUX6
         jgM+VOGWbs3R8430Di6B7gl5bqDRCZGLo/ETDR7nYZQjT+6HcZtM5FkDNFDikFZM42+4
         sI/Qmjde7U+eF9znU8xLNGBBAQI5ega5pvWv1tLWahEtfUBKsw8XYPSHUw7HFY5WxDMo
         3gp/aPQqWe4B56sGz5kMnpp9PZr2hfRd8wQICVUlrKm9JXLKI7JKCTOI/eDUqKkiZl0G
         rM9MIAxT6wqutQpfnX7W9HWq3N6I2K128WbFUYRDtU5mRrYvcMfVCsooD892hSbi+T2h
         pM3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=H59N+HuGaSm+AsYbfp+QM7li5ouPrzKEh/SgOHUSDqA=;
        b=Tx/TqjSYAXgtMwy3vnU5QZ8i/aGtOGnD00qfHTMaAfVn6xiiV2vfMfsvJaWNvtrWVS
         Fta9S6G/wyHssbHKx493eDQp2P5TqnjzbGaJh1MloBv4Dy75Y+usWurz+0DhDOwMjtQr
         0Ke2z3YLTM1+i/enb8aXqY1KK+IYPdpMMVmvl2e3HKIymS5k6gGo09I8FFpnUSM4xB/d
         3wXPDJPyAP5VhuBEx3n9rFpQL4xIoXJxlLUDDzd06JIsr8W5L1A5vtiJ59d3VfAS4VBI
         mXUan+s9Myxv4NvK1HkuHrRaEkd6COhBG5Gq0EVnTYoq0KJmJlD24ZiJIG68REhy3iM/
         ucZQ==
X-Gm-Message-State: AD7BkJISEJP+gGAbPJxl8Ga0WvN3uHNTE8rPY4B2CSnlmPbuW3vsGoTsJ2xCpoelXeJyjA==
X-Received: by 10.66.250.199 with SMTP id ze7mr20790839pac.103.1457191684476;
        Sat, 05 Mar 2016 07:28:04 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.160])
        by smtp.gmail.com with ESMTPSA id wh9sm13187354pab.8.2016.03.05.07.28.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 07:28:03 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: sm750fb: convert pr_err() to dev_err()
Date: Sat,  5 Mar 2016 23:27:59 +0800
Message-Id: <1457191679-12740-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace pr_err() calls with respective dev_err() counterpart.
Semantic patch used to detect and apply the transformation:

@r exists@
identifier f,s,i;
position p;
@@

f(...,struct s *i,...) {
  <+...
  pr_err@p(...)
  ...+>
}

@s@
identifier r.s, dev;
@@

struct s {
	...
	struct device dev;
	...
};

@t@
identifier r.i, s.dev;
expression fmt;
position r.p;
@@

- pr_err@p(
+ dev_err(&i->dev,
			fmt, ...);

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 59c7455..7275cdb 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -418,14 +418,17 @@ static int lynxfb_suspend(struct pci_dev *pdev, pm_message_t mesg)
 
 		ret = pci_save_state(pdev);
 		if (ret) {
-			pr_err("error:%d occurred in pci_save_state\n", ret);
+			dev_err(&pdev->dev,
+				"error:%d occurred in pci_save_state\n", ret);
 			return ret;
 		}
 
 		pci_disable_device(pdev);
 		ret = pci_set_power_state(pdev, pci_choose_state(pdev, mesg));
 		if (ret) {
-			pr_err("error:%d occurred in pci_set_power_state\n", ret);
+			dev_err(&pdev->dev,
+				"error:%d occurred in pci_set_power_state\n",
+				ret);
 			return ret;
 		}
 	}
@@ -453,7 +456,8 @@ static int lynxfb_resume(struct pci_dev *pdev)
 
 	ret = pci_set_power_state(pdev, PCI_D0);
 	if (ret) {
-		pr_err("error:%d occurred in pci_set_power_state\n", ret);
+		dev_err(&pdev->dev,
+			"error:%d occurred in pci_set_power_state\n", ret);
 		return ret;
 	}
 
@@ -461,7 +465,9 @@ static int lynxfb_resume(struct pci_dev *pdev)
 		pci_restore_state(pdev);
 		ret = pci_enable_device(pdev);
 		if (ret) {
-			pr_err("error:%d occurred in pci_enable_device\n", ret);
+			dev_err(&pdev->dev,
+				"error:%d occurred in pci_enable_device\n",
+				ret);
 			return ret;
 		}
 		pci_set_master(pdev);
-- 
1.9.1


