X-GM-THRID: 6255520875579179008
X-Received: by 10.66.221.100 with SMTP id qd4mr279850pac.0.1456476951755;
        Fri, 26 Feb 2016 00:55:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.203 with SMTP id b69ls1015702qge.5.gmail; Fri, 26 Feb
 2016 00:55:51 -0800 (PST)
X-Received: by 10.140.253.198 with SMTP id y189mr258797qhc.9.1456476951192;
        Fri, 26 Feb 2016 00:55:51 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id yd9si1757459pab.1.2016.02.26.00.55.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 00:55:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q63so1041156pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 00:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SOQBUtKC3isKUy27kYS88hMU/cdrkKMO6VwrLJWf81k=;
        b=Kcvbf0Kr5ThGvG+gVpR47LyRdNN5C6hm+nMOKwrALNqizXYdTrOhCgKm+wDxahgztz
         u9xQCc4o6Ba2kGa3DxoHpPUTdCC/+prjiEehWPjRSbh9TOD6MQphxZOjwyX2F/qlTMrg
         Nd47J/n5blDs3n4NXRXWA13EgEPACjHryhSawu0I44j+aH+R0x1An/vdquhT+rd3Xpep
         tOTkw2ZmGNHvzXJfJxXBEc5ku4tBrQSnqAz7ndgoxk1vond/YA7CCntOx9P577M27XTe
         7N3fiTnQghdm/Q3anU/PSc7rNgYhnp5NJsUHFnFEBq809aqyrE2v7TzR5MQ4+jXGJBKT
         NH9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SOQBUtKC3isKUy27kYS88hMU/cdrkKMO6VwrLJWf81k=;
        b=MYKgDCMfA6A8WKzUKmYPgUG7PLSWXhIqF9PsQWNz516yaQmMujzoN6hp+gFQEeo9/3
         dZzRdlVKZfCRx4QJuGTuAsNxtfuVWd4lPPybu4yfpUw9Vq5zMcKIecQD0iKW1B9X0nPY
         CQOK0MIZvBIVyz7zKVr5Hk4WIzwBJ2oOCq40IPO10csPbk+jXRIw5eRnLVU3qUdlidvz
         X+tb9hIJ/dcRPyt0kxBu17PGxKHtRZBrq5QCE0X5IomGFJO+KDE4xbqj1tQECXsj9SZC
         CmIl4lLTR3/IXHcKX1hUNaa1FEktfUrgHvR7bHxoDJgYXJJ0zV9UmESNNzH05MhxOAVo
         vsHw==
X-Gm-Message-State: AD7BkJIQ383ke88j8xcUL1sJ7mC8Tb3oBZ5ptzY07dxtPDGvsxjfuxNtnfEegSQzislnVw==
X-Received: by 10.98.43.194 with SMTP id r185mr543517pfr.24.1456476950992;
        Fri, 26 Feb 2016 00:55:50 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 195sm17606653pfa.5.2016.02.26.00.55.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 00:55:50 -0800 (PST)
Date: Fri, 26 Feb 2016 14:26:27 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH v3] staging: octeon: Convert create_singlethread_workqueue()
Message-ID: <20160226085627.GA8858@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

With conccurency managed workqueues, use of dedicated workqueues can
be replaced by system_wq. Drop cvm_oct_poll_queue by using system_wq.

There are multiple work items per cvm_oct_poll_queue (viz.
cvm_oct_rx_refill_work, port_periodic_work) and different
cvm_oct_poll_queues need not be be ordered. Hence, concurrency
can be increased by switching to system_wq.

All work items are sync canceled in cvm_oct_remove() so it
is guaranteed that no work is in flight by the time exit path runs.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v3:
	- Made the commit message more detailed
	- Removed extern declaration of cvm_oct_poll_queue from
	  octeon-ethernet.h

 drivers/staging/octeon/ethernet.c        | 21 ++++-----------------
 drivers/staging/octeon/octeon-ethernet.h |  1 -
 2 files changed, 4 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 00adc52..c4d3f76 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -86,10 +86,6 @@ int rx_napi_weight = 32;
 module_param(rx_napi_weight, int, 0444);
 MODULE_PARM_DESC(rx_napi_weight, "The NAPI WEIGHT parameter.");

-/*
- * cvm_oct_poll_queue - Workqueue for polling operations.
- */
-struct workqueue_struct *cvm_oct_poll_queue;

 /*
  * cvm_oct_poll_queue_stopping - flag to indicate polling should stop.
@@ -121,8 +117,7 @@ static void cvm_oct_rx_refill_worker(struct work_struct *work)
 	cvm_oct_rx_refill_pool(num_packet_buffers / 2);

 	if (!atomic_read(&cvm_oct_poll_queue_stopping))
-		queue_delayed_work(cvm_oct_poll_queue,
-				   &cvm_oct_rx_refill_work, HZ);
+		schedule_delayed_work(&cvm_oct_rx_refill_work, HZ);
 }

 static void cvm_oct_periodic_worker(struct work_struct *work)
@@ -138,8 +133,7 @@ static void cvm_oct_periodic_worker(struct work_struct *work)
 						cvm_oct_device[priv->port]);

 	if (!atomic_read(&cvm_oct_poll_queue_stopping))
-		queue_delayed_work(cvm_oct_poll_queue,
-						&priv->port_periodic_work, HZ);
+		schedule_delayed_work(&priv->port_periodic_work, HZ);
 }

 static void cvm_oct_configure_common_hw(void)
@@ -666,11 +660,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}

-	cvm_oct_poll_queue = create_singlethread_workqueue("octeon-ethernet");
-	if (!cvm_oct_poll_queue) {
-		pr_err("octeon-ethernet: Cannot create workqueue");
-		return -ENOMEM;
-	}

 	cvm_oct_configure_common_hw();

@@ -828,8 +817,7 @@ static int cvm_oct_probe(struct platform_device *pdev)
 				fau -=
 				    cvmx_pko_get_num_queues(priv->port) *
 				    sizeof(u32);
-				queue_delayed_work(cvm_oct_poll_queue,
-						&priv->port_periodic_work, HZ);
+				schedule_delayed_work(&priv->port_periodic_work, HZ);
 			}
 		}
 	}
@@ -842,7 +830,7 @@ static int cvm_oct_probe(struct platform_device *pdev)
 	 */
 	cvm_oct_tx_poll_interval = 150 * (octeon_get_clock_rate() / 1000000);

-	queue_delayed_work(cvm_oct_poll_queue, &cvm_oct_rx_refill_work, HZ);
+	schedule_delayed_work(&cvm_oct_rx_refill_work, HZ);

 	return 0;
 }
@@ -885,7 +873,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
 		}
 	}

-	destroy_workqueue(cvm_oct_poll_queue);

 	cvmx_pko_shutdown();

diff --git a/drivers/staging/octeon/octeon-ethernet.h b/drivers/staging/octeon/octeon-ethernet.h
index 5b4fdd2..6275c15 100644
--- a/drivers/staging/octeon/octeon-ethernet.h
+++ b/drivers/staging/octeon/octeon-ethernet.h
@@ -76,7 +76,6 @@ extern int pow_send_group;
 extern int pow_receive_group;
 extern char pow_send_list[];
 extern struct net_device *cvm_oct_device[];
-extern struct workqueue_struct *cvm_oct_poll_queue;
 extern atomic_t cvm_oct_poll_queue_stopping;
 extern u64 cvm_oct_tx_poll_interval;

--
2.1.4


