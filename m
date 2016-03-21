X-GM-THRID: 6264386438597443584
X-Received: by 10.140.253.198 with SMTP id y189mr22242569qhc.9.1458541126089;
        Sun, 20 Mar 2016 23:18:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.134 with SMTP id z6ls3421663qgz.32.gmail; Sun, 20 Mar
 2016 23:18:45 -0700 (PDT)
X-Received: by 10.140.250.69 with SMTP id v66mr12258406qhc.22.1458541125346;
        Sun, 20 Mar 2016 23:18:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id tu5si2907331pab.2.2016.03.20.23.18.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 23:18:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id 4so121867752pfd.0
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 23:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vHGxh3ynlGOpz6eTiWPG6kR88EWEUOWyOvQ5MwPkdbU=;
        b=jzVrCLHRHqI85wgjU23C8Zwi332B67Yycs4L/pUy33msIAAxsHSiv/Tp6vxh0mUD0k
         h54OlHX1PN3rtzJu3UAyWgXmRoesOc+uen0HMyJ5HIX0drmxca6z+OqcJto7KvPyJNKt
         XxLO/X15WK37vtn4LGni174N2LEmZQwansfjUOMckjwVCQdoM7T8Wv6pMmuCRS3oefVL
         V7JblzQWkmaVn7Mmd1LjhG1q93F9G31r/uz4kNVhDTldugmd20pJpo2UXgpqnVQvZHp4
         jeG+up3jwyCfd7Z3FUbJBN87mlHNhryj5tFItXDDab3czh1yHuoaWidHdUIVEKAl38Kq
         jfFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vHGxh3ynlGOpz6eTiWPG6kR88EWEUOWyOvQ5MwPkdbU=;
        b=Cm1dou0FluVs/rsZ7ZkhkVAZ9bvL6a3q/CmTs3w6bEq8cFh8Zlb4wTbp3dEGD17tdo
         AfRSXZub4hqMmgTYwZbKv5mxrmmZxy6SH2izlOyxf4cVLnCFhtJQSIaqBd4vaB6L3pIU
         Zz70Y6qZUx429WHuA0+kzhOP84rbO1QvxSIfVJgI8eyUDbGxVAa/uzAtcdSL8IBGqUtv
         gxtlChyBMF8ifgF44CMJOa/wE2NWCookSvmk1vAkMHiej1JqbzjAmxBoUkxORWCCDfEA
         3WPumsEeufOH3hpyiEaWyd8r7IiJnXYzOtQ6XO3Hun9Ht8U9jrU/9bxcsH0o+GOzZVWl
         OiOA==
X-Gm-Message-State: AD7BkJKZQt++gTCjp7mkm37N2JeruApTrQd9PAkrTxaNpPFl9VzzlXoyEXLx5KnHkzINaQ==
X-Received: by 10.98.73.88 with SMTP id w85mr43387212pfa.82.1458541125142;
        Sun, 20 Mar 2016 23:18:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-64-227.dhcp.embarqhsd.net. [67.232.64.227])
        by smtp.gmail.com with ESMTPSA id 82sm37381523pfi.78.2016.03.20.23.18.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 23:18:44 -0700 (PDT)
Date: Sun, 20 Mar 2016 23:18:43 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnd@arndb.de
Subject: [PATCH] staging: wilc1000: move initialization of the config values
Message-ID: <20160321061836.GA23082@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Move the initialization of the config values so that an uninit'd
mutex is not exposed and to simplify the initialization process.

The code was allocating a structure with a lock, initializing and
taking the lock, setting some values, and then releasing the
lock.  If no other thread can get it, then the lock isn't needed.
If another thread can get it, it could find it before the mutex
is initialized.

Make it safe and simple by setting the config values and initializing
their mutex before the kthread is started.  No lock/unlock needed.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 0a922c7..7661d52 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3404,6 +3404,14 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 		sema_init(&hif_sema_deinit, 1);
 	}
 
+	hif_drv->cfg_values.site_survey_enabled = SITE_SURVEY_OFF;
+	hif_drv->cfg_values.scan_source = DEFAULT_SCAN;
+	hif_drv->cfg_values.active_scan_time = ACTIVE_SCAN_TIME;
+	hif_drv->cfg_values.passive_scan_time = PASSIVE_SCAN_TIME;
+	hif_drv->cfg_values.curr_tx_rate = AUTORATE;
+
+	mutex_init(&hif_drv->cfg_values_lock);
+
 	sema_init(&hif_drv->sem_test_key_block, 0);
 	sema_init(&hif_drv->sem_test_disconn_block, 0);
 	sema_init(&hif_drv->sem_get_rssi, 0);
@@ -3434,20 +3442,10 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 	setup_timer(&hif_drv->connect_timer, TimerCB_Connect, 0);
 	setup_timer(&hif_drv->remain_on_ch_timer, ListenTimerCB, 0);
 
-	mutex_init(&hif_drv->cfg_values_lock);
-	mutex_lock(&hif_drv->cfg_values_lock);
-
 	hif_drv->hif_state = HOST_IF_IDLE;
-	hif_drv->cfg_values.site_survey_enabled = SITE_SURVEY_OFF;
-	hif_drv->cfg_values.scan_source = DEFAULT_SCAN;
-	hif_drv->cfg_values.active_scan_time = ACTIVE_SCAN_TIME;
-	hif_drv->cfg_values.passive_scan_time = PASSIVE_SCAN_TIME;
-	hif_drv->cfg_values.curr_tx_rate = AUTORATE;
 
 	hif_drv->p2p_timeout = 0;
 
-	mutex_unlock(&hif_drv->cfg_values_lock);
-
 	clients_count++;
 
 	return result;
-- 
2.1.4


