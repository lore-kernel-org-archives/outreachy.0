X-GM-THRID: 6250100054886973440
X-Received: by 10.140.154.143 with SMTP id a137mr5044330qha.11.1455339667329;
        Fri, 12 Feb 2016 21:01:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.66 with SMTP id b60ls2243416qga.56.gmail; Fri, 12 Feb
 2016 21:01:06 -0800 (PST)
X-Received: by 10.129.92.65 with SMTP id q62mr4953369ywb.19.1455339666560;
        Fri, 12 Feb 2016 21:01:06 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ui7si2175488pab.0.2016.02.12.21.01.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 21:01:06 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 71so4829926pfv.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 21:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=quozG8lIy8Uw3qS7QblOi5StFJD/NssrScm+ftBlMNs=;
        b=I3HSmEfdXSD9iCsIJpDAvlLb8Bh19s+M6EFDJpp5so//hH8gq07VHJGpmqXnfHI0Vp
         ANpjl5WO6bp/kYHDEh8napPLTx0smVroynUHJStY3e8cWv8HRoI9EJKAG8s1CU7Roqvt
         IqYoEBsSPLrwuSyaAPAy/sVIvRLbAn2NgF2fN68xrIVGIqOkHDvht9FbjgF0bp6pfrHv
         FLXqR7MiHVdRBiF0qMqGql0CguHf8GC63Xz2E8ucEckgNuh5LSEeU1CYLNOAxM+O/u6B
         4W1Z8kQM+CCfo4YXr6pqXnHbimo4A+bbMk0f/1IS91hZyh8a1RFP41H8qmbcVlCwxltO
         LCwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=quozG8lIy8Uw3qS7QblOi5StFJD/NssrScm+ftBlMNs=;
        b=h9k5fnksIYz54dtYflXWy5RSKWbNzP8EP1dm6aGjLO8MJTCiK7z6mkHSPYk6e79zB2
         Bt9bcln65Ejx6fumltEy+fxRPMdLpeh1YftiZ2t5mkS7xkRA39R7xcJqHejfSrfR6DAN
         Mehq2Z2RgR/Ph2bCSV6geTJW9SELi1lG4rsX0JO/ZooK9jt58Z5dxw7ubslQUMAb4dPB
         VbmlqStb6f1yZO7KLsomIDGPR1RR4UjYahusob7ciqe4XiPRXQBkrhU1KbXw5OLeATJv
         aH8xMx0PSYzQEf4BaijXC6zzw3CrtsOViJZAk2JwxmEi60+StvdhRnjw5Li4+B3FmGMS
         +WqA==
X-Gm-Message-State: AG10YOTtWtl8vqSQ+YuSDA2C9IHsv0mCOeepMC1o1+XbhWGl1VUkLaxV+YXeSfHJHLpFtg==
X-Received: by 10.98.19.205 with SMTP id 74mr7477544pft.31.1455339666343;
        Fri, 12 Feb 2016 21:01:06 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.149.32])
        by smtp.gmail.com with ESMTPSA id wt2sm22953519pac.48.2016.02.12.21.01.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 21:01:05 -0800 (PST)
Date: Sat, 13 Feb 2016 10:31:02 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: gdm724x: gdm_mux: Remove create_workqueue()
Message-ID: <20160213050102.GA10406@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

With concurrency managed workqueues, use of dedicated workqueues 
can be replaced by using system_wq. Drop mux_rx_wq by using system_wq.

Since there is only one work item per mux_dev and different mux_devs
do not need to be ordered, increase of concurrency level by switching
to system_wq should not break anything.

cancel_work_sync() is used to ensure that work is not pending or
executing on any CPU.

Lastly, since all devices are suspended, which shutdowns the work item
before the driver can be unregistered, it is guaranteed that no work
item is pending or executing by the time exit path runs.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Use cancel_work_sync() instead of flush_work()
        -Commit message modified

 drivers/staging/gdm724x/gdm_mux.c | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index 445f836..937010b 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -26,8 +26,6 @@
 
 #include "gdm_mux.h"
 
-static struct workqueue_struct *mux_rx_wq;
-
 static u16 packet_type[TTY_MAX_COUNT] = {0xF011, 0xF010};
 
 #define USB_DEVICE_CDC_DATA(vid, pid) \
@@ -275,7 +273,7 @@ static void gdm_mux_rcv_complete(struct urb *urb)
 		r->len = r->urb->actual_length;
 		spin_lock_irqsave(&rx->to_host_lock, flags);
 		list_add_tail(&r->to_host_list, &rx->to_host_list);
-		queue_work(mux_rx_wq, &mux_dev->work_rx.work);
+		schedule_work(&mux_dev->work_rx.work);
 		spin_unlock_irqrestore(&rx->to_host_lock, flags);
 	}
 }
@@ -602,6 +600,8 @@ static int gdm_mux_suspend(struct usb_interface *intf, pm_message_t pm_msg)
 	mux_dev = tty_dev->priv_dev;
 	rx = &mux_dev->rx;
 
+	cancel_work_sync(&mux_dev->work_rx.work);
+
 	if (mux_dev->usb_state != PM_NORMAL) {
 		dev_err(intf->usb_dev, "usb suspend - invalid state\n");
 		return -1;
@@ -656,13 +656,6 @@ static struct usb_driver gdm_mux_driver = {
 
 static int __init gdm_usb_mux_init(void)
 {
-
-	mux_rx_wq = create_workqueue("mux_rx_wq");
-	if (!mux_rx_wq) {
-		pr_err("work queue create fail\n");
-		return -1;
-	}
-
 	register_lte_tty_driver();
 
 	return usb_register(&gdm_mux_driver);
@@ -672,11 +665,6 @@ static void __exit gdm_usb_mux_exit(void)
 {
 	unregister_lte_tty_driver();
 
-	if (mux_rx_wq) {
-		flush_workqueue(mux_rx_wq);
-		destroy_workqueue(mux_rx_wq);
-	}
-
 	usb_deregister(&gdm_mux_driver);
 }
 
-- 
1.9.1


