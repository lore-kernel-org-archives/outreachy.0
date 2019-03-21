X-GM-THRID: 6670874322503991296
X-Received: by 2002:a25:2d5b:: with SMTP id s27mr3578102ybe.454.1553183962949;
        Thu, 21 Mar 2019 08:59:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:3d0e:: with SMTP id k14ls2276981ywa.4.gmail; Thu, 21 Mar
 2019 08:59:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz7L41WbGpZmS4OsUYVjj3xLpSfxTKVrw39JTQ611rDFjiZOQokXf+jbgiy0+5X865dDWtA
X-Received: by 2002:a81:f005:: with SMTP id p5mr3835678ywm.103.1553183961911;
        Thu, 21 Mar 2019 08:59:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553183961; cv=none;
        d=google.com; s=arc-20160816;
        b=yvG8YdtYlcP5gEe84qDJkMZh40xq/E0igv4JVNi8K3KX3yKpr//x22fuzhL9n90pFI
         kd/pRdPaZ/C6cdKKT09RZP7xWwCU/vqUzPa+tATzzKZ58RiqM0eUjBcuR8mTjS6BBDpX
         ykaKIQeYqx81G19NKpXQbN7KOxa8TgPZKUCYtOXZVisGvJTUg4C4PR0ulziEL6pQGHuD
         IKcnIwQW6X7gp/HuwG8FQv/nreeSxU7WuHt71RUIFXO+GGbgbBdFBeoth6+usX1gDHDu
         GyqRb7D57ZUI77I2wFndUUrHr6NDjCtejqppL8dvPgEmU9yJ4j7wHUt6KY9iE17Wv6q1
         mNjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=UulXr3xzwUxO5hFHSLMapMtG42geHt2nV3BA7/C++eU=;
        b=gSd5dBh4B8/R31FBR89UJ4h4PTcVVQVUu9473gAtr1slFfGwdW8NfcaRG7mineN33g
         l5jTNdgKyXz9Vf2gIozXb6R1mM32p8EmnU7OEfT1Zv4iKMBdkSjW/b4MkQxHJrM+8GAm
         t6B95EyZ+A6G9OZRupBjV/XqGZccMNVmw5N4HavCGaIEfPRitk2KUVblXH1bklTtuWpp
         qq3naWAlfD2Ci868flL2uO/yj7oePEPp1CYf8NA8HNZNdwoY6HTIJltACgCbpqAAWCva
         lxQUTNe6ziF4762+B/76ru7smPIqTwSGmXpcHq0NHRa/yL2A//Ekexlwq5b3gGK5i3Lr
         l+TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U+CyjIBy;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s11si349811ywg.3.2019.03.21.08.59.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 08:59:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U+CyjIBy;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 8so4583705pfr.4
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 08:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=UulXr3xzwUxO5hFHSLMapMtG42geHt2nV3BA7/C++eU=;
        b=U+CyjIByjOyoRvR0Z7l3NKXK45FvKLnhnVL2Um0nVoYiT1j/eRPxRmeirvLv06vhzJ
         4MtPOa4XlH9qmh+xdXNUZlI8a9LZJyIXcKbM8rI5TOxR813vZzKwxOEqgLXJSrx/KPro
         tHCTJw9usv9Kp+nTtECFRskjKmYvTECFcwPaU2kcWAvtVtzqoXu2a8qvzwxFK6wsKiqH
         FKFWGSs4N8E6IJylTzgq1L5w2laoOLFZlfjlTRcAB4vsQgCPz1Ka6QC512P+OevIHW3Y
         +BrDOY4WwrZPU9szA5oAkUwUu+ST+B9DIFwnnB7diCeXFWSll5D1VVh4hyku+swsrx3w
         BBjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=UulXr3xzwUxO5hFHSLMapMtG42geHt2nV3BA7/C++eU=;
        b=AJIKp8+RoPTlhxyN6gMzSENkxsD2+mpWHOgBHn/VDsWgTjyCevGklIyse5jY5nyNo8
         8jx+pfGADnKev6aiW48jUdidy6hxg1aRDZcukDa+lv3/6qnExatBCgwUNodGMbbKkB6D
         NtozN0uuCEt3s9zFn4aH6vUyc/+2phlv7acWlsE7ApfOF9+yEa9x14h5kX4VME+fWNhJ
         lr4ShU+u1qxr46NPZ2YBJbAY1PLbiFpv0nTaJLZv3xKZ1ZABLH7jWTjIWOoqQ2hNpNKa
         3YQ46RqjCLHBoioRekpyQn3FEqQ4o24/GJMu8W68gbP7dWfqUYy+Si1IfGoIxBEnvDiX
         xOnQ==
X-Gm-Message-State: APjAAAXcDra6RdtRGshZOOBAIYIrgAc2RRzXFCG9k9VPjbx0DGpXpG3h
	Z6zG8i7mXVeQo23mJZoR9V64sKrY
X-Received: by 2002:a62:5e46:: with SMTP id s67mr4069837pfb.126.1553183960878;
        Thu, 21 Mar 2019 08:59:20 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.235.30])
        by smtp.gmail.com with ESMTPSA id v1sm8106877pff.9.2019.03.21.08.59.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 08:59:19 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH 3/3] [Outreachy kernel] staging: rtl8712: rtl8712_led.c: remove blank line
Date: Thu, 21 Mar 2019 21:29:06 +0530
Message-Id: <1553183946-9459-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

To avoid style issues, remove multiple blank lines.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_led.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index 344971d..db99129 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -1704,7 +1704,6 @@ static void SwLedControlMode5(struct _adapter *padapter,
 	}
 }
 
-
 static void SwLedControlMode6(struct _adapter *padapter,
 			      enum LED_CTL_MODE LedAction)
 {
-- 
2.7.4


