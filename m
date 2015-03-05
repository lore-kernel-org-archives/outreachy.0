X-GM-THRID: 6758181371904
X-Received: by 10.112.222.131 with SMTP id qm3mr1793939lbc.1.1425592326891;
        Thu, 05 Mar 2015 13:52:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.36 with SMTP id dd4ls4563lac.43.gmail; Thu, 05 Mar
 2015 13:52:06 -0800 (PST)
X-Received: by 10.112.147.35 with SMTP id th3mr1788871lbb.15.1425592326470;
        Thu, 05 Mar 2015 13:52:06 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id el6si673025wib.2.2015.03.05.13.52.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:52:06 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so2385746wes.1
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 13:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=AWHy8d4L/5obaHyqAvwBg7GfZN0hoMgftspsXqIOSSE=;
        b=QR7nKDMAnvvzG9GQX/jACFwdivNP18V4spAB7PjEpQS1FxjmmW4Mp5m30wSYHzZteW
         pMDWcTFjhLcNnaqbPCrNJNLZFOnKz/8pifo/hGmGCmWDW9Xh3xtQuSv9CZmT6UtFVSDw
         ABtQGSc0SmiHj07DpaQo1u7gUCuoVHvSmq/Li5dEWJ2fKRvMD9XUujJXI4kIxPV0+qWV
         jBvPiLAaWdRXHc+877A6Ij2oKd9LD+q8xDhvqRW5UsSg+irlsqCYzBlo16kFwO8Ow14a
         H1ostfZwNnNAJQyUdJvYW8rl0Ir4SF0okEhwYiZ8t4TlNmcW67Yrs1Jlwj3t7ZWOcDDO
         a0BQ==
X-Received: by 10.194.77.230 with SMTP id v6mr23212648wjw.25.1425592326342;
        Thu, 05 Mar 2015 13:52:06 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id fo8sm13366518wib.14.2015.03.05.13.52.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:52:05 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id B3E7362672; Fri,  6 Mar 2015 00:52:02 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v3 5/7] Staging: slicoss: Clean dev_err() logging
Date: Fri,  6 Mar 2015 00:50:15 +0300
Message-Id: <1425592215-29785-1-git-send-email-hamohammed.sa@gmail.com>
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


