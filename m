X-GM-THRID: 6950918029312
X-Received: by 10.180.101.101 with SMTP id ff5mr5719384wib.5.1425668809831;
        Fri, 06 Mar 2015 11:06:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.23.195 with SMTP id o3ls108653laf.82.gmail; Fri, 06 Mar
 2015 11:06:49 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr2494930lbb.24.1425668809108;
        Fri, 06 Mar 2015 11:06:49 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id by11si208486wib.1.2015.03.06.11.06.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 11:06:49 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x234.google.com with SMTP id m14so61337958wev.8
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 11:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=E00YT48YGPyv9VBs7H08eC5ATlijtvGIC++I3y95k2E=;
        b=cCN2NLEBxX9jXl/dbWan3Jj9tTJ8HzO6cmFceriyWSy6WHe3z8bn+f1Wf9hCweUnTC
         Pr4UmwlN7zp319Zqhasygkqjd3BJ4ik65LHuwOB+yuYUvXpLLVyiUFTz9+NkZ8tonEol
         ZJElRGS63sbJDIVoYcqrg1FWcfOFWNDbKFT8Yheqx8KeqxAMS3b6jhjee+fPp4YWASU1
         EwgbWxQV9uynG84eK7NpCCe5eoivMRSFJZoKfh3FrO+3zP9a5VpuV5+7g5kUYEWEr6HE
         Ii7V4xhxfePSfzK8lVW32Y7r1lorApJr1U5VBKkSjdDhhesRHjyaZcjs+tvftW+R/WOt
         BFQg==
X-Received: by 10.194.173.138 with SMTP id bk10mr31294238wjc.112.1425668808998;
        Fri, 06 Mar 2015 11:06:48 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id dm6sm3454715wib.22.2015.03.06.11.06.47
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 11:06:48 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 3D53162672; Fri,  6 Mar 2015 22:06:46 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 7/8] Staging: slicoss: clean dev_err logging
Date: Fri,  6 Mar 2015 22:05:05 +0300
Message-Id: <1425668705-27573-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err. dev_err includes information about:
(devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E, R;
expression  msg;
@@

dev_err(E, msg, __func__, R);

@script:python b@
e << a.msg;
y;
@@

if(e.find("%s: ") == True):
	m = e.replace("%s: ", "", 1);
	coccinelle.y = m;
elif(e.find("%s ") == True):
	m = e.replace("%s ", "", 1);
	coccinelle.y = m;
elif(e.find("%s:") == True):
	m = e.replace("%s:", "", 1);
	coccinelle.y = m;
else:
	m = e.replace("%s", "",1);
	coccinelle.y = m;

@c@
expression a.E, a.msg, a.R;
identifier  b.y;
@@

- dev_err(E, msg, __func__, R);
+ dev_err(E, y, R);

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 2923b2c..23c7819 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -2311,9 +2311,8 @@ static int slic_if_init(struct adapter *adapter)
 	}
 	rc = slic_adapter_allocresources(adapter);
 	if (rc) {
-		dev_err(&dev->dev,
-			"%s: slic_adapter_allocresources FAILED %x\n",
-			__func__, rc);
+		dev_err(&dev->dev, "slic_adapter_allocresources FAILED %x\n",
+			rc);
 		slic_adapter_freeresources(adapter);
 		goto err;
 	}
@@ -2547,8 +2546,8 @@ static int slic_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 		if (copy_from_user(data, rq->ifr_data, 28))
 			return -EFAULT;
 		intagg = data[0];
-		dev_err(&dev->dev, "%s: set interrupt aggregation to %d\n",
-			__func__, intagg);
+		dev_err(&dev->dev, "set interrupt aggregation to %d\n",
+			intagg);
 		slic_intagg_set(adapter, intagg);
 		return 0;
 
-- 
1.9.1


