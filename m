X-GM-THRID: 6257860589602734080
X-Received: by 10.107.41.79 with SMTP id p76mr2657874iop.21.1457021708945;
        Thu, 03 Mar 2016 08:15:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.108.232 with SMTP id hn8ls2144491obb.12.gmail; Thu, 03 Mar
 2016 08:15:08 -0800 (PST)
X-Received: by 10.182.112.193 with SMTP id is1mr2256222obb.38.1457021708493;
        Thu, 03 Mar 2016 08:15:08 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ui7si6078765pab.0.2016.03.03.08.15.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2016 08:15:08 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id hj7so1449916pac.1
        for <outreachy-kernel@googlegroups.com>; Thu, 03 Mar 2016 08:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SW4Tv2phq7kGMX8IqCzgrPu2vLOVeM+vmqbFJI1Hlrw=;
        b=alt85Ko3a1UxSBzdVpMzOJ+SVpjyg206dUnockye8R7iXTxABTpqmmG6w/gHRQ0pEe
         RxiYkaKstpL+5+hz9dRzgOcpRCT36tj3jA4yAgKfDUgBGQWVgMiykMPI7Lr7jcZgvF1c
         wuWppNex3sconYK1/Syfu1hokzgkICXcAjt5qK+ShC7Ii9EQkHznw0IHBbHwJPd7OC0q
         uuHIiDnf5VaJlgn7Do/CWiYeQU9jB+iyY0Ool52WP5QxmnV4C5OW2Rw2E52Gbewu2z0z
         cXd3RvP/ZMEZozMoZvmUneTqHQJ9ExPWm8+G/i9ADO4qIIvhE1K35kw4yLg/dnPwobq5
         YkpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SW4Tv2phq7kGMX8IqCzgrPu2vLOVeM+vmqbFJI1Hlrw=;
        b=ayrOnLTM1aiEAOqpalhnyQawJoR88TSj0eimGEz7rnOvIEWqQZcpCF3jYwn4tWvg5C
         N1m/6v9AmP5Q6QLFmMQ94ZayeWlBIQJqXGtoMI/HRtYLWMOe347JN73KPl/MXcKEUA8O
         S4p1xtVGbqbunOyrgVotGoB3tvdlHwL1IdP2yaF2oqfEgtQt7L6KEpQX/bdLvH5ZBKjs
         hapsCArqwLK3Ncs/tcjKyHxuJ1ySJxeaqO0mmvugicRdhY5YwEupGsqqBmohFo9Aa1eR
         JLxHFD0eDECOUKRkeWcU/mvu35zUwtZdIuhqn5lBVR0mOUrjjqBUBgkOVW8Ln1vSFoS7
         1TNw==
X-Gm-Message-State: AD7BkJIVt8BtoNCL7bEyfK3+wY66CVS+ILW+WLkibpg/nHTfm4Do+mxAutrYT8syG+AwyA==
X-Received: by 10.66.246.165 with SMTP id xx5mr4746936pac.87.1457021708309;
        Thu, 03 Mar 2016 08:15:08 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v7sm61606671pfi.56.2016.03.03.08.15.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 03 Mar 2016 08:15:07 -0800 (PST)
Date: Thu, 3 Mar 2016 21:45:04 +0530
From: "pooja.shamili" <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: netlogic: Replacing pr_err with dev_err after
 the call to devm_kzalloc
Message-ID: <20160303161504.GA27573@localhost>
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

Signed-off-by: pooja.shamili <poojashamili@gmail.com>
---
Changes from version1:
	* Removed ++dev_err and replaced it with +dev_err in the
 semantic patch as ++ is not necessary.

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


