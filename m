X-GM-THRID: 6332712433108385792
X-Received: by 10.200.40.134 with SMTP id i6mr6813721qti.84.1474449517292;
        Wed, 21 Sep 2016 02:18:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.201.21 with SMTP id z21ls2615546iof.15.gmail; Wed, 21 Sep
 2016 02:18:33 -0700 (PDT)
X-Received: by 10.66.12.229 with SMTP id b5mr4082489pac.3.1474449513867;
        Wed, 21 Sep 2016 02:18:33 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id e66si3650954pfk.2.2016.09.21.02.18.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 02:18:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 21so2151048pfy.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 02:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=YJfUFyWb5On3UEDZTqegUcWvkVbExd15hUiYvLSK89M=;
        b=tBQEitSoZl23makCK5/slg5DptULg/M/kF2EL6SoUWSkOdn6D/E1m/deNbf1Ok+Gh7
         MZnQV3+hvsypqRVB0o28RWHWV4wwlLZ8qE664bUTxyzF1P7M9KHDLbZAXfNeDSWnX7Ia
         843cxtuGpWPL5tB4FmVmzUeie/tLDaS/4CcP41BTa5kUD7KDMydl6YXkMul4hPZ5Osx2
         8wqwP8vJ4lrcYrbHWQJ1OSzn7C/NSIwbF5YDovEBFFZNhMGeNICXXhtSWUS4JZGDOV1R
         MnNBK6FCkqNJsjI9cMgz4sEnoa/J5kvjz2wg71x1q+jEpIAGFpz1BZbJoM55+iCrNq+3
         Tkgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=YJfUFyWb5On3UEDZTqegUcWvkVbExd15hUiYvLSK89M=;
        b=Csw3wTux6JKAXre80jpNGyS/4n5MP2dyYMU5f6WmXpocl6vo8sXpjz9c/rBwjSahK1
         AQelU7+DpeQS0o7ndC6lZLb6+bnWl7CPY2poESpbo0xTbBSxnvd2cZPeezkoleJ197GA
         IAPPLXQ5WYhUkXs5aEX2ljR3fx7QjpFsur6JmRXlXc5i7PNundpbEwZ/R9S1yT9w21iK
         mjPrn7ij3Y88rtloIfiFe5JLNOSFQHUjoCNl9ZeGubPH2sOf9BsC80HafiRkbMBeOZYH
         Y11IN1ovbdOR0oqwKq/QAbQB0Lw0+O5XWdPrZIaAfl2JKjlxCuqQHf/gCihx46H5Kx78
         Z0Gg==
X-Gm-Message-State: AE9vXwPqqaqcnOb8MYFiir3dMVbZlDPR0+D55lmrQ/qtyvH/MOIQ/YUFr78rG8ou75p1aw==
X-Received: by 10.98.210.202 with SMTP id c193mr64031793pfg.161.1474449513613;
        Wed, 21 Sep 2016 02:18:33 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.62])
        by smtp.gmail.com with ESMTPSA id s1sm44946864paz.47.2016.09.21.02.18.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 02:18:33 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 1/2] staging: greybus: arche-apb-ctrl: declare struct of_device_id as const
Date: Wed, 21 Sep 2016 17:18:06 +0800
Message-Id: <1474449487-9524-2-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1474449487-9524-1-git-send-email-eraretuya@gmail.com>
References: <1474449487-9524-1-git-send-email-eraretuya@gmail.com>

Change the declaration of the structure of_device_id arche_apb_ctrl_of_match
into const as suggested by checkpatch.

WARNING: struct of_device_id should be normally const

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/greybus/arche-apb-ctrl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/arche-apb-ctrl.c b/drivers/staging/greybus/arche-apb-ctrl.c
index 59d9d42..70323aa 100644
--- a/drivers/staging/greybus/arche-apb-ctrl.c
+++ b/drivers/staging/greybus/arche-apb-ctrl.c
@@ -495,7 +495,7 @@ static void arche_apb_ctrl_shutdown(struct platform_device *pdev)
 static SIMPLE_DEV_PM_OPS(arche_apb_ctrl_pm_ops, arche_apb_ctrl_suspend,
 			 arche_apb_ctrl_resume);
 
-static struct of_device_id arche_apb_ctrl_of_match[] = {
+static const struct of_device_id arche_apb_ctrl_of_match[] = {
 	{ .compatible = "usbffff,2", },
 	{ },
 };
-- 
2.7.4


