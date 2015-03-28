X-GM-THRID: 10233226199040
X-Received: by 10.181.29.66 with SMTP id ju2mr1213507wid.1.1427577373616;
        Sat, 28 Mar 2015 14:16:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.9.137 with SMTP id z9ls456870laa.15.gmail; Sat, 28 Mar
 2015 14:16:13 -0700 (PDT)
X-Received: by 10.112.25.7 with SMTP id y7mr6031229lbf.21.1427577373108;
        Sat, 28 Mar 2015 14:16:13 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id sf8si316912wic.2.2015.03.28.14.16.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 14:16:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id m6so132919974wgd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 14:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=zD+55n7wnZv5Yo1G+mV2u85piQ3YCAeVuX/yXVYLOHA=;
        b=zaycbtfIRFsAO4TntGT+2wH8lJbzoRtF8S7GWUmN8o/o1tB/iu65VWmT+2YEDoPCSy
         QLfqcfcltWRJyrq10wtG7E/8LQuFrHMCzd3Kz73UNRpFEKTyUx8lCBAoCFX5uimaav6E
         JAovYTPodUNQ0ZxH7fvLKvmJxFmqMzyEZhovx7hHWndW62sJJBltoxkkJhJqVZ+ovLXS
         ymnKHg8C//1EHf24rUQ6hs/8hggE8QCLO9fqHSI7QJcD5ibKl0IugGPdeEsslPFjls6R
         F3G6VIVy52HikESmk4m0+RCCaDG09YoupLZC3SSB9dLXh+GLKr2uGlLe/ZPBGG3IaXzo
         zHfw==
X-Received: by 10.180.105.2 with SMTP id gi2mr8542211wib.62.1427577373020;
        Sat, 28 Mar 2015 14:16:13 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id kr5sm8652683wjc.1.2015.03.28.14.16.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Mar 2015 14:16:12 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: r8192U_core: Replace 0 with NULL
Date: Sat, 28 Mar 2015 23:16:05 +0200
Message-Id: <1427577365-27525-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace 0 with NULL since member pp_rxskb of structure r8192_priv has pointer type.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index d612e4a..af14a4f 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1751,7 +1751,7 @@ void rtl8192_usb_deleteendpoints(struct net_device *dev)
 	kfree(priv->oldaddr);
 	priv->oldaddr = NULL;
 	kfree(priv->pp_rxskb);
-	priv->pp_rxskb = 0;
+	priv->pp_rxskb = NULL;
 
 #endif
 }
-- 
1.9.1


