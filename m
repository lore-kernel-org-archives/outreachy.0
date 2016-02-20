X-GM-THRID: 6253312643978756096
X-Received: by 10.98.33.209 with SMTP id o78mr16830098pfj.6.1455962807024;
        Sat, 20 Feb 2016 02:06:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.163.13 with SMTP id m13ls323910ioe.49.gmail; Sat, 20 Feb
 2016 02:06:46 -0800 (PST)
X-Received: by 10.107.169.130 with SMTP id f2mr18523085ioj.10.1455962806709;
        Sat, 20 Feb 2016 02:06:46 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id ff2si2284329pad.2.2016.02.20.02.06.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 02:06:46 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id yy13so63975022pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 02:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NFZlW2qIOwJoxuAu2Oneq3Gz+grr2jjyRg2sKmf+grA=;
        b=F7RhSkapdjVg/lZfvOWf/snF8Q9CIbIjoJ9n49hx6m1uP9txDqJ8S3Lsh7fJ8uzIqX
         t77POThzKiLOZdOHaThGjWoL5iE4vzQiFJjd6Cp9xW/9TzViZ0kdRvKLE22qZrExahM2
         jumOW2QN9UVKYA2j5TEyGsNLAWyWHRu/LSU8ft5AohXmH4Bq/cwgt/af7SudZEuZgS/m
         jYi277UCWwKncZceUsmf2Y8iz2z3euM8dz1o5eUJWMV3tSSbUD5sZFJWw95x5wF/nFfr
         54uLrvTsgJAA1k2ef0dBRwhpkDgkFULU0nA3xGzLI73TZD37gY8OFTQCmp4quZ0AkSoN
         JFBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=NFZlW2qIOwJoxuAu2Oneq3Gz+grr2jjyRg2sKmf+grA=;
        b=RZo91FIRBiTUA5ktMF0xWYb1uwAougozoU1Nx4keb9/AkzCod1Q76s8FEyP61PHRDh
         /exXaQxdoxiN02QOsGlgRBbWg5cEj0qa+6nEUv8wG1idNM3ZO7sLfWkGU3SJEhrLYnO1
         H++J/sRi7K+evGxg9v/PjdKxCpO/82FZ+yV4DvgzcSlBZXFteIxEBTmWCF77/GkPM+WD
         drZtJLWBMSkGZdD8vJ2kAVEVCPWl0y3f07BNvmjFZ+ov/uDufPIL1KGNDy4R+j2OTPXg
         YKKqo01RYn0bXFzCMxlSLlRAdSGZQC0UOljTJj0cQpZddTlzy/9hVETyKf2tUD9Mffkd
         madA==
X-Gm-Message-State: AG10YORiJasCvSPwykB7f7cZamrI9q7jkE8meSNqI01dMozGeL/wHxT4OqqmDphrnpnpNg==
X-Received: by 10.66.102.40 with SMTP id fl8mr23807861pab.126.1455962806516;
        Sat, 20 Feb 2016 02:06:46 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id i23sm23353475pfj.68.2016.02.20.02.06.36
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 02:06:45 -0800 (PST)
Date: Sat, 20 Feb 2016 15:36:26 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH] staging: rtl8192e: Remove create_workqueue()
Message-ID: <20160220100626.GA16969@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

With conccurency managed workqueues, use of dedicated workqueues can
be replaced by system_wq. Drop wq by using system_wq.

Since there are multiple work items per rtllib but they do not need to
be ordered, increase of concurrency by switching to system_wq should
not break anything.

All work items are sync canceled on rtllib_stop_protocol() so it is
guaranteed that no work is running when rtl92e_disable/reset/restart
functions are called.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c |  6 ++--
 drivers/staging/rtl8192e/rtl8192e/rtl_ps.c   | 14 +++------
 drivers/staging/rtl8192e/rtllib.h            |  1 -
 drivers/staging/rtl8192e/rtllib_softmac.c    | 47 +++++++++++++++-------------
 drivers/staging/rtl8192e/rtllib_softmac_wx.c |  2 +-
 5 files changed, 34 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 8f989a9..b9afb9a 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -249,7 +249,7 @@ bool rtl92e_set_rf_state(struct net_device *dev,
 		if (StateToSet == eRfOn) {
 
 			if (bConnectBySSID && priv->blinked_ingpio) {
-				queue_delayed_work_rsl(ieee->wq,
+				schedule_delayed_work(
 					 &ieee->associate_procedure_wq, 0);
 				priv->blinked_ingpio = false;
 			}
@@ -1327,7 +1327,7 @@ RESET_START:
 			ieee->set_chan(ieee->dev,
 				       ieee->current_network.channel);
 
-			queue_work_rsl(ieee->wq, &ieee->associate_complete_wq);
+			schedule_work(&ieee->associate_complete_wq);
 
 		} else if (ieee->state == RTLLIB_LINKED && ieee->iw_mode ==
 			   IW_MODE_ADHOC) {
@@ -1499,7 +1499,7 @@ static void _rtl92e_watchdog_wq_cb(void *data)
 
 			if (!(ieee->rtllib_ap_sec_type(ieee) &
 			     (SEC_ALG_CCMP|SEC_ALG_TKIP)))
-				queue_delayed_work_rsl(ieee->wq,
+				schedule_delayed_work(
 					&ieee->associate_procedure_wq, 0);
 
 			priv->check_roaming_cnt = 0;
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_ps.c b/drivers/staging/rtl8192e/rtl8192e/rtl_ps.c
index 9a4d1bc..98e4d88 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_ps.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_ps.c
@@ -63,9 +63,8 @@ void rtl92e_hw_wakeup(struct net_device *dev)
 		spin_unlock_irqrestore(&priv->rf_ps_lock, flags);
 		RT_TRACE(COMP_DBG,
 			 "rtl92e_hw_wakeup(): RF Change in progress!\n");
-		queue_delayed_work_rsl(priv->rtllib->wq,
-				       &priv->rtllib->hw_wakeup_wq,
-				       msecs_to_jiffies(10));
+		schedule_delayed_work(&priv->rtllib->hw_wakeup_wq,
+				      msecs_to_jiffies(10));
 		return;
 	}
 	spin_unlock_irqrestore(&priv->rf_ps_lock, flags);
@@ -111,10 +110,8 @@ void rtl92e_enter_sleep(struct net_device *dev, u64 time)
 		return;
 	}
 	tmp = time - jiffies;
-	queue_delayed_work_rsl(priv->rtllib->wq,
-			&priv->rtllib->hw_wakeup_wq, tmp);
-	queue_delayed_work_rsl(priv->rtllib->wq,
-			(void *)&priv->rtllib->hw_sleep_wq, 0);
+	schedule_delayed_work(&priv->rtllib->hw_wakeup_wq, tmp);
+	schedule_delayed_work(&priv->rtllib->hw_sleep_wq, 0);
 	spin_unlock_irqrestore(&priv->ps_lock, flags);
 }
 
@@ -203,8 +200,7 @@ void rtl92e_rtllib_ips_leave_wq(struct net_device *dev)
 			}
 			netdev_info(dev, "=========>%s(): rtl92e_ips_leave\n",
 				    __func__);
-			queue_work_rsl(priv->rtllib->wq,
-				       &priv->rtllib->ips_leave_wq);
+			schedule_work(&priv->rtllib->ips_leave_wq);
 		}
 	}
 }
diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
index d99240e..776e179 100644
--- a/drivers/staging/rtl8192e/rtllib.h
+++ b/drivers/staging/rtl8192e/rtllib.h
@@ -1728,7 +1728,6 @@ struct rtllib_device {
 	struct delayed_work link_change_wq;
 	struct work_struct wx_sync_scan_wq;
 
-	struct workqueue_struct *wq;
 	union {
 		struct rtllib_rxb *RfdArray[REORDER_WIN_SIZE];
 		struct rtllib_rxb *stats_IndicateArray[REORDER_WIN_SIZE];
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 19c3bff..aaa742d 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -615,8 +615,8 @@ static void rtllib_softmac_scan_wq(void *data)
 	if (ieee->active_channel_map[ieee->current_network.channel] == 1)
 		rtllib_send_probe_requests(ieee, 0);
 
-	queue_delayed_work_rsl(ieee->wq, &ieee->softmac_scan_wq,
-			       msecs_to_jiffies(RTLLIB_SOFTMAC_SCAN_TIME));
+	schedule_delayed_work(&ieee->softmac_scan_wq,
+			      msecs_to_jiffies(RTLLIB_SOFTMAC_SCAN_TIME));
 
 	up(&ieee->scan_sem);
 	return;
@@ -689,7 +689,7 @@ static void rtllib_softmac_stop_scan(struct rtllib_device *ieee)
 		ieee->scanning_continue = 0;
 		ieee->actscanning = false;
 
-		cancel_delayed_work(&ieee->softmac_scan_wq);
+		cancel_delayed_work_sync(&ieee->softmac_scan_wq);
 	}
 
 	up(&ieee->scan_sem);
@@ -745,8 +745,7 @@ static void rtllib_start_scan(struct rtllib_device *ieee)
 		if (ieee->scanning_continue == 0) {
 			ieee->actscanning = true;
 			ieee->scanning_continue = 1;
-			queue_delayed_work_rsl(ieee->wq,
-					       &ieee->softmac_scan_wq, 0);
+			schedule_delayed_work(&ieee->softmac_scan_wq, 0);
 		}
 	} else {
 		if (ieee->rtllib_start_hw_scan)
@@ -1428,8 +1427,8 @@ static void rtllib_associate_abort(struct rtllib_device *ieee)
 
 	ieee->state = RTLLIB_ASSOCIATING_RETRY;
 
-	queue_delayed_work_rsl(ieee->wq, &ieee->associate_retry_wq,
-			   RTLLIB_SOFTMAC_ASSOC_RETRY_TIME);
+	schedule_delayed_work(&ieee->associate_retry_wq,
+			      RTLLIB_SOFTMAC_ASSOC_RETRY_TIME);
 
 	spin_unlock_irqrestore(&ieee->lock, flags);
 }
@@ -1580,7 +1579,7 @@ static void rtllib_associate_complete(struct rtllib_device *ieee)
 	ieee->state = RTLLIB_LINKED;
 	rtllib_sta_send_associnfo(ieee);
 
-	queue_work_rsl(ieee->wq, &ieee->associate_complete_wq);
+	schedule_work(&ieee->associate_complete_wq);
 }
 
 static void rtllib_associate_procedure_wq(void *data)
@@ -1729,7 +1728,7 @@ inline void rtllib_softmac_new_net(struct rtllib_device *ieee,
 				if (ieee->LedControlHandler != NULL)
 					ieee->LedControlHandler(ieee->dev,
 							 LED_CTL_START_TO_LINK);
-				queue_delayed_work_rsl(ieee->wq,
+				schedule_delayed_work(
 					   &ieee->associate_procedure_wq, 0);
 			} else {
 				if (rtllib_is_54g(&ieee->current_network) &&
@@ -2283,7 +2282,7 @@ inline int rtllib_rx_assoc_resp(struct rtllib_device *ieee, struct sk_buff *skb,
 				    "Association response status code 0x%x\n",
 				    errcode);
 			if (ieee->AsocRetryCount < RT_ASOC_RETRY_LIMIT)
-				queue_delayed_work_rsl(ieee->wq,
+				schedule_delayed_work(
 					 &ieee->associate_procedure_wq, 0);
 			else
 				rtllib_associate_abort(ieee);
@@ -2393,7 +2392,7 @@ inline int rtllib_rx_deauth(struct rtllib_device *ieee, struct sk_buff *skb)
 
 		if (!(ieee->rtllib_ap_sec_type(ieee) &
 		    (SEC_ALG_CCMP|SEC_ALG_TKIP)))
-			queue_delayed_work_rsl(ieee->wq,
+			schedule_delayed_work(
 				       &ieee->associate_procedure_wq, 5);
 	}
 	return 0;
@@ -2715,8 +2714,7 @@ static void rtllib_start_ibss_wq(void *data)
 
 inline void rtllib_start_ibss(struct rtllib_device *ieee)
 {
-	queue_delayed_work_rsl(ieee->wq, &ieee->start_ibss_wq,
-			       msecs_to_jiffies(150));
+	schedule_delayed_work(&ieee->start_ibss_wq, msecs_to_jiffies(150));
 }
 
 /* this is called only in user context, with wx_sem held */
@@ -2770,7 +2768,7 @@ void rtllib_disassociate(struct rtllib_device *ieee)
 	ieee->is_set_key = false;
 	ieee->wap_set = 0;
 
-	queue_delayed_work_rsl(ieee->wq, &ieee->link_change_wq, 0);
+	schedule_delayed_work(&ieee->link_change_wq, 0);
 
 	notify_wx_assoc_event(ieee);
 }
@@ -2882,9 +2880,9 @@ void rtllib_stop_protocol(struct rtllib_device *ieee, u8 shutdown)
 
 	rtllib_stop_send_beacons(ieee);
 	del_timer_sync(&ieee->associate_timer);
-	cancel_delayed_work(&ieee->associate_retry_wq);
-	cancel_delayed_work(&ieee->start_ibss_wq);
-	cancel_delayed_work(&ieee->link_change_wq);
+	cancel_delayed_work_sync(&ieee->associate_retry_wq);
+	cancel_delayed_work_sync(&ieee->start_ibss_wq);
+	cancel_delayed_work_sync(&ieee->link_change_wq);
 	rtllib_stop_scan(ieee);
 
 	if (ieee->state <= RTLLIB_ASSOCIATING_AUTHENTICATED)
@@ -3027,9 +3025,6 @@ void rtllib_softmac_init(struct rtllib_device *ieee)
 		    rtllib_send_beacon_cb,
 		    (unsigned long) ieee);
 
-
-	ieee->wq = create_workqueue(DRV_NAME);
-
 	INIT_DELAYED_WORK_RSL(&ieee->link_change_wq,
 			      (void *)rtllib_link_change_wq, ieee);
 	INIT_DELAYED_WORK_RSL(&ieee->start_ibss_wq,
@@ -3065,8 +3060,16 @@ void rtllib_softmac_free(struct rtllib_device *ieee)
 	ieee->pDot11dInfo = NULL;
 	del_timer_sync(&ieee->associate_timer);
 
-	cancel_delayed_work(&ieee->associate_retry_wq);
-	destroy_workqueue(ieee->wq);
+	cancel_delayed_work_sync(&ieee->associate_retry_wq);
+	cancel_delayed_work_sync(&ieee->associate_procedure_wq);
+	cancel_delayed_work_sync(&ieee->softmac_scan_wq);
+	cancel_delayed_work_sync(&ieee->start_ibss_wq);
+	cancel_delayed_work_sync(&ieee->hw_wakeup_wq);
+	cancel_delayed_work_sync(&ieee->hw_sleep_wq);
+	cancel_delayed_work_sync(&ieee->link_change_wq);
+	cancel_work_sync(&ieee->associate_complete_wq);
+	cancel_work_sync(&ieee->ips_leave_wq);
+	cancel_work_sync(&ieee->wx_sync_scan_wq);
 	up(&ieee->wx_sem);
 	tasklet_kill(&ieee->ps_task);
 }
diff --git a/drivers/staging/rtl8192e/rtllib_softmac_wx.c b/drivers/staging/rtl8192e/rtllib_softmac_wx.c
index 86f52ac..6d78960 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac_wx.c
@@ -429,7 +429,7 @@ int rtllib_wx_set_scan(struct rtllib_device *ieee, struct iw_request_info *a,
 	}
 
 	if (ieee->state == RTLLIB_LINKED) {
-		queue_work_rsl(ieee->wq, &ieee->wx_sync_scan_wq);
+		schedule_work(&ieee->wx_sync_scan_wq);
 		/* intentionally forget to up sem */
 		return 0;
 	}
-- 
1.9.1


