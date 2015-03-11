X-GM-THRID: 7649300054016
X-Received: by 10.70.94.102 with SMTP id db6mr22627158pdb.0.1426062109256;
        Wed, 11 Mar 2015 01:21:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.44.4 with SMTP id a4ls548281igm.36.canary; Wed, 11 Mar 2015
 01:21:49 -0700 (PDT)
X-Received: by 10.66.224.42 with SMTP id qz10mr36818645pac.0.1426062109028;
        Wed, 11 Mar 2015 01:21:49 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ni4si563066pdb.2.2015.03.11.01.21.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 01:21:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id lj1so9462267pab.10
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 01:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=0qXo7URMzwmi5cxPBRjWsWjR35OqMq98b+tPzi+t77w=;
        b=uY0rvd3WNeq/YtvUHUnCunhetLuWsnjpJPtUhgWo597mVjZoIY/dZ/H2kok7JYftEO
         yEeoN6eJthQ/HB2UkUVwv8eUYRkbXR2TIT3pnBaWa71lKZdzRuMP2fDi4TIUpyyXkUeR
         kqz91IPup5U57IF9JDSIJJ8gnLBprdNBWXjhA7iWSLkYl1hkP/c8WN8mhZZIMambIlmH
         TF1HfPuU6YsVmdFXSq2Y+ZyouUYu/EkEkbeLWIaXXkTufejtGUf7kb6Ot1yhBKD1bh47
         1sPnnS2k2KAUazjkfQMv8XHynhzSK4UiQXSjovjZ0WEK70liJDY3MZZyne9JHgVO3mKB
         3Kng==
X-Received: by 10.67.1.164 with SMTP id bh4mr73938186pad.129.1426062108903;
        Wed, 11 Mar 2015 01:21:48 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([106.66.2.180])
        by mx.google.com with ESMTPSA id kd9sm4844684pab.0.2015.03.11.01.21.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 11 Mar 2015 01:21:48 -0700 (PDT)
Date: Wed, 11 Mar 2015 13:51:36 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192e: Eliminate use of MSECS macro
Message-ID: <20150311082136.GA14071@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use msecs_to_jiffies instead of driver specific macro
MSECS. This is done using Coccinelle and semantic
patch used for this is as follows:

@@expression t;@@

- MSECS(t)
+ msecs_to_jiffies(t)

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
v1: This patch has some line over 80 characters as limiting
    them to 80 characters does not make code look good.

 drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c |  6 +++---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c        |  4 ++--
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c          |  6 +++---
 drivers/staging/rtl8192e/rtl8192e/rtl_ps.c          | 13 +++++++------
 drivers/staging/rtl8192e/rtl819x_BAProc.c           |  2 +-
 drivers/staging/rtl8192e/rtl819x_TSProc.c           |  6 +++---
 drivers/staging/rtl8192e/rtllib.h                   |  1 -
 drivers/staging/rtl8192e/rtllib_rx.c                |  2 +-
 drivers/staging/rtl8192e/rtllib_softmac.c           | 15 +++++++++------
 9 files changed, 29 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c
index 2e28744..6cb0326 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c
@@ -108,7 +108,7 @@ static bool CPUcheck_maincodeok_turnonCPU(struct net_device *dev)
 	u32		CPU_status = 0;
 	unsigned long   timeout;
 
-	timeout = jiffies + MSECS(200);
+	timeout = jiffies + msecs_to_jiffies(200);
 	while (time_before(jiffies, timeout)) {
 		CPU_status = read_nic_dword(dev, CPU_GEN);
 		if (CPU_status & CPU_GEN_PUT_CODE_OK)
@@ -128,7 +128,7 @@ static bool CPUcheck_maincodeok_turnonCPU(struct net_device *dev)
 		       (u8)((CPU_status|CPU_GEN_PWR_STB_CPU)&0xff));
 	mdelay(1);
 
-	timeout = jiffies + MSECS(200);
+	timeout = jiffies + msecs_to_jiffies(200);
 	while (time_before(jiffies, timeout)) {
 		CPU_status = read_nic_dword(dev, CPU_GEN);
 		if (CPU_status&CPU_GEN_BOOT_RDY)
@@ -156,7 +156,7 @@ static bool CPUcheck_firmware_ready(struct net_device *dev)
 	u32	CPU_status = 0;
 	unsigned long timeout;
 
-	timeout = jiffies + MSECS(20);
+	timeout = jiffies + msecs_to_jiffies(20);
 	while (time_before(jiffies, timeout)) {
 		CPU_status = read_nic_dword(dev, CPU_GEN);
 		if (CPU_status&CPU_GEN_FIRM_RDY)
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index a603acc..90ed03a 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -1793,7 +1793,7 @@ void watch_dog_timer_callback(unsigned long data)
 
 	queue_delayed_work_rsl(priv->priv_wq, &priv->watch_dog_wq, 0);
 	mod_timer(&priv->watch_dog_timer, jiffies +
-		  MSECS(RTLLIB_WATCH_DOG_TIME));
+		  msecs_to_jiffies(RTLLIB_WATCH_DOG_TIME));
 }
 
 /****************************************************************************
@@ -3106,7 +3106,7 @@ void check_rfctrl_gpio_timer(unsigned long data)
 	queue_delayed_work_rsl(priv->priv_wq, &priv->gpio_change_rf_wq, 0);
 
 	mod_timer(&priv->gpio_polling_timer, jiffies +
-		  MSECS(RTLLIB_WATCH_DOG_TIME));
+		  msecs_to_jiffies(RTLLIB_WATCH_DOG_TIME));
 }
 
 /***************************************************************************
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index bdb9274..91794ae 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -2665,14 +2665,14 @@ void dm_fsync_timer_callback(unsigned long data)
 			if (timer_pending(&priv->fsync_timer))
 				del_timer_sync(&priv->fsync_timer);
 			priv->fsync_timer.expires = jiffies +
-				 MSECS(priv->rtllib->fsync_time_interval *
+				 msecs_to_jiffies(priv->rtllib->fsync_time_interval *
 				 priv->rtllib->fsync_multiple_timeinterval);
 			add_timer(&priv->fsync_timer);
 		} else {
 			if (timer_pending(&priv->fsync_timer))
 				del_timer_sync(&priv->fsync_timer);
 			priv->fsync_timer.expires = jiffies +
-				 MSECS(priv->rtllib->fsync_time_interval);
+				 msecs_to_jiffies(priv->rtllib->fsync_time_interval);
 			add_timer(&priv->fsync_timer);
 		}
 	} else {
@@ -2762,7 +2762,7 @@ static void dm_StartSWFsync(struct net_device *dev)
 	if (timer_pending(&priv->fsync_timer))
 		del_timer_sync(&priv->fsync_timer);
 	priv->fsync_timer.expires = jiffies +
-				    MSECS(priv->rtllib->fsync_time_interval);
+				    msecs_to_jiffies(priv->rtllib->fsync_time_interval);
 	add_timer(&priv->fsync_timer);
 
 	write_nic_dword(dev, rOFDM0_RxDetector2, 0x465c12cd);
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_ps.c b/drivers/staging/rtl8192e/rtl8192e/rtl_ps.c
index 4856b76..cbd2405 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_ps.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_ps.c
@@ -67,7 +67,8 @@ void rtl8192_hw_wakeup(struct net_device *dev)
 		RT_TRACE(COMP_DBG, "rtl8192_hw_wakeup(): RF Change in "
 			 "progress!\n");
 		queue_delayed_work_rsl(priv->rtllib->wq,
-				       &priv->rtllib->hw_wakeup_wq, MSECS(10));
+				       &priv->rtllib->hw_wakeup_wq,
+				       msecs_to_jiffies(10));
 		return;
 	}
 	spin_unlock_irqrestore(&priv->rf_ps_lock, flags);
@@ -95,18 +96,18 @@ void rtl8192_hw_to_sleep(struct net_device *dev, u64 time)
 
 	spin_lock_irqsave(&priv->ps_lock, flags);
 
-	time -= MSECS(8+16+7);
+	time -= msecs_to_jiffies(8 + 16 + 7);
 
-	if ((time - jiffies) <= MSECS(MIN_SLEEP_TIME)) {
+	if ((time - jiffies) <= msecs_to_jiffies(MIN_SLEEP_TIME)) {
 		spin_unlock_irqrestore(&priv->ps_lock, flags);
 		printk(KERN_INFO "too short to sleep::%lld < %ld\n",
-		       time - jiffies, MSECS(MIN_SLEEP_TIME));
+		       time - jiffies, msecs_to_jiffies(MIN_SLEEP_TIME));
 		return;
 	}
 
-	if ((time - jiffies) > MSECS(MAX_SLEEP_TIME)) {
+	if ((time - jiffies) > msecs_to_jiffies(MAX_SLEEP_TIME)) {
 		printk(KERN_INFO "========>too long to sleep:%lld > %ld\n",
-		       time - jiffies,  MSECS(MAX_SLEEP_TIME));
+		       time - jiffies,  msecs_to_jiffies(MAX_SLEEP_TIME));
 		spin_unlock_irqrestore(&priv->ps_lock, flags);
 		return;
 	}
diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 0415e02..03e2a82 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -26,7 +26,7 @@ static void ActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pBA,
 {
 	pBA->bValid = true;
 	if (Time != 0)
-		mod_timer(&pBA->Timer, jiffies + MSECS(Time));
+		mod_timer(&pBA->Timer, jiffies + msecs_to_jiffies(Time));
 }
 
 static void DeActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pBA)
diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index 294847d..c51f7e0 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -91,7 +91,7 @@ static void RxPktPendingTimeout(unsigned long data)
 	if (bPktInBuf && (pRxTs->RxTimeoutIndicateSeq == 0xffff)) {
 		pRxTs->RxTimeoutIndicateSeq = pRxTs->RxIndicateSeq;
 		mod_timer(&pRxTs->RxPktPendingTimer,  jiffies +
-			  MSECS(ieee->pHTInfo->RxReorderPendingTime));
+			  msecs_to_jiffies(ieee->pHTInfo->RxReorderPendingTime));
 	}
 	spin_unlock_irqrestore(&(ieee->reorder_spinlock), flags);
 }
@@ -223,7 +223,7 @@ static void AdmitTS(struct rtllib_device *ieee,
 
 	if (InactTime != 0)
 		mod_timer(&pTsCommonInfo->InactTimer, jiffies +
-			  MSECS(InactTime));
+			  msecs_to_jiffies(InactTime));
 }
 
 static struct ts_common_info *SearchAdmitTRStream(struct rtllib_device *ieee,
@@ -542,7 +542,7 @@ void TsStartAddBaProcess(struct rtllib_device *ieee, struct tx_ts_record *pTxTS)
 			RTLLIB_DEBUG(RTLLIB_DL_BA, "TsStartAddBaProcess(): "
 				     "Delayed Start ADDBA after 60 sec!!\n");
 			mod_timer(&pTxTS->TsAddBaTimer, jiffies +
-				  MSECS(TS_ADDBA_DELAY));
+				  msecs_to_jiffies(TS_ADDBA_DELAY));
 		} else {
 			RTLLIB_DEBUG(RTLLIB_DL_BA, "TsStartAddBaProcess(): "
 				     "Immediately Start ADDBA now!!\n");
diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
index cef2dc2..b2c28e9 100644
--- a/drivers/staging/rtl8192e/rtllib.h
+++ b/drivers/staging/rtl8192e/rtllib.h
@@ -525,7 +525,6 @@ struct ieee_param {
 #define IW_QUAL_NOISE_UPDATED  0x4
 #endif
 
-#define MSECS(t) msecs_to_jiffies(t)
 #define msleep_interruptible_rsl  msleep_interruptible
 
 #define RTLLIB_DATA_LEN		2304
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index e8261ae..c1085a5 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -717,7 +717,7 @@ static void RxReorderIndicatePacket(struct rtllib_device *ieee,
 			     __func__);
 		pTS->RxTimeoutIndicateSeq = pTS->RxIndicateSeq;
 		mod_timer(&pTS->RxPktPendingTimer, jiffies +
-			  MSECS(pHTInfo->RxReorderPendingTime));
+			  msecs_to_jiffies(pHTInfo->RxReorderPendingTime));
 	}
 	spin_unlock_irqrestore(&(ieee->reorder_spinlock), flags);
 }
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 16aef7c..1b171b2 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -401,7 +401,7 @@ static void rtllib_send_beacon(struct rtllib_device *ieee)
 
 	if (ieee->beacon_txing && ieee->ieee_up)
 		mod_timer(&ieee->beacon_timer, jiffies +
-			  (MSECS(ieee->current_network.beacon_interval - 5)));
+			  (msecs_to_jiffies(ieee->current_network.beacon_interval - 5)));
 }
 
 
@@ -639,7 +639,7 @@ static void rtllib_softmac_scan_wq(void *data)
 		rtllib_send_probe_requests(ieee, 0);
 
 	queue_delayed_work_rsl(ieee->wq, &ieee->softmac_scan_wq,
-			       MSECS(RTLLIB_SOFTMAC_SCAN_TIME));
+			       msecs_to_jiffies(RTLLIB_SOFTMAC_SCAN_TIME));
 
 	up(&ieee->scan_sem);
 	return;
@@ -2008,9 +2008,11 @@ static short rtllib_sta_ps_sleep(struct rtllib_device *ieee, u64 *time)
 	if (dtim & (RTLLIB_DTIM_UCAST & ieee->ps))
 		return 2;
 
-	if (!time_after(jiffies, ieee->dev->trans_start + MSECS(timeout)))
+	if (!time_after(jiffies,
+			ieee->dev->trans_start + msecs_to_jiffies(timeout)))
 		return 0;
-	if (!time_after(jiffies, ieee->last_rx_ps_time + MSECS(timeout)))
+	if (!time_after(jiffies,
+			ieee->last_rx_ps_time + msecs_to_jiffies(timeout)))
 		return 0;
 	if ((ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE) &&
 	    (ieee->mgmt_queue_tail != ieee->mgmt_queue_head))
@@ -2060,7 +2062,7 @@ static short rtllib_sta_ps_sleep(struct rtllib_device *ieee, u64 *time)
 			}
 
 		*time = ieee->current_network.last_dtim_sta_time
-			+ MSECS(ieee->current_network.beacon_interval *
+			+ msecs_to_jiffies(ieee->current_network.beacon_interval *
 			LPSAwakeIntvl_tmp);
 	}
 	}
@@ -2808,7 +2810,8 @@ static void rtllib_start_ibss_wq(void *data)
 
 inline void rtllib_start_ibss(struct rtllib_device *ieee)
 {
-	queue_delayed_work_rsl(ieee->wq, &ieee->start_ibss_wq, MSECS(150));
+	queue_delayed_work_rsl(ieee->wq, &ieee->start_ibss_wq,
+			       msecs_to_jiffies(150));
 }
 
 /* this is called only in user context, with wx_sem held */
-- 
1.9.1


