X-GM-THRID: 6261962794533388288
X-Received: by 10.66.142.135 with SMTP id rw7mr19250522pab.20.1457976885720;
        Mon, 14 Mar 2016 10:34:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.149 with SMTP id 21ls3717118qgh.42.gmail; Mon, 14 Mar
 2016 10:34:45 -0700 (PDT)
X-Received: by 10.129.106.9 with SMTP id f9mr18736317ywc.16.1457976885264;
        Mon, 14 Mar 2016 10:34:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id sf5si3466755pac.1.2016.03.14.10.34.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 10:34:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id 1so15203513pal.3
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 10:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=aoIUfUk65N/E9selP9nUE3vL0Glqfi57A+CCCl7Lfvc=;
        b=iEBRY/yD0dy3o16V9oRTN2ZplBagrBzruLTDE74lz8NPfbHXGOdKJWqnDjxM1anytE
         x2YsAhCTjLyscTREChXA7IkotgRNWR+uALEsV4KJ+Zb0dvlgFMP3xrGrQG9H+eYUMdf4
         gpqTQQDDfY6LFaM8gaGCmig01jQGQde4dlhAlTmdiYlMB+R2/eL6swa+loVP3VTIEJJc
         07LaKuwSEOKu2kpwgT38PWAFsqsB3cN5qz4fECvEy7bntEJJu+XFbBUI/jW9Zo1b5hBM
         SjJucEvhWMjPoR2V3rCXN9XMsPtTWNDHmrYs7nDJ9bnDpOyYe1ub5vvbERhw+Iz57rHQ
         OjFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=aoIUfUk65N/E9selP9nUE3vL0Glqfi57A+CCCl7Lfvc=;
        b=MaTlLZabYx3cnD9jLSkwN0ensEHEce2X2mNH95BwGdZdXk8gPlC/dlpfzsJDHVJDCX
         g91MsLmfbHpOTvn4/yw/kvFQ99j+GrciKIEabvgDQonXyqtEtzGtwuEFZz3LX0RsLHHb
         J8N0hCwM8NOeJI4I5Vuv4wfmKVJ+boDpBIShhjCYqJfM3T5Gj5yuFF+xBtu0S4bECsaM
         CjB/XcU0/FPjlJNkDbpmX6fpqogSrbkK077XYHDPv+mzUBVLYJcTHFWnJK76SdAP530f
         BUSq3VAb088lNb05EIdCYrfcPhFq2nlTF2eNzgXq1JYWVDj2ngfaQ7exbi6raOBXRmpc
         CHog==
X-Gm-Message-State: AD7BkJL1mdjdP9mcBj/CE4G/jUFFz08NIlZwaTrwR+EoJINu5smSgZxZEa2Dw0a24ycZvw==
X-Received: by 10.66.219.5 with SMTP id pk5mr4583985pac.104.1457976885052;
        Mon, 14 Mar 2016 10:34:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-64-227.dhcp.embarqhsd.net. [67.232.64.227])
        by smtp.gmail.com with ESMTPSA id p75sm33594027pfi.29.2016.03.14.10.34.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 14 Mar 2016 10:34:44 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/4] staging: wilc1000: replace semaphore sem_get_rssi with a completion
Date: Mon, 14 Mar 2016 10:34:39 -0700
Message-Id: <6b7461ba81104940c5fb4042e5a1695d0b261b26.1457974909.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1457974909.git.amsfield22@gmail.com>
References: <cover.1457974909.git.amsfield22@gmail.com>

Semaphore sem_get_rssi is used to signal completion of its host
interface message. Since the thread locking this semaphore will have
to wait, completions are the preferred mechanism and will offer a
performance improvement.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Tested-by: Leo Kim <leo.kim@atmel.com>
---
 drivers/staging/wilc1000/host_interface.c | 6 +++---
 drivers/staging/wilc1000/host_interface.h | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 25634ae..22b328f 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1886,7 +1886,7 @@ static void Handle_GetRssi(struct wilc_vif *vif)
 		result = -EFAULT;
 	}
 
-	up(&vif->hif_drv->sem_get_rssi);
+	complete(&vif->hif_drv->comp_get_rssi);
 }
 
 static s32 Handle_GetStatistics(struct wilc_vif *vif,
@@ -3244,7 +3244,7 @@ int wilc_get_rssi(struct wilc_vif *vif, s8 *rssi_level)
 		return -EFAULT;
 	}
 
-	down(&hif_drv->sem_get_rssi);
+	wait_for_completion(&hif_drv->comp_get_rssi);
 
 	if (!rssi_level) {
 		netdev_err(vif->ndev, "RSS pointer value is null\n");
@@ -3407,7 +3407,7 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 
 	sema_init(&hif_drv->sem_test_key_block, 0);
 	sema_init(&hif_drv->sem_test_disconn_block, 0);
-	sema_init(&hif_drv->sem_get_rssi, 0);
+	init_completion(&hif_drv->comp_get_rssi);
 	init_completion(&hif_drv->comp_inactive_time);
 
 	if (clients_count == 0)	{
diff --git a/drivers/staging/wilc1000/host_interface.h b/drivers/staging/wilc1000/host_interface.h
index 68852b3..085adee 100644
--- a/drivers/staging/wilc1000/host_interface.h
+++ b/drivers/staging/wilc1000/host_interface.h
@@ -277,7 +277,7 @@ struct host_if_drv {
 	struct mutex cfg_values_lock;
 	struct semaphore sem_test_key_block;
 	struct semaphore sem_test_disconn_block;
-	struct semaphore sem_get_rssi;
+	struct completion comp_get_rssi;
 	struct completion comp_inactive_time;
 
 	struct timer_list scan_timer;
-- 
2.1.4


