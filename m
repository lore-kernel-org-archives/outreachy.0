X-GM-THRID: 6254501970986401792
X-Received: by 10.107.15.79 with SMTP id x76mr33313102ioi.31.1456245741526;
        Tue, 23 Feb 2016 08:42:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.4.2 with SMTP id 2ls461452ioe.10.gmail; Tue, 23 Feb 2016
 08:42:21 -0800 (PST)
X-Received: by 10.107.185.4 with SMTP id j4mr34852215iof.21.1456245741261;
        Tue, 23 Feb 2016 08:42:21 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id ff2si4292926pad.2.2016.02.23.08.42.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 08:42:21 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id e127so115176406pfe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 08:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=sYQoqhF7Ux7Q/x0YMjvuFouA8lnJhjkzwk8qOSiu/UM=;
        b=kacEKugKwizYYDBFnQjZwVIizlogOFPG8yrAbuQFyqSBG1Jzi7GuzTxuHpeQOCVeI2
         7Zku49+CRU0e/lHYarA4Aw/synU8E5ucMun2vGKaCGaEwMURd3OOBUaGyYyOgNjS3rWI
         cIOkCt3aucfOr5DCeeFKAuPOmi/TcW1RS0EI15VrbHLvEIHJgokJCFKzd3PqW+i3B8j/
         sPKE3HIvEgAZeZxgof0Vx/YVM7ated7Of2UGjC0VhHpSk33G51fZMv7ypeur7jB+vrkn
         m8vnb6/7PZAIhFLKoyP99XHCXa1qGqevU7gBVctlNyAKyjPFcWpeJwGTjlXIhCITUTMf
         k47g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=sYQoqhF7Ux7Q/x0YMjvuFouA8lnJhjkzwk8qOSiu/UM=;
        b=dgVXUVRcnkYHpsANdH69N02srRGIsDZtpFzlDF0fpJR/utg9H8U6EcpsMnF1e98hfO
         DB/8Dzmkln+FGP9wFdmrY/QjsnZs7wKrmrBYAX71PuFqx6zwVQTWxzWFuHGxq1uNwuGL
         SUP0Uj+Bf4vHzfFCCOrKJvmWfNqFLIep2U3LemmjTlyImHb/dyAtaHudc4tw45KyzhZG
         ZHGvIz9gI3URDJ7roayPChKCcvklFHHbgaBQF+aJUWzRFrCbZRkCquYcOdSpYUfIjQOa
         4ZlULy5Tzc05Mp77gN3MaodtUFESVk+r2wfTGP1FUBM6OOE5vSCgmSOVJVBliOr3KvQc
         VWPA==
X-Gm-Message-State: AG10YOTvBeYKbHob35Q9RJlFxvPPDmMsM4CY/vowpAIHb4PwBWfx3snNQTdErBZz90t2RA==
X-Received: by 10.98.32.218 with SMTP id m87mr47868302pfj.48.1456245741044;
        Tue, 23 Feb 2016 08:42:21 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id c68sm28649000pfj.41.2016.02.23.08.42.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 08:42:20 -0800 (PST)
Date: Tue, 23 Feb 2016 22:12:16 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: netlogic: Simplify use of devm_ioremap_resource
Message-ID: <20160223164216.GA14789@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unneeded error handling on the result of a call to
platform_get_resource when the value is passed to
devm_ioremap_resource.

The Coccinelle semantic patch that makes this change is as follows:

// <smpl>
@@
expression pdev,res,n,e,e1;
expression ret != 0;
identifier l;
@@

- res = platform_get_resource(pdev, IORESOURCE_MEM, n);
  ... when != res
- if (res == NULL) { ... \(goto l;\|return ret;\) }
  ... when != res
+ res = platform_get_resource(pdev, IORESOURCE_MEM, n);
  e = devm_ioremap_resource(e1, res);
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Revised commit message

 drivers/staging/netlogic/xlr_net.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 0015847..3a6de47 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -1038,13 +1038,6 @@ static int xlr_net_probe(struct platform_device *pdev)
 		priv->port_id = (pdev->id * 4) + port;
 		priv->nd = (struct xlr_net_data *)pdev->dev.platform_data;
 		res = platform_get_resource(pdev, IORESOURCE_MEM, port);
-
-		if (res == NULL) {
-			pr_err("No memory resource for MAC %d\n",
-			       priv->port_id);
-			err = -ENODEV;
-			goto err_gmac;
-		}
 		priv->base_addr = devm_ioremap_resource(&pdev->dev, res);
 		if (IS_ERR(priv->base_addr)) {
 			err = PTR_ERR(priv->base_addr);
-- 
1.9.1


