X-GM-THRID: 6251802816159940608
X-Received: by 10.107.11.23 with SMTP id v23mr21046851ioi.13.1455611438209;
        Tue, 16 Feb 2016 00:30:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.135 with SMTP id l7ls3132988qgf.87.gmail; Tue, 16 Feb
 2016 00:30:37 -0800 (PST)
X-Received: by 10.31.153.75 with SMTP id b72mr20277106vke.0.1455611437759;
        Tue, 16 Feb 2016 00:30:37 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id 79si3872779pft.0.2016.02.16.00.30.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 00:30:37 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id ho8so100812862pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 00:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=sZB/Q/5u7cfzFAUvtve1KNx321V70X3chfznlxicZGw=;
        b=pqdfXFB5WLxqvT0dD2Ob+EjLf+pTx9hxRC3OEjolzWPXFYib55Ja4Hl/e4xeuKAtq3
         JuDgdU4oSbA07wqMYOvuvmom/baYeXvbEuVHGvulkXj+1VqHoZ4mT/t6FqZ9GS4t3zXw
         AJl/eppcVjCtSr+4fF5KJiRS8RPqxage4kkkzg29oBllXm3JqyytCupAS+UzFdhd+wG5
         NWKBsZTforhB1sTtp6eIeQNEYZaf9Vzeo2LYG/9EWRPNjFHyVdF0Bcyr2vlMNfZKefbR
         DCxPoCZCYWtkKMKCyYddLu0ZkR6tvUJBMvwGQuS1/HXtsY0hY//uTxdfteB6l3oob9nQ
         l8PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=sZB/Q/5u7cfzFAUvtve1KNx321V70X3chfznlxicZGw=;
        b=Nj9Qe3hKLcwgwd0FOcEXTReY5h4H80nPhVDWUA5AABXz2idPQlmDlF6EwNHOXTz3/4
         ALi9/ug9Uiv0mtnlt9wppSz977zKzGo7bwU4bhYr0o5cZ5LGjvBWxH+EHHS00T+zBzVG
         8gIPZxa4Ik2YEGU2ging7LkJVyuuHgaBMrUrgABXRHxqGe/GkERnU82pdIFccku0IT5n
         hHPBeAEXvgyHYi5SEIKwNPoA+BWFLYx9EhLeoQ52iFMhq2Y82Vgj8Z/Byli1V6VMyTwe
         iyS2K8YtDhO+w+ySTMi2dI2X9h3rJk3dTVBqXoYWQzFq9c3ComL9C1wMFLRMaJ/bh4sY
         k5JA==
X-Gm-Message-State: AG10YORiwPepalFIQz3+vI9YXZDMUP8eBoFG3iNJYeLD88kdew9dv1RjUc+LNmVItcNKrg==
X-Received: by 10.66.150.170 with SMTP id uj10mr29129509pab.91.1455611437614;
        Tue, 16 Feb 2016 00:30:37 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-72-178.dhcp.embarqhsd.net. [67.232.72.178])
        by smtp.gmail.com with ESMTPSA id r80sm43771265pfi.9.2016.02.16.00.30.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 00:30:37 -0800 (PST)
Date: Tue, 16 Feb 2016 00:30:35 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: wilc1000: host_interface: remove unused
 semaphores
Message-ID: <56da9617c7a47e0d72e5f2fdf4cd4432c4cda842.1455609607.git.amsfield22@gmail.com>
References: <cover.1455609607.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455609607.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unused semaphore declarations, initializations, and unlocks.

The functions that locked these semaphores were previously removed,
so this cleans up the remains.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 7 -------
 drivers/staging/wilc1000/host_interface.h | 2 --
 2 files changed, 9 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index d1eedfb..66a0ac9 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1973,7 +1973,6 @@ static s32 Handle_GetChnl(struct wilc_vif *vif)
 {
 	s32 result = 0;
 	struct wid wid;
-	struct host_if_drv *hif_drv = vif->hif_drv;
 
 	wid.id = (u16)WID_CURRENT_CHANNEL;
 	wid.type = WID_CHAR;
@@ -1988,8 +1987,6 @@ static s32 Handle_GetChnl(struct wilc_vif *vif)
 		result = -EFAULT;
 	}
 
-	up(&hif_drv->sem_get_chnl);
-
 	return result;
 }
 
@@ -2017,7 +2014,6 @@ static void Handle_GetLinkspeed(struct wilc_vif *vif)
 {
 	s32 result = 0;
 	struct wid wid;
-	struct host_if_drv *hif_drv = vif->hif_drv;
 
 	link_speed = 0;
 
@@ -2033,7 +2029,6 @@ static void Handle_GetLinkspeed(struct wilc_vif *vif)
 		result = -EFAULT;
 	}
 
-	up(&hif_drv->sem_get_link_speed);
 }
 
 static s32 Handle_GetStatistics(struct wilc_vif *vif,
@@ -3630,8 +3625,6 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 	sema_init(&hif_drv->sem_test_key_block, 0);
 	sema_init(&hif_drv->sem_test_disconn_block, 0);
 	sema_init(&hif_drv->sem_get_rssi, 0);
-	sema_init(&hif_drv->sem_get_link_speed, 0);
-	sema_init(&hif_drv->sem_get_chnl, 0);
 	sema_init(&hif_drv->sem_inactive_time, 0);
 
 	if (clients_count == 0)	{
diff --git a/drivers/staging/wilc1000/host_interface.h b/drivers/staging/wilc1000/host_interface.h
index 5e65f2c..6135024 100644
--- a/drivers/staging/wilc1000/host_interface.h
+++ b/drivers/staging/wilc1000/host_interface.h
@@ -278,8 +278,6 @@ struct host_if_drv {
 	struct semaphore sem_test_key_block;
 	struct semaphore sem_test_disconn_block;
 	struct semaphore sem_get_rssi;
-	struct semaphore sem_get_link_speed;
-	struct semaphore sem_get_chnl;
 	struct semaphore sem_inactive_time;
 
 	struct timer_list scan_timer;
-- 
2.1.4


