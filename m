X-GM-THRID: 6257860589602734080
X-Received: by 10.107.167.148 with SMTP id q142mr13593628ioe.17.1457275295120;
        Sun, 06 Mar 2016 06:41:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.185.131 with SMTP id j125ls676909iof.16.gmail; Sun, 06 Mar
 2016 06:41:34 -0800 (PST)
X-Received: by 10.66.147.133 with SMTP id tk5mr920343pab.8.1457275294809;
        Sun, 06 Mar 2016 06:41:34 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y20si2508349pfa.2.2016.03.06.06.41.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 06:41:34 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 63so6390399pfe.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 06:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZAQNKy9b6n3bcb5jwHdf46gCPq3/bBk1dYsiiyNjS64=;
        b=y0BQMf202sPvfpYwmdRqj8PKVmemnDZy6nn15GsA7VElOZDsil5tSvjkm/4Y8yNnfe
         i9r6+tlpIG9B822LR7pwck21IBLpXTo1ZIkAL+EO+RBvq82Xn9+2F4lTkinP5Zu0U4+w
         sJjja6LnUsP4eRRED2eH6VMqDDCJX4ZiGtnDxcqFD9A8+qX0dq9VhERC+ZA2OX7tcKia
         r9RbhstPWI3z30DDDvXa0xY8FmigVFC9VDm9rQUJwGfARULTqDpPl4g+quj1hcPGGRAp
         Vl3NVZkumkTe22zjO9y5GaHBUZpSXPWa/J0klc87u6thne5ILsxfIw0w5+0oJ02jtgoE
         r5Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZAQNKy9b6n3bcb5jwHdf46gCPq3/bBk1dYsiiyNjS64=;
        b=XA+XsE9rw4d4DXACo7oN7T0M1lnqo7VJgWbm2e4spDTvmd/lOEHorbXyAmGKaT7eMD
         AnAKG/+96D0xgVVwwACp9189vlizU++WbFKkDHRvo5u85zjc50MRwe+8rIfwTYe03zPv
         lsZOMnHKC3zsEbNkeZbcpjbo8T3LNM79Y4lwAMjGNs7/TAlt3Ee8CoDETwud5rf/tUoh
         k/e5JMAcloqjYfAqf392IpOCdmiF6uilDH/tHOjlphphGJctFic7j+h6bvKtbUous1BS
         vksum18j00PtZn4StE51TQ5rUrYh3KuOupNhrp6aIZqfGHhtGCjmgCHDZPjb7PT5jZR9
         U+SA==
X-Gm-Message-State: AD7BkJKS/xWpuiQUIFeEs4P5uUBLRE6pQeqg1QZ+CfEVNsBGzsRpvXrJW9QK5Hy+bCh7Ow==
X-Received: by 10.98.64.82 with SMTP id n79mr26687929pfa.149.1457275294623;
        Sun, 06 Mar 2016 06:41:34 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([49.207.21.252])
        by smtp.gmail.com with ESMTPSA id v9sm18200974pfi.50.2016.03.06.06.41.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 06:41:34 -0800 (PST)
Date: Sun, 6 Mar 2016 20:11:30 +0530
From: G Pooja Shamili <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: netlogic: Replacing pr_err with dev_err after
 the call to devm_kzalloc
Message-ID: <20160306144130.GA6041@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The function devm_kzalloc has a first argument of type struct device *.
This is the type of argument required by printing functions such as
dev_dbg, dev_err, etc. Thus, functions like pr_err should not normally
be used after a call to devm_kzalloc. Thus, all pr_err occurances are
replaced with dev_err function calls.

This was done using Coccinelle, the patch being:

@@
expression E1,E2;
expression list args;
identifier I;
@@

E1 = (struct I *)devm_kzalloc(E2, ...);
<...
- pr_err(
+ dev_err(E2,
 args);
...>

Signed-off-by: G Pooja Shamili <poojashamili@gmail.com>
---
Changes from Version 1:
	    * Changed the name in the From: and Signed-off-by: to full
	    name.

 drivers/staging/netlogic/xlr_net.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 0015847..4804fe8 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -1028,7 +1028,8 @@ static int xlr_net_probe(struct platform_device *pdev)
 	for (port = 0; port < pdev->num_resources / 2; port++) {
 		ndev = alloc_etherdev_mq(sizeof(struct xlr_net_priv), 32);
 		if (!ndev) {
-			pr_err("Allocation of Ethernet device failed\n");
+			dev_err(&pdev->dev,
+				"Allocation of Ethernet device failed\n");
 			return -ENOMEM;
 		}
 
@@ -1040,8 +1041,8 @@ static int xlr_net_probe(struct platform_device *pdev)
 		res = platform_get_resource(pdev, IORESOURCE_MEM, port);
 
 		if (res == NULL) {
-			pr_err("No memory resource for MAC %d\n",
-			       priv->port_id);
+			dev_err(&pdev->dev, "No memory resource for MAC %d\n",
+				priv->port_id);
 			err = -ENODEV;
 			goto err_gmac;
 		}
@@ -1055,7 +1056,8 @@ static int xlr_net_probe(struct platform_device *pdev)
 
 		res = platform_get_resource(pdev, IORESOURCE_IRQ, port);
 		if (!res) {
-			pr_err("No irq resource for MAC %d\n", priv->port_id);
+			dev_err(&pdev->dev, "No irq resource for MAC %d\n",
+				priv->port_id);
 			err = -ENODEV;
 			goto err_gmac;
 		}
@@ -1090,7 +1092,8 @@ static int xlr_net_probe(struct platform_device *pdev)
 		if (strcmp(res->name, "gmac") == 0) {
 			err = xlr_gmac_init(priv, pdev);
 			if (err) {
-				pr_err("gmac%d init failed\n", priv->port_id);
+				dev_err(&pdev->dev, "gmac%d init failed\n",
+					priv->port_id);
 				goto err_gmac;
 			}
 		}
@@ -1103,8 +1106,9 @@ static int xlr_net_probe(struct platform_device *pdev)
 
 		err = register_netdev(ndev);
 		if (err) {
-			pr_err("Registering netdev failed for gmac%d\n",
-			       priv->port_id);
+			dev_err(&pdev->dev,
+				"Registering netdev failed for gmac%d\n",
+				priv->port_id);
 			goto err_netdev;
 		}
 		platform_set_drvdata(pdev, priv);
-- 
2.1.4


