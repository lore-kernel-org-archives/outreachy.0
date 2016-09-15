X-GM-THRID: 6330198991314092032
X-Received: by 10.36.115.205 with SMTP id y196mr2361879itb.2.1473949067732;
        Thu, 15 Sep 2016 07:17:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.211 with SMTP id 77ls3370303otd.49.gmail; Thu, 15 Sep
 2016 07:17:47 -0700 (PDT)
X-Received: by 10.13.247.69 with SMTP id h66mr6551407ywf.46.1473949067177;
        Thu, 15 Sep 2016 07:17:47 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id h124si2775333pfe.0.2016.09.15.07.17.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 07:17:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id p2so2181087pap.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 07:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=KMfR6eJluuoyiEQ+k8junqABnwlN4Hk8sai9ZFDLzjw=;
        b=u9NKTl2q/uvetMSAaqSOWoKFIa+wOhjQYGOSAPELgE6RWLrIpslKvbFYHXILTcrkHZ
         2xYBdu4GO7PQ9lSL4Is0VRRZvjmUlReByj/b2ZlTak6hy4Iv9ggnMU+ioLmvUyhfTszQ
         sGE8dMl9k1SSWOSghShOO3L5f3OuE0L/pnZlCoSuLrXyMAZR6aZ9A3Z2iACW7kpYAJNQ
         969uUeUZjkvn9X+IBYdcKilrJvahH6oE0h5MCgq/bBOdZq89fWoDDR0GgcR1hPGHUSfx
         bK4HvxFhYBUwjjRPAIO+As3d3BvtEh71JOG1j00v/qef7sVnGu7Pzw4AS7LoikGGTjCA
         ul1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KMfR6eJluuoyiEQ+k8junqABnwlN4Hk8sai9ZFDLzjw=;
        b=ACw8kzZOHbEvzUu6wz/Pc73cv7p5upc/Ixr2RJb0FErnZWqH8+x2ucktYD3tERWb1I
         p0HDl1icev/BPsg/+ZA2XirFF/LuBLsqUr39zBPyGkv2OHn/xVGAAk6Dc92BoOuaqQ8t
         D7IAnqt89njt0tBSzWaq+3uE/TDd2M2pBtdcT0J9ZL5EVwIdGlRhO5nMCEvK1OTXHyw2
         Rzc06Ck5t1wNF70itLlEQIh+UrvXmcmLE3Wwe/JIkx0uM3T8gna8w8VDuMEGyUt+N426
         U6tLIzflAr1IDPwTZikZmGNr06FiHL3tsnKoLf9u5Vglv2pOWb09nMUawYiuSBf6m87W
         OHuA==
X-Gm-Message-State: AE9vXwPYyFgq6vDmPmGp8WhXAmZenWdnkFKLl7zCDb3cG7Rw9nsq/5sWDx1tvfGZUKKZUg==
X-Received: by 10.66.129.174 with SMTP id nx14mr1151566pab.167.1473949066481;
        Thu, 15 Sep 2016 07:17:46 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.155.108])
        by smtp.gmail.com with ESMTPSA id ps2sm5659673pab.10.2016.09.15.07.17.39
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 07:17:45 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Thu, 15 Sep 2016 19:47:35 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2] Staging: netlogic: Remove unused function
Date: Thu, 15 Sep 2016 19:47:18 +0530
Message-Id: <1473949038-12108-1-git-send-email-bhumirks@gmail.com>
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
@@
func

@script:python depends on !r@
func << r1.func;
p << r1.p;
@@
display(func,p)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
* Simplify coccinelle script by removing func(...)
  and adding spaces around "<<"

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


