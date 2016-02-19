X-GM-THRID: 6251802816159940608
X-Received: by 10.129.87.73 with SMTP id l70mr14057376ywb.13.1455911147539;
        Fri, 19 Feb 2016 11:45:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.162 with SMTP id g2ls173957obe.63.gmail; Fri, 19 Feb
 2016 11:45:47 -0800 (PST)
X-Received: by 10.182.92.226 with SMTP id cp2mr14311169obb.19.1455911147181;
        Fri, 19 Feb 2016 11:45:47 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id ff2si1955664pad.2.2016.02.19.11.45.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 11:45:47 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id q63so56146306pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 11:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=IPkoct5+7p/gu3KiRT2kHegpx3OSDmLBE70ZFrQYzPQ=;
        b=x14dm4FCMgpppUJ05ESvHuMSWQRbX9Jl16j0js3L6xK0ytgTeAe5015B7m3l5Wdj67
         zC+3QnYUo9upvKLfF7m3QU8UJZrPELMLEsXlQlRquAUJOQvDzM/3INOUuefleezoA1wO
         mPFPXyBaIzGlKDkMSSsI00fTSChm808axPIqLsFnuCQ5oZT3j0b1E4MqhmJTkD/orJuh
         hftgWzxoGY+jQLkGw+j1nCKg/vWzqfQBxgOV3MXevpgYluK5nfDUzs/rQ6itQGxqSjcU
         H8VLF/6Q/8c/PZJ+3zzLLNSCUcEh+LfeC24/gLWbg3mgpTz6gwfC4tR6Jtw5lpEyM7m2
         u8Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=IPkoct5+7p/gu3KiRT2kHegpx3OSDmLBE70ZFrQYzPQ=;
        b=fYLw3ss35RRfRKK4nf7DHNpvhemhVJ/av8XhsA2wCrjLTmQxPAKZlLP70EmLN0fpvM
         DKmxTLIVuaKlLcbdG8Hb2f8wUxSc6/RC2f+F7EINlCacNpATzUB3x3pk3Lv4QqvXxdy/
         J774uMNpd6TVdVAlMP1kCU9Y4YWinAnZyBljqTiDPwnZN9EuFSzsolX82GaQ/u1en5P2
         gtUHXM3Q8UNKCrLbBKBD7D3q6u0AmdmH+EMFwKVeJaz4E3NPZzxSB0I8H5J/IJU/6ajj
         wzaCyPme/OtW1az6UO1D8zFodGlrDfoL8FE9+AgftGoR3dhPHkw4lSavbYKZZsgObgJ8
         Li3g==
X-Gm-Message-State: AG10YOTQ9akfP1iIWYpU3y7aoIWyWh9Yvyd9pKitJ64Ec11n061di53JoSsYXd4oGp/mYw==
X-Received: by 10.98.34.198 with SMTP id p67mr20596336pfj.93.1455911147029;
        Fri, 19 Feb 2016 11:45:47 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-72-178.dhcp.embarqhsd.net. [67.232.72.178])
        by smtp.gmail.com with ESMTPSA id v75sm19578245pfa.39.2016.02.19.11.45.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 11:45:46 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: replace semaphore get_inactive_time with a completion
Date: Fri, 19 Feb 2016 11:45:40 -0800
Message-Id: <1455911140-9055-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <4f9af8d5cac2ccb9e81ef5908ef0b3b0cdec6145.1455609607.git.amsfield22@gmail.com>
References: <4f9af8d5cac2ccb9e81ef5908ef0b3b0cdec6145.1455609607.git.amsfield22@gmail.com>

Semaphore get_inactive_time is used to signal completion of its host
interface message. Since the thread locking this semaphore will have
to wait, completions are the preferred mechanism and will offer a
performance improvement.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 7 ++++---
 drivers/staging/wilc1000/host_interface.h | 2 +-
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index d1eedfb..7cb8c28 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -2,6 +2,7 @@
 #include <linux/time.h>
 #include <linux/kthread.h>
 #include <linux/delay.h>
+#include <linux/completion.h>
 #include "host_interface.h"
 #include "coreconfigurator.h"
 #include "wilc_wlan.h"
@@ -2131,7 +2132,7 @@ static s32 Handle_Get_InActiveTime(struct wilc_vif *vif,
 
 	PRINT_D(CFG80211_DBG, "Getting inactive time : %d\n", inactive_time);
 
-	up(&hif_drv->sem_inactive_time);
+	complete(&hif_drv->comp_inactive_time);
 
 	return result;
 }
@@ -3443,7 +3444,7 @@ s32 wilc_get_inactive_time(struct wilc_vif *vif, const u8 *mac,
 	if (result)
 		PRINT_ER("Failed to send get host channel param's message queue ");
 
-	down(&hif_drv->sem_inactive_time);
+	wait_for_completion(&hif_drv->comp_inactive_time);
 
 	*pu32InactiveTime = inactive_time;
 
@@ -3632,7 +3633,7 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 	sema_init(&hif_drv->sem_get_rssi, 0);
 	sema_init(&hif_drv->sem_get_link_speed, 0);
 	sema_init(&hif_drv->sem_get_chnl, 0);
-	sema_init(&hif_drv->sem_inactive_time, 0);
+	init_completion(&hif_drv->comp_inactive_time);
 
 	if (clients_count == 0)	{
 		result = wilc_mq_create(&hif_msg_q);
diff --git a/drivers/staging/wilc1000/host_interface.h b/drivers/staging/wilc1000/host_interface.h
index 5e65f2c..08229f6 100644
--- a/drivers/staging/wilc1000/host_interface.h
+++ b/drivers/staging/wilc1000/host_interface.h
@@ -280,7 +280,7 @@ struct host_if_drv {
 	struct semaphore sem_get_rssi;
 	struct semaphore sem_get_link_speed;
 	struct semaphore sem_get_chnl;
-	struct semaphore sem_inactive_time;
+	struct completion comp_inactive_time;
 
 	struct timer_list scan_timer;
 	struct timer_list connect_timer;
-- 
2.1.4


