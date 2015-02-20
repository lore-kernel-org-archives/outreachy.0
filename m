X-GM-THRID: 1297817272320
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,31250cd5bee3b823,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr1250546lbf.21.1424438798010;
        Fri, 20 Feb 2015 05:26:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.42 with SMTP id cr10ls298274lad.91.gmail; Fri, 20 Feb
 2015 05:26:37 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr1278656lai.4.1424438797628;
        Fri, 20 Feb 2015 05:26:37 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id ta1si105827wic.1.2015.02.20.05.26.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 05:26:37 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id em10so2949819wid.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 05:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=NDOq9j6LUN8cHpYQYbCqVIQgaGE4CjLKbnDwUv3oRKs=;
        b=QnUgAbfAo5MtnBvsMebbwROyva2/OzfUut2czOZFBtJy7oVCZ8EJfqi2wFEdMiiOnD
         Fl0+GyrmludjoJbgBDtJSPf6MRCYV79e4SPPK/P9inBjNTp+oqAtHzp/NObfzAZCUSeY
         ueliWa/d/btt4aYsMldTfFt2dfjFtRGZAQMFjgHz8C+OW+E6XQ7T2yXn2NEJzrEpYBFr
         Hu78m6g+BTGoPk0if7quYVm/e/aZJPdvJj6BzycQfXIQKE8vDlgBDQ0yNrwbmhtVtn9j
         n1DbaleLrFiEihmE8QJQKNbXyUqelZ+BlbjeRu3LJNvGt2J3GzGvJb2SiS4Cj1tNkzeB
         C/Ig==
X-Received: by 10.194.175.39 with SMTP id bx7mr19642794wjc.22.1424438797529;
        Fri, 20 Feb 2015 05:26:37 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.58.202])
        by mx.google.com with ESMTPSA id di11sm2410699wid.8.2015.02.20.05.26.36
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 05:26:36 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: octeon: Add blank line
Date: Fri, 20 Feb 2015 15:26:40 +0200
Message-Id: <1424438800-13843-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the checkpatch.pl warning:
WARNING: "Missing a blank line after declarations"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/octeon/ethernet-rgmii.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/octeon/ethernet-rgmii.c b/drivers/staging/octeon/ethernet-rgmii.c
index 651be7e..7eea5f0 100644
--- a/drivers/staging/octeon/ethernet-rgmii.c
+++ b/drivers/staging/octeon/ethernet-rgmii.c
@@ -83,6 +83,7 @@ static void cvm_oct_rgmii_poll(struct net_device *dev)
 			int interface = INTERFACE(priv->port);
 			int index = INDEX(priv->port);
 			union cvmx_gmxx_rxx_int_reg gmxx_rxx_int_reg;
+
 			gmxx_rxx_int_reg.u64 =
 			    cvmx_read_csr(CVMX_GMXX_RXX_INT_REG
 					  (index, interface));
@@ -217,6 +218,7 @@ static irqreturn_t cvm_oct_rgmii_rml_interrupt(int cpl, void *dev_id)
 
 			/* Read the GMX interrupt status bits */
 			union cvmx_gmxx_rxx_int_reg gmx_rx_int_reg;
+
 			gmx_rx_int_reg.u64 =
 			    cvmx_read_csr(CVMX_GMXX_RXX_INT_REG
 					  (index, interface));
@@ -261,6 +263,7 @@ static irqreturn_t cvm_oct_rgmii_rml_interrupt(int cpl, void *dev_id)
 
 			/* Read the GMX interrupt status bits */
 			union cvmx_gmxx_rxx_int_reg gmx_rx_int_reg;
+
 			gmx_rx_int_reg.u64 =
 			    cvmx_read_csr(CVMX_GMXX_RXX_INT_REG
 					  (index, interface));
@@ -316,6 +319,7 @@ int cvm_oct_rgmii_open(struct net_device *dev)
 	if (!octeon_is_simulation()) {
 		if (priv->phydev) {
 			int r = phy_read_status(priv->phydev);
+
 			if (r == 0 && priv->phydev->link == 0)
 				netif_carrier_off(dev);
 			cvm_oct_adjust_link(dev);
@@ -407,6 +411,7 @@ int cvm_oct_rgmii_init(struct net_device *dev)
 void cvm_oct_rgmii_uninit(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
+
 	cvm_oct_common_uninit(dev);
 
 	/*
-- 
1.8.3.2


