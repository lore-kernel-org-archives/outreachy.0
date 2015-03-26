X-GM-THRID: 9907099140096
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c1bc540292f7988c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.170.129 with SMTP id am1mr13231574vdc.1.1427328715124;
        Wed, 25 Mar 2015 17:11:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.211 with SMTP id v77ls595298qgv.11.gmail; Wed, 25 Mar
 2015 17:11:54 -0700 (PDT)
X-Received: by 10.236.51.170 with SMTP id b30mr13555924yhc.34.1427328714929;
        Wed, 25 Mar 2015 17:11:54 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x22c.google.com (mail-qg0-x22c.google.com. [2607:f8b0:400d:c04::22c])
        by gmr-mx.google.com with ESMTPS id e5si515875qcg.1.2015.03.25.17.11.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 17:11:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) client-ip=2607:f8b0:400d:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22c.google.com with SMTP id 3so57728738qgh.2
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 17:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=QnIiwvAc45D15kpqnosnl8niLNbA4CNk4WFosHBMoxE=;
        b=LwUscTIkSAun2rkOVD3GD0+gwBa8NHjMxdex0upnKX1J+WOsNii+xv23LN2LiMR6x0
         my4I32Mm2U+nrW7VukAJXlZ6Vc9KZffUWatTpRTmYuHONUfggUswrHff7pIKb3b+Ih0N
         /LIEPKKxzfNypDPy2scGWmkOCMuOo/AA6UvAbttMjeGB5ivhCV10Ygw5gJsoefdeiqEN
         sJ5yKAUb++piVw3ZO7VOkiB+m094KDRgkZhk0w92L3MTj+Hwv3L8EItlIHd5HbnBfX1s
         ej8Qoi2JDiXfBm/tAA4t7pYoeDaCqSv2lgx7gnn3x7BtqCAbfzdjbjEwLPWOBb7qj3fH
         bFSQ==
X-Received: by 10.229.65.8 with SMTP id g8mr15441332qci.15.1427328714845;
        Wed, 25 Mar 2015 17:11:54 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.linksys.com ([179.159.91.9])
        by mx.google.com with ESMTPSA id c39sm2508516qgd.34.2015.03.25.17.11.53
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2015 17:11:54 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH] Staging: octeon: Remove extern from .c file
Date: Wed, 25 Mar 2015 21:11:44 -0300
Message-Id: <1427328704-6622-1-git-send-email-helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:

WARNING: externs should be avoided in .c files
+extern void octeon_mdiobus_force_mod_depencency(void);

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/octeon/ethernet-mdio.h | 3 +++
 drivers/staging/octeon/ethernet.c      | 2 --
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-mdio.h b/drivers/staging/octeon/ethernet-mdio.h
index eccfcc5..6191b08 100644
--- a/drivers/staging/octeon/ethernet-mdio.h
+++ b/drivers/staging/octeon/ethernet-mdio.h
@@ -40,5 +40,8 @@
 #endif /* CONFIG_XFRM */
 
 extern const struct ethtool_ops cvm_oct_ethtool_ops;
+
+extern void octeon_mdiobus_force_mod_depencency(void);
+
 int cvm_oct_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
 int cvm_oct_phy_setup_device(struct net_device *dev);
diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 79f3334..f539d82 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -573,8 +573,6 @@ static const struct net_device_ops cvm_oct_pow_netdev_ops = {
 #endif
 };
 
-extern void octeon_mdiobus_force_mod_depencency(void);
-
 static struct device_node *cvm_oct_of_get_child(
 				const struct device_node *parent, int reg_val)
 {
-- 
1.9.1


