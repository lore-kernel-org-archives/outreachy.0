X-GM-THRID: 6212181078592978944
X-Received: by 10.28.19.148 with SMTP id 142mr1374938wmt.4.1446386124366;
        Sun, 01 Nov 2015 05:55:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.141.144 with SMTP id p138ls37989lfd.44.gmail; Sun, 01 Nov
 2015 05:55:23 -0800 (PST)
X-Received: by 10.112.63.165 with SMTP id h5mr3516740lbs.18.1446386123781;
        Sun, 01 Nov 2015 05:55:23 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id 13si354079wml.2.2015.11.01.05.55.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 05:55:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id ll6so35565391wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 05:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=8qiZcSVeWYW4NYqjy7KcqGK043gh0hqt6pteNESOhQY=;
        b=g7KBKvBleqtv+SLfNrAuu+Ue1T8qp+WYE+kiwtuJ8Rt3J5ds8K/7MDi3pXqJOj9O5F
         UHcWSI2x3e4PqoJjgOkDGKuo4Hx8/O/PrALjaRngVLXoLnMHN5eoG0pmrszMXbZLi2+a
         rsCU9tcNABwPFc8mwgLkogO+BEQ/A7cw18TRCRwnfyA/nJIdG5A3Lp8z3jB2c7qQ8HYG
         sRijl57tU8W3+w8ClzHKfZA5ankzpLsOvV8mOjuGgxMbC5su8KE3Vt6tKbNsfau7EkOt
         Etnfr9xBq7pmcZQI6wsamk8MmIT4LwQCaU5sVMWqr7GG2rEIzQjKDhbd7q246p1fD6Nb
         Fy9g==
X-Received: by 10.194.104.132 with SMTP id ge4mr17758262wjb.127.1446386123663;
        Sun, 01 Nov 2015 05:55:23 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id u126sm12968830wmd.3.2015.11.01.05.55.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 05:55:23 -0800 (PST)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arve@android.com,
	riandrews@android.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 3/5] staging: android: properly align function arguments
Date: Sun,  1 Nov 2015 15:55:09 +0200
Message-Id: <1aa855620c3b81b4883c6a3a751186f53dd9de6d.1446385932.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446385932.git.ciorneiioana@gmail.com>
References: <cover.1446385932.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446385932.git.ciorneiioana@gmail.com>
References: <cover.1446385932.git.ciorneiioana@gmail.com>

FIx alingment issues by properly indenting function arguments
int accordance with the kernel coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/android/lowmemorykiller.c |  4 ++--
 drivers/staging/android/sync.c            |  4 ++--
 drivers/staging/android/timed_gpio.c      | 10 +++++-----
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/android/lowmemorykiller.c b/drivers/staging/android/lowmemorykiller.c
index de65db7..8b5a4a8 100644
--- a/drivers/staging/android/lowmemorykiller.c
+++ b/drivers/staging/android/lowmemorykiller.c
@@ -105,8 +105,8 @@ static unsigned long lowmem_scan(struct shrinker *s, struct shrink_control *sc)
 	}
 
 	lowmem_print(3, "lowmem_scan %lu, %x, ofree %d %d, ma %hd\n",
-			sc->nr_to_scan, sc->gfp_mask, other_free,
-			other_file, min_score_adj);
+		     sc->nr_to_scan, sc->gfp_mask, other_free,
+		     other_file, min_score_adj);
 
 	if (min_score_adj == OOM_SCORE_ADJ_MAX + 1) {
 		lowmem_print(5, "lowmem_scan %lu, %x, return 0\n",
diff --git a/drivers/staging/android/sync.c b/drivers/staging/android/sync.c
index 5413f28..e0c1acb 100644
--- a/drivers/staging/android/sync.c
+++ b/drivers/staging/android/sync.c
@@ -313,7 +313,7 @@ struct sync_fence *sync_fence_merge(const char *name,
 EXPORT_SYMBOL(sync_fence_merge);
 
 int sync_fence_wake_up_wq(wait_queue_t *curr, unsigned mode,
-				 int wake_flags, void *key)
+			  int wake_flags, void *key)
 {
 	struct sync_fence_waiter *wait;
 
@@ -353,7 +353,7 @@ int sync_fence_wait_async(struct sync_fence *fence,
 EXPORT_SYMBOL(sync_fence_wait_async);
 
 int sync_fence_cancel_async(struct sync_fence *fence,
-			     struct sync_fence_waiter *waiter)
+			    struct sync_fence_waiter *waiter)
 {
 	unsigned long flags;
 	int ret = 0;
diff --git a/drivers/staging/android/timed_gpio.c b/drivers/staging/android/timed_gpio.c
index ce11726..5246f42 100644
--- a/drivers/staging/android/timed_gpio.c
+++ b/drivers/staging/android/timed_gpio.c
@@ -76,8 +76,8 @@ static void gpio_enable(struct timed_output_dev *dev, int value)
 			value = data->max_timeout;
 
 		hrtimer_start(&data->timer,
-			ktime_set(value / 1000, (value % 1000) * 1000000),
-			HRTIMER_MODE_REL);
+			      ktime_set(value / 1000, (value % 1000) * 1000000),
+			      HRTIMER_MODE_REL);
 	}
 
 	spin_unlock_irqrestore(&data->lock, flags);
@@ -94,8 +94,8 @@ static int timed_gpio_probe(struct platform_device *pdev)
 		return -EBUSY;
 
 	gpio_data = devm_kzalloc(&pdev->dev,
-			sizeof(struct timed_gpio_data) * pdata->num_gpios,
-			GFP_KERNEL);
+				 sizeof(*gpio_data) * pdata->num_gpios,
+				 GFP_KERNEL);
 	if (!gpio_data)
 		return -ENOMEM;
 
@@ -104,7 +104,7 @@ static int timed_gpio_probe(struct platform_device *pdev)
 		gpio_dat = &gpio_data[i];
 
 		hrtimer_init(&gpio_dat->timer, CLOCK_MONOTONIC,
-				HRTIMER_MODE_REL);
+			     HRTIMER_MODE_REL);
 		gpio_dat->timer.function = gpio_timer_func;
 		spin_lock_init(&gpio_dat->lock);
 
-- 
2.1.4


