X-GM-THRID: 6251802816159940608
X-Received: by 10.66.63.68 with SMTP id e4mr18244609pas.40.1455611778294;
        Tue, 16 Feb 2016 00:36:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.52 with SMTP id 49ls3106073qgo.79.gmail; Tue, 16 Feb
 2016 00:36:17 -0800 (PST)
X-Received: by 10.13.204.85 with SMTP id o82mr21153948ywd.51.1455611777867;
        Tue, 16 Feb 2016 00:36:17 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id 79si3875125pft.0.2016.02.16.00.36.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 00:36:17 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fy10so60146057pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 00:36:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=tECKLYfv4/VfUPb+u5Z0zqLZRKtISn3oZG5+z9IQjNc=;
        b=lpxXzfysTr/3Wr6yNGQpnywVXIUojsSYzq4s+2BPANQ7u1qKegGauF0enLzkWhp/ZF
         X0n4TMsI4crhvfXd+jjrpVTBHTnqXRnIb60j1AB0O5xVJXlcalVQyPrZ0T79AWA/02AO
         DHYMx0UpoLGdhybFv8RzNKmAxlCbOaUvY1JlDb8O+Iu1eoZ9TrNQL/oZ6tJvEwQ+ZW/y
         34NLgoT9vDyxeD7z5VMzMBHt8gezuga0NJ4k1P4xXaN+gRhQ5wijd2b7/nvt8lBbKKbn
         bKhzuBBG+r7vq2dGvt2Lw2WhZ07aSJq+6x5ODHTLRYD9WWT072Of337b4qtT1QAWPauy
         kDzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=tECKLYfv4/VfUPb+u5Z0zqLZRKtISn3oZG5+z9IQjNc=;
        b=SH3MtctT23+WgSrijIxnJHxjvzdEaoBn9TrGO4tZ3skFvuS/HYZ/Y9aj4QPFE9EcWe
         zKNGVrolzjxPyd/YMESgoftLQjqD5DFku+OJYphQPoK9MIx7JEXYsuXJsdn8hNVl0ztn
         vINDgk51lPkpAE7hXeuqlOTr/JdMPBn53Dh7EsCd8UPMD5wUOaSB9pb6eWlo39AwccpS
         ALtnRtPQNYh7uj+6oqMQq8xFW2l30oOyZ+q1AsdZ7YXGiIWexg+6YRupxO79NnMZ9L5W
         iq6XLnnRP7mMChyB1CnBlIhVHIUqqbDqseGvIikrVsHKjd7ZLT2YQzepzFKL2ifY3Wkq
         SXvQ==
X-Gm-Message-State: AG10YOSB3yeI2tAqKGazElhXhEoLerYY++Rh+MwohWhStiABKkVACorYUN84Tb9em1Wwbg==
X-Received: by 10.66.142.200 with SMTP id ry8mr29735267pab.31.1455611777701;
        Tue, 16 Feb 2016 00:36:17 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-72-178.dhcp.embarqhsd.net. [67.232.72.178])
        by smtp.gmail.com with ESMTPSA id r65sm17138499pfa.27.2016.02.16.00.36.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 00:36:17 -0800 (PST)
Date: Tue, 16 Feb 2016 00:36:15 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: wilc1000: host_interface: destroy mutexes at
 init/deinit
Message-ID: <5a7d37c2fb264592c0e6625645bf1cdc37417f32.1455609607.git.amsfield22@gmail.com>
References: <cover.1455609607.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455609607.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Use mutex_destroy() when driver initialization fails and during
deinitialization.  Move the init of per client mutexes later in
the init process to reduce the number of destroys needed on the
failure path.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 36 ++++++++++++++++++++++---------
 1 file changed, 26 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 45e6ed3..cf1716d 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3602,8 +3602,6 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 
 	scan_while_connected = false;
 
-	mutex_init(&hif_mutex_wait_response);
-
 	hif_drv  = kzalloc(sizeof(struct host_if_drv), GFP_KERNEL);
 	if (!hif_drv) {
 		result = -ENOMEM;
@@ -3622,14 +3620,8 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 		mutex_init(&hif_mutex_thread);
 		mutex_init(&hif_mutex_driver);
 		mutex_init(&hif_mutex_deinit);
-	}
+		mutex_init(&hif_mutex_wait_response);
 
-	mutex_init(&hif_drv->mutex_wep_key);
-	mutex_init(&hif_drv->mutex_disconnect);
-	mutex_init(&hif_drv->mutex_get_rssi);
-	mutex_init(&hif_drv->mutex_inactive_time);
-
-	if (clients_count == 0)	{
 		result = wilc_mq_create(&hif_msg_q);
 
 		if (result < 0) {
@@ -3654,7 +3646,12 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 	setup_timer(&hif_drv->connect_timer, TimerCB_Connect, 0);
 	setup_timer(&hif_drv->remain_on_ch_timer, ListenTimerCB, 0);
 
+	mutex_init(&hif_drv->mutex_wep_key);
+	mutex_init(&hif_drv->mutex_disconnect);
+	mutex_init(&hif_drv->mutex_get_rssi);
+	mutex_init(&hif_drv->mutex_inactive_time);
 	mutex_init(&hif_drv->mutex_cfg_values);
+
 	mutex_lock(&hif_drv->mutex_cfg_values);
 
 	hif_drv->hif_state = HOST_IF_IDLE;
@@ -3675,6 +3672,12 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 _fail_mq_:
 	wilc_mq_destroy(&hif_msg_q);
 _fail_:
+	if (clients_count == 0) {
+		mutex_destroy(&hif_mutex_thread);
+		mutex_destroy(&hif_mutex_driver);
+		mutex_destroy(&hif_mutex_deinit);
+		mutex_destroy(&hif_mutex_wait_response);
+	}
 	return result;
 }
 
@@ -3723,15 +3726,28 @@ int wilc_deinit(struct wilc_vif *vif)
 			PRINT_ER("Error in sending deinit's message queue message function: Error(%d)\n", result);
 
 		mutex_lock(&hif_mutex_thread);
-
 		wilc_mq_destroy(&hif_msg_q);
+		mutex_unlock(&hif_mutex_thread);
 	}
 
+	mutex_destroy(&hif_drv->mutex_wep_key);
+	mutex_destroy(&hif_drv->mutex_disconnect);
+	mutex_destroy(&hif_drv->mutex_get_rssi);
+	mutex_destroy(&hif_drv->mutex_inactive_time);
+	mutex_destroy(&hif_drv->mutex_cfg_values);
+
 	kfree(hif_drv);
 
 	clients_count--;
 	terminated_handle = NULL;
 	mutex_unlock(&hif_mutex_deinit);
+
+	if (clients_count == 0) {
+		mutex_destroy(&hif_mutex_thread);
+		mutex_destroy(&hif_mutex_driver);
+		mutex_destroy(&hif_mutex_deinit);
+		mutex_destroy(&hif_mutex_wait_response);
+	}
 	return result;
 }
 
-- 
2.1.4


