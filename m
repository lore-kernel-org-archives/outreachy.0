X-GM-THRID: 6255071966661705728
X-Received: by 10.66.236.199 with SMTP id uw7mr39870441pac.47.1456372432331;
        Wed, 24 Feb 2016 19:53:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.87.229 with SMTP id bb5ls59622obb.54.gmail; Wed, 24 Feb
 2016 19:53:51 -0800 (PST)
X-Received: by 10.182.91.9 with SMTP id ca9mr3419453obb.7.1456372431914;
        Wed, 24 Feb 2016 19:53:51 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id 79si926944pft.0.2016.02.24.19.53.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 19:53:51 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id c10so25813527pfc.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 19:53:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=hI3TQTXm0lsy4iyJIEUThTGfy3W7OKY4qbPfCPL2nYs=;
        b=uGwPrHShzvZxr/O9y/N+trXzbf+rE63mga5VEP+yHdK1cd2Rsc2HNPmRiCthbtPLKQ
         SPmZGt9qUo1Io/vrKFu11Ofpp7KTvxN17gBJCzur4ePis/9Z1op4ItKWcM/XW8Ih7wu1
         pTvkjEyzKQG6+Zz0EFHqVciT4TYJOEOw4fjF/032Ct9LZHH1MRZRPtHlUVyvetb2Suos
         c5nVPSJeV2eGe6F3ouldFddVqihvEVOxqmB+ofUglFiWAhj4AcPdcHL0QYrtVzZ+PJWp
         5r9io4yztKR3PZy4MAdpXY+iuwuvWh2hbKkdWt174oUyK6eIqhhDWMam4pwKGJ00KPHX
         Xdog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=hI3TQTXm0lsy4iyJIEUThTGfy3W7OKY4qbPfCPL2nYs=;
        b=Q5MErVmcpXNQJ9TtRmIUBOWJCdB7k2KEa39abRLDEJGzf8agnL7YvZ7dYRvqSZY5bL
         74LeW6LoCeVaCVCaN8MNo9yd5lbcqyj6Xl0ciRSu+BOQ8x5RLcCg7DzQ45Vm3Aw5E0mv
         LJW3a3MuHZwaWX7CBqF5BS8Oo9H8SboghB9qEZbOmCnaD1neluQu27iYJLkDuwWoYLh3
         wn+mnbU4ccgBpQe1djeVNg3/LJLRx5Jhh+bpQZd2KkNhNE6ypm7WtErdKzdGAiCBuZT/
         8LQaBW9QDM7pIuuQEgxSZZWjLt73Y+WmsRaFYi00c6BzUyzii6WdIwGr+zdHS8jkqy2A
         c0jA==
X-Gm-Message-State: AG10YOT6fBwXgUb29qJ0YUbQZhVUP3N3F8mzCMrk1aPyfNxhZMNjFSsTCse3FQPEzA4YhQ==
X-Received: by 10.98.16.202 with SMTP id 71mr60399765pfq.138.1456372431662;
        Wed, 24 Feb 2016 19:53:51 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id e20sm8155554pfd.4.2016.02.24.19.53.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 19:53:51 -0800 (PST)
Date: Thu, 25 Feb 2016 09:23:31 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: rtl8192e: Remove create_workqueue()
Message-ID: <20160225035331.GA28139@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

With conccurency managed workqueues, use of dedicated workqueues can
be replaced by system_wq. Drop priv_wq by using system_wq. 

Since there are multiple work items per priv but they do not need 
to be ordered, increase of concurrency by switching to system_wq 
should not break anything. 

All work items are sync canceled on so it is guaranteed that
no work is running when rtl92e_suspend function is called.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 20 +++++++++-----------
 drivers/staging/rtl8192e/rtl8192e/rtl_core.h |  2 --
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c   |  7 +++----
 drivers/staging/rtl8192e/rtl8192e/rtl_pm.c   |  2 +-
 4 files changed, 13 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 18d0fe3..bb6b62f 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -437,7 +437,7 @@ static int _rtl92e_qos_handle_probe_response(struct r8192_priv *priv,
 			network->qos_data.old_param_count =
 				network->qos_data.param_count;
 	priv->rtllib->wmm_acm = network->qos_data.wmm_acm;
-			queue_work_rsl(priv->priv_wq, &priv->qos_activate);
+			schedule_work(&priv->qos_activate);
 			RT_TRACE(COMP_QOS,
 				 "QoS parameters change call qos_activate\n");
 		}
@@ -446,7 +446,7 @@ static int _rtl92e_qos_handle_probe_response(struct r8192_priv *priv,
 		       &def_qos_parameters, size);
 
 		if ((network->qos_data.active == 1) && (active_network == 1)) {
-			queue_work_rsl(priv->priv_wq, &priv->qos_activate);
+			schedule_work(&priv->qos_activate);
 			RT_TRACE(COMP_QOS,
 				 "QoS was disabled call qos_activate\n");
 		}
@@ -465,7 +465,7 @@ static int _rtl92e_handle_beacon(struct net_device *dev,
 
 	_rtl92e_qos_handle_probe_response(priv, 1, network);
 
-	queue_delayed_work_rsl(priv->priv_wq, &priv->update_beacon_wq, 0);
+	schedule_delayed_work(&priv->update_beacon_wq, 0);
 	return 0;
 
 }
@@ -512,7 +512,7 @@ static int _rtl92e_qos_assoc_resp(struct r8192_priv *priv,
 		 network->flags, priv->rtllib->current_network.qos_data.active);
 	if (set_qos_param == 1) {
 		rtl92e_dm_init_edca_turbo(priv->rtllib->dev);
-		queue_work_rsl(priv->priv_wq, &priv->qos_activate);
+		schedule_work(&priv->qos_activate);
 	}
 	return 0;
 }
@@ -1002,7 +1002,6 @@ static void _rtl92e_init_priv_task(struct net_device *dev)
 {
 	struct r8192_priv *priv = rtllib_priv(dev);
 
-	priv->priv_wq = create_workqueue(DRV_NAME);
 	INIT_WORK_RSL(&priv->reset_wq, (void *)_rtl92e_restart, dev);
 	INIT_WORK_RSL(&priv->rtllib->ips_leave_wq, (void *)rtl92e_ips_leave_wq,
 		      dev);
@@ -1536,7 +1535,7 @@ static void _rtl92e_watchdog_timer_cb(unsigned long data)
 {
 	struct r8192_priv *priv = rtllib_priv((struct net_device *)data);
 
-	queue_delayed_work_rsl(priv->priv_wq, &priv->watch_dog_wq, 0);
+	schedule_delayed_work(&priv->watch_dog_wq, 0);
 	mod_timer(&priv->watch_dog_timer, jiffies +
 		  msecs_to_jiffies(RTLLIB_WATCH_DOG_TIME));
 }
@@ -2161,8 +2160,8 @@ static void _rtl92e_irq_rx_tasklet(struct r8192_priv *priv)
 *****************************************************************************/
 static void _rtl92e_cancel_deferred_work(struct r8192_priv *priv)
 {
-	cancel_delayed_work(&priv->watch_dog_wq);
-	cancel_delayed_work(&priv->update_beacon_wq);
+	cancel_delayed_work_sync(&priv->watch_dog_wq);
+	cancel_delayed_work_sync(&priv->update_beacon_wq);
 	cancel_delayed_work(&priv->rtllib->hw_sleep_wq);
 	cancel_work_sync(&priv->reset_wq);
 	cancel_work_sync(&priv->qos_activate);
@@ -2693,7 +2692,7 @@ static void _rtl92e_pci_disconnect(struct pci_dev *pdev)
 		priv = rtllib_priv(dev);
 
 		del_timer_sync(&priv->gpio_polling_timer);
-		cancel_delayed_work(&priv->gpio_change_rf_wq);
+		cancel_delayed_work_sync(&priv->gpio_change_rf_wq);
 		priv->polling_timer_on = 0;
 		_rtl92e_down(dev, true);
 		rtl92e_dm_deinit(dev);
@@ -2701,7 +2700,6 @@ static void _rtl92e_pci_disconnect(struct pci_dev *pdev)
 			vfree(priv->pFirmware);
 			priv->pFirmware = NULL;
 		}
-		destroy_workqueue(priv->priv_wq);
 		_rtl92e_free_rx_ring(dev);
 		for (i = 0; i < MAX_TX_QUEUE_COUNT; i++)
 			_rtl92e_free_tx_ring(dev, i);
@@ -2783,7 +2781,7 @@ void rtl92e_check_rfctrl_gpio_timer(unsigned long data)
 
 	priv->polling_timer_on = 1;
 
-	queue_delayed_work_rsl(priv->priv_wq, &priv->gpio_change_rf_wq, 0);
+	schedule_delayed_work(&priv->gpio_change_rf_wq, 0);
 
 	mod_timer(&priv->gpio_polling_timer, jiffies +
 		  msecs_to_jiffies(RTLLIB_WATCH_DOG_TIME));
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.h b/drivers/staging/rtl8192e/rtl8192e/rtl_core.h
index a7777a3..f627fdc 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.h
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.h
@@ -338,8 +338,6 @@ struct r8192_priv {
 	struct delayed_work		rfpath_check_wq;
 	struct delayed_work		gpio_change_rf_wq;
 
-	struct workqueue_struct		*priv_wq;
-
 	struct channel_access_setting ChannelAccessSetting;
 
 	struct rtl819x_ops			*ops;
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index b6b714d..9bc2848 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -994,8 +994,7 @@ static void _rtl92e_dm_check_tx_power_tracking_tssi(struct net_device *dev)
 
 
 	 if (tx_power_track_counter >= 180) {
-		queue_delayed_work_rsl(priv->priv_wq,
-				       &priv->txpower_tracking_wq, 0);
+		schedule_delayed_work(&priv->txpower_tracking_wq, 0);
 		tx_power_track_counter = 0;
 	}
 
@@ -1028,7 +1027,7 @@ static void _rtl92e_dm_check_tx_power_tracking_thermal(struct net_device *dev)
 		return;
 	}
 	netdev_info(dev, "===============>Schedule TxPowerTrackingWorkItem\n");
-	queue_delayed_work_rsl(priv->priv_wq, &priv->txpower_tracking_wq, 0);
+	schedule_delayed_work(&priv->txpower_tracking_wq, 0);
 	TM_Trigger = 0;
 
 }
@@ -2121,7 +2120,7 @@ static void _rtl92e_dm_check_rx_path_selection(struct net_device *dev)
 {
 	struct r8192_priv *priv = rtllib_priv(dev);
 
-	queue_delayed_work_rsl(priv->priv_wq, &priv->rfpath_check_wq, 0);
+	schedule_delayed_work(&priv->rfpath_check_wq, 0);
 }
 
 
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_pm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_pm.c
index b2b5ada..9e04dc2 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_pm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_pm.c
@@ -27,7 +27,7 @@ int rtl92e_suspend(struct pci_dev *pdev, pm_message_t state)
 
 	netdev_info(dev, "============> r8192E suspend call.\n");
 	del_timer_sync(&priv->gpio_polling_timer);
-	cancel_delayed_work(&priv->gpio_change_rf_wq);
+	cancel_delayed_work_sync(&priv->gpio_change_rf_wq);
 	priv->polling_timer_on = 0;
 
 	if (!netif_running(dev)) {
-- 
1.9.1


