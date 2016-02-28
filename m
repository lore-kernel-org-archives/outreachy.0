X-GM-THRID: 6255546141594615808
X-Received: by 10.140.250.69 with SMTP id v66mr8869187qhc.22.1456664201778;
        Sun, 28 Feb 2016 04:56:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.60.134 with SMTP id h6ls925232obr.78.gmail; Sun, 28 Feb
 2016 04:56:41 -0800 (PST)
X-Received: by 10.182.240.137 with SMTP id wa9mr8965117obc.16.1456664201343;
        Sun, 28 Feb 2016 04:56:41 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ui7si3060787pab.0.2016.02.28.04.56.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 04:56:41 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q129so1196648pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 04:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4HHJGGr6kCuTin7QgORaLKZSByCeh88YHfSrtxtBvzs=;
        b=kJzmnSBxgop/lzv6e9Hu8b3scqGG8hh9zIQmLW5yUeFmbjHOo/WNvPLZ8hwE8NKLFq
         5pq6+iWLXhagu+0POqcbs8yqQV2VSu/5uSK1n0N3wgisNCEVIusZ28PHpT2BJnWM9XPf
         Qb42icg7wrrmHLub19YqOpm8B2SlEXdzlsuXklmgFitIKA76usZT/pBu8J5AjNICVBiL
         S65jdTV92PSmOvC8HEzTbCk2H2YPpHY8QmU5hVoSQYnhoZtIuGUDG511JnuWvNf8c1WE
         z+8Jd+92NuujXg96/KpIuVaa91SmapcMYiY6aq9lsXl7jt8QBnWnS5YxjWhJVNCsnbMb
         +wyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4HHJGGr6kCuTin7QgORaLKZSByCeh88YHfSrtxtBvzs=;
        b=WjrL5FkEYPRwWcqLzm56h6GavS6fwGdyJfT8TCfvdM+NFs1ASn38bQ73R1Wth5dmEt
         ny+Vuhn+WAm5BtIbvtk0BA/pvItangBDoSPuDqujyO0g097ROhrBvbK3jazODVDpSeMH
         1PGqi2SoFLito5GndTcb5vxhgEZr2lKhK9b8y7GvNi+JNpbI/zYRQM7mQsspDOHqqns5
         vh/GltPC7Pds4oJ8N20cE0xqS4EZRaW6iieV8mnXpdlLmFvXE0x+PbRTnUjRffyWDcsb
         jGOGEHl6aUQJ/i8YD7BmtDkdVugRMXR8i4ouW52Hz8xwJkbxwUr/jvCWs+HRzKhLiKCT
         8vgQ==
X-Gm-Message-State: AD7BkJJ3bUf2nWU3lQjgArCa60SIg47zN3xuNQ5Mk1n7cqsKokAwgOAfQ0T3+fQfAPDbCg==
X-Received: by 10.98.87.141 with SMTP id i13mr15003473pfj.72.1456664201049;
        Sun, 28 Feb 2016 04:56:41 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id dg1sm31353366pad.18.2016.02.28.04.56.39
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 04:56:40 -0800 (PST)
Date: Sun, 28 Feb 2016 18:26:37 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: benjamin.romer@unisys.com, Jes.Sorensen@redhat.com,
	erik.arfvidson@unisys.com, david.kershner@unisys.com,
	jkc@redhat.com, Timothy.Sell@unisys.com, bryan.thompson@unisys.com,
	dzickus@redhat.com, gregkh@linuxfoundation.org,
	sparmaintainer@unisys.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: tj@kernel.org, outreachy-kernel@googlegroups.com
Subject: [RFC] staging: unisys: visornic: Remove
 create_singlethread_workqueue()
Message-ID: <20160228125637.GA12851@amitoj-Inspiron-3542>
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

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Acked-by: Tejun Heo <tj@kernel.org>
---
Only compile tested.

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


