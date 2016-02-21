X-GM-THRID: 6253603029368438784
X-Received: by 10.107.168.139 with SMTP id e11mr21962685ioj.32.1456030418225;
        Sat, 20 Feb 2016 20:53:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.90.71 with SMTP id w65ls948555qgd.6.gmail; Sat, 20 Feb
 2016 20:53:37 -0800 (PST)
X-Received: by 10.129.159.131 with SMTP id w125mr20345486ywg.26.1456030417485;
        Sat, 20 Feb 2016 20:53:37 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id ff2si2658484pad.2.2016.02.20.20.53.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 20:53:37 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id c10so76204693pfc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 20:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=DfyWVkUAQsjn7JjzmOpfrMc/y3V00NpbrcKnPb5cvAM=;
        b=pjx82zzKbQV9qRYdqDBVo/GAcyK9cM8ksXGf1MXi+DJSAl+dkumIGWBW7b+DqaHGF6
         akLOLTLV23siIvLdX0HtilpOKp2iYvCiPu+uTr+aMYYkzyu9bgfOxfXGICX3VEozitZj
         +krYMSd0tyuGSIIFXep2QD0V6o2urXVVH55WPyxNRrsGP01iyq8U8I7wKACjg74kNu4u
         eDyBltFZ8/uLdwKcj3f42i5lve2pUHlLjkT9jeGOhP2lBknGvD493gTs/ZEa+J8XsGrI
         B52GiOj6K2pLV3uepcsS1lQIxqtGuTmKg4MuFrC9VrTRsTiUEA91PFJaZ3Ux1w+xfEMV
         exWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=DfyWVkUAQsjn7JjzmOpfrMc/y3V00NpbrcKnPb5cvAM=;
        b=Tx4K9DDicavv4cwIRy8sixHcGMaTkjeryCmQPg+XkwHezHXfGSwSVWpA4yzS/V6pUg
         RBeJsqq0m7zFMbQ/DwHwAb4KZDzlLjITBa9COQICyT6Wqz+qLNpZ05Kh5C5kFScpdG18
         KDpe61smF1yLZnlZQudJaBEAmb7hVciSr489CNI7TDTUWF5sNkRS9HMFEOpPIFzccllY
         PTiMlUwHnUf5sG5aZy0XW1kbW34/b1HZP/wsmodJ+OEnEmzRrFp3UYNAwy+iy+A8+rJd
         AiyZwH8Rik4L8Vj83oF3+RlZdEdVg59gnIWV/aAfV43yljWApAlzjmOk7+b6o52ZHzQF
         EN4g==
X-Gm-Message-State: AG10YOQ7O1ABnzKTr9BUpHlOo1qXD2nZtHdGQuxGGy6NapsHFmUrPROwH2rUcmTB/KE/xQ==
X-Received: by 10.98.0.194 with SMTP id 185mr29112019pfa.139.1456030417314;
        Sat, 20 Feb 2016 20:53:37 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ll7sm22306076pab.6.2016.02.20.20.53.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 20:53:36 -0800 (PST)
Date: Sun, 21 Feb 2016 10:24:10 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: rtl8192u: Use system_wq instead of dedicated
 priv_wq
Message-ID: <20160221045409.GA10889@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

With conccurency managed workqueues, use of dedicated workqueues can
be replaced by system_wq. Drop wq by using system_wq.

There are multiple work items per priv_wq (viz. reset_wq, watch_dog,
update_beacon_wq,initialgain_operate_wq,txpower_tracking_wq and qos_activate)
and different priv_wqs need not be be ordered. Hence, concurrency  can be
increased by switching to system_wq.

All work items are sync canceled in  rtl8192_cancel_deferred_work so it is
guaranteed that no work is in flight by the time exit path runs.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8192u/r8192U.h      |  1 -
 drivers/staging/rtl8192u/r8192U_core.c | 15 +++++++--------
 drivers/staging/rtl8192u/r8192U_dm.c   |  6 +++---
 drivers/staging/rtl8192u/r819xU_phy.c  |  2 +-
 4 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
index ee1c722..25e6aa7 100644
--- a/drivers/staging/rtl8192u/r8192U.h
+++ b/drivers/staging/rtl8192u/r8192U.h
@@ -1090,7 +1090,6 @@ typedef struct r8192_priv {
 	struct delayed_work rfpath_check_wq;
 	struct delayed_work gpio_change_rf_wq;
 	struct delayed_work initialgain_operate_wq;
-	struct workqueue_struct *priv_wq;
 } r8192_priv;

 /* For rtl8187B */
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 3c58963..cf92030 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1962,7 +1962,7 @@ static int rtl8192_qos_handle_probe_response(struct r8192_priv *priv,
 		     network->qos_data.param_count)) {
 			network->qos_data.old_param_count =
 				network->qos_data.param_count;
-			queue_work(priv->priv_wq, &priv->qos_activate);
+			schedule_work(&priv->qos_activate);
 			RT_TRACE(COMP_QOS,
 				 "QoS parameters change call qos_activate\n");
 		}
@@ -1971,7 +1971,7 @@ static int rtl8192_qos_handle_probe_response(struct r8192_priv *priv,
 		       &def_qos_parameters, size);

 		if ((network->qos_data.active == 1) && (active_network == 1)) {
-			queue_work(priv->priv_wq, &priv->qos_activate);
+			schedule_work(&priv->qos_activate);
 			RT_TRACE(COMP_QOS,
 				 "QoS was disabled call qos_activate\n");
 		}
@@ -1990,7 +1990,7 @@ static int rtl8192_handle_beacon(struct net_device *dev,
 	struct r8192_priv *priv = ieee80211_priv(dev);

 	rtl8192_qos_handle_probe_response(priv, 1, network);
-	queue_delayed_work(priv->priv_wq, &priv->update_beacon_wq, 0);
+	schedule_delayed_work(&priv->update_beacon_wq, 0);
 	return 0;

 }
@@ -2042,7 +2042,7 @@ static int rtl8192_qos_association_resp(struct r8192_priv *priv,
 		 network->flags,
 		 priv->ieee80211->current_network.qos_data.active);
 	if (set_qos_param == 1)
-		queue_work(priv->priv_wq, &priv->qos_activate);
+		schedule_work(&priv->qos_activate);


 	return 0;
@@ -2387,7 +2387,6 @@ static void rtl8192_init_priv_task(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);

-	priv->priv_wq = create_workqueue(DRV_NAME);

 	INIT_WORK(&priv->reset_wq, rtl8192_restart);

@@ -3518,7 +3517,7 @@ static void watch_dog_timer_callback(unsigned long data)
 {
 	struct r8192_priv *priv = ieee80211_priv((struct net_device *)data);

-	queue_delayed_work(priv->priv_wq, &priv->watch_dog_wq, 0);
+	schedule_delayed_work(&priv->watch_dog_wq, 0);
 	mod_timer(&priv->watch_dog_timer,
 		  jiffies + msecs_to_jiffies(IEEE80211_WATCH_DOG_TIME));
 }
@@ -5022,7 +5021,6 @@ fail2:
 	kfree(priv->pFirmware);
 	priv->pFirmware = NULL;
 	rtl8192_usb_deleteendpoints(dev);
-	destroy_workqueue(priv->priv_wq);
 	mdelay(10);
 fail:
 	free_ieee80211(dev);
@@ -5040,6 +5038,8 @@ static void rtl8192_cancel_deferred_work(struct r8192_priv *priv)
 	cancel_work_sync(&priv->reset_wq);
 	cancel_delayed_work(&priv->watch_dog_wq);
 	cancel_delayed_work(&priv->update_beacon_wq);
+	cancel_delayed_work(&priv->txpower_tracking_wq);
+	cancel_delayed_work(&priv->initialgain_operate_wq);
 	cancel_work_sync(&priv->qos_activate);
 }

@@ -5060,7 +5060,6 @@ static void rtl8192_usb_disconnect(struct usb_interface *intf)
 		kfree(priv->pFirmware);
 		priv->pFirmware = NULL;
 		rtl8192_usb_deleteendpoints(dev);
-		destroy_workqueue(priv->priv_wq);
 		mdelay(10);
 	}
 	free_ieee80211(dev);
diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 1e0e53c..4092c16 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -1320,7 +1320,7 @@ static void dm_CheckTXPowerTracking_TSSI(struct net_device *dev)
 	if (!priv->btxpower_tracking)
 		return;
 	if ((tx_power_track_counter % 30 == 0) && (tx_power_track_counter != 0))
-		queue_delayed_work(priv->priv_wq, &priv->txpower_tracking_wq, 0);
+		schedule_delayed_work(&priv->txpower_tracking_wq, 0);
 	tx_power_track_counter++;
 }

@@ -1350,7 +1350,7 @@ static void dm_CheckTXPowerTracking_ThermalMeter(struct net_device *dev)
 		return;
 	}
 	/*DbgPrint("Schedule TxPowerTrackingWorkItem\n");*/
-		queue_delayed_work(priv->priv_wq, &priv->txpower_tracking_wq, 0);
+		schedule_delayed_work(&priv->txpower_tracking_wq, 0);
 	TM_Trigger = 0;
 }

@@ -2699,7 +2699,7 @@ static void dm_check_rx_path_selection(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);

-	queue_delayed_work(priv->priv_wq, &priv->rfpath_check_wq, 0);
+	schedule_delayed_work(&priv->rfpath_check_wq, 0);
 }	/* dm_CheckRxRFPath */

 static void dm_init_fsync(struct net_device *dev)
diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index 696df34..726c615 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -1678,7 +1678,7 @@ void InitialGain819xUsb(struct net_device *dev,	u8 Operation)
 	priv->InitialGainOperateType = Operation;

 	if (priv->up)
-		queue_delayed_work(priv->priv_wq, &priv->initialgain_operate_wq, 0);
+		schedule_delayed_work(&priv->initialgain_operate_wq, 0);
 }

 void InitialGainOperateWorkItemCallBack(struct work_struct *work)
--
2.1.4


