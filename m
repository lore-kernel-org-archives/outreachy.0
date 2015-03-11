X-GM-THRID: 7650196586496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d5f5fa2ef5938719
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.37.72 with SMTP id x48mr36821944yha.33.1426068449697;
        Wed, 11 Mar 2015 03:07:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.65.33 with SMTP id u1ls1513526igs.30.canary; Wed, 11 Mar
 2015 03:07:29 -0700 (PDT)
X-Received: by 10.43.39.142 with SMTP id tm14mr30725813icb.16.1426068449509;
        Wed, 11 Mar 2015 03:07:29 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id ni4si605621pdb.2.2015.03.11.03.07.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 03:07:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdno5 with SMTP id o5so10111956pdn.1
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 03:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=GodD6sDFWsv5NdByTitqiy1xGV7qzwfUIX8hAd0lltM=;
        b=VifUiFZuCs0AQke9NNMPYMz8aHTw5o60c4InggomZ279qH6lQ4ZuD2JSoGxC3AtL3t
         Ne7nyJcUmCX3NdTJ4/zhsGLIVcwwHBQ23Xvg6ToIQNb/QhBFtFe9JzMPvgqfsg0Ee0C9
         fIKitJdRAj3OqXSh5SzmjS1plNWJJ6E2UwVxZFcSSd3iG6fvYZVOsvBnee5idvP/Z3Vu
         bAryePx9XPnGjdH3h6HButmitkzUKs+zm9GqHnP6ibrxPmrlyqC9Xj+Jwrt0518zAuz4
         IwiJBlANIkdFrY5F16Ps9papdOayCwlrYwg7VH3G1+9lUK1s9qrBFzA+wgOjXgX1fJBv
         8/3w==
X-Received: by 10.70.55.65 with SMTP id q1mr37396312pdp.35.1426068449269;
        Wed, 11 Mar 2015 03:07:29 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([27.62.203.100])
        by mx.google.com with ESMTPSA id qa3sm5297711pab.16.2015.03.11.03.07.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 03:07:28 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 5/5] Staging: rtl8192u: Combine initialization using setup_timer
Date: Wed, 11 Mar 2015 15:34:52 +0530
Message-Id: <1426068292-20348-5-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426068292-20348-1-git-send-email-somyaanand214@gmail.com>
References: <1426068292-20348-1-git-send-email-somyaanand214@gmail.com>

The function setup_timer combines the initialization of a timer with the
initialization of the timer's function and data fields.

So, this patch combines the multiline code for timer initialization using the function
setup_timer. This issue is identified via coccinelle script.

@@
expression E1, E2, E3;
type T;
@@
- init_timer(&E1);
...
(
- E1.function = E2;
...
- E1.data = (T)E3;
+ setup_timer(&E1, E2, (T)E3);
|
- E1.data = (T)E3;
...
- E1.function = E2;
+ setup_timer(&E1, E2, (T)E3);
|
- E1.function = E2;
+ setup_timer(&E1, E2, NULL);
)

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_module.c  |  5 +-
 .../staging/rtl8192u/ieee80211/rtl819x_TSProc.c    | 55 +++++++---------------
 drivers/staging/rtl8192u/r8192U_core.c             |  5 +-
 drivers/staging/rtl8192u/r8192U_dm.c               |  6 +--
 4 files changed, 24 insertions(+), 47 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index 9a60725..31233d8 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -133,9 +133,8 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 	ieee->ieee802_1x = 1; /* Default to supporting 802.1x */
 
 	INIT_LIST_HEAD(&ieee->crypt_deinit_list);
-	init_timer(&ieee->crypt_deinit_timer);
-	ieee->crypt_deinit_timer.data = (unsigned long)ieee;
-	ieee->crypt_deinit_timer.function = ieee80211_crypt_deinit_handler;
+	setup_timer(&ieee->crypt_deinit_timer,
+		    ieee80211_crypt_deinit_handler, (unsigned long)ieee);
 
 	spin_lock_init(&ieee->lock);
 	spin_lock_init(&ieee->wpax_suitlist_lock);
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index acaa723..0345f1c 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -156,26 +156,16 @@ void TSInitialize(struct ieee80211_device *ieee)
 		pTxTS->num = count;
 		// The timers for the operation of Traffic Stream and Block Ack.
 		// DLS related timer will be add here in the future!!
-		init_timer(&pTxTS->TsCommonInfo.SetupTimer);
-		pTxTS->TsCommonInfo.SetupTimer.data = (unsigned long)pTxTS;
-		pTxTS->TsCommonInfo.SetupTimer.function = TsSetupTimeOut;
-
-		init_timer(&pTxTS->TsCommonInfo.InactTimer);
-		pTxTS->TsCommonInfo.InactTimer.data = (unsigned long)pTxTS;
-		pTxTS->TsCommonInfo.InactTimer.function = TsInactTimeout;
-
-		init_timer(&pTxTS->TsAddBaTimer);
-		pTxTS->TsAddBaTimer.data = (unsigned long)pTxTS;
-		pTxTS->TsAddBaTimer.function = TsAddBaProcess;
-
-		init_timer(&pTxTS->TxPendingBARecord.Timer);
-		pTxTS->TxPendingBARecord.Timer.data = (unsigned long)pTxTS;
-		pTxTS->TxPendingBARecord.Timer.function = BaSetupTimeOut;
-
-		init_timer(&pTxTS->TxAdmittedBARecord.Timer);
-		pTxTS->TxAdmittedBARecord.Timer.data = (unsigned long)pTxTS;
-		pTxTS->TxAdmittedBARecord.Timer.function = TxBaInactTimeout;
-
+		setup_timer(&pTxTS->TsCommonInfo.SetupTimer, TsSetupTimeOut,
+			    (unsigned long)pTxTS);
+		setup_timer(&pTxTS->TsCommonInfo.InactTimer, TsInactTimeout,
+			    (unsigned long)pTxTS);
+		setup_timer(&pTxTS->TsAddBaTimer, TsAddBaProcess,
+			    (unsigned long)pTxTS);
+		setup_timer(&pTxTS->TxPendingBARecord.Timer, BaSetupTimeOut,
+			    (unsigned long)pTxTS);
+		setup_timer(&pTxTS->TxAdmittedBARecord.Timer,
+			    TxBaInactTimeout, (unsigned long)pTxTS);
 		ResetTxTsEntry(pTxTS);
 		list_add_tail(&pTxTS->TsCommonInfo.List, &ieee->Tx_TS_Unused_List);
 		pTxTS++;
@@ -189,23 +179,14 @@ void TSInitialize(struct ieee80211_device *ieee)
 	{
 		pRxTS->num = count;
 		INIT_LIST_HEAD(&pRxTS->RxPendingPktList);
-
-		init_timer(&pRxTS->TsCommonInfo.SetupTimer);
-		pRxTS->TsCommonInfo.SetupTimer.data = (unsigned long)pRxTS;
-		pRxTS->TsCommonInfo.SetupTimer.function = TsSetupTimeOut;
-
-		init_timer(&pRxTS->TsCommonInfo.InactTimer);
-		pRxTS->TsCommonInfo.InactTimer.data = (unsigned long)pRxTS;
-		pRxTS->TsCommonInfo.InactTimer.function = TsInactTimeout;
-
-		init_timer(&pRxTS->RxAdmittedBARecord.Timer);
-		pRxTS->RxAdmittedBARecord.Timer.data = (unsigned long)pRxTS;
-		pRxTS->RxAdmittedBARecord.Timer.function = RxBaInactTimeout;
-
-		init_timer(&pRxTS->RxPktPendingTimer);
-		pRxTS->RxPktPendingTimer.data = (unsigned long)pRxTS;
-		pRxTS->RxPktPendingTimer.function = RxPktPendingTimeout;
-
+		setup_timer(&pRxTS->TsCommonInfo.SetupTimer, TsSetupTimeOut,
+			    (unsigned long)pRxTS);
+		setup_timer(&pRxTS->TsCommonInfo.InactTimer, TsInactTimeout,
+			    (unsigned long)pRxTS);
+		setup_timer(&pRxTS->RxAdmittedBARecord.Timer,
+			    RxBaInactTimeout, (unsigned long)pRxTS);
+		setup_timer(&pRxTS->RxPktPendingTimer, RxPktPendingTimeout,
+			    (unsigned long)pRxTS);
 		ResetRxTsEntry(pRxTS);
 		list_add_tail(&pRxTS->TsCommonInfo.List, &ieee->Rx_TS_Unused_List);
 		pRxTS++;
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 8f7a321..b6cd7ea 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -2549,9 +2549,8 @@ static short rtl8192_init(struct net_device *dev)
 	rtl8192_read_eeprom_info(dev);
 	rtl8192_get_channel_map(dev);
 	init_hal_dm(dev);
-	init_timer(&priv->watch_dog_timer);
-	priv->watch_dog_timer.data = (unsigned long)dev;
-	priv->watch_dog_timer.function = watch_dog_timer_callback;
+	setup_timer(&priv->watch_dog_timer, watch_dog_timer_callback,
+		    (unsigned long)dev);
 	if (rtl8192_usb_initendpoints(dev) != 0) {
 		DMESG("Endopoints initialization failed");
 		return -ENOMEM;
diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 16cafcd..4c62cb8 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -2681,10 +2681,8 @@ static void dm_init_fsync(struct net_device *dev)
 	priv->ieee80211->fsync_seconddiff_ratethreshold = 200;
 	priv->ieee80211->fsync_state = Default_Fsync;
 	priv->framesyncMonitor = 1;	/* current default 0xc38 monitor on */
-
-	init_timer(&priv->fsync_timer);
-	priv->fsync_timer.data = (unsigned long)dev;
-	priv->fsync_timer.function = dm_fsync_timer_callback;
+	setup_timer(&priv->fsync_timer, dm_fsync_timer_callback,
+		    (unsigned long)dev);
 }
 
 static void dm_deInit_fsync(struct net_device *dev)
-- 
1.9.1


