X-GM-THRID: 6396185012305133568
X-Received: by 10.25.17.102 with SMTP id g99mr3089682lfi.6.1489227873643;
        Sat, 11 Mar 2017 02:24:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.217 with SMTP id c86ls1194711ljd.10.gmail; Sat, 11 Mar
 2017 02:24:24 -0800 (PST)
X-Received: by 10.46.9.141 with SMTP id 135mr4144548ljj.19.1489227864048;
        Sat, 11 Mar 2017 02:24:24 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id y19si215069wmd.0.2017.03.11.02.24.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 02:24:24 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id u132so2523040wmg.1
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 02:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=1JB5ENLQW9+jnYBarQCO2QO+ZU0OzqxjZHJGFzkb8xI=;
        b=mL1fH8MVwzzsda/0QgjYvUj4uiusuw9deIEV4DGm1XLXDbBm2yOZ2VeuNjnKuGFJFC
         8ZiZV7eMsv9ur/SX2gQA5F5M6U8fUeujgXq4OxbfYchetATKcvTseL/BNI5G51MS0kBP
         oaX+r6o5YqMytRgTkz6qDHmcXcXoZdSWyreiIEkk/p+Hc5hq9g2yHa0ibq1Txo2IcHjs
         PNzt+wZo3XHnVkj/HJYhgUBUrJ54gnH+Y4Bqyj8pPDylKAoWoXMBozNEMCSvpAFD6UpK
         BbRb5Pwghv+MKT6qLMSPdBBNYqyg40D3/MUE9BILFy330MBv/s2f1kbQS+jpdesBjiK+
         2dhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1JB5ENLQW9+jnYBarQCO2QO+ZU0OzqxjZHJGFzkb8xI=;
        b=hxOeT/H8aEZNDuvBJvZxrvYJmUZOCtplmqaB87j64cST/TtQajTUKnXEM9XZuB6X+j
         u5Wzj2Q/AtqcH1c6aLcJUV0JR86EKQh3BDsWRMCgpgOHbynfZBrjRiN50iblVIKR1tXH
         Q4uPvfkEFbVkRnNJJnp8yHI3ECutpIXoyMA8/MJWwSUkRbsKqIogBukpEkKrP7BqEV98
         pjUuwvB7q9Kv4zuPJiGQXjl9V5lR1+w987/R2Vle6qoptNWu0E24ypUouVK7ml8/4pgR
         IyfsvN5HgbnXfg2p0dooSVmzC+lXOIUE75ys0err0B3UWpUEFewXxGWLLLfNvFmioV+u
         Q2WQ==
X-Gm-Message-State: AFeK/H0OVhop8izAnfp36sF1V6cto9yl1E9lBm09T9Qfe68fBv0qTNimXkyAfBMzMwZCUg==
X-Received: by 10.28.226.4 with SMTP id z4mr2583721wmg.135.1489227863874;
        Sat, 11 Mar 2017 02:24:23 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id e6sm16825566wrc.30.2017.03.11.02.24.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 02:24:22 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging: wilc1000: Avoid excessive indentation
Date: Sat, 11 Mar 2017 12:24:19 +0200
Message-Id: <20170311102419.7302-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Modified if/else segment to avoid excessive indentation.
Fix the checkpatch.pl warning:
WARNING: line over 80 characters.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index 2eebc62..0292aab 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -866,14 +866,13 @@ static int wilc_mac_open(struct net_device *ndev)
 				wilc_set_wfi_drv_handler(vif,
 							 wilc_get_vif_idx(vif),
 							 wl->open_ifcs);
-			} else {
-				if (memcmp(wl->vif[i ^ 1]->bssid,
-					   wl->vif[i ^ 1]->src_addr, 6))
-					wilc_set_wfi_drv_handler(vif,
+			} else if (memcmp(wl->vif[i ^ 1]->bssid,
+					   wl->vif[i ^ 1]->src_addr, 6)){
+				wilc_set_wfi_drv_handler(vif,
 							 wilc_get_vif_idx(vif),
 							 0);
-				else
-					wilc_set_wfi_drv_handler(vif,
+			else
+				wilc_set_wfi_drv_handler(vif,
 							 wilc_get_vif_idx(vif),
 							 1);
 			}
-- 
2.9.3


