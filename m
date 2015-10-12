X-GM-THRID: 6204781093577555968
X-Received: by 10.129.84.198 with SMTP id i189mr24308053ywb.32.1444663180331;
        Mon, 12 Oct 2015 08:19:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.222.99 with SMTP id ql3ls1177274igc.40.gmail; Mon, 12 Oct
 2015 08:19:39 -0700 (PDT)
X-Received: by 10.68.176.132 with SMTP id ci4mr5417595pbc.13.1444663179944;
        Mon, 12 Oct 2015 08:19:39 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pe1si1700641pac.2.2015.10.12.08.19.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 08:19:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id rc13so21664625pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 08:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=nYmmbUeMZ6HvISClqna2lrkeHbmpTMVJgufBjFeVZvU=;
        b=a89Jl7175M5rpXqSRuKKjePwWcqClbIKVjNdDMC4ADwniRPSAc7vBl+k3XCk47TAty
         1TbYtbbImF5tkE6+gsmyychWrQH0uIHikk0FyMJcHSJImjxpLOYQ1Su/grZgK86TYOXi
         TnEl4dfeEJ4/IvPOZ7nGMYvMNZFig9z2qCojd/RrrhRwTYeNP+qY5QI8iZaQye91MdxU
         NRfaAjW31RU4WIrWcW42eGQ5b4msyYszWHj5pqPTxTQOABzvrIOCww9PwzrMuiu5hyP1
         zpOM+I0Ln1luLexIuqmaaWqtmh1SG70b5fwH9SGqyaxKZ7AAdKHkdlg3mLzybcBTgYv1
         4ZyA==
X-Received: by 10.66.230.169 with SMTP id sz9mr34925245pac.136.1444663179838;
        Mon, 12 Oct 2015 08:19:39 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id qy7sm11175141pab.37.2015.10.12.08.19.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Oct 2015 08:19:39 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/3] Staging: wilc1000: wilc_wfi_cfgoperations: Remove NULL check before kfree
Date: Mon, 12 Oct 2015 20:49:19 +0530
Message-Id: <1444663160-26795-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444663160-26795-1-git-send-email-shraddha.6596@gmail.com>
References: <1444663160-26795-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.561BCF8A.0100,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

kfree on NULL pointer is a no-op.

The semantic patch used-

// <smpl>
@@ expression E; @@
- if (E != NULL) { kfree(E); }
+ kfree(E);
@@ expression E; @@
- if (E != NULL) { kfree(E); E = NULL; }
+ kfree(E);
+ E = NULL;
// </smpl>smpl>

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 78 ++++++++---------------
 1 file changed, 25 insertions(+), 53 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 6472777..f16bf5b 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -234,10 +234,8 @@ static void remove_network_from_shadow(unsigned long arg)
 		if (time_after(now, astrLastScannedNtwrksShadow[i].u32TimeRcvdInScan + (unsigned long)(SCAN_RESULT_EXPIRE))) {
 			PRINT_D(CFG80211_DBG, "Network expired in ScanShadow: %s\n", astrLastScannedNtwrksShadow[i].au8ssid);
 
-			if (astrLastScannedNtwrksShadow[i].pu8IEs != NULL) {
-				kfree(astrLastScannedNtwrksShadow[i].pu8IEs);
-				astrLastScannedNtwrksShadow[i].pu8IEs = NULL;
-			}
+			kfree(astrLastScannedNtwrksShadow[i].pu8IEs);
+			astrLastScannedNtwrksShadow[i].pu8IEs = NULL;
 
 			host_int_freeJoinParams(astrLastScannedNtwrksShadow[i].pJoinParams);
 
@@ -1172,15 +1170,13 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
 					KeyLen = params->key_len - 16;
 				}
 				/* if there has been previous allocation for the same index through its key, free that memory and allocate again*/
-				if (priv->wilc_gtk[key_index]->key)
-					kfree(priv->wilc_gtk[key_index]->key);
+				kfree(priv->wilc_gtk[key_index]->key);
 
 				priv->wilc_gtk[key_index]->key = kmalloc(params->key_len, GFP_KERNEL);
 				memcpy(priv->wilc_gtk[key_index]->key, params->key, params->key_len);
 
 				/* if there has been previous allocation for the same index through its seq, free that memory and allocate again*/
-				if (priv->wilc_gtk[key_index]->seq)
-					kfree(priv->wilc_gtk[key_index]->seq);
+				kfree(priv->wilc_gtk[key_index]->seq);
 
 				if ((params->seq_len) > 0) {
 					priv->wilc_gtk[key_index]->seq = kmalloc(params->seq_len, GFP_KERNEL);
@@ -1218,13 +1214,11 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
 					KeyLen = params->key_len - 16;
 				}
 
-				if (priv->wilc_ptk[key_index]->key)
-					kfree(priv->wilc_ptk[key_index]->key);
+				kfree(priv->wilc_ptk[key_index]->key);
 
 				priv->wilc_ptk[key_index]->key = kmalloc(params->key_len, GFP_KERNEL);
 
-				if (priv->wilc_ptk[key_index]->seq)
-					kfree(priv->wilc_ptk[key_index]->seq);
+				kfree(priv->wilc_ptk[key_index]->seq);
 
 				if ((params->seq_len) > 0)
 					priv->wilc_ptk[key_index]->seq = kmalloc(params->seq_len, GFP_KERNEL);
@@ -1371,25 +1365,17 @@ static int del_key(struct wiphy *wiphy, struct net_device *netdev,
 		g_wep_keys_saved = false;
 
 		/*Delete saved WEP keys params, if any*/
-		if (g_key_wep_params.key != NULL) {
-			kfree(g_key_wep_params.key);
-			g_key_wep_params.key = NULL;
-		}
+		kfree(g_key_wep_params.key);
+		g_key_wep_params.key = NULL;
 
 		/*freeing memory allocated by "wilc_gtk" and "wilc_ptk" in "WILC_WIFI_ADD_KEY"*/
 
 		if ((priv->wilc_gtk[key_index]) != NULL) {
 
-			if (priv->wilc_gtk[key_index]->key != NULL) {
-
-				kfree(priv->wilc_gtk[key_index]->key);
-				priv->wilc_gtk[key_index]->key = NULL;
-			}
-			if (priv->wilc_gtk[key_index]->seq) {
-
-				kfree(priv->wilc_gtk[key_index]->seq);
-				priv->wilc_gtk[key_index]->seq = NULL;
-			}
+			kfree(priv->wilc_gtk[key_index]->key);
+			priv->wilc_gtk[key_index]->key = NULL;
+			kfree(priv->wilc_gtk[key_index]->seq);
+			priv->wilc_gtk[key_index]->seq = NULL;
 
 			kfree(priv->wilc_gtk[key_index]);
 			priv->wilc_gtk[key_index] = NULL;
@@ -1398,38 +1384,24 @@ static int del_key(struct wiphy *wiphy, struct net_device *netdev,
 
 		if ((priv->wilc_ptk[key_index]) != NULL) {
 
-			if (priv->wilc_ptk[key_index]->key) {
-
-				kfree(priv->wilc_ptk[key_index]->key);
-				priv->wilc_ptk[key_index]->key = NULL;
-			}
-			if (priv->wilc_ptk[key_index]->seq) {
-
-				kfree(priv->wilc_ptk[key_index]->seq);
-				priv->wilc_ptk[key_index]->seq = NULL;
-			}
+			kfree(priv->wilc_ptk[key_index]->key);
+			priv->wilc_ptk[key_index]->key = NULL;
+			kfree(priv->wilc_ptk[key_index]->seq);
+			priv->wilc_ptk[key_index]->seq = NULL;
 			kfree(priv->wilc_ptk[key_index]);
 			priv->wilc_ptk[key_index] = NULL;
 		}
 
 		/*Delete saved PTK and GTK keys params, if any*/
-		if (g_key_ptk_params.key != NULL) {
-			kfree(g_key_ptk_params.key);
-			g_key_ptk_params.key = NULL;
-		}
-		if (g_key_ptk_params.seq != NULL) {
-			kfree(g_key_ptk_params.seq);
-			g_key_ptk_params.seq = NULL;
-		}
-
-		if (g_key_gtk_params.key != NULL) {
-			kfree(g_key_gtk_params.key);
-			g_key_gtk_params.key = NULL;
-		}
-		if (g_key_gtk_params.seq != NULL) {
-			kfree(g_key_gtk_params.seq);
-			g_key_gtk_params.seq = NULL;
-		}
+		kfree(g_key_ptk_params.key);
+		g_key_ptk_params.key = NULL;
+		kfree(g_key_ptk_params.seq);
+		g_key_ptk_params.seq = NULL;
+
+		kfree(g_key_gtk_params.key);
+		g_key_gtk_params.key = NULL;
+		kfree(g_key_gtk_params.seq);
+		g_key_gtk_params.seq = NULL;
 
 		/*Reset WILC_CHANGING_VIR_IF register to allow adding futrue keys to CE H/W*/
 		Set_machw_change_vir_if(false);
-- 
2.1.4


