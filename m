X-GM-THRID: 6201831238329696256
X-Received: by 10.112.151.9 with SMTP id um9mr4406694lbb.19.1443976359549;
        Sun, 04 Oct 2015 09:32:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.105.202 with SMTP id go10ls631536wib.44.gmail; Sun, 04 Oct
 2015 09:32:39 -0700 (PDT)
X-Received: by 10.195.12.234 with SMTP id et10mr4443270wjd.2.1443976359048;
        Sun, 04 Oct 2015 09:32:39 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id bn1si238394wib.0.2015.10.04.09.32.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 09:32:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id lk2so90044179wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 09:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=FB0lmK4I8FXtzHkqGMxEU+eMMb+Bbmo+lT6G56AWyLI=;
        b=O4w3yN9i5cXAi0vU1Y4kkCeSb/dsPJqKXMzLrq2MIyivzdxD+SNXshSxEuNQPUb5kp
         6i978fiCcGDNYwkhFAeMHATePONjNzMIjd9BOE7XkculOIVC+IRfANFB5Lc1aqfj3PxR
         I2hizswGfrC8GpQfgitZs5bxdMNs4piX9YdlcLgM35DMPCw/WD586Vqqw+8ABOpVSYp8
         C05mz5suUVs/GLJvkAdhjgl0+E9ud6h7eMin+di7O6pMwNuklCjpTuMhSPXcIw5vU43h
         DErP6sIDu7BRIyHKzPnSzBMJYqsgFNJ+s2sYzwyXz9afNxaNVA4ZbQDtp2u9Ewicna5T
         XJzg==
X-Received: by 10.180.106.97 with SMTP id gt1mr7437500wib.4.1443976358941;
        Sun, 04 Oct 2015 09:32:38 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.214])
        by smtp.gmail.com with ESMTPSA id o3sm10008019wif.22.2015.10.04.09.32.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 09:32:38 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: octeon: Move comment to correct location
Date: Sun,  4 Oct 2015 19:32:20 +0300
Message-Id: <1443976340-86703-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove 'Excess function parameter 'addr' description in
'cvm_oct_set_mac_filter'' kernel-doc warning by moving
the desciption to the correct function: cvm_oct_common_set_mac_address

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 7274fda..798aa6c 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -364,13 +364,6 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
 	}
 }
 
-/**
- * cvm_oct_common_set_mac_address - set the hardware MAC address for a device
- * @dev:    The device in question.
- * @addr:   Address structure to change it too.
-
- * Returns Zero on success
- */
 static int cvm_oct_set_mac_filter(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
@@ -413,6 +406,13 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
 	return 0;
 }
 
+/**
+ * cvm_oct_common_set_mac_address - set the hardware MAC address for a device
+ * @dev:    The device in question.
+ * @addr:   Address structure to change it too.
+ *
+ * Returns Zero on success
+ */
 static int cvm_oct_common_set_mac_address(struct net_device *dev, void *addr)
 {
 	int r = eth_mac_addr(dev, addr);
-- 
1.9.1


