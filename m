X-GM-THRID: 6250100054886973440
X-Received: by 10.182.29.129 with SMTP id k1mr43269799obh.23.1455214818179;
        Thu, 11 Feb 2016 10:20:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.252.103 with SMTP id zr7ls594015obc.19.gmail; Thu, 11 Feb
 2016 10:20:17 -0800 (PST)
X-Received: by 10.182.46.201 with SMTP id x9mr18003359obm.43.1455214817822;
        Thu, 11 Feb 2016 10:20:17 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id 12si972693pfb.1.2016.02.11.10.20.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 10:20:17 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id c10so33719585pfc.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 10:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XBU1iDSWzGTyBghttTnGtg8z9YpKdo2aYAx4jhuJgAA=;
        b=sF6zMb5z9vGLwF5Hu7Tc5rxphBcZd128G5X/kBP4NG+9+lhrbxqJe0ioJGAyeQF8A2
         nxyDNscahbHH+/r01A3aMaQF4cUyVuJJ+B5pHyUekOxvVD4I/+g4Vt31e8Er6Nn8/hrz
         NJybvtkD2exWTUHu9Lngzk5STLP7dAYb/ikfdq16flrbEMFSDlA1MM4HqbYRATiRbALZ
         L8xRGdMfdHCCHWazYef0pcsqE2MCMMVnY1l8pMuETJrwbbH3oNP/f845R8O9d04fyD1W
         QUGkNAn/2vNlE701xrmbisK5m0H1fWup8sjD3ypACZx6nroDNbbGVnZzCPyK/SgCVEOF
         Bmdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=XBU1iDSWzGTyBghttTnGtg8z9YpKdo2aYAx4jhuJgAA=;
        b=i63fwtnzDz/OCkeN+ZJZZbFnwK56tCrnC/8NPQZ6zkPmesSeqh73QVaoizuYcQpB4e
         7R1GsNtaOfGv9mEynKrY22p1cKKw/F5fTqUNgkSJvqOuispkEybsMjdxAY9zrI67+DO1
         8ZCJ1wXNyeLfB3zfQR+ujOptA4atjN9fMyAR4rWoOBcM+Lj4gxWEvSls72EB/RLHAeYx
         7ChKwEavLXa/aIUNBYqVvXQDahUyqlRxZzDPi4D65d3I4NNlg/h4xPl3ultXiyE4PsyF
         Lxe0zOr32OGr5R+gRY2hVDt63yxGPqcN2+9RJMSUjPpdlUND8PJqqQDk6f0Sq7OjnmpS
         tHEg==
X-Gm-Message-State: AG10YOSwVXcywwVwF1CBTfBhqHnouwlXsyaNefNoFM/bu/88bGk7dShE8MNrTtL8hBXtNg==
X-Received: by 10.98.15.145 with SMTP id 17mr61650953pfp.19.1455214817621;
        Thu, 11 Feb 2016 10:20:17 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.149.32])
        by smtp.gmail.com with ESMTPSA id t87sm13878598pfa.14.2016.02.11.10.20.15
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 10:20:16 -0800 (PST)
Date: Thu, 11 Feb 2016 23:50:11 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH] staging: gdm724x: gdm_mux: Remove create_workqueue()
Message-ID: <20160211182011.GA10882@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove deprecated create_workqueue() by using system_wq since we do
not require a dedicated workqueue here.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/gdm724x/gdm_mux.c | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index 445f836..c7c2e66 100644
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
 
+	flush_work(&mux_dev->work_rx.work);
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


