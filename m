X-GM-THRID: 9926466338816
X-Received: by 10.52.90.11 with SMTP id bs11mr15096390vdb.8.1427362301327;
        Thu, 26 Mar 2015 02:31:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.90.72 with SMTP id w66ls662119qgd.0.gmail; Thu, 26 Mar
 2015 02:31:41 -0700 (PDT)
X-Received: by 10.236.209.33 with SMTP id r21mr15272738yho.6.1427362301059;
        Thu, 26 Mar 2015 02:31:41 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id iw3si620151pbd.1.2015.03.26.02.31.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 02:31:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id wz10so6676311pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 02:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=xVJ3lziz59TeOfDLr+Jd2Q6AWjjzVYiiPEHpGJWa9ek=;
        b=I5RfE1NrORt2ACI3Tpv92+0QmSwdoSJUWDjfxV5as6zvFHEKTLnuLOTIrlZGDBk61c
         Ztl3wA4BVeMNU4PAaYIBPZ6g0rAw5cbHcERH7SC1GVRTNTjcl06MgBLj5c9JGVomKqqS
         YvcFVQJX7w5aXm8yjnGqkAk5eoBG6b5b/q+ec1NFXzGErn8hstXMXQrxtBmyIu5rIIMw
         BBgESottMWiq4JIxMY1dEBAJBKp5XrmOZpBKbBqnM0q2XuKbq6AQRTNzPFJuui5sPxpK
         VnR8aj5A6k8vO0IKtsSNCrrP4s0s/4susfFCqKv4ebwhDIf5/CbdGnRU3FiGcXDWinv1
         htBw==
X-Received: by 10.70.0.176 with SMTP id 16mr25355230pdf.78.1427362300929;
        Thu, 26 Mar 2015 02:31:40 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id bt2sm4978482pad.12.2015.03.26.02.31.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Mar 2015 02:31:39 -0700 (PDT)
Date: Thu, 26 Mar 2015 14:59:27 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: octeon: Move extern to header file
Message-ID: <20150326092927.GA4803@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Move extern to header file. Functions have extern storage
class by default so the keyword "extern" is removed."

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/octeon/ethernet-mdio.h | 1 +
 drivers/staging/octeon/ethernet.c      | 2 --
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-mdio.h b/drivers/staging/octeon/ethernet-mdio.h
index eccfcc5..9cb652f 100644
--- a/drivers/staging/octeon/ethernet-mdio.h
+++ b/drivers/staging/octeon/ethernet-mdio.h
@@ -42,3 +42,4 @@
 extern const struct ethtool_ops cvm_oct_ethtool_ops;
 int cvm_oct_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
 int cvm_oct_phy_setup_device(struct net_device *dev);
+void octeon_mdiobus_force_mod_depencency(void);
diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 460e854..735d5be 100644
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


