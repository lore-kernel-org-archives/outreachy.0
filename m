X-GM-THRID: 6257664587169005568
X-Received: by 10.182.110.163 with SMTP id ib3mr218164obb.43.1456976073151;
        Wed, 02 Mar 2016 19:34:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.104 with SMTP id x8ls548396igr.18.gmail; Wed, 02 Mar
 2016 19:34:31 -0800 (PST)
X-Received: by 10.50.178.145 with SMTP id cy17mr603145igc.10.1456976071800;
        Wed, 02 Mar 2016 19:34:31 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id 12si5811470pfb.1.2016.03.02.19.34.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 19:34:31 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fl4so6368356pad.0
        for <outreachy-kernel@googlegroups.com>; Wed, 02 Mar 2016 19:34:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0pshf4L364qPPd7cCaLakkjaDns1v9auOGshmynd3gI=;
        b=SJpp4H5H6aorIA7JhQP+6U2m6lfldwX6Lukiz6al2289plZ5x9ZlQ3iwTByAaGeOYw
         mXsIMoZcmd33D2WA4N5FV/KNOIvmMWNhKw+La2demsOLD5X6W949cFuqF/TBDSePfT3U
         vjeGctFH+nDp9ojUraAcLUVJn1EVpC4uSM38phBgT/uiv6/CUFhE1a/g/7AbECfJGwyv
         VG9TMkY4BdTe9MUZajD1Vkfbs4ST1MIraa/YAk/sgBRDrsgYF/qHhKl8hXLeHrAuWx3s
         NPY0A0c02vCpy45AUMokHP9NfvrVyTO++KgnbtEJeJdK8c1i5FOE7ESSKwLTKL8S3fR8
         yZxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0pshf4L364qPPd7cCaLakkjaDns1v9auOGshmynd3gI=;
        b=HnnrK7ELA39KGjCB82dWW0qcS8JU5OwWykh5YTj9T+PHTiGiMtbyeaRG1fMfGJ4Nbx
         lShxYUNyRY7f/X6mzHQw9egAbkNoUi/0DYAwYUhDs+6Bcvd6b38M/ixsMAURkfwx4xMC
         xbMTxgj51ox72HQrVAxDbW95gy34YKqGA03blO8M7v/RTxx2b+rxvyidyAVzVC6xXNDX
         8xgdjtz+tk2hkANeWAjxFoGC8IPIUZEWRq7OJvX9jEfnLn1vgmKay87LhLlWeA6RdeVC
         +OH+fjn4wAuclOijKIpWi7P3FWvyoyZNERjLcHAd0gGGgteFqEmvuzCiDzDmfYvXHkWw
         Q6Iw==
X-Gm-Message-State: AD7BkJL/ezqw/KGdlxdfDJwhYzJnLYaxb2GSvZ2rMXML3H0HCm/TxETQ8Z4WYoq4OkRV+A==
X-Received: by 10.66.237.39 with SMTP id uz7mr466390pac.141.1456976071622;
        Wed, 02 Mar 2016 19:34:31 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([14.194.42.100])
        by smtp.gmail.com with ESMTPSA id d65sm56150378pfb.74.2016.03.02.19.34.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 02 Mar 2016 19:34:30 -0800 (PST)
Date: Thu, 3 Mar 2016 09:04:18 +0530
From: "pooja.shamili" <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: netlogic: Replacing pr_err with dev_err after
 function call to devm_kzalloc
Message-ID: <20160303033418.GA20938@localhost>
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
++ dev_err(E2,
 args);
...>

Signed-off-by: pooja.shamili <poojashamili@gmail.com>
---
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


