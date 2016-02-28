X-GM-THRID: 6255063011291037696
X-Received: by 10.98.67.142 with SMTP id l14mr6226043pfi.13.1456669487894;
        Sun, 28 Feb 2016 06:24:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.121.161 with SMTP id ll1ls888014obb.28.gmail; Sun, 28 Feb
 2016 06:24:46 -0800 (PST)
X-Received: by 10.182.24.41 with SMTP id r9mr9134918obf.25.1456669486323;
        Sun, 28 Feb 2016 06:24:46 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id ui7si3098950pab.0.2016.02.28.06.24.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 06:24:46 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id w128so31560767pfb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 06:24:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=17knD0J4Tqylb+jYLq2juf245BEDFSWiGzJm5hrhWus=;
        b=GII5qnYhlnT4PqQSqkza0GepTjLcjAlRtI/07MhsiHI9Kyn1pbP5qKuQOBzGGkHGdu
         Z1C6Hms2QRpT2PpBJhtLOKwb8A3TsZ1ZtTBcO6iHBaF3yZrw9ww+Dtab7YgerdWAornx
         r4o5Up8hE99LIGO4AhyceWgENqbGolVOOWhY3ow9PgX+ZwtvsoyYO8LnzIvefXLpJcs/
         DeTmdy9aOiOOsh5QyLSilEN2xmSwkxEotDn09KxnTBER27bPQSv1t/L1Rc6pcQN8U+wa
         i3U0pSAewwrCziIMSr06yw0u2In92mcdp2be9WFfZgHnyKDUdsH4hpLpI8Q4a4aSFTDS
         wMMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=17knD0J4Tqylb+jYLq2juf245BEDFSWiGzJm5hrhWus=;
        b=AWdmYx9ddTXbAibPoaalsSdfDxa6lrHsBmUOslgnb4FDtNvqo3mL6YzQjnDUaiG7ZD
         0Ypy2KhZsxZ1Zm0MlOAyuGJlM0KHZY6t8hSbi8IaJWTYo7wH2snC5jHnj8LZGq2WinDv
         0m3SVPVnxM/43u/I76iEDAHnovRuXoAzRhlqxrdYXHzqslGc416kJfj4hBe3B2/eVkOM
         xwtVHlbvStNRTXhdoSdaQvqNe+U3QbbUgagwf2yiO4EZaOyfqhILBo3APgux/+tpj9OC
         6Z+mZ0Ko/Hx/cyP0OfvlOlf+5JFxCvzBzGZ8v5zVYGiYP7KgGXtsf9m4D/rBBGp006Ip
         azZA==
X-Gm-Message-State: AD7BkJKqsWkY6Ga8e8VJiW1xLqIsuXGZTsQrav9IbEz3W9IWmtOEN6MyWs69GvrjOdBJlg==
X-Received: by 10.98.33.211 with SMTP id o80mr13868065pfj.158.1456669486064;
        Sun, 28 Feb 2016 06:24:46 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id o66sm9808833pfi.14.2016.02.28.06.24.44
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 06:24:45 -0800 (PST)
Date: Sun, 28 Feb 2016 19:54:41 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: wonkang@gctsemi.com, gregkh@linuxfoundation.org, khoroshilov@ispras.ru,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Cc: tj@kernel.org, outreachy-kernel@googlegroups.com
Subject: [RFC] staging: gdm724x: gdm_usb: Remove create_workqueue()
Message-ID: <20160228142441.GA29223@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

With concurrency managed workqueues, use of dedicated workqueues
can be replaced by using system_wq. Drop usb_tx_wq and usb_rx_wq 
by using system_wq.

Since there are multiple work items per udev but different udevs
do not need to be ordered, increase of concurrency level by 
switching to system_wq should not break anything.

cancel_work_sync() is used to ensure that work is not pending or
executing on any CPU.

Lastly, since all devices are suspended, which shutdowns the work
items before the driver can be unregistered, it is guaranteed 
that no work item is pending or executing by the time exit path 
runs.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Acked-by: Tejun Heo <tj@kernel.org>
---
Only compile tested.

 drivers/staging/gdm724x/gdm_usb.c | 34 ++++++++--------------------------
 1 file changed, 8 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index 92ea1a1..9db9b90 100644
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
@@ -944,6 +941,9 @@ static int gdm_usb_suspend(struct usb_interface *intf, pm_message_t pm_msg)
 	}
 	spin_unlock_irqrestore(&rx->submit_lock, flags);
 
+	cancel_work_sync(&udev->work_tx.work);
+	cancel_work_sync(&udev->work_rx.work);
+
 	return 0;
 }
 
@@ -981,7 +981,7 @@ static int gdm_usb_resume(struct usb_interface *intf)
 
 	tx = &udev->tx;
 	spin_lock_irqsave(&tx->lock, flags);
-	queue_work(usb_tx_wq, &udev->work_tx.work);
+	schedule_work(&udev->work_tx.work);
 	spin_unlock_irqrestore(&tx->lock, flags);
 
 	return 0;
@@ -1005,14 +1005,6 @@ static int __init gdm_usb_lte_init(void)
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
 
@@ -1021,16 +1013,6 @@ static void __exit gdm_usb_lte_exit(void)
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


