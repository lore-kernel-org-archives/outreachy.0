X-GM-THRID: 6202030500933009408
X-Received: by 10.107.10.15 with SMTP id u15mr26902349ioi.22.1444044645361;
        Mon, 05 Oct 2015 04:30:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.202 with SMTP id d10ls1233255igx.41.canary; Mon, 05 Oct
 2015 04:30:45 -0700 (PDT)
X-Received: by 10.68.131.193 with SMTP id oo1mr25430811pbb.6.1444044645129;
        Mon, 05 Oct 2015 04:30:45 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pe1si3280200pac.2.2015.10.05.04.30.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 04:30:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id hy16so34624391pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 04:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=1+bLKSUhOYS4GolwB7nHHLhfeMQDGVPkg8c83O5XH0c=;
        b=b9F9LJEui6vwL6w4xd1cUm4TUdhdT6ua4Odoo0J07IIwThy4Kv1zkc5IfyXwhXlFZW
         1mLJegeYK5It0XdxaHl25QcgevGw3wuq0AV7OYof7giTurOs/ywtHxRGsjJ6vQoxW4xb
         MuKs1r1yo8igqHhf34mG4GAYUfTNT01cx9iGeeNRMihrIe9TKNQ3cQC4RX/X/onY/W7y
         xL0PlIhKBx+TxTDbvWSXu6Uw4AaxkhsEhhxF2wMVOtRpos3664ZvtcA+/0D+5NZMYHWO
         Dui9bhj01h22KJyOA6MGuXJz70GBU75OAyvHXQN+JCvbGX+Tr2KJbMjbAe0JhbGZjGBI
         lXfQ==
X-Received: by 10.68.92.1 with SMTP id ci1mr39254247pbb.155.1444044645032;
        Mon, 05 Oct 2015 04:30:45 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id te7sm27122767pbc.87.2015.10.05.04.30.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Oct 2015 04:30:44 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH v3 1/2] Staging: wilc1000: wilc_wfi_cfgoperations: Replace memset with eth_zero_addr
Date: Mon,  5 Oct 2015 17:00:32 +0530
Message-Id: <1444044633-6658-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444044633-6658-1-git-send-email-shraddha.6596@gmail.com>
References: <1444044633-6658-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.56125F63.02B3,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
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
 No change

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


