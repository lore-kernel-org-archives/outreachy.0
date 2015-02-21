X-GM-THRID: 1866511417344
X-Received: by 10.194.11.70 with SMTP id o6mr323613wjb.6.1424530189147;
        Sat, 21 Feb 2015 06:49:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.7.229 with SMTP id m5ls248259wia.14.canary; Sat, 21 Feb
 2015 06:49:47 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr285296wik.5.1424530187898;
        Sat, 21 Feb 2015 06:49:47 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id l8si515184wia.0.2015.02.21.06.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 06:49:47 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id w62so10400347wes.9
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 06:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=D06cucdGMc0VXCLUvBeXN7jS14LEwLEzZJOlyvxIFQI=;
        b=QZYHDtTZslZM/0GxVYhkQ/dH/BFiK+ES+W1kfQXuUZ6MV6GYReE2TcFME/IKzMACG3
         Ai5/rFlK9bDU6IJ5D0rTKaVVOoMFikH9MVZW0JsGd9Ymt9zCN3RzkEM/JuTCkhHSrL2N
         8nsIdgA77ZJVt2gX5ixcX5yL3fEnu7daAQZf2w7eRaFodqjG41nfW6GCK9MH5JdHnQ4p
         WE1Y3v3GuLsXFavNmgguuQ1D1/IL+ubk4R96kLByTymDXDpk+BFFZyBR/OOSzZDrXkOp
         14K9YXhfibaqL8f251t8ozl8xHb4AJbjFP4fYO5Ljw2J71uhCB3HeDUsLbAkNC0oTBPK
         FKdQ==
X-Received: by 10.194.62.167 with SMTP id z7mr5379986wjr.106.1424530187809;
        Sat, 21 Feb 2015 06:49:47 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id eb10sm7240101wib.13.2015.02.21.06.49.46
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 06:49:47 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: Deleted unnecessary parentheses
Date: Sat, 21 Feb 2015 16:49:40 +0200
Message-Id: <1424530180-17161-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Deleted unnecessary parentheses.Because unnecessary use of parentheses should be avoided.
This warning found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index cfc404f..62ed07b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -307,7 +307,7 @@ void rtw_set_rpwm(struct adapter *padapter, u8 pslv)
 			pslv = PS_STATE_S3;
 	}
 
-	if ((pwrpriv->rpwm == pslv)) {
+	if (pwrpriv->rpwm == pslv) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_err_,
 			 ("%s: Already set rpwm[0x%02X], new=0x%02X!\n", __func__, pwrpriv->rpwm, pslv));
 		return;
-- 
1.9.1


