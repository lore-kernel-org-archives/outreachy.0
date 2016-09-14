X-GM-THRID: 6330198991314092032
X-Received: by 10.66.42.161 with SMTP id p1mr2295168pal.20.1473864305447;
        Wed, 14 Sep 2016 07:45:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.178 with SMTP id h47ls1119464otc.37.gmail; Wed, 14 Sep
 2016 07:45:05 -0700 (PDT)
X-Received: by 10.129.0.194 with SMTP id 185mr2221279ywa.12.1473864305043;
        Wed, 14 Sep 2016 07:45:05 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id o13si117504itc.3.2016.09.14.07.45.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 07:45:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n24so885524pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 07:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=HX8tDT/rDmYqyMC+d2uW6XyHBE+lOxmlzeYMf1H+5xI=;
        b=CjKzasQTSlfC4mfQFwZaLVWqscxJBLkXJ5cwpjZViIuKC3IP4NnLAJEXzLeA6a4d8Q
         c0NctnT3BpvsUd3WZ3grCZW78POJZ8vm1bf+pXV86a1RjcYRCN0gx5NSrN0ubPW6F4d9
         DlE7vQ+w9QUt3sWBDA+iKqMx5filr4veM26/N0D9rqsQlU5flMNbqX6t0dTyFux76WHm
         g45ZrjgOREgAWdIbAwvX9gFwkk5k/XGQLwRAiboU15pxPieeWgzRxVLvJyc5fAWBVSbk
         vsKOtWo11LRzW2vMOqUO5eF65cSKL5ZKS5Z/494dBJoZRvm94ffMjnR1JGzGKlYOJDOf
         A5lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HX8tDT/rDmYqyMC+d2uW6XyHBE+lOxmlzeYMf1H+5xI=;
        b=NWCF87keSukZkNYLMVoInUohB5o/MR05uY8lI+e3DF3F9fYJBltIqVCIwFtPpjMsaz
         +fbxFwd0/+aOt5cdIz5uCWHdGrHhIX6WYCaIBLqGkNB/iHXFt+5jptthY6kd6y6+vrvF
         FCF9DCTmLoVQV9pG7e6bvCQeFVRs5Q0M9phPoI2gzG7PTwBgBvMjIrKox29+8usglhOc
         S9RfZsgflO6CPWwz7R3bmqO0lIkMvzrXtG/o9jDzAZ6PyMa005gVtWWPMv/kJ/UXeRHk
         1fsBo3gtLM4HPrQj5Ny3JOPZChD02g1VjwmF7mx8kGOkm7DfNNuQNlcl80Re2cxuHRor
         FrsA==
X-Gm-Message-State: AE9vXwMx7iKxyFOZkAnVmfmAuW/5ggdLEWONNr23AgG/RmoxkH0HQiGJ5dd+hFMjLQEN+w==
X-Received: by 10.98.142.1 with SMTP id k1mr5262311pfe.20.1473864304575;
        Wed, 14 Sep 2016 07:45:04 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.141.25])
        by smtp.gmail.com with ESMTPSA id c64sm38852744pfa.51.2016.09.14.07.44.56
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 07:45:03 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Wed, 14 Sep 2016 20:14:50 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: netlogic: Remove unused function
Date: Wed, 14 Sep 2016 20:14:49 +0530
Message-Id: <1473864289-13857-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The function xlr_wakeup_queue is not used anywhere in the kernel.
Therefore, remove it. The static unused functions were detected
using Coccinelle but the change was done by hand.
Script used:

@initialize:python@
@@
def display(name,p):
	print(name,p[0].file)

@r1@
identifier func;
type T;
position p;
@@
static T func@p(...)
{
...
}

@r@
identifier r1.func;
position p;
@@
(
 func(...)
|
 func
)

@script:python depends on !r@
func<<r1.func;
p<<r1.p;
@@
display(func,p)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 7db88aa..552a7dc 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -269,16 +269,6 @@ static void xlr_make_tx_desc(struct nlm_fmn_msg *msg, unsigned long addr,
 	msg->msg3 = 0;
 }
 
-static void __maybe_unused xlr_wakeup_queue(unsigned long dev)
-{
-	struct net_device *ndev = (struct net_device *)dev;
-	struct xlr_net_priv *priv = netdev_priv(ndev);
-	struct phy_device *phydev = xlr_get_phydev(priv);
-
-	if (phydev->link)
-		netif_tx_wake_queue(netdev_get_tx_queue(ndev, priv->wakeup_q));
-}
-
 static netdev_tx_t xlr_net_start_xmit(struct sk_buff *skb,
 				      struct net_device *ndev)
 {
-- 
1.9.1


