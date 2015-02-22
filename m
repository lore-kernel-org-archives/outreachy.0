X-GM-THRID: 2590517493760
X-Received: by 10.112.174.36 with SMTP id bp4mr844658lbc.15.1424637391690;
        Sun, 22 Feb 2015 12:36:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.72 with SMTP id v8ls428823wiz.15.gmail; Sun, 22 Feb
 2015 12:36:31 -0800 (PST)
X-Received: by 10.180.87.166 with SMTP id az6mr864317wib.1.1424637391328;
        Sun, 22 Feb 2015 12:36:31 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id el6si549351wib.2.2015.02.22.12.36.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 12:36:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f47.google.com with SMTP id x12so22172677wgg.6
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 12:36:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=z+TBkaN+RBld+fG4MBc2GojRaKOeBdPquq/joA0kivM=;
        b=iaccxT7nPZVFald77Ymby9qc/M9CCWn4E2q+B0jxf0J36rpxVRznl9i6XCZMImpXyc
         exB5AI7zyW5XZ9K1Cv2TF20IhmRz9FbQnHNjIZNOQt47OuMWG2QWEPtX9uGFP0U8rK6P
         9DLuxPNg6M/Ku1MCf4/7gMzTawlmwF4dRqlctzmmQB+9htGXF2swBX9MU9GKOM9ZiauB
         l0ebksvQeuTTC4wQ3HbMBc9Js8DGsSixpOO8AlSgYcgK8CNwG+7dDeGwT26j8OljWmLw
         3d59ut9I6lAMhrheC/u3VmLAOI/Hyj0xJjwPkqSUDeCJBV6OLvvtKG7IFtEcO4yyCBCy
         5TKA==
X-Received: by 10.180.86.227 with SMTP id s3mr14654470wiz.58.1424637391262;
        Sun, 22 Feb 2015 12:36:31 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id m4sm12874140wik.20.2015.02.22.12.36.30
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 12:36:30 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Replace printk() with pr_debug()
Date: Sun, 22 Feb 2015 21:36:22 +0100
Message-Id: <1424637382-27628-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

For dynamic debugging pr_debug() macro is preferred over printk(), which
is the raw way to print something. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/dma/ste_dma40.c                                  | 1 +
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 15d4946..8adae93 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -23,6 +23,7 @@
 #include <linux/amba/bus.h>
 #include <linux/regulator/consumer.h>
 #include <linux/platform_data/dma-ste-dma40.h>
+#include <linux/sizes.h>
 
 #include "dmaengine.h"
 #include "ste_dma40_ll.h"
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
index 8c1bf1f..7fab680 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
@@ -49,14 +49,14 @@ static void *prism2_wep_init(int keyidx)
 
 	priv->tx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->tx_tfm)) {
-		printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
+		pr_debug("ieee80211_crypt_wep: could not allocate "
 		       "crypto API arc4\n");
 		priv->tx_tfm = NULL;
 		goto fail;
 	}
 	priv->rx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->rx_tfm)) {
-		printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
+		pr_debug("ieee80211_crypt_wep: could not allocate "
 		       "crypto API arc4\n");
 		priv->rx_tfm = NULL;
 		goto fail;
-- 
1.9.1


