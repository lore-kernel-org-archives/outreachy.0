X-GM-THRID: 6253357236964294656
X-Received: by 10.129.132.3 with SMTP id u3mr18348277ywf.5.1455973190835;
        Sat, 20 Feb 2016 04:59:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.155.103 with SMTP id vv7ls159348igb.37.gmail; Sat, 20 Feb
 2016 04:59:50 -0800 (PST)
X-Received: by 10.66.221.100 with SMTP id qd4mr17475722pac.0.1455973190280;
        Sat, 20 Feb 2016 04:59:50 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id ff2si2340180pad.2.2016.02.20.04.59.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 04:59:50 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id q63so66531481pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 04:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=oHlUz9cddl/ad5j+agsrOx+qdejY7mazwK/JA4qy7Qk=;
        b=xy04qXe4iKNoU7yY0CpFSW7LxZApVYOidLQscedEZuOSvC0cOTTqSwNQxez51BJV/o
         4g8Y9VOozMA+sk+T6bIzu702ULgnPcxRBkPt8/sadOY0dZYaT0X1At4q4iH+oRtEV7s7
         of9CVHzpRXQI7awpsOqKfwTLe6HwScwJMzGwjSwu6ecufcbNicUeFDyuPLVukMvDydGY
         o3LyL8nKCZQPQ4xVp3Sd0Ti0fegLlqg7ANJOZWjCzQU93Q0IL2t2kUasxPzksAvJMEnz
         2QbHm9MZxmG+K5S7w1u+RrzLXkb7yGqxn3TTvLQ7uyGWBo6NXPnO+JM9x+rqAe6SYldB
         cKRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=oHlUz9cddl/ad5j+agsrOx+qdejY7mazwK/JA4qy7Qk=;
        b=DHD6q4zwHeeKcReVMPMwFpiN1uD4vM+70JnJBqFWG92a9R6KZJPfqVmNFCAYk60JTJ
         TuYbSNrQ+AYsJubUdtFIyHjo/ud5UHmJ/1mrOB2KrxXODLQhHVm8kFXt0IrooXDgvnUe
         4VyclYSZK8zaTGaZ2k0Fq2kW701RgLq9ZlaqYXPXw7jlQlQAWC0Jj/5dPU0lqqspd7vA
         7uvC1T7JrjC9ZLTwuSrdpgEbjokqzXPYSQA7q1z05ZUtf5I2csmYfqedKex8qdEezIVw
         yHAKjHGo+wlO2i31IbLMUbOibPkYzqQIyJ8CQnKzjAdmGV0pIqc5GxMuSTbG7PhWwcKQ
         CwwA==
X-Gm-Message-State: AG10YOQYA991amFc8tSj2ES2CYQrKUXxXXUMcQoKJSLEfwGTNsDjdhJ9Qi/bgew4AsVXww==
X-Received: by 10.98.86.13 with SMTP id k13mr14871075pfb.28.1455973190153;
        Sat, 20 Feb 2016 04:59:50 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 85sm24604732pfl.18.2016.02.20.04.59.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 04:59:49 -0800 (PST)
Date: Sat, 20 Feb 2016 18:30:21 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH 1/2] staging: rtl8192u: Use system_wq
Message-ID: <20160220130021.GA3429@Karyakshetra>
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
index d2e86b9..1493a70 100644
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

@@ -2671,7 +2671,7 @@ static void dm_check_rx_path_selection(struct net_device *dev)
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


