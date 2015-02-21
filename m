X-GM-THRID: 1850792214528
X-Received: by 10.112.181.198 with SMTP id dy6mr328061lbc.22.1424528837340;
        Sat, 21 Feb 2015 06:27:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.9 with SMTP id p9ls359397lag.86.gmail; Sat, 21 Feb 2015
 06:27:16 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr313722lan.1.1424528836895;
        Sat, 21 Feb 2015 06:27:16 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x241.google.com (mail-wg0-x241.google.com. [2a00:1450:400c:c00::241])
        by gmr-mx.google.com with ESMTPS id o3si308377wib.2.2015.02.21.06.27.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 06:27:16 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::241 as permitted sender) client-ip=2a00:1450:400c:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x241.google.com with SMTP id k14so5628598wgh.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 06:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=+KaxLWHlBMcMZPseW2uOJoKPkOk/328bKxg4N0xxdHU=;
        b=NfrvtSyO9lvXVrut9+pfAY0FmSP7P9Xm9aNZfKLv4ezjKcOIsO3rrPj4zFvMBoZKCr
         dJgT8KajRP+05vw+g5ZrYTdVdqkhM62neDi65+F1Hpkr9gFKgQCtLSOwnvMm4/e4pOXx
         IAD05XKp6AvSkzBqZFMNeWM0twpA8xYcUjiVTZY7Dcp/oHiiuEwsXuDhVqbEivm8DPM+
         8PFKnAzYkIFpUtSzTCDd4L4yfAVfcHUbuKkB9c2UOx79OhXryol7OaYDoTm218dAxFmp
         Rljdizbf5mAs7ZWO31/GN6OPfxslnQybpQsmguVsaskBTi5GezXE5W1poVv08wz46zZ1
         Kytg==
X-Received: by 10.194.176.33 with SMTP id cf1mr4873465wjc.19.1424528836807;
        Sat, 21 Feb 2015 06:27:16 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id a13sm46842379wjx.30.2015.02.21.06.27.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 06:27:16 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: Deleted {}
Date: Sat, 21 Feb 2015 16:27:09 +0200
Message-Id: <1424528829-16295-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Deleted {}.Because braces {} are not necessary for single statement
blocks
This warning found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index df463a2..076d38c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -185,9 +185,9 @@ int ips_leave(struct adapter *padapter)
 		DBG_88E("==>ips_leave cnts:%d\n", pwrpriv->ips_leave_cnts);
 
 		result = rtw_ips_pwr_up(padapter);
-		if (result == _SUCCESS) {
+		if (result == _SUCCESS)
 			pwrpriv->rf_pwrstate = rf_on;
-		}
+
 		DBG_88E_LEVEL(_drv_info_, "nolinked power save leave\n");
 
 		if ((_WEP40_ == psecuritypriv->dot11PrivacyAlgrthm) || (_WEP104_ == psecuritypriv->dot11PrivacyAlgrthm)) {
-- 
1.9.1


