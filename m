X-GM-THRID: 6253249019883028480
X-Received: by 10.66.62.162 with SMTP id z2mr16785427par.11.1455947994089;
        Fri, 19 Feb 2016 21:59:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.59.211 with SMTP id b19ls125326igr.10.gmail; Fri, 19 Feb
 2016 21:59:53 -0800 (PST)
X-Received: by 10.107.185.4 with SMTP id j4mr18054786iof.21.1455947993226;
        Fri, 19 Feb 2016 21:59:53 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id ui7si2085933pab.0.2016.02.19.21.59.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 21:59:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id e127so62835852pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 21:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2EcNd0MS7hUUcihpTPGL8WH2XrGRWQi7d/adDDN3unY=;
        b=E0YkYJ+tgrwl3YbbQXJBY6zDu/UxDhH59k2drGXxUfqbSSJp7YmqiK0oZRH4GLtJua
         D56Eka0Fn7cQQlXiGKCTi+yQkoy6rqQ/YdgYH1Hixw+H5Pv95BOHvaEw210y2CpOiZBG
         luBeIYHLNkRgyv5PN45aIUY0CaLZilR1obVS3I5VLcGYaZ92C/BjIgbaxST81StLzj2+
         Vxyy6b0uZ4hPkx7Xz37Ouw/H1xG3isYRK/ikg3kwqOiHsF9AhENCsNdXx4usEpLKmLg+
         Uz9/+afO+9gaEHaxfou2Mg0pxyNwwqet+u6fKZ6mbuQH8QyHs7v8BF7BvZhVDFRv69e4
         Eq4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=2EcNd0MS7hUUcihpTPGL8WH2XrGRWQi7d/adDDN3unY=;
        b=L1eGD7TUo5ntVPCKEKFaEwyDbnzq7Rsgu0fu7IpX5CNSuM+q72UX4elggneM97usAD
         lZBlND5Fl9Xt5ry/K4B9ZBkN3uHXbSaHL5zp+OlSX66yv8Z0Q8m4YqTVvgNYzSVdL1O+
         PKgToke7ILIiD/+I73mKM2vJkv2Akq7sI545BBJL8spbRLf4rpChjEGVzHVqJP2AWpNE
         SQicXl+wR2z1PYfodOeZ8smEQmTdbeGKMlCkiAZAI4zfFSHcpdT0+FkwMpO6pDoqZYl6
         QfaWaQ+RASVzkvuMD7PfqreOe+hGGpeb3BNdWB+Nnpmt3wOQWlYj2icAcFVOtmeMvJFd
         2PHg==
X-Gm-Message-State: AG10YORinudIi6Jwb8F5Z7whtefbtHT4lSXS/hQI9xtHdIq9tcnC9/BFzWSwyZaJMlVRGA==
X-Received: by 10.98.93.2 with SMTP id r2mr23626380pfb.64.1455947993081;
        Fri, 19 Feb 2016 21:59:53 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ud8sm21836762pac.11.2016.02.19.21.59.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 21:59:52 -0800 (PST)
Date: Sat, 20 Feb 2016 11:30:22 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tejun Heo <tj@kernel.org>
Subject: [PATCH v2] staging: octeon: Use system_wq instead of dedicated
 workqueue
Message-ID: <20160220060022.GA28788@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

With cmwq, there's no need for octeon/ethernet driver to use a separate
workqueue. Removed the dedicated workqueue from ethernet and
used system_wq instead.

Here, creating a whole set of worker threads in order to run a function is an
overkill. The workqueue in octeon/ethernet is a singlethread_workqueue and is
not cpu-intensive or high-priority. Hence system_wq is preferred.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 21 ++++-----------------
 1 file changed, 4 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 8d239e2..c193f88 100644
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
@@ -677,11 +671,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}

-	cvm_oct_poll_queue = create_singlethread_workqueue("octeon-ethernet");
-	if (!cvm_oct_poll_queue) {
-		pr_err("octeon-ethernet: Cannot create workqueue");
-		return -ENOMEM;
-	}

 	cvm_oct_configure_common_hw();

@@ -840,8 +829,7 @@ static int cvm_oct_probe(struct platform_device *pdev)
 				fau -=
 				    cvmx_pko_get_num_queues(priv->port) *
 				    sizeof(u32);
-				queue_delayed_work(cvm_oct_poll_queue,
-						&priv->port_periodic_work, HZ);
+				schedule_delayed_work(&priv->port_periodic_work, HZ);
 			}
 		}
 	}
@@ -854,7 +842,7 @@ static int cvm_oct_probe(struct platform_device *pdev)
 	 */
 	cvm_oct_tx_poll_interval = 150 * (octeon_get_clock_rate() / 1000000);

-	queue_delayed_work(cvm_oct_poll_queue, &cvm_oct_rx_refill_work, HZ);
+	schedule_delayed_work(&cvm_oct_rx_refill_work, HZ);

 	return 0;
 }
@@ -897,7 +885,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
 		}
 	}

-	destroy_workqueue(cvm_oct_poll_queue);

 	cvmx_pko_shutdown();

--
2.1.4


