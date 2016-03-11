X-GM-THRID: 6257860589602734080
X-Received: by 10.107.41.79 with SMTP id p76mr9412410iop.21.1457740339703;
        Fri, 11 Mar 2016 15:52:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.133 with SMTP id w5ls2864202qge.29.gmail; Fri, 11 Mar
 2016 15:52:19 -0800 (PST)
X-Received: by 10.129.27.3 with SMTP id b3mr9262358ywb.0.1457740339097;
        Fri, 11 Mar 2016 15:52:19 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id h69si580977pfj.0.2016.03.11.15.52.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 15:52:19 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id n5so55765413pfn.2
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 15:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NPCRq1TIPFqUhNqU9nhBHXWzHg2CuGDtsBc63rY8Cb0=;
        b=BCkxDpEGsOpt2RXtkjIGXVDPumfTUws+aRH3beukuKGsG6qCV0cir5JtgCkjCTRO7u
         8D1QBqMGcK465OI9QN//IQuAplkJrjPKXl/DbzR++mUej2Y83dpAaioxOS+BtS50Hzzq
         zuLzWs0TeD5c+lPsEVnyzm7QK+xKo/kk9RnxjFSdBLgU61IIQiVHQ9E+dwIrFJPjdvPi
         eayI7+He/BKegsz8RxkBVzM8GXi7qNw5b9BXpf6ets1IlMLlQE5df6tlI1oIvjZoDpMI
         J7RixX9r/qejDGzkr51onkaSWt6Ct0biIlNnRUUMV9wLFtQxyaWaK5XG/pgUAf/ubQ/K
         kxNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NPCRq1TIPFqUhNqU9nhBHXWzHg2CuGDtsBc63rY8Cb0=;
        b=LsZfSc2pK5rD0Bfo1z5HprLtq6uHsxyZ8WRRjoE1qruZI5BLfOEZsY7RdQmS5jzVPm
         CXwBk8gxhGknxXkaMKgSMxNpWZhPegd2lvNzG0SgSN9WkP0MTGTI2NPIkmJozWcNgz+K
         VGAUOKm+xJRUeS4Xy02IHP6dnFqc2/cFfsT/LFJxym1mtso5NNHPlWPPclKtxuWk1mPL
         Ce7bEbxN2vNKRUYZFI45X+rbbw2/c9OeQZGzRzyWDpQkAZRQOr5ZV2Og6mhLjTo7UPui
         eJqqJoBJ5NxsYczwDx5sAugTpISA02cn9mQ+5yxi7HYrE7Wog22EZEOhsCqB12fDFPEQ
         5A/Q==
X-Gm-Message-State: AD7BkJItuLoccdJ8Nmk4b9dhyZwpI+od4pTtm5042+6VftClgCoyOKtDibr4ATlWA01Fyw==
X-Received: by 10.98.33.207 with SMTP id o76mr11794721pfj.125.1457740338892;
        Fri, 11 Mar 2016 15:52:18 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g6sm369999pfg.15.2016.03.11.15.52.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 15:52:18 -0800 (PST)
Date: Sat, 12 Mar 2016 05:22:02 +0530
From: G Pooja Shamili <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: netlogic: Replacing pr_err with dev_err after the
 call to devm_kzalloc
Message-ID: <20160311235202.GA491@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The function devm_kzalloc has a first argument of type struct device *.
This is the type of argument required by printing functions such as
dev_info, dev_err, etc. Thus, functions like pr_info should not
normally be used after a call to devm_kzalloc. Thus, all pr_err occurances are
replaced with dev_err function calls

Signed-off-by: G Pooja Shamili <poojashamili@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index b0877a8..aa1cdf6 100644
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
 
@@ -1048,7 +1049,8 @@ static int xlr_net_probe(struct platform_device *pdev)
 
 		res = platform_get_resource(pdev, IORESOURCE_IRQ, port);
 		if (!res) {
-			pr_err("No irq resource for MAC %d\n", priv->port_id);
+			dev_err(&pdev->dev, "No irq resource for MAC %d\n",
+				priv->port_id);
 			err = -ENODEV;
 			goto err_gmac;
 		}
@@ -1083,7 +1085,8 @@ static int xlr_net_probe(struct platform_device *pdev)
 		if (strcmp(res->name, "gmac") == 0) {
 			err = xlr_gmac_init(priv, pdev);
 			if (err) {
-				pr_err("gmac%d init failed\n", priv->port_id);
+				dev_err(&pdev->dev, "gmac%d init failed\n",
+					priv->port_id);
 				goto err_gmac;
 			}
 		}
@@ -1096,8 +1099,9 @@ static int xlr_net_probe(struct platform_device *pdev)
 
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


