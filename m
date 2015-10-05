X-GM-THRID: 6202030500933009408
X-Received: by 10.50.66.138 with SMTP id f10mr4783536igt.8.1444022756371;
        Sun, 04 Oct 2015 22:25:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.129.11 with SMTP id ns11ls1292759obb.5.gmail; Sun, 04 Oct
 2015 22:25:56 -0700 (PDT)
X-Received: by 10.182.221.196 with SMTP id qg4mr23682891obc.23.1444022756033;
        Sun, 04 Oct 2015 22:25:56 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id w5si3194999pbt.1.2015.10.04.22.25.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 22:25:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fv12so168815287pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 22:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=TiWC8kjprNg1aL1HqIH3HsvEcnPSLitU9IyEmUKKdNg=;
        b=N1VWbVaR/NLl4+nbFIik6cHo2YlJkI0IhW6vYRrXPZy6nQnHc64Bi8RoWXwNBSiTUB
         LqoHLl9YN2Uq0T2wpQ2ZUBpq3BZ7YDtC/6EEXZbToaUwVUaJN1UisKy6O/TOjHGKrmIg
         dAql8jqv7eQxOOr8Q3s7ycLTWK6ddWhFz86OR/occpMshIt/f+b3WV7EraEwfsUTTh2S
         OtPssAj9n3wsS6P4GVsPGvGEY3xZ7i0THbxreQ4IHjke5A6EUYzmi8jeIncuqrt0ultu
         awurLoCabzr77VzsBUrJ6nqu+xgvYMnekL57iBH/lMoWS5jvPkOldift6xkzvi3iAphk
         8sXg==
X-Received: by 10.66.233.97 with SMTP id tv1mr37313941pac.110.1444022755868;
        Sun, 04 Oct 2015 22:25:55 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id so4sm24951456pbc.72.2015.10.04.22.25.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 22:25:55 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] Staging: wilc1000: wilc_wfi_cfgoperations: Replace memset with eth_zero_addr
Date: Mon,  5 Oct 2015 10:55:40 +0530
Message-Id: <1444022741-4230-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444022741-4230-1-git-send-email-shraddha.6596@gmail.com>
References: <1444022741-4230-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.561209E2.02D1,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Use eth_zero_addr to assign the zero address to the given address
array instead of memset when second argument is address of zero.

The Coccinelle patch used -

// <smpl>
@eth_zero_addr@
expression e;
@@

-memset(e,0x00,ETH_ALEN);
+eth_zero_addr(e);
// </smpl>

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 04838f1..7cf39b29 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -562,7 +562,7 @@ static void CfgConnectResult(tenuConnDisconnEvent enuConnDisconnEvent,
 			 *  = SUCCESSFUL_STATUSCODE, while mac status is MAC_DISCONNECTED (which means something wrong happened) */
 			u16ConnectStatus = WLAN_STATUS_UNSPECIFIED_FAILURE;
 			linux_wlan_set_bssid(priv->dev, NullBssid);
-			memset(u8ConnectedSSID, 0, ETH_ALEN);
+			eth_zero_addr(u8ConnectedSSID);
 
 			/*Invalidate u8WLANChannel value on wlan0 disconnect*/
 			if (!pstrWFIDrv->u8P2PConnect)
@@ -619,9 +619,9 @@ static void CfgConnectResult(tenuConnDisconnEvent enuConnDisconnEvent,
 		u8P2Plocalrandom = 0x01;
 		u8P2Precvrandom = 0x00;
 		bWilc_ie = false;
-		memset(priv->au8AssociatedBss, 0, ETH_ALEN);
+		eth_zero_addr(priv->au8AssociatedBss);
 		linux_wlan_set_bssid(priv->dev, NullBssid);
-		memset(u8ConnectedSSID, 0, ETH_ALEN);
+		eth_zero_addr(u8ConnectedSSID);
 
 		/*Invalidate u8WLANChannel value on wlan0 disconnect*/
 		if (!pstrWFIDrv->u8P2PConnect)
-- 
2.1.4


