X-GM-THRID: 6155043602432
X-Received: by 10.236.14.196 with SMTP id d44mr29785275yhd.52.1425368309630;
        Mon, 02 Mar 2015 23:38:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.14.77 with SMTP id 74ls94463ioo.38.gmail; Mon, 02 Mar 2015
 23:38:29 -0800 (PST)
X-Received: by 10.66.151.101 with SMTP id up5mr30265047pab.10.1425368309291;
        Mon, 02 Mar 2015 23:38:29 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id gb13si1661pac.2.2015.03.02.23.38.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 23:38:29 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfb1 with SMTP id fb1so12512166pad.7
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 23:38:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=2IDdDJTy5rBHElJ/fo/iKrmTHKGCImhVNR5x2ACROPU=;
        b=JzMlfokOkkl0XXFc2Utru4n7X8B3/34bg0sCLNY94dDYSTrHEQMqMeBKBvQhxYyCBx
         sfyN1HJmTnFrQmRfP1wUSDsXBsNmJa0DJm+zPJOLhosvzxBmNV8a0k3361DqjMCXBBpS
         Lz0D7u2i9LBNrj2qOOrRd3bU4uMbSUte5GJiASFyHu8F+Aw4NITREXpnl6vJbKMv/D46
         nlNnywofe4bzEsT+Dqlzvja7K9Y3Wx7sK/BpVzhXmHsRLXSki2UKF45a8aBJGUeyO6mE
         uulba9zvH5MBrymaVaYjKgVY58nUI0BB3iOBPFTT1yNbxwIRdhawon9R18XcUP8nge8B
         ibcw==
X-Received: by 10.68.65.104 with SMTP id w8mr11420663pbs.57.1425368309149;
        Mon, 02 Mar 2015 23:38:29 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.152])
        by mx.google.com with ESMTPSA id bc5sm9246pdb.47.2015.03.02.23.38.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 23:38:28 -0800 (PST)
Date: Tue, 3 Mar 2015 13:08:24 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192e: Eliminate use of macro IS_NIC_DOWN
Message-ID: <e2262f725df348fdad3c4ef0d9abfb19720e99ff.1425367678.git.vthakkar1994@gmail.com>
References: <cover.1425367678.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425367678.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch eliminates use of unnecessory macro IS_NIC_DOWN
and replaces it with standard code.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c | 10 +++++-----
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c   | 10 +++++-----
 drivers/staging/rtl8192e/rtl8192e/rtl_core.h   |  2 --
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c     |  4 ++--
 4 files changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
index 8c08ef6..cd3c662 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
@@ -996,7 +996,7 @@ static void rtl8192_phy_FinishSwChnlNow(struct net_device *dev, u8 channel)
 	      &priv->SwChnlStep, &delay)) {
 		if (delay > 0)
 			msleep(delay);
-		if (IS_NIC_DOWN(priv))
+		if (!priv->up)
 			break;
 	}
 }
@@ -1020,7 +1020,7 @@ u8 rtl8192_phy_SwChnl(struct net_device *dev, u8 channel)
 	struct r8192_priv *priv = rtllib_priv(dev);
 
 	RT_TRACE(COMP_PHY, "=====>%s()\n", __func__);
-	if (IS_NIC_DOWN(priv)) {
+	if (!priv->up) {
 		RT_TRACE(COMP_ERR, "%s(): ERR !! driver is not up\n", __func__);
 		return false;
 	}
@@ -1060,7 +1060,7 @@ u8 rtl8192_phy_SwChnl(struct net_device *dev, u8 channel)
 	priv->SwChnlStage = 0;
 	priv->SwChnlStep = 0;
 
-	if (!IS_NIC_DOWN(priv))
+	if (priv->up)
 		rtl8192_SwChnl_WorkItem(dev);
 	priv->SwChnlInProgress = false;
 	return true;
@@ -1186,7 +1186,7 @@ void rtl8192_SetBWModeWorkItem(struct net_device *dev)
 		priv->SetBWModeInProgress = false;
 		return;
 	}
-	if (IS_NIC_DOWN(priv)) {
+	if (!priv->up) {
 		RT_TRACE(COMP_ERR, "%s(): ERR!! driver is not up\n", __func__);
 		return;
 	}
@@ -1309,7 +1309,7 @@ void InitialGain819xPci(struct net_device *dev, u8 Operation)
 	u32 BitMask;
 	u8 initial_gain;
 
-	if (!IS_NIC_DOWN(priv)) {
+	if (priv->up) {
 		switch (Operation) {
 		case IG_Backup:
 			RT_TRACE(COMP_SCAN, "IG_Backup, backup the initial"
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 7dda904..a603acc 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -1506,7 +1506,7 @@ RESET_START:
 		if (priv->rtllib->state == RTLLIB_LINKED)
 			LeisurePSLeave(dev);
 
-		if (IS_NIC_DOWN(priv)) {
+		if (priv->up) {
 			RT_TRACE(COMP_ERR, "%s():the driver is not up! "
 				 "return\n", __func__);
 			up(&priv->wx_sem);
@@ -1650,7 +1650,7 @@ void	rtl819x_watchdog_wqcallback(void *data)
 	bool	bHigherBusyRxTraffic = false;
 	bool bEnterPS = false;
 
-	if (IS_NIC_DOWN(priv) || priv->bHwRadioOff)
+	if (!priv->up || priv->bHwRadioOff)
 		return;
 
 	if (priv->rtllib->state >= RTLLIB_LINKED) {
@@ -1882,7 +1882,7 @@ void rtl8192_hard_data_xmit(struct sk_buff *skb, struct net_device *dev,
 				    MAX_DEV_ADDR_SIZE);
 	u8 queue_index = tcb_desc->queue_index;
 
-	if ((priv->rtllib->eRFPowerState == eRfOff) || IS_NIC_DOWN(priv) ||
+	if ((priv->rtllib->eRFPowerState == eRfOff) || !priv->up ||
 	     priv->bResetInProgress) {
 		kfree_skb(skb);
 		return;
@@ -1916,7 +1916,7 @@ int rtl8192_hard_start_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	if (queue_index != TXCMD_QUEUE) {
 		if ((priv->rtllib->eRFPowerState == eRfOff) ||
-		     IS_NIC_DOWN(priv) || priv->bResetInProgress) {
+		     !priv->up || priv->bResetInProgress) {
 			kfree_skb(skb);
 			return 0;
 		}
@@ -3032,7 +3032,7 @@ bool NicIFEnableNIC(struct net_device *dev)
 	struct rt_pwr_save_ctrl *pPSC = (struct rt_pwr_save_ctrl *)
 					(&(priv->rtllib->PowerSaveControl));
 
-	if (IS_NIC_DOWN(priv)) {
+	if (!priv->up) {
 		RT_TRACE(COMP_ERR, "ERR!!! %s(): Driver is already down!\n",
 			 __func__);
 		priv->bdisable_nic = false;
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.h b/drivers/staging/rtl8192e/rtl8192e/rtl_core.h
index d1438c2..113174b 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.h
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.h
@@ -98,8 +98,6 @@
 #define BIT(_i)				(1<<(_i))
 #endif
 
-#define IS_NIC_DOWN(priv)	(!(priv)->up)
-
 #define IS_ADAPTER_SENDS_BEACON(dev) 0
 
 #define IS_UNDER_11N_AES_MODE(_rtllib)		\
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index b8891c6..bdb9274 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -267,7 +267,7 @@ static void dm_check_rate_adaptive(struct net_device *dev)
 	bool bshort_gi_enabled = false;
 	static u8 ping_rssi_state;
 
-	if (IS_NIC_DOWN(priv)) {
+	if (!priv->up) {
 		RT_TRACE(COMP_RATE, "<---- dm_check_rate_adaptive(): driver is going to unload\n");
 		return;
 	}
@@ -1569,7 +1569,7 @@ void dm_restore_dynamic_mechanism_state(struct net_device *dev)
 	u32	reg_ratr = priv->rate_adaptive.last_ratr;
 	u32 ratr_value;
 
-	if (IS_NIC_DOWN(priv)) {
+	if (!priv->up) {
 		RT_TRACE(COMP_RATE, "<---- dm_restore_dynamic_mechanism_state(): driver is going to unload\n");
 		return;
 	}
-- 
1.9.1


