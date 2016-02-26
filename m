X-GM-THRID: 6255546141594615808
X-Received: by 10.66.119.197 with SMTP id kw5mr505632pab.15.1456482834345;
        Fri, 26 Feb 2016 02:33:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.97.225 with SMTP id ed1ls457148obb.76.gmail; Fri, 26 Feb
 2016 02:33:51 -0800 (PST)
X-Received: by 10.182.29.41 with SMTP id g9mr520243obh.27.1456482831719;
        Fri, 26 Feb 2016 02:33:51 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id u66si1967337pfa.2.2016.02.26.02.33.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 02:33:51 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fl4so49226996pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 02:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DiV8Zcex31UbtC/dSEzbd5HPIPkpv9A5a2N2/LvN+Ys=;
        b=q0yZO3i06TGrb3pJv9Q+7Nzf+y2L+wY8aD6zJV3QaG/FRYA8JXgvQuniISDTGaXfqS
         1HKuU+60olMKjA0igdmFexPjw4QFjTgpzejzgmH8gzK5CztOsxMbG21adhCzIxzIFc8q
         SYdbAiJeKn4cGj6yyHIhRCrQ7PYOq3ZQnQo/ud+vZlb1ENOHk64mdg9ZAeCyQQJ2K8c3
         NA8vnLutxt4kMm9MX9FyKIKZGlVuussIEa9jUZnwS20B9ytT0TY9AOnZcaTN3de7aeL3
         ibKlkEik6GtgKuJtfSCoMgiBFPo2bAhanON+OA9JO1xsLVQ3bGS6giqC2MdOcWcXxq82
         rctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DiV8Zcex31UbtC/dSEzbd5HPIPkpv9A5a2N2/LvN+Ys=;
        b=SNP5bVvlXp6n6HHDq5fjbxhs61NPdNrO2arg4bor1g6DEvPLczmFBaoPsV49SDIrMz
         f77ZY8ybtqPVo4GGrkjcsjZe8bNlXWrpGVqHxFA9mLRvxY/AFtCi93x6StJD8cJGB2oA
         gAyhkRocc53eT2IUdQt2K+LWzLM46mBMIUybH17Vq6esu7dgNeLX3zIRMlFsPyIeZYYm
         OBShjaAfWd9VA+/+cPNgV+VSlRrYnVpmRRbZYSMCh1Lci58qIk0f0t3p+TKxK0vrknKl
         fzbxi5t5/bzYeAroqXBEZK4lnM8p3UxP5o6HlLtIfJYY+uUwJhDUkqMH/Kt2P003AkkA
         CqfQ==
X-Gm-Message-State: AD7BkJLtrOWcDZ8LIAQ9xlf7FwSoBYP2IdrUlwa/gq2ucglA9upC6vFRYxpCNM+IBhvGqw==
X-Received: by 10.66.142.193 with SMTP id ry1mr976269pab.33.1456482831516;
        Fri, 26 Feb 2016 02:33:51 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id fa3sm18361797pab.45.2016.02.26.02.33.50
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 02:33:51 -0800 (PST)
Date: Fri, 26 Feb 2016 16:03:47 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH] staging: unisys: visornic: Remove
 create_singlethread_workqueue()
Message-ID: <20160226103347.GA14213@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

With concurrency managed workqueues, use of dedicated workqueues
can be replaced by using system_wq. 
Drop visornic_timeout_reset_workqueue by using system_wq.

Since there is only one work item per devdata and different
devdatas do not need to be ordered, increase of concurrency
level by switching to system_wq should not break anything.

cancel_work_sync() is used to ensure that work is not pending or
executing on any CPU.

Lastly, since all devices are suspended, which shutdowns the work item
before the driver can be unregistered, it is guaranteed that no work
item is pending or executing by the time exit path runs.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/unisys/visornic/visornic_main.c | 21 ++-------------------
 1 file changed, 2 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/unisys/visornic/visornic_main.c b/drivers/staging/unisys/visornic/visornic_main.c
index df4f688..6749c4e 100644
--- a/drivers/staging/unisys/visornic/visornic_main.c
+++ b/drivers/staging/unisys/visornic/visornic_main.c
@@ -59,8 +59,6 @@ static const struct file_operations debugfs_enable_ints_fops = {
 	.write = enable_ints_write,
 };
 
-static struct workqueue_struct *visornic_timeout_reset_workqueue;
-
 /* GUIDS for director channel type supported by this driver.  */
 static struct visor_channeltype_descriptor visornic_channel_types[] = {
 	/* Note that the only channel type we expect to be reported by the
@@ -1070,7 +1068,7 @@ visornic_xmit_timeout(struct net_device *netdev)
 		spin_unlock_irqrestore(&devdata->priv_lock, flags);
 		return;
 	}
-	queue_work(visornic_timeout_reset_workqueue, &devdata->timeout_reset);
+	schedule_work(&devdata->timeout_reset);
 	spin_unlock_irqrestore(&devdata->priv_lock, flags);
 }
 
@@ -1998,7 +1996,7 @@ static void visornic_remove(struct visor_device *dev)
 	}
 
 	/* going_away prevents new items being added to the workqueues */
-	flush_workqueue(visornic_timeout_reset_workqueue);
+	cancel_work_sync(&devdata->timeout_reset);
 
 	debugfs_remove_recursive(devdata->eth_debugfs_dir);
 
@@ -2117,21 +2115,10 @@ static int visornic_init(void)
 	if (!ret)
 		goto cleanup_debugfs;
 
-	/* create workqueue for tx timeout reset */
-	visornic_timeout_reset_workqueue =
-		create_singlethread_workqueue("visornic_timeout_reset");
-	if (!visornic_timeout_reset_workqueue)
-		goto cleanup_workqueue;
-
 	err = visorbus_register_visor_driver(&visornic_driver);
 	if (!err)
 		return 0;
 
-cleanup_workqueue:
-	if (visornic_timeout_reset_workqueue) {
-		flush_workqueue(visornic_timeout_reset_workqueue);
-		destroy_workqueue(visornic_timeout_reset_workqueue);
-	}
 cleanup_debugfs:
 	debugfs_remove_recursive(visornic_debugfs_dir);
 
@@ -2147,10 +2134,6 @@ static void visornic_cleanup(void)
 {
 	visorbus_unregister_visor_driver(&visornic_driver);
 
-	if (visornic_timeout_reset_workqueue) {
-		flush_workqueue(visornic_timeout_reset_workqueue);
-		destroy_workqueue(visornic_timeout_reset_workqueue);
-	}
 	debugfs_remove_recursive(visornic_debugfs_dir);
 }
 
-- 
1.9.1


