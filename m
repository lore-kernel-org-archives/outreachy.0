X-GM-THRID: 6253388834415837184
X-Received: by 10.140.252.131 with SMTP id x125mr17871126qhc.12.1455980547355;
        Sat, 20 Feb 2016 07:02:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.141 with SMTP id 13ls417960iok.51.gmail; Sat, 20 Feb
 2016 07:02:27 -0800 (PST)
X-Received: by 10.66.244.171 with SMTP id xh11mr18345729pac.32.1455980547016;
        Sat, 20 Feb 2016 07:02:27 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id yd9si2213520pab.1.2016.02.20.07.02.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 07:02:26 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id x65so67569228pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 07:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=RIf6iYO+yx3eKW8IcHKuslhBT7UzefKCy1rEtK4Iw3o=;
        b=YXYLb5kAzXHvPiU5fNooY8ia0x8e+p7Jr3zGX7oymEKMVtvkztZUETR5m8zGczJ+qV
         5JspwIkr+ClQbOybxShCqj2MU29jbVWLuWW16mUmFSdSvR7GtbYZ02mE+AWopXwFXbhf
         srjQqhizH7NfaFI2VoRESps2h42MIru69jaOAWlNoR23nL3ay0jr9/ow6dqux5ASW0wg
         LzsALwnukbZLyU01KgJx1lmb8nBfzIWKJm7isbleuWe3gC45zsjHl7F70pwUZEN/a/oI
         qx9gcgAugVQz27VJt4l5QWoX/+tnFh0kRPuVHl+BiMIxoluGKdfDLl4CbIT+WGL3SLr/
         RrkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=RIf6iYO+yx3eKW8IcHKuslhBT7UzefKCy1rEtK4Iw3o=;
        b=T4JzunLTnmU7UkWLmVDoXCU8pjQ1QBmgpa8jXVtp2p4b1ULP1HdLoSEYHPFds/lwJO
         MGH2dVRojnIaS7TULJSsKo28wVV3jA86IRSqAmiPnrWhP7Sy9hX8EqOhDDazE8TxHhX5
         /yBZZGyiXXvJuV7bigSwRDOoY63dhFRQzjm+CTTY1uwgeZ9q8sAWg3nXLiVSgnyvfMYH
         34B1tAxijS6kkRcqMAEwbfJAXSO8ODreXg/zVgsWGNKGNwf5Mdd7iExJ5EtpFcFEpvyx
         RDRbwiQq91BO5zdHoepj9FiuwC93+1p/dixe9w8lU1/4xJZiz+Q/FoWqXLq8qsPCgWMR
         7biw==
X-Gm-Message-State: AG10YORtO4HpGMbP/vyM2yvl+X6wdPVDuuxv0fFNn9SVjMoeschWJuLwc3E2JAbcaG+xBw==
X-Received: by 10.98.73.149 with SMTP id r21mr26043691pfi.140.1455980546910;
        Sat, 20 Feb 2016 07:02:26 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.190.120])
        by smtp.gmail.com with ESMTPSA id a21sm25226332pfj.40.2016.02.20.07.02.22
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 07:02:26 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 20 Feb 2016 20:32:16 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: slicoss: Remove __func__ from dev_err
Date: Sat, 20 Feb 2016 20:32:16 +0530
Message-Id: <1455980536-16152-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes __func__ argument from dev_err as dev_err includes
the function name in the log printout, so there is no need to
include it  manually.
Found using coccinelle:

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
        m = e.replace("%s: ", "");
        coccinelle.y = m;
elif(e.find("%s ") == True):
        m = e.replace("%s ", "");
        coccinelle.y = m;
else:
        m = e.replace("%s", "");

@c@
expression a.E, a.msg;
identifier  b.y;
@@

- dev_err(E, msg, __func__);
+ dev_err(E, y);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index a91c60a..5881562 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -1543,8 +1543,8 @@ retry_rcvqfill:
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
@@ -1563,8 +1563,8 @@ retry_rcvqfill:
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
@@ -1699,8 +1699,7 @@ static u32 slic_rcvqueue_reinsert(struct adapter *adapter, struct sk_buff *skb)
 
 	if (paddrl == 0) {
 		dev = &adapter->netdev->dev;
-		dev_err(dev, "%s: LOW 32bits PHYSICAL ADDRESS == 0\n",
-			__func__);
+		dev_err(dev, "LOW 32bits PHYSICAL ADDRESS == 0\n");
 		dev_err(dev, "skb[%p] PROBLEM\n", skb);
 		dev_err(dev, "         skbdata[%p]\n", skb->data);
 		dev_err(dev, "         skblen[%x]\n", skb->len);
@@ -2305,8 +2304,7 @@ static int slic_if_init(struct adapter *adapter, unsigned long *flags)
 
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


