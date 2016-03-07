X-GM-THRID: 6259194073994756096
X-Received: by 10.50.97.105 with SMTP id dz9mr8996640igb.8.1457332185146;
        Sun, 06 Mar 2016 22:29:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.164 with SMTP id x33ls1528116qgx.8.gmail; Sun, 06 Mar
 2016 22:29:44 -0800 (PST)
X-Received: by 10.140.167.7 with SMTP id n7mr15710519qhn.19.1457332184399;
        Sun, 06 Mar 2016 22:29:44 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id ui7si2775643pab.0.2016.03.06.22.29.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 22:29:44 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id x188so50277586pfb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 22:29:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=btz8JR7VM3pzUq9BylTEal/BOTvn9tfX5V+AK2Y6ZuA=;
        b=XCp/TndHQTVrxCoG3QrGYpYTbKc1e2KCQZ8P6c4xF+8AjtUhoD8ypOjP6yGgsgL3tc
         adHm10bIhezLsnKcfDlputlwhxAVJnbz9OiXm0ZG5kAHbEBsZ74TAceC6/m0D9Fh1McR
         m8sgh+GVaFs8HwFmGk/5IRu4z9CkqDHKQny/vEdGxf19myrpBTaP0jz5eimfPZFn8mBy
         rvXV6qwS1RHfdNv0UDWYo55xmp1ZvImOBSmFSBoEYPREGlA8jwHvu8i4omjPmHRB2gzF
         qErkcldA6/syO3L4anXWKy2Fx7qEiSruBTPtLJcdQXMQcl2JKZ3UZLQKCotnNas6HrZK
         khaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=btz8JR7VM3pzUq9BylTEal/BOTvn9tfX5V+AK2Y6ZuA=;
        b=CarkIRD4AdCq6OD6aH//htWBWEpi4UCkVeN3wpnd0sM/zB6nD+KVlvQ7nlT+AtbghH
         af7z1gBU1/iNhH+b7K2ENgH+PnvajAhKPLR+88YqjKF66K6rtO4LWBuajFbY2kJ6zLBf
         c+tsltE5LcOkqNgfmB661mqn6zgsV38zuX9z899HqSj+U01mVGOGYDNkM0qLPaMGEk9C
         eE8rbXaV1HgJpYbNeK4RpVglCyLGeYw4lu1LgOLBJ5NEiCcHanRfACPpo6mc+FTocWj2
         blydgO2f3fhlcrGeqIYXzfUEQsNhlG0bfjkgay0U00Wx6L/z6lReakNTV+6VdNRzedeW
         smFA==
X-Gm-Message-State: AD7BkJIMMDY4anDZ7eAE9lz/URPcrxGk2kOVj+D0KNvYMe05iDZ2QfASSSA3r4muoBQ7cQ==
X-Received: by 10.98.34.28 with SMTP id i28mr30835360pfi.160.1457332184133;
        Sun, 06 Mar 2016 22:29:44 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.50.160.208])
        by smtp.gmail.com with ESMTPSA id x18sm6122504pfi.42.2016.03.06.22.29.42
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 22:29:43 -0800 (PST)
Date: Mon, 7 Mar 2016 11:59:37 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH] staging: gdm724x: gdm_usb: Replace delayed_work with
 work_struct
Message-ID: <20160307062937.GA12815@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace uses of delayed_work with work_struct as the work is not required 
to be timed and is only used to indicate whether a packet has been sent 
in case of do_tx() or received in case of do_rx(). 
Instead of accessing the delayed_work's inner work_struct each time, 
remove use of delayed_work, corresponding delayed_work.work and 
INIT_DELAYED_WORK by replacing with work_struct counteparts.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/gdm724x/gdm_usb.c | 22 +++++++++++-----------
 drivers/staging/gdm724x/gdm_usb.h |  4 ++--
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index 9db9b90..e0c130a 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -354,8 +354,8 @@ static int init_usb(struct lte_udev *udev)
 		list_add(&r->free_list, &rx->free_list);
 		rx->avail_count++;
 	}
-	INIT_DELAYED_WORK(&udev->work_tx, do_tx);
-	INIT_DELAYED_WORK(&udev->work_rx, do_rx);
+	INIT_WORK(&udev->work_tx, do_tx);
+	INIT_WORK(&udev->work_rx, do_rx);
 	return 0;
 fail:
 	release_usb(udev);
@@ -387,7 +387,7 @@ static int set_mac_address(u8 *data, void *arg)
 static void do_rx(struct work_struct *work)
 {
 	struct lte_udev *udev =
-		container_of(work, struct lte_udev, work_rx.work);
+		container_of(work, struct lte_udev, work_rx);
 	struct rx_cxt *rx = &udev->rx;
 	struct usb_rx *r;
 	struct hci_packet *hci;
@@ -473,7 +473,7 @@ static void gdm_usb_rcv_complete(struct urb *urb)
 	if (!urb->status && r->callback) {
 		spin_lock_irqsave(&rx->to_host_lock, flags);
 		list_add_tail(&r->to_host_list, &rx->to_host_list);
-		schedule_work(&udev->work_rx.work);
+		schedule_work(&udev->work_rx);
 		spin_unlock_irqrestore(&rx->to_host_lock, flags);
 	} else {
 		if (urb->status && udev->usb_state == PM_NORMAL)
@@ -565,7 +565,7 @@ static void gdm_usb_send_complete(struct urb *urb)
 
 	spin_lock_irqsave(&tx->lock, flags);
 	udev->send_complete = 1;
-	schedule_work(&udev->work_tx.work);
+	schedule_work(&udev->work_tx);
 	spin_unlock_irqrestore(&tx->lock, flags);
 }
 
@@ -644,7 +644,7 @@ static u32 packet_aggregation(struct lte_udev *udev, u8 *send_buf)
 static void do_tx(struct work_struct *work)
 {
 	struct lte_udev *udev =
-		container_of(work, struct lte_udev, work_tx.work);
+		container_of(work, struct lte_udev, work_tx);
 	struct usb_device *usbdev = udev->usbdev;
 	struct tx_cxt *tx = &udev->tx;
 	struct usb_tx *t = NULL;
@@ -756,7 +756,7 @@ static int gdm_usb_sdu_send(void *priv_dev, void *data, int len,
 
 	spin_lock_irqsave(&tx->lock, flags);
 	list_add_tail(&t_sdu->list, &tx->sdu_list);
-	schedule_work(&udev->work_tx.work);
+	schedule_work(&udev->work_tx);
 	spin_unlock_irqrestore(&tx->lock, flags);
 
 	if (no_spc)
@@ -793,7 +793,7 @@ static int gdm_usb_hci_send(void *priv_dev, void *data, int len,
 
 	spin_lock_irqsave(&tx->lock, flags);
 	list_add_tail(&t->list, &tx->hci_list);
-	schedule_work(&udev->work_tx.work);
+	schedule_work(&udev->work_tx);
 	spin_unlock_irqrestore(&tx->lock, flags);
 
 	return 0;
@@ -941,8 +941,8 @@ static int gdm_usb_suspend(struct usb_interface *intf, pm_message_t pm_msg)
 	}
 	spin_unlock_irqrestore(&rx->submit_lock, flags);
 
-	cancel_work_sync(&udev->work_tx.work);
-	cancel_work_sync(&udev->work_rx.work);
+	cancel_work_sync(&udev->work_tx);
+	cancel_work_sync(&udev->work_rx);
 
 	return 0;
 }
@@ -981,7 +981,7 @@ static int gdm_usb_resume(struct usb_interface *intf)
 
 	tx = &udev->tx;
 	spin_lock_irqsave(&tx->lock, flags);
-	schedule_work(&udev->work_tx.work);
+	schedule_work(&udev->work_tx);
 	spin_unlock_irqrestore(&tx->lock, flags);
 
 	return 0;
diff --git a/drivers/staging/gdm724x/gdm_usb.h b/drivers/staging/gdm724x/gdm_usb.h
index e6486e7..18764fb 100644
--- a/drivers/staging/gdm724x/gdm_usb.h
+++ b/drivers/staging/gdm724x/gdm_usb.h
@@ -96,8 +96,8 @@ struct lte_udev {
 	struct gdm_endian gdm_ed;
 	struct tx_cxt tx;
 	struct rx_cxt rx;
-	struct delayed_work work_tx;
-	struct delayed_work work_rx;
+	struct work_struct work_tx;
+	struct work_struct work_rx;
 	u8 send_complete;
 	u8 tx_stop;
 	struct usb_interface *intf;
-- 
1.9.1


