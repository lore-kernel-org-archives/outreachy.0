X-GM-THRID: 6202030500933009408
X-Received: by 10.66.55.104 with SMTP id r8mr24150680pap.46.1444026647401;
        Sun, 04 Oct 2015 23:30:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.133 with SMTP id j5ls1105949igx.3.canary; Sun, 04 Oct
 2015 23:30:47 -0700 (PDT)
X-Received: by 10.66.252.6 with SMTP id zo6mr24359181pac.29.1444026647115;
        Sun, 04 Oct 2015 23:30:47 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id uv4si3707921pac.0.2015.10.04.23.30.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 23:30:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id lk4so166232896pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 23:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=O7rWHDNq28XOICb4Cee498GJjNu8JBISRKy2Ot6CWQI=;
        b=b61eJMDG3a4OXJQ43g05JisHjaFkpNKbAfQrbrt+Ibz4PMixDHDs88ZmuhZE0eWErk
         yW5gDzYI55mB9jbVtavVlW39xNlLL6pPva5dKnEWtihgGvEZueXRE8IusVdTlZwW/SJz
         0QadJlg/FXD4KGnlQZQ5HAxY01F6ZiBnc5/g9k3rzAB+2rcaykdhPm+YRcD+7zYMiQo5
         n9pe0uA+G830BxHuGkCdpr1z+hWDTBFv1AoGTHAMWJNB46EeGT8p+7XuvV+dezeJYFRo
         DA4q4SUzl+OIzESG7m1L7DgJIVaM343hymtwJSynb/8F05HL8kXVePW8s7AIa/f2cVbh
         v+sg==
X-Received: by 10.68.163.5 with SMTP id ye5mr37326365pbb.120.1444026647009;
        Sun, 04 Oct 2015 23:30:47 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fk8sm25537993pab.33.2015.10.04.23.30.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 23:30:46 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 1/2] Staging: wilc1000: wilc_wfi_cfgoperations: Replace memset with eth_zero_addr
Date: Mon,  5 Oct 2015 12:00:33 +0530
Message-Id: <1444026634-14551-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444026634-14551-1-git-send-email-shraddha.6596@gmail.com>
References: <1444026634-14551-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.56121915.0395,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
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
Changes in v3- 
 No change.

Changes in v2-
 No change.

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


