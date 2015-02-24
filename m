X-GM-THRID: 3327697879040
X-Received: by 10.194.178.234 with SMTP id db10mr2442159wjc.2.1424812881622;
        Tue, 24 Feb 2015 13:21:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.90.175 with SMTP id bx15ls835284wib.17.gmail; Tue, 24 Feb
 2015 13:21:21 -0800 (PST)
X-Received: by 10.194.239.41 with SMTP id vp9mr2443611wjc.5.1424812881280;
        Tue, 24 Feb 2015 13:21:21 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id i7si992382wif.0.2015.02.24.13.21.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 13:21:21 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id ex7so8253468wid.4
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 13:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=YYhhOW/4g31w37KRrxPN6a9W3YooNviDGwLVvZFjfvY=;
        b=wxUJirsTUGPOLN2IytyYqLV4HDA8UQKtqPGW0miLxXHYnVccKG3UQBsvJJHCyTaLQZ
         pHMsmZq19K5mwi49tLLjieEes3yUiHmV4ZYiroPrX2s/k1twpYRWmLe7Fi9ARX1lsTiM
         E2o/BOx24C2EPcmYX2xippJtWLMFoii0d54U1XyOBuUmb9eQp2RFOV6iBqKcEYhnWz3f
         knz69sQPX6AP7YQxOF93+zWElHCV+Bnws/8bd63dM1lKkRGr18SLErElDHIQdZdMVSiA
         gVdb2RunL8BXOf6yH4N0HP5acxZbm72fi/oXXHHctMUm1Z6xHY0CXoWZd2A2TqClmuOS
         esTA==
X-Received: by 10.181.13.4 with SMTP id eu4mr238232wid.41.1424812881159;
        Tue, 24 Feb 2015 13:21:21 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id dj4sm61881324wjc.13.2015.02.24.13.21.20
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Feb 2015 13:21:20 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Simplify if condition
Date: Tue, 24 Feb 2015 22:21:12 +0100
Message-Id: <1424812872-8243-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove unnecessary TRUE statement. Field bMediaConnect is of bool
type, so such change is correct.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index f343735..8d82f31 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -1186,7 +1186,7 @@ bool rtl8192_SetRFPowerState(struct net_device *dev,
 				/* Turn on RF we are still linked, which might
 				   happen when we quickly turn off and on HW RF.
 				 */
-				if (pMgntInfo->bMediaConnect == TRUE)
+				if (pMgntInfo->bMediaConnect)
 					Adapter->HalFunc.LedControlHandler(Adapter, LED_CTL_LINK);
 				else
 					/* Turn off LED if RF is not ON. */
-- 
1.9.1


