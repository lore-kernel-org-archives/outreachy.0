X-GM-THRID: 6255063011291037696
X-Received: by 10.66.160.9 with SMTP id xg9mr39491646pab.38.1456370347281;
        Wed, 24 Feb 2016 19:19:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.46.73 with SMTP id j67ls130127qga.13.gmail; Wed, 24 Feb
 2016 19:19:06 -0800 (PST)
X-Received: by 10.140.29.183 with SMTP id b52mr11624234qgb.8.1456370346751;
        Wed, 24 Feb 2016 19:19:06 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id ff2si941500pad.2.2016.02.24.19.19.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 19:19:06 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id ho8so24673962pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 19:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8SkbnQd1EdcReotP+ZYwZnY7xVW8Ganmr81aeN9rPl0=;
        b=RHtoeQfM6O6amS9ayeEyF6ZQWwX9YRtxEPCxDDCuvzOBCprij8OIxqo/tUdTbtbZhX
         U+cQoqYK2BPb47oR9P2d1+MerAIUzGisYeVORiuL73C74M5BSJF3koNhi8+dh5HRVoKV
         A1dXR0nRY8m4ubfs/n8yXekkBCuHnao6NMQV/JyToHx2p6RiqrhaAskex86nmpJ84WWV
         tR2JPEG2DMJnT0JjKbayR3KhP8d9KKyUAEuCl7sLszhr4hJdyt97SkDuchDrF3V9ero1
         LvgyJ36bBqs2uI8zKab5s/F61gZOQF/byAJeNZx3HVrP8gaaUTCdCVGeKcQtDdoBxeui
         Izsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=8SkbnQd1EdcReotP+ZYwZnY7xVW8Ganmr81aeN9rPl0=;
        b=S06p4huBgyI9buj7fP2zHIYgNWMn9zWJpRNTo/yV13W1O+PO4PTDQcnMwUF/4ft9Ca
         iLVmgNWWQytXMctgWk7CBp1DT8dX1uRS3CKY/IXV4oBnWpzyBYJD1lkk4771q2/BPtKU
         oaj5wFP6gZOPmh51NIp+D/aLMiOQGc/P+axs8oyTnmKnrtQBlirCL9SMDqjRsHLpjr1d
         Pn6PfuMFmxTJiN3PJUoctqwdq0NRA5/ZQ6AWgjqV59JDL29uoSLtDye8+3zJnrvjRey1
         jCB0Je19DBt2hiVNojL0rCxZkYXrHnDPT5CZltHD4QPphW4zoedLzFuLiBwidlGRRp+o
         MWWg==
X-Gm-Message-State: AG10YOT4e0IJClpa5vL+7xnrV5iISTpq+6ebKaKEyMmLvVIjOljZT14vgT2FjyIFC9qH9g==
X-Received: by 10.66.160.7 with SMTP id xg7mr59036373pab.10.1456370346514;
        Wed, 24 Feb 2016 19:19:06 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id r62sm8008556pfr.26.2016.02.24.19.19.04
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 19:19:05 -0800 (PST)
Date: Thu, 25 Feb 2016 08:49:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH] staging: gdm724x: gdm_usb: Remove create_workqueue()
Message-ID: <20160225031900.GA23782@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

With concurrency managed workqueues, use of dedicated workqueues
can be replaced by using system_wq. Drop usb_tx_wq and usb_rx_wq by 
using system_wq.

Since there are multiple work items per udev but different udevs
do not need to be ordered, increase of concurrency level by switching
to system_wq should not break anything.

cancel_work_sync() is used to ensure that work is not pending or
executing on any CPU.

Lastly, since all devices are suspended, which shutdowns the work item
before the driver can be unregistered, it is guaranteed that no work
item is pending or executing by the time exit path runs.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/gdm724x/gdm_usb.c | 33 +++++++--------------------------
 1 file changed, 7 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index 92ea1a1..beef701 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -55,9 +55,6 @@ static const struct usb_device_id id_table[] = {
 
 MODULE_DEVICE_TABLE(usb, id_table);
 
-static struct workqueue_struct *usb_tx_wq;
-static struct workqueue_struct *usb_rx_wq;
-
 static void do_tx(struct work_struct *work);
 static void do_rx(struct work_struct *work);
 
@@ -476,7 +473,7 @@ static void gdm_usb_rcv_complete(struct urb *urb)
 	if (!urb->status && r->callback) {
 		spin_lock_irqsave(&rx->to_host_lock, flags);
 		list_add_tail(&r->to_host_list, &rx->to_host_list);
-		queue_work(usb_rx_wq, &udev->work_rx.work);
+		schedule_work(&udev->work_rx.work);
 		spin_unlock_irqrestore(&rx->to_host_lock, flags);
 	} else {
 		if (urb->status && udev->usb_state == PM_NORMAL)
@@ -568,7 +565,7 @@ static void gdm_usb_send_complete(struct urb *urb)
 
 	spin_lock_irqsave(&tx->lock, flags);
 	udev->send_complete = 1;
-	queue_work(usb_tx_wq, &udev->work_tx.work);
+	schedule_work(&udev->work_tx.work);
 	spin_unlock_irqrestore(&tx->lock, flags);
 }
 
@@ -759,7 +756,7 @@ static int gdm_usb_sdu_send(void *priv_dev, void *data, int len,
 
 	spin_lock_irqsave(&tx->lock, flags);
 	list_add_tail(&t_sdu->list, &tx->sdu_list);
-	queue_work(usb_tx_wq, &udev->work_tx.work);
+	schedule_work(&udev->work_tx.work);
 	spin_unlock_irqrestore(&tx->lock, flags);
 
 	if (no_spc)
@@ -796,7 +793,7 @@ static int gdm_usb_hci_send(void *priv_dev, void *data, int len,
 
 	spin_lock_irqsave(&tx->lock, flags);
 	list_add_tail(&t->list, &tx->hci_list);
-	queue_work(usb_tx_wq, &udev->work_tx.work);
+	schedule_work(&udev->work_tx.work);
 	spin_unlock_irqrestore(&tx->lock, flags);
 
 	return 0;
@@ -944,6 +941,8 @@ static int gdm_usb_suspend(struct usb_interface *intf, pm_message_t pm_msg)
 	}
 	spin_unlock_irqrestore(&rx->submit_lock, flags);
 
+	cancel_work_sync(&udev->work_tx.work);
+
 	return 0;
 }
 
@@ -981,7 +980,7 @@ static int gdm_usb_resume(struct usb_interface *intf)
 
 	tx = &udev->tx;
 	spin_lock_irqsave(&tx->lock, flags);
-	queue_work(usb_tx_wq, &udev->work_tx.work);
+	schedule_work(&udev->work_tx.work);
 	spin_unlock_irqrestore(&tx->lock, flags);
 
 	return 0;
@@ -1005,14 +1004,6 @@ static int __init gdm_usb_lte_init(void)
 		return -1;
 	}
 
-	usb_tx_wq = create_workqueue("usb_tx_wq");
-	if (!usb_tx_wq)
-		return -1;
-
-	usb_rx_wq = create_workqueue("usb_rx_wq");
-	if (!usb_rx_wq)
-		return -1;
-
 	return usb_register(&gdm_usb_lte_driver);
 }
 
@@ -1021,16 +1012,6 @@ static void __exit gdm_usb_lte_exit(void)
 	gdm_lte_event_exit();
 
 	usb_deregister(&gdm_usb_lte_driver);
-
-	if (usb_tx_wq) {
-		flush_workqueue(usb_tx_wq);
-		destroy_workqueue(usb_tx_wq);
-	}
-
-	if (usb_rx_wq) {
-		flush_workqueue(usb_rx_wq);
-		destroy_workqueue(usb_rx_wq);
-	}
 }
 
 module_init(gdm_usb_lte_init);
-- 
1.9.1


