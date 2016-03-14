X-GM-THRID: 6261962794533388288
X-Received: by 10.66.102.8 with SMTP id fk8mr19215581pab.44.1457976860212;
        Mon, 14 Mar 2016 10:34:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.135 with SMTP id n7ls4565336qgd.10.gmail; Mon, 14 Mar
 2016 10:34:19 -0700 (PDT)
X-Received: by 10.140.92.69 with SMTP id a63mr15100102qge.14.1457976859732;
        Mon, 14 Mar 2016 10:34:19 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h69si2093179pfj.0.2016.03.14.10.34.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 10:34:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x3so5343182pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 10:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=+EMSfIu7IKlooGQ1q+K7r1l3NHcwyG4rwKF617dbxgU=;
        b=m3ZQeU0R/2FEILDT9MZHI3/FlBunlMH29eFXymiiAmDujsa2luqOcbz0mQcxl/V/f+
         NgAuo9oWc4JKs2pKJBS2ACHyY4OHHEhTpUOYCXMoh2KaEIXVk2wNOTTgEdFwQgDQSHdC
         xfyW0KLCsdm1XLN5l1KIw7pCQL4TnESJ4l0OoskljF5RePxcVv4RiL0o7OiAkqWWYg3h
         hV7eEW3IxEdAoIRjU1V+uvgV+BGFnf9RQI4ZdEX87JerqVBjwoqHFOPCY1hhUupHOlC0
         Wb86D7/C0Xj8Uo0sxyumGzkwNYGsb4imqYWLAHsX69G4plKgaNLq+JlDE+d28hV7RvHY
         Qt9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=+EMSfIu7IKlooGQ1q+K7r1l3NHcwyG4rwKF617dbxgU=;
        b=L+0IHe2r/J3AM51JAA1M5ezN7LYAS0NErHit/HLBVQG828Avn8hJWLGc5JoQpJP06/
         e3Y8GaLDJiUDJNr10QjdwTrPTeXSLmK/HUvojmzlPJSovELyTgfI9Szx7ly5IxJVCiT1
         B1Q+tVa5bwtQDz8cQT9j2tsYyvZH7cewHmj0K29P8cWdc1EnCvsxxMsJwB8C0nvBNyUg
         stnQCVfMRyH8IpXmEThB9T6tJ4lhVlBqdY5OzuC6eJtBqAJs10i++IyWjeBAXtiWtOTB
         Z+QJP4/ekt2KQ4ibh6PUaIdKlEtVcBhU8oxmtOEk3bvOUpOdoASXy+M/w4JAPUmJL0KP
         yojQ==
X-Gm-Message-State: AD7BkJIUI86L+QcfeTEOCGsYHUt6diOUGrVoggMCsJniKWvvw6aNpuvMZY6gz4Peu0Z8+g==
X-Received: by 10.98.13.132 with SMTP id 4mr31917748pfn.122.1457976859549;
        Mon, 14 Mar 2016 10:34:19 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-64-227.dhcp.embarqhsd.net. [67.232.64.227])
        by smtp.gmail.com with ESMTPSA id l88sm12339059pfj.7.2016.03.14.10.34.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 14 Mar 2016 10:34:18 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/4] staging: wilc1000: replace semaphore sem_inactive_time with a completion
Date: Mon, 14 Mar 2016 10:34:14 -0700
Message-Id: <effef0ea2bcb3a127aadf5ea7f16f318aa616ec2.1457974909.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1457974909.git.amsfield22@gmail.com>
References: <cover.1457974909.git.amsfield22@gmail.com>

Semaphore sem_inactive_time is used to signal completion of its host
interface message. Since the thread locking this semaphore will have
to wait, completions are the preferred mechanism and will offer a
performance improvement.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Tested-by: Leo Kim <leo.kim@atmel.com>
---
 drivers/staging/wilc1000/host_interface.c | 7 ++++---
 drivers/staging/wilc1000/host_interface.h | 2 +-
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 0a922c7..25634ae 100644
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
@@ -1979,7 +1980,7 @@ static s32 Handle_Get_InActiveTime(struct wilc_vif *vif,
 		return -EFAULT;
 	}
 
-	up(&hif_drv->sem_inactive_time);
+	complete(&hif_drv->comp_inactive_time);
 
 	return result;
 }
@@ -3220,7 +3221,7 @@ s32 wilc_get_inactive_time(struct wilc_vif *vif, const u8 *mac,
 	if (result)
 		netdev_err(vif->ndev, "Failed to send get host ch param\n");
 
-	down(&hif_drv->sem_inactive_time);
+	wait_for_completion(&hif_drv->comp_inactive_time);
 
 	*pu32InactiveTime = inactive_time;
 
@@ -3407,7 +3408,7 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 	sema_init(&hif_drv->sem_test_key_block, 0);
 	sema_init(&hif_drv->sem_test_disconn_block, 0);
 	sema_init(&hif_drv->sem_get_rssi, 0);
-	sema_init(&hif_drv->sem_inactive_time, 0);
+	init_completion(&hif_drv->comp_inactive_time);
 
 	if (clients_count == 0)	{
 		result = wilc_mq_create(&hif_msg_q);
diff --git a/drivers/staging/wilc1000/host_interface.h b/drivers/staging/wilc1000/host_interface.h
index 01f3222..68852b3 100644
--- a/drivers/staging/wilc1000/host_interface.h
+++ b/drivers/staging/wilc1000/host_interface.h
@@ -278,7 +278,7 @@ struct host_if_drv {
 	struct semaphore sem_test_key_block;
 	struct semaphore sem_test_disconn_block;
 	struct semaphore sem_get_rssi;
-	struct semaphore sem_inactive_time;
+	struct completion comp_inactive_time;
 
 	struct timer_list scan_timer;
 	struct timer_list connect_timer;
-- 
2.1.4


