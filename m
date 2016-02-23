X-GM-THRID: 6254501970986401792
X-Received: by 10.66.159.167 with SMTP id xd7mr32343090pab.5.1456239719221;
        Tue, 23 Feb 2016 07:01:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.66.132 with SMTP id f4ls1172331obt.88.gmail; Tue, 23 Feb
 2016 07:01:58 -0800 (PST)
X-Received: by 10.182.58.4 with SMTP id m4mr18375obq.7.1456239718514;
        Tue, 23 Feb 2016 07:01:58 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id u66si4351461pfa.2.2016.02.23.07.01.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 07:01:58 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id e127so113781209pfe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 07:01:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=4LMVUPmkFK9GyFUHu2ZBXxUm8HswzxO+9AsqzroSQMw=;
        b=ntekEivGNJ1gev3o937O0YX8akfzAzSndq+LYN9Gu6OAcuBG3Vvw12sLwEzfyPtyCR
         hoyXuKfueFClP9PHgaEZBSg2I7e8HQ1wM/pULkjkO/+Uje1Hq3tXG6Gti3igLrCD0gQr
         /D89llB8MpBAaGdbzK+MpmQVkT+5yof9gzCuDNQtM2vfD2bB2Pc3B55BRvKpNzBmm5yz
         RLO90ePmQQWkl6Nd+tout4pN/uKC99C5gLkj4NYHeMgHJldeH244nWMLom9aUjamTvXw
         c8IJSbJoztnybBnE/DQynXd+KAObgoPAvs02Gc2h1F4laBHVRgj0CKYDDx+/OLHhBHnt
         h44w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=4LMVUPmkFK9GyFUHu2ZBXxUm8HswzxO+9AsqzroSQMw=;
        b=iLQfKCGY439lMn8RaDjzT2cOSrYyTSe3pcxGGqVhUy/xylnC1GdLsH5kTAOak+kcQT
         GCgwGttUCHkFRstfvYVjbhwjvTSywAIuab0GNVHj1wiriNn7ZJrI/+OR6hH4OmJNDcRv
         MQI01Qa65sQ/O8eZCiV9PlFuHU4abV7icTzwMKBuCV8P04WASIkEg5vNfF4OrGzi0eha
         scoZYAEQmQ89y0yvnmJp8umgYUwHaEfijEMqBHkr7SAn6Cr0ykgbraKqMosM/IdLNa6r
         2NhZpGY0MimkNJQ7+4y5eu1bE33UG53Uvh45NBTDl/fcd8LkhUmZQJu4aLEbvltPSy44
         yHXA==
X-Gm-Message-State: AG10YORBBW/jVfOZBqliBFZPKRXouvSFep5z82ZLeFiATVkUaqdBYixJ6BdT4gZ5q021sg==
X-Received: by 10.98.18.8 with SMTP id a8mr46964189pfj.41.1456239718333;
        Tue, 23 Feb 2016 07:01:58 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id p9sm44928223pfa.11.2016.02.23.07.01.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 07:01:57 -0800 (PST)
Date: Tue, 23 Feb 2016 20:31:51 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: netlogic: Simplify use of devm_ioremap_resource
Message-ID: <20160223150151.GA11902@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unneeded error handling on the result of a call to
platform_get_resource when the value is passed to
devm_ioremap_resource.

Move the call to platform_get_resource adjacent to the call to
devm_ioremap_resource to make the connection between them more clear.

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


