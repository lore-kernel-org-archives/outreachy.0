X-GM-THRID: 6202030500933009408
X-Received: by 10.13.221.143 with SMTP id g137mr7191770ywe.48.1444024017547;
        Sun, 04 Oct 2015 22:46:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.72 with SMTP id d66ls2727287qgf.53.gmail; Sun, 04 Oct
 2015 22:46:56 -0700 (PDT)
X-Received: by 10.129.153.2 with SMTP id q2mr25259492ywg.40.1444024016967;
        Sun, 04 Oct 2015 22:46:56 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id zg1si3545097pbb.2.2015.10.04.22.46.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 22:46:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ex6so166114515pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 22:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=xsJz6Jqw7MvD8WAOETsMFihqc43KUMBAobOoICs30xg=;
        b=cLjOCfy6NXw0Rbta0Ap+Azab66yZgBRT2tpcVohRrVQhskI73dhZXzsiHJiVjNBYk2
         uk3lJaQsDbP/D6lfEYS4ohb9l3e2tegvK3o/bWTZgX3RrSaFIK4B4xMkGcEoDbhxpQ9X
         D5UUTNPaVvCW0/F3y5M59CzXjsckPJX0RmaiIqbpM0nJT4WgoTqX5wQwUP1oTxS6aHya
         4JEJN+TbAHjLgRpcgwZMUS1aNOnSBK8tAyKI/8DWTbJ8NtCP3IZNsTrXi+0Ij+yzx6dp
         geuUe3moHa3qbElIzpUoHl3BfhX6g6hbQRrxw+DPGoYfuwY304I/peVK4AQWLO9eg+K4
         og3w==
X-Received: by 10.66.102.74 with SMTP id fm10mr36936138pab.151.1444024016832;
        Sun, 04 Oct 2015 22:46:56 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id sl7sm25072597pbc.54.2015.10.04.22.46.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 22:46:56 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] Staging: wilc1000: wilc_wfi_cfgoperations: Replace memset with eth_zero_addr
Date: Mon,  5 Oct 2015 11:16:44 +0530
Message-Id: <1444024004-6326-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.56120ECF.0328,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
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
Changes in v2-
 Dropped the second patch in series as it breaks the build.

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


