X-GM-THRID: 2083209084928
X-Received: by 10.181.29.66 with SMTP id ju2mr388318wid.1.1424548961755;
        Sat, 21 Feb 2015 12:02:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.7 with SMTP id cq7ls423587lad.8.gmail; Sat, 21 Feb 2015
 12:02:41 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr429838laa.2.1424548961348;
        Sat, 21 Feb 2015 12:02:41 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id r6si372155wix.0.2015.02.21.12.02.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 12:02:41 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id r20so9409848wiv.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 12:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=HjZHoc+8I/KLGlAvWTivgpBpo6T2UUj0H1ZfLXAT0XI=;
        b=ARFRvYQgLxX0xc8/KZRzoUieYvxiVy3jIFLMunFs/fGDncN+eytfSGxdyPRi2L0rbj
         5rqa1V3zTe7gZ6RFlLOBLtaWWOZ6qhTDnlKx2F4jxxIQ6Ce9VaWXMf/5QF34PYh8g3RX
         Bub5qPimRXDVjsnosn4pcfupU6qyEtKlJRpuncU/InpJrUj7KYYNbSW7dfDAoPukBmge
         cp+3gQS0yEVKFNFyumG0r8iY8SKbAB3dKe2vUSo2nJ0FxEWdLAnwhc7U5hhGbxEcG7LM
         xK2c2LgswMC48brH7MEm2VoCwBY9joDC0Vb1Sw3HFYOCGbocg7Duzsdvr6e81uvwGruK
         pHEg==
X-Received: by 10.180.104.3 with SMTP id ga3mr6440179wib.66.1424548961271;
        Sat, 21 Feb 2015 12:02:41 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.151])
        by mx.google.com with ESMTPSA id ax10sm47961921wjc.26.2015.02.21.12.02.40
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 12:02:40 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: bcm: Fixed else after return or break warning
Date: Sat, 21 Feb 2015 22:02:44 +0200
Message-Id: <1424548964-4936-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

The following patch fixes the checkpatch.pl warning:
drivers/staging/bcm/led_control.c warning: else is not generally useful after a break or return

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/bcm/led_control.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/bcm/led_control.c b/drivers/staging/bcm/led_control.c
index 074fc39..c3c6280 100644
--- a/drivers/staging/bcm/led_control.c
+++ b/drivers/staging/bcm/led_control.c
@@ -21,8 +21,7 @@ bool IsReqGpioIsLedInNVM(struct bcm_mini_adapter *Adapter, UINT gpios)
 	Status = (Adapter->gpioBitMap & gpios) ^ gpios;
 	if (Status)
 		return false;
-	else
-		return TRUE;
+	return TRUE;
 }
 
 static INT LED_Blink(struct bcm_mini_adapter *Adapter,
@@ -95,8 +94,7 @@ static INT ScaleRateofTransfer(ULONG rate)
 		return 9;
 	else if ((rate > 500) && (rate <= 600))
 		return 10;
-	else
-		return MAX_NUM_OF_BLINKS;
+	return MAX_NUM_OF_BLINKS;
 }
 
 static INT blink_in_normal_bandwidth(struct bcm_mini_adapter *ad,
-- 
1.8.3.2


