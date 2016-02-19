X-GM-THRID: 6252996370721931264
X-Received: by 10.25.163.210 with SMTP id m201mr1809944lfe.8.1455889169480;
        Fri, 19 Feb 2016 05:39:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.213.83 with SMTP id m80ls112325wmg.47.gmail; Fri, 19 Feb
 2016 05:39:28 -0800 (PST)
X-Received: by 10.28.126.149 with SMTP id z143mr1170709wmc.4.1455889168556;
        Fri, 19 Feb 2016 05:39:28 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x22d.google.com (mail-wm0-x22d.google.com. [2a00:1450:400c:c09::22d])
        by gmr-mx.google.com with ESMTPS id 141si457407wmy.2.2016.02.19.05.39.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 05:39:28 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) client-ip=2a00:1450:400c:c09::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22d.google.com with SMTP id a4so70936006wme.1
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 05:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0XuYikOrfW6go/QPOvN8/Ao/HLkiWEejMSxx6b41dB8=;
        b=cQp+/TCZeBZ6gV+lHRNcVQebbuEgV8bLoNk7JYEtuTKv2NdjOqdK8rZEJq1apgsNHO
         GiEK4s0yRUGh0W+UHk7/LL7rHjTx8bjaXibUXBSe1GKgf4/OXwnbxCq4BRybWVrENBBD
         T4vbr882DVdtvqWNzeD9iVW+DjquEZ8agTQQiIEZ2WhFU/UqCfLdzHpjZx7EwE/YYNRq
         SAAmBtpKp8h0WusP2855naUjmvLhTma7OMhgTk60n00qfi88gHLhr2vfvyw9rhfigEds
         3Y0GI4je5LvpuRXekXRDGxrwswI5O9TyunrEnslJ70ap/CSlGUpqKh4Wl7kX1J+8fmDM
         wBIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0XuYikOrfW6go/QPOvN8/Ao/HLkiWEejMSxx6b41dB8=;
        b=lle2hCl8qV3GU2zVkbnQL0n9tAnTHayrFH5aj6nfKgiu6wGp17AYErEEx1DVxTCbCY
         XwiheIWczp/bqidjJW0xFPLWlwNxHljsKyj+Vr2MlDjJL/3aSVMt40SIDLb5JKof+C1E
         28VKQVd3K3EIpOZL/AgyKXmbhrSbvmv1kIXy6g8qejoEjpngFtdhFMZSVSCOlGgKDrLX
         fOY+pU54XoyO0siJISEMWPgFiei65brfkojIRHYtXbLCScDix3lAMdsGjDzgZ+LCdqAN
         h1ni4yroWvGy9Z1wHErTJahRQJBX5YWHrK42/yaULO6QD8W3egK06ggQeVMH2SpkhAdS
         nyUA==
X-Gm-Message-State: AG10YOQ0biAfwQxtO0SqRGHgUqW3MA9s3ylm0uGHD+hvsYBmiloikugn4bj1rL+7W8TICw==
X-Received: by 10.194.216.2 with SMTP id om2mr13231115wjc.164.1455889168408;
        Fri, 19 Feb 2016 05:39:28 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([95.14.29.107])
        by smtp.gmail.com with ESMTPSA id s8sm11303111wje.35.2016.02.19.05.39.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 05:39:27 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: netlogic: Use !x instead of x == NULL
Date: Fri, 19 Feb 2016 15:39:19 +0200
Message-Id: <1455889159-7913-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Avoid to change comparison for devm_ioremap_resource value. Checkpatch
detected these issues.

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 8ae0175..ac93e63 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -147,7 +147,7 @@ static void xlr_net_fmn_handler(int bkt, int src_stnid, int size,
 		addr = addr - MAC_SKB_BACK_PTR_SIZE;
 		skb = (struct sk_buff *) *(unsigned long *)addr;
 		skb->dev = adapter->netdev[port];
-		if (skb->dev == NULL)
+		if (!skb->dev)
 			return;
 		ndev = skb->dev;
 		priv = netdev_priv(ndev);
@@ -878,7 +878,7 @@ static int xlr_setup_mdio(struct xlr_net_priv *priv,
 	priv->mii_bus->write = xlr_mii_write;
 	priv->mii_bus->parent = &pdev->dev;
 	priv->mii_bus->irq = kmalloc(sizeof(int)*PHY_MAX_ADDR, GFP_KERNEL);
-	if (priv->mii_bus->irq == NULL) {
+	if (!priv->mii_bus->irq) {
 		pr_err("irq alloc failed\n");
 		mdiobus_free(priv->mii_bus);
 		return -ENOMEM;
@@ -1037,7 +1037,7 @@ static int xlr_net_probe(struct platform_device *pdev)
 		priv->nd = (struct xlr_net_data *)pdev->dev.platform_data;
 		res = platform_get_resource(pdev, IORESOURCE_MEM, port);
 
-		if (res == NULL) {
+		if (!res) {
 			pr_err("No memory resource for MAC %d\n",
 					priv->port_id);
 			err = -ENODEV;
@@ -1052,7 +1052,7 @@ static int xlr_net_probe(struct platform_device *pdev)
 		adapter->netdev[port] = ndev;
 
 		res = platform_get_resource(pdev, IORESOURCE_IRQ, port);
-		if (res == NULL) {
+		if (!res) {
 			pr_err("No irq resource for MAC %d\n", priv->port_id);
 			err = -ENODEV;
 			goto err_gmac;
-- 
1.9.1


