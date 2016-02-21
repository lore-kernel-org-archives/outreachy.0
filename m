X-GM-THRID: 6253603240477196288
X-Received: by 10.182.79.134 with SMTP id j6mr20866135obx.4.1456030467428;
        Sat, 20 Feb 2016 20:54:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.130 with SMTP id p124ls366169iop.68.gmail; Sat, 20 Feb
 2016 20:54:27 -0800 (PST)
X-Received: by 10.98.93.217 with SMTP id n86mr20621340pfj.11.1456030467130;
        Sat, 20 Feb 2016 20:54:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id 12si2452277pfb.1.2016.02.20.20.54.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 20:54:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id yy13so72517633pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 20:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=RCJ5DLbV0EJjpBxtWCnUwYJXrbbZwlWHXFi0ao5gy3A=;
        b=l7AHg0aWC3Xu6ITCR4yvq6PJ/HPYwv0M89clPIXdEVua1bRuqNYTS+bqD1Z6VhVezC
         dHIFU6cTmk4EjIj3MdGqWDcSaxlrq1bpVQFtg8/JPPwZseYDupkjnENETd+jUSsXM8fx
         85FT8z6YzduBmNmM8Fkxw7CTTtcAhqXHOWeawrYL+z4nXYSv+c0V+FZwnWJXgNmD++U5
         17IsfD3koSBJO/9kmq2gHC9xwlKk6Jm5+m5y5yrNiVGGej9c/tdoDlUTVi4wHPzp+Vr+
         7f6WZdioVkNLZATTvn7jLSFuKOL6lqoj043YXiP/Sa7C/5lk8GnXP8i5Ofe3dWehcnX9
         OEhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=RCJ5DLbV0EJjpBxtWCnUwYJXrbbZwlWHXFi0ao5gy3A=;
        b=gYhR4KgV4o+wG91Zdw7jiTFxP6ewYVOMNucnoafQXM9WgUKKRcqOb+d6RPuVSEq2KR
         eKcryKA+JxwkqMKQbS0tya/SMsoWhKxHnOTHU7LXpbokv8PS5k0TJNo+UzqBbnpdx6jk
         I4gk1OJl3z1kA9TmHOnffVEgADHOCDzCbz9aC/6omA2LOw/nsWcIK+ralZ05Mly46i8k
         CyJVE1kcPR9OOzq6HI/6Uj5OrelFPjxw2onQ17BBnNxjzrSBOmrQoqKdAbkHOLcUDVv7
         Q6LutEfNfzgzZpncdcI15yKBEO44MFJef21p64N8Da6IR//B1QXX6q8R3wo4gSoeACL6
         mLmA==
X-Gm-Message-State: AG10YOQINR9kh0hmFA/ccZsUrumFZWCVYCKLwTv61mdtYBpP0s+CZ/G+92UShxFCjixkkA==
X-Received: by 10.66.144.4 with SMTP id si4mr29352007pab.0.1456030467021;
        Sat, 20 Feb 2016 20:54:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ud8sm27900784pac.11.2016.02.20.20.54.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 20:54:26 -0800 (PST)
Date: Sun, 21 Feb 2016 10:24:59 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: rtl8192u: Use system_wq and replace
 dedicated wq
Message-ID: <20160221045459.GA10912@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

With conccurency managed workqueues, use of dedicated workqueues can
be replaced with system_wq. Removed wq by using system_wq.

There are multiple work items per wq (viz. softmac_scan_wq,
associate_[retry/complete/procedure]_wq,start_ibss_wq and wx_sync_scan_wq)
and different wqs need not be be ordered. Hence, concurrency  can be increased
by switching to system_wq.

Work items are cancelled in ieee80211_stop_protocol so it is
guaranteed that no work is in flight by the time exit path runs.

Some other work items are also cancelled in ieee80211_softmac_stop_scan(
softmac_scan_wq) and rtl819x_ifsilentreset(associate_retry_wq).

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h      |  1 -
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c  | 21 +++++++++++----------
 .../rtl8192u/ieee80211/ieee80211_softmac_wx.c       |  2 +-
 drivers/staging/rtl8192u/r8192U_core.c              |  2 +-
 4 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 68931e5..dc12d15d 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1887,7 +1887,6 @@ struct ieee80211_device {
 	struct delayed_work associate_retry_wq;
 	 struct delayed_work start_ibss_wq;
 	struct work_struct wx_sync_scan_wq;
-	struct workqueue_struct *wq;
 	// Qos related. Added by Annie, 2005-11-01.
 	//STA_QOS  StaQos;

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 9bc5aac..620413d 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -515,7 +515,7 @@ static void ieee80211_softmac_scan_wq(struct work_struct *work)
 		ieee80211_send_probe_requests(ieee);


-	queue_delayed_work(ieee->wq, &ieee->softmac_scan_wq, IEEE80211_SOFTMAC_SCAN_TIME);
+	schedule_delayed_work(&ieee->softmac_scan_wq, IEEE80211_SOFTMAC_SCAN_TIME);

 	up(&ieee->scan_sem);
 	return;
@@ -614,7 +614,7 @@ static void ieee80211_start_scan(struct ieee80211_device *ieee)
 	if (ieee->softmac_features & IEEE_SOFTMAC_SCAN){
 		if (ieee->scanning == 0) {
 			ieee->scanning = 1;
-			queue_delayed_work(ieee->wq, &ieee->softmac_scan_wq, 0);
+			schedule_delayed_work(&ieee->softmac_scan_wq, 0);
 		}
 	}else
 		ieee->start_scan(ieee->dev);
@@ -1241,7 +1241,7 @@ void ieee80211_associate_abort(struct ieee80211_device *ieee)

 	ieee->state = IEEE80211_ASSOCIATING_RETRY;

-	queue_delayed_work(ieee->wq, &ieee->associate_retry_wq, \
+	schedule_delayed_work(&ieee->associate_retry_wq, \
 			   IEEE80211_SOFTMAC_ASSOC_RETRY_TIME);

 	spin_unlock_irqrestore(&ieee->lock, flags);
@@ -1382,7 +1382,7 @@ static void ieee80211_associate_complete(struct ieee80211_device *ieee)

 	ieee->state = IEEE80211_LINKED;
 	//ieee->UpdateHalRATRTableHandler(dev, ieee->dot11HTOperationalRateSet);
-	queue_work(ieee->wq, &ieee->associate_complete_wq);
+	schedule_work(&ieee->associate_complete_wq);
 }

 static void ieee80211_associate_procedure_wq(struct work_struct *work)
@@ -1483,7 +1483,7 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
 					}

 					ieee->state = IEEE80211_ASSOCIATING;
-					queue_work(ieee->wq, &ieee->associate_procedure_wq);
+					schedule_work(&ieee->associate_procedure_wq);
 				}else{
 					if(ieee80211_is_54g(&ieee->current_network) &&
 						(ieee->modulation & IEEE80211_OFDM_MODULATION)){
@@ -2044,7 +2044,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 					"Association response status code 0x%x\n",
 					errcode);
 				if(ieee->AsocRetryCount < RT_ASOC_RETRY_LIMIT) {
-					queue_work(ieee->wq, &ieee->associate_procedure_wq);
+					schedule_work(&ieee->associate_procedure_wq);
 				} else {
 					ieee80211_associate_abort(ieee);
 				}
@@ -2100,7 +2100,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 			notify_wx_assoc_event(ieee);
 			//HTSetConnectBwMode(ieee, HT_CHANNEL_WIDTH_20, HT_EXTCHNL_OFFSET_NO_EXT);
 			RemovePeerTS(ieee, header->addr2);
-			queue_work(ieee->wq, &ieee->associate_procedure_wq);
+			schedule_work(&ieee->associate_procedure_wq);
 		}
 		break;
 	case IEEE80211_STYPE_MANAGE_ACT:
@@ -2442,7 +2442,7 @@ static void ieee80211_start_ibss_wq(struct work_struct *work)

 inline void ieee80211_start_ibss(struct ieee80211_device *ieee)
 {
-	queue_delayed_work(ieee->wq, &ieee->start_ibss_wq, 150);
+	schedule_delayed_work(&ieee->start_ibss_wq, 150);
 }

 /* this is called only in user context, with wx_sem held */
@@ -2605,7 +2605,10 @@ void ieee80211_stop_protocol(struct ieee80211_device *ieee)
 	ieee80211_stop_send_beacons(ieee);
 	del_timer_sync(&ieee->associate_timer);
 	cancel_delayed_work(&ieee->associate_retry_wq);
+	cancel_delayed_work(&ieee->associate_complete_wq);
+	cancel_delayed_work(&ieee->associate_procedure_wq);
 	cancel_delayed_work(&ieee->start_ibss_wq);
+	cancel_delayed_work(&ieee->wx_sync_scan_wq);
 	ieee80211_stop_scan(ieee);

 	ieee80211_disassociate(ieee);
@@ -2725,7 +2728,6 @@ void ieee80211_softmac_init(struct ieee80211_device *ieee)
 	setup_timer(&ieee->beacon_timer, ieee80211_send_beacon_cb,
 		    (unsigned long)ieee);

-	ieee->wq = create_workqueue(DRV_NAME);

 	INIT_DELAYED_WORK(&ieee->start_ibss_wq, ieee80211_start_ibss_wq);
 	INIT_WORK(&ieee->associate_complete_wq, ieee80211_associate_complete_wq);
@@ -2755,7 +2757,6 @@ void ieee80211_softmac_free(struct ieee80211_device *ieee)
 	del_timer_sync(&ieee->associate_timer);

 	cancel_delayed_work(&ieee->associate_retry_wq);
-	destroy_workqueue(ieee->wq);

 	up(&ieee->wx_sem);
 }
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
index aad288a..bda1eef 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
@@ -370,7 +370,7 @@ int ieee80211_wx_set_scan(struct ieee80211_device *ieee, struct iw_request_info
 	}

 	if (ieee->state == IEEE80211_LINKED) {
-		queue_work(ieee->wq, &ieee->wx_sync_scan_wq);
+		schedule_work(&ieee->wx_sync_scan_wq);
 		/* intentionally forget to up sem */
 		return 0;
 	}
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index cf92030..19a9b7d 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -3385,7 +3385,7 @@ RESET_START:
 			ieee->set_chan(ieee->dev,
 				       ieee->current_network.channel);

-			queue_work(ieee->wq, &ieee->associate_complete_wq);
+			schedule_work(&ieee->associate_complete_wq);

 		} else if (ieee->state == IEEE80211_LINKED &&
 			   ieee->iw_mode == IW_MODE_ADHOC) {
--
2.1.4


