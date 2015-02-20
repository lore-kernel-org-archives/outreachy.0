X-GM-THRID: 1524698710016
X-Received: by 10.152.43.166 with SMTP id x6mr1518315lal.3.1424462465726;
        Fri, 20 Feb 2015 12:01:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.25.201 with SMTP id e9ls270075lag.67.gmail; Fri, 20 Feb
 2015 12:01:05 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr399560lbc.3.1424462465225;
        Fri, 20 Feb 2015 12:01:05 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x244.google.com (mail-we0-x244.google.com. [2a00:1450:400c:c03::244])
        by gmr-mx.google.com with ESMTPS id ev8si165633wib.3.2015.02.20.12.01.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 12:01:05 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::244 as permitted sender) client-ip=2a00:1450:400c:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::244 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x244.google.com with SMTP id w62so2198975wes.3
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 12:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ChuNrxeUSCEL8Lj8uo2iLUZAPk//apsPOGyglB17RUE=;
        b=wwG+zXi/vjFc7R5F9n9o+zOtzjROside0YDUG8m6A+eHV5WHbeXiZPwg39zMo0H2Zn
         buDocE6EDwPJ8pBP3TSOBTEe55gialrxybZhYXHF53IHtRSvhzSt8cB99QuZMR7+Jo64
         98uAbjQiuSpTKBY/HGbxEsTj/u3m31yt2v0ejxEuwhxTZp5MLFQBByplp+W/dgyTqM35
         FhmzWvEuKrPp3ewfQj6SJCG4W4ePpvZ9gTIRkFof90B4AZWS2yn4nRVfSykbkKUKakbA
         OGVZdZw64BxCyd5O3F4ATxcTNAxfkSKPh/Nx2gpJBPZuWJzyEf8+qVD4Kv2E46cERuc4
         T/fg==
X-Received: by 10.180.221.73 with SMTP id qc9mr1002658wic.8.1424462465101;
        Fri, 20 Feb 2015 12:01:05 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id k6sm3819321wia.6.2015.02.20.12.01.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 12:01:04 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: vt6655: Deleted space
Date: Fri, 20 Feb 2015 22:00:57 +0200
Message-Id: <1424462457-6784-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Deleted spaces before ','.Because it is prohibited by the kernel coding style.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/vt6655/mac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index dd241bb..f3c492f 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -808,7 +808,7 @@ bool MACbPSWakeup(void __iomem *dwIoBase)
 
 	/* Check if SyncFlushOK */
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-		VNSvInPortB(dwIoBase + MAC_REG_PSCTL , &byOrgValue);
+		VNSvInPortB(dwIoBase + MAC_REG_PSCTL, &byOrgValue);
 		if (byOrgValue & PSCTL_WAKEDONE)
 			break;
 	}
-- 
1.9.1


