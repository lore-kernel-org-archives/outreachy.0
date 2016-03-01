X-GM-THRID: 6257172043705352192
X-Received: by 10.140.134.134 with SMTP id 128mr14169550qhg.29.1456861394935;
        Tue, 01 Mar 2016 11:43:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.88.193 with SMTP id bi1ls1637715obb.35.gmail; Tue, 01 Mar
 2016 11:43:13 -0800 (PST)
X-Received: by 10.182.247.97 with SMTP id yd1mr18763548obc.9.1456861393140;
        Tue, 01 Mar 2016 11:43:13 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id ui7si4642366pab.0.2016.03.01.11.43.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 11:43:13 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id l6so20970808pfl.3
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 11:43:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jDoOQqBMn2e7+OXJ0cmAdlLsQP+BU0N4KzKZRn/cALw=;
        b=O8KdMMtY4J6Ih9qriwRTvThyotTtZvUBspCMOanG3BtugbaTORAgs1/UQHw5A3NU0Q
         +3L6esrVpOP+UTXaIblySwzzYHRzuHOhT7+vZLLAfS60+KlM5/plEOJu6AaHJro8zITs
         Kp33tm1hSdg7KRnq7BBsER95iRvi3Vqs5ECivzJo6KE9nT4moIipHNAi3q0HVA9dGYGD
         ejiG8Ev6R1S64VREiS2GAKzcXn8HD+KDL1QeRCGDseFgEJvznWYsz7Y8Aoa4pwxqAMV2
         QNlkpw2nIsQh+KXl35qGRdToUlBmMrEfGa37VW2tmXySbgsdSYq2A77jJ/9BhpssV5HG
         0x4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jDoOQqBMn2e7+OXJ0cmAdlLsQP+BU0N4KzKZRn/cALw=;
        b=J8z3ZHGjxNSyXfJdBiRoH8k5fgHCXuDVyPxQ+yCFNDQ/DsKq+uYzeKdFRu4dbAJIW2
         +s2AyF8+J5kQej5GjOeDrl5UiJn0P96gV8g87gu0qcuFa8B0NzVboUc9Y4ndip3X1e1l
         txsa1fC9AtlB+oQvmq2d6vmHOeGKCUtUg45qkFDXscjqgoidDLAB6Cbhyz+l5t8g+4hr
         jLlgxt50rC3iEIZW6AhKkBQFwlNbPe6u7SP4iXa7aApV+kC1Br1m98niET2e6BZRp+ti
         cdqigmN5zNMW6ZWBW99uqdcrPdGclCtpyFmxpiX6STiwwJBpys2Pbxu5jMOVeNN0TKT7
         Ax1g==
X-Gm-Message-State: AD7BkJKTx/KL6J6L5vCU4Ry0g+SmBWEITsN6P7rfGxzSPue3yXv15I5Dyuf4MrNqfdzdPw==
X-Received: by 10.98.31.221 with SMTP id l90mr32908500pfj.92.1456861392973;
        Tue, 01 Mar 2016 11:43:12 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.159.79])
        by smtp.gmail.com with ESMTPSA id ql1sm7148540pac.24.2016.03.01.11.43.09
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 11:43:12 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 02 Mar 2016 01:13:02 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8192e: Replace random_ether_addr with eth_random_addr
Date: Wed,  2 Mar 2016 01:12:03 +0530
Message-Id: <1456861323-7430-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The macro random_ether_addr is calling the function eth_random_addr.
Therefore, the call to random_ether_addr can be replaced with 
eth_random_addr.
Remove the wrapper function rtllib_randomize_cell and replace its
call with eth_random_addr as it is wrapping random_ether_addr.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_softmac.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 25b5b5e..512f0cf 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -2538,12 +2538,6 @@ void rtllib_wake_all_queues(struct rtllib_device *ieee)
 	netif_tx_wake_all_queues(ieee->dev);
 }
 
-inline void rtllib_randomize_cell(struct rtllib_device *ieee)
-{
-
-	random_ether_addr(ieee->current_network.bssid);
-}
-
 /* called in user context only */
 static void rtllib_start_master_bss(struct rtllib_device *ieee)
 {
@@ -2634,7 +2628,7 @@ static void rtllib_start_ibss_wq(void *data)
 		netdev_info(ieee->dev, "creating new IBSS cell\n");
 		ieee->current_network.channel = ieee->IbssStartChnl;
 		if (!ieee->wap_set)
-			rtllib_randomize_cell(ieee);
+			eth_random_addr(ieee->current_network.bssid);
 
 		if (ieee->modulation & RTLLIB_CCK_MODULATION) {
 
-- 
1.9.1


