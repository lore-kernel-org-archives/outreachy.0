X-GM-THRID: 6758181371904
X-Received: by 10.180.83.168 with SMTP id r8mr2230709wiy.6.1425584435882;
        Thu, 05 Mar 2015 11:40:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.39 with SMTP id cz7ls17503wib.36.gmail; Thu, 05 Mar
 2015 11:40:35 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr1791954wjb.6.1425584435610;
        Thu, 05 Mar 2015 11:40:35 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id r6si648382wix.0.2015.03.05.11.40.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 11:40:35 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22d.google.com with SMTP id x3so8498906wes.4
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 11:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Whm7H+N/J+mcXHBcM1n+40WsvgsT/X9VkU3br7jUqU0=;
        b=b7T+Wysr3TIZ3yO26Xv04rHWuJ/U+cloONeV6Uy7YgG/9XDyt4rnSNxzN3K8x8LACW
         0ov7UBSiud1MantV5foC7fqj8Cl0wi5/hkWUPIwl1bCLZFiID/FX954cDWLhPe2xiJvE
         xTlnutQ0sfmD44w1ABK48LK6n2cO4UET73LQEiYAsvjMNzaV6jS7sxk/PY6r8O2zBf1D
         Dz7mfKXcKvNXLYZrCaKL3/czswlY1Udh11rwG+ASsCBQ7ujNpo+JKkG0UDqCchHshC43
         g2kWgICuO1z7n/V7yytnZPBfoDF+TVCqvCoCTtExLS8ROcxxZcAoPxw5pVbA8hy8hYWA
         VdHA==
X-Received: by 10.194.205.138 with SMTP id lg10mr21079876wjc.130.1425584435483;
        Thu, 05 Mar 2015 11:40:35 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id vh8sm11850114wjc.12.2015.03.05.11.40.34
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 11:40:34 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 6B66D62672; Thu,  5 Mar 2015 22:40:44 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 5/7] Staging: slicoss: Clean dev_err() logging
Date: Thu,  5 Mar 2015 22:38:59 +0300
Message-Id: <1425584339-28322-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err. dev_err includes information about:
 (devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E;
expression  msg;
@@

dev_err(E, msg, __func__);

@script:python b@git rebae -i
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
expression a.E, a.msg;
identifier  b.y;
@@

- dev_err(E, msg, __func__);
+ dev_err(E, y);

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 45f6a5f..2923b2c 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -1529,8 +1529,8 @@ retry_rcvqfill:
 			skb->next = NULL;
 #ifdef KLUDGE_FOR_4GB_BOUNDARY
 			if (paddrl == 0) {
-				dev_err(dev, "%s: LOW 32bits PHYSICAL ADDRESS == 0\n",
-					__func__);
+				dev_err(dev,
+					"LOW 32bits PHYSICAL ADDRESS == 0\n");
 				dev_err(dev, "skb[%p] PROBLEM\n", skb);
 				dev_err(dev, "         skbdata[%p]\n",
 						skb->data);
@@ -1549,8 +1549,8 @@ retry_rcvqfill:
 			}
 #else
 			if (paddrl == 0) {
-				dev_err(dev, "%s: LOW 32bits PHYSICAL ADDRESS == 0\n",
-					__func__);
+				dev_err(dev,
+					"LOW 32bits PHYSICAL ADDRESS == 0\n");
 				dev_err(dev, "skb[%p] PROBLEM\n", skb);
 				dev_err(dev, "         skbdata[%p]\n",
 						skb->data);
@@ -1685,8 +1685,7 @@ static u32 slic_rcvqueue_reinsert(struct adapter *adapter, struct sk_buff *skb)
 
 	if (paddrl == 0) {
 		dev = &adapter->netdev->dev;
-		dev_err(dev, "%s: LOW 32bits PHYSICAL ADDRESS == 0\n",
-			__func__);
+		dev_err(dev, "LOW 32bits PHYSICAL ADDRESS == 0\n");
 		dev_err(dev, "skb[%p] PROBLEM\n", skb);
 		dev_err(dev, "         skbdata[%p]\n", skb->data);
 		dev_err(dev, "         skblen[%x]\n", skb->len);
@@ -2293,8 +2292,7 @@ static int slic_if_init(struct adapter *adapter)
 
 	/* adapter should be down at this point */
 	if (adapter->state != ADAPT_DOWN) {
-		dev_err(&dev->dev, "%s: adapter->state != ADAPT_DOWN\n",
-			__func__);
+		dev_err(&dev->dev, "adapter->state != ADAPT_DOWN\n");
 		rc = -EIO;
 		goto err;
 	}
-- 
1.9.1


