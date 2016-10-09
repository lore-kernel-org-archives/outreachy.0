X-GM-THRID: 6339553027086614528
X-Received: by 10.107.158.74 with SMTP id h71mr6830373ioe.12.1476042211762;
        Sun, 09 Oct 2016 12:43:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.7 with SMTP id h7ls9042080otb.23.gmail; Sun, 09 Oct
 2016 12:43:31 -0700 (PDT)
X-Received: by 10.157.56.131 with SMTP id p3mr5855161otc.83.1476042211474;
        Sun, 09 Oct 2016 12:43:31 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id p131si2703457vkf.1.2016.10.09.12.43.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 12:43:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id l131so6605369lfl.0
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 12:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=w4xQVHZOV6puYV3rMZA/3PXrXOaiEL6yeYwXrk5UN10=;
        b=vBpCPkAkuiD2JA/pHQgKLB4DjhOOdC6L0pOo7RjsKp4wSIcGsXXcqHvm89Bkzxj4lm
         0T+liERVS6hmNgwm/4gkElI9r+FhafqmfO2DDRoufnlSP2VKN2b4sC+8vX0iCyVppIbQ
         vWx1sW4+cmscxoFP3q4Y7h3hvfoSgw3vbnK1sNZFmuagvSC22q4gcqGMufpEYjw3POny
         ru4axNiKGm71ksq6fZeL7xzVdGi1vQbnMxLaFbQbTc3utITpYPbzp1pWuioojlsXMDiL
         DV8j7xbI0Am6tumjHXEzLrlGD2k+wILTNMWHGxE5qZtjlPMe1iHM5eZhjhZ7taZMN2bH
         +K1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=w4xQVHZOV6puYV3rMZA/3PXrXOaiEL6yeYwXrk5UN10=;
        b=OY2OpoqK90Lr4JasEUZsKf3ta5eFgQiQ4I7rsCR3wuUxKtIIBA9Bl1sv5ij49dpK1D
         5ziUKiC6L7OVjkP27v+9eqxa64yCiwVU3ZGppbzEDjDDvbhUketoSpigpP+B1D+oVX3w
         9LEIhzgSWi14aJ/rN0ZW/B5R2ktua/Z+IfRqhw27S3wXmTitAoWbe4QKUGRi8Qs2mRBW
         VsLXosRSj7tmx+wBavHt/O08WXcMPWM9fFibv1s3EWAFMvDba6TJfl4eekuZEzLhXh4P
         v/HTMNzCCa/f85XA0cmdX6KuVpoS7Pt7a2li4fgF9zPetnxNCy+HUpo/AwIg7NMsf6WV
         9gNw==
X-Gm-Message-State: AA6/9RlB6BfTiPumPQPvNi+zpzNby990xNIQyt4oRE69eZiVly7xLyhLjbEFpL42IzemcA==
X-Received: by 10.194.84.144 with SMTP id z16mr25509602wjy.210.1476042210025;
        Sun, 09 Oct 2016 12:43:30 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.251.249])
        by smtp.gmail.com with ESMTPSA id iq2sm33238840wjb.19.2016.10.09.12.43.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 09 Oct 2016 12:43:29 -0700 (PDT)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rts5208: Remove unnecessary parentheses
Date: Sun,  9 Oct 2016 22:43:21 +0300
Message-Id: <1476042201-3327-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Problem found using checkpatch.pl
CHECK: Unnecessary parentheses around dev->dev_mutex

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rts5208/rtsx.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index 5d65a5c..750e2a7 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -313,7 +313,7 @@ static int rtsx_suspend(struct pci_dev *pci, pm_message_t state)
 		return 0;
 
 	/* lock the device pointers */
-	mutex_lock(&(dev->dev_mutex));
+	mutex_lock(&dev->dev_mutex);
 
 	chip = dev->chip;
 
@@ -349,7 +349,7 @@ static int rtsx_resume(struct pci_dev *pci)
 	chip = dev->chip;
 
 	/* lock the device pointers */
-	mutex_lock(&(dev->dev_mutex));
+	mutex_lock(&dev->dev_mutex);
 
 	pci_set_power_state(pci, PCI_D0);
 	pci_restore_state(pci);
@@ -418,7 +418,7 @@ static int rtsx_control_thread(void *__dev)
 			break;
 
 		/* lock the device pointers */
-		mutex_lock(&(dev->dev_mutex));
+		mutex_lock(&dev->dev_mutex);
 
 		/* if the device has disconnected, we are free to exit */
 		if (rtsx_chk_stat(chip, RTSX_STAT_DISCONNECT)) {
@@ -536,7 +536,7 @@ static int rtsx_polling_thread(void *__dev)
 		schedule_timeout(msecs_to_jiffies(POLLING_INTERVAL));
 
 		/* lock the device pointers */
-		mutex_lock(&(dev->dev_mutex));
+		mutex_lock(&dev->dev_mutex);
 
 		/* if the device has disconnected, we are free to exit */
 		if (rtsx_chk_stat(chip, RTSX_STAT_DISCONNECT)) {
@@ -550,7 +550,7 @@ static int rtsx_polling_thread(void *__dev)
 		mspro_polling_format_status(chip);
 
 		/* lock the device pointers */
-		mutex_lock(&(dev->dev_mutex));
+		mutex_lock(&dev->dev_mutex);
 
 		rtsx_polling_func(chip);
 
@@ -886,7 +886,7 @@ static int rtsx_probe(struct pci_dev *pci,
 	}
 
 	spin_lock_init(&dev->reg_lock);
-	mutex_init(&(dev->dev_mutex));
+	mutex_init(&dev->dev_mutex);
 	init_completion(&dev->cmnd_ready);
 	init_completion(&dev->control_exit);
 	init_completion(&dev->polling_exit);
-- 
1.9.1


