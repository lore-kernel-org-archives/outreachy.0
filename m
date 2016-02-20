X-GM-THRID: 6253307267835232256
X-Received: by 10.50.112.232 with SMTP id it8mr1334447igb.9.1455961556821;
        Sat, 20 Feb 2016 01:45:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.52 with SMTP id 49ls546064qgo.79.gmail; Sat, 20 Feb
 2016 01:45:55 -0800 (PST)
X-Received: by 10.140.136.135 with SMTP id 129mr16770785qhi.10.1455961555159;
        Sat, 20 Feb 2016 01:45:55 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id 79si2122159pft.0.2016.02.20.01.45.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 01:45:55 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id fl4so63891510pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 01:45:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=lwDImhXXvXT9U+KXZx4BBvX1Hkplb5KBVqS1utp3bnk=;
        b=IWVNcsN9YEYAkMSrnhkkOSnuRqBOhBR12a0FaW9sHbSJNZvIN9dQsY65/dNfl8BHb9
         zIPoCdUDGNCtPv3dp3XWiK4bht0YQ1YCLf1Lr3M5RkZ7+twoviFv4YLlzj24Tvl4rhex
         SaY99h5BMPOnkMx2n0TMUb5Ln52Hmv8FZAPcVsKvYdNLufEimngwNGStcZJUeDK31Dxa
         dMVvmnocW/TnMAn7FgyeUVagbB/vomuEcCfSH16igsLLPxqkYV9XYYglfERNzBCGZCzX
         uQUbhiDpYwiU+DjNkI/2U4xecLOaR46AFeGb/dy+/MnAX6XBPgEPOkfAcBP2tIbeuykA
         Ofcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=lwDImhXXvXT9U+KXZx4BBvX1Hkplb5KBVqS1utp3bnk=;
        b=bfjk4palr7w6LUdUTbcIKH2QzHPGbQsVT9LS//2XrNxJV7dq3KikKBd3bW03XicL2c
         HcNbd7IT/bFP+257AwTv70seiTeuhbRnFa/vvlPPDNiINEp2i8wT7HrsaKkkN3Xyp7ei
         ktEKW+XauIQpy4yf9GazMLm7JMoAD9k70UU7l6U6CkII9AlM/bGsjVZmebB36ggbfoh3
         qxufJn3KcCXPeze69XgDjmMQmmsLhLqGT26ZAFDmfSU+2WAqyjuwlp6TFf6yVY9uQnoL
         k2+4+WNFtOuv7sgJ3msnX9GQEAzJNfonIxmX++kwqKMDs54F726iu7IGdJUJXpPmG+0k
         /OCQ==
X-Gm-Message-State: AG10YOTCPFE9dRxnW/kiWn3AcxiZnFx/F+8uI2Z2U0cl8c1l5QNYUo3//zEa2geaRBZ3/w==
X-Received: by 10.66.244.194 with SMTP id xi2mr24161252pac.139.1455961554933;
        Sat, 20 Feb 2016 01:45:54 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id w89sm23295462pfi.13.2016.02.20.01.45.50
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 01:45:54 -0800 (PST)
Date: Sat, 20 Feb 2016 15:15:38 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH] staging: most: hdm-usb: Remove create_workqueue()
Message-ID: <20160220094538.GA15446@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

With concurrency managed workqueues, use of dedicated workqueues can
be replaced by using system_wq. Drop schedule_usb_work by using
system_wq.

Since there is only one work item per buf_anchor and most_dev and they
do not need to be ordered, increase of concurrency by switching to
system_wq should not break anything.

Both work items are sync canceled before the driver can be
unregistered, to ensure no work item is pending or executing on any 
CPU by the time exit path is in flight.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/most/hdm-usb/hdm_usb.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
index 41690f8..3ee9e6f 100644
--- a/drivers/staging/most/hdm-usb/hdm_usb.c
+++ b/drivers/staging/most/hdm-usb/hdm_usb.c
@@ -137,7 +137,6 @@ struct most_dev {
 #define to_mdev(d) container_of(d, struct most_dev, iface)
 #define to_mdev_from_work(w) container_of(w, struct most_dev, poll_work_obj)
 
-static struct workqueue_struct *schedule_usb_work;
 static void wq_clear_halt(struct work_struct *wq_obj);
 static void wq_netinfo(struct work_struct *wq_obj);
 
@@ -226,6 +225,8 @@ static void free_anchored_buffers(struct most_dev *mdev, unsigned int channel)
 		kfree(anchor);
 	}
 	spin_unlock_irqrestore(&mdev->anchor_list_lock[channel], flags);
+
+	cancel_work_sync(&anchor->clear_work_obj);
 }
 
 /**
@@ -411,7 +412,7 @@ static void hdm_write_completion(struct urb *urb)
 			mbo->status = MBO_E_INVAL;
 			usb_unlink_urb(urb);
 			INIT_WORK(&anchor->clear_work_obj, wq_clear_halt);
-			queue_work(schedule_usb_work, &anchor->clear_work_obj);
+			schedule_work(&anchor->clear_work_obj);
 			return;
 		case -ENODEV:
 		case -EPROTO:
@@ -575,7 +576,7 @@ static void hdm_read_completion(struct urb *urb)
 			mbo->status = MBO_E_INVAL;
 			usb_unlink_urb(urb);
 			INIT_WORK(&anchor->clear_work_obj, wq_clear_halt);
-			queue_work(schedule_usb_work, &anchor->clear_work_obj);
+			schedule_work(&anchor->clear_work_obj);
 			return;
 		case -ENODEV:
 		case -EPROTO:
@@ -872,7 +873,7 @@ static void link_stat_timer_handler(unsigned long data)
 {
 	struct most_dev *mdev = (struct most_dev *)data;
 
-	queue_work(schedule_usb_work, &mdev->poll_work_obj);
+	schedule_work(&mdev->poll_work_obj);
 	mdev->link_stat_timer.expires = jiffies + (2 * HZ);
 	add_timer(&mdev->link_stat_timer);
 }
@@ -1415,19 +1416,13 @@ static int __init hdm_usb_init(void)
 		pr_err("could not register hdm_usb driver\n");
 		return -EIO;
 	}
-	schedule_usb_work = create_workqueue("hdmu_work");
-	if (!schedule_usb_work) {
-		pr_err("could not create workqueue\n");
-		usb_deregister(&hdm_usb);
-		return -ENOMEM;
-	}
+
 	return 0;
 }
 
 static void __exit hdm_usb_exit(void)
 {
 	pr_info("hdm_usb_exit()\n");
-	destroy_workqueue(schedule_usb_work);
 	usb_deregister(&hdm_usb);
 }
 
-- 
1.9.1


