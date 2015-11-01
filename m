X-GM-THRID: 6212181078592978944
X-Received: by 10.112.162.169 with SMTP id yb9mr3422002lbb.15.1446388715843;
        Sun, 01 Nov 2015 06:38:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.92.73 with SMTP id q70ls445790wmb.31.canary; Sun, 01 Nov
 2015 06:38:35 -0800 (PST)
X-Received: by 10.28.19.148 with SMTP id 142mr1396387wmt.4.1446388715494;
        Sun, 01 Nov 2015 06:38:35 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id t72si361292wme.0.2015.11.01.06.38.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 06:38:35 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id g8so42227676wme.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 06:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=9xjowZ+u06gs4SaoR8c2v44plUe66n37ynMJOWgKLa8=;
        b=a+/VcT+7GSXwfAWlu0xLegU8yHg8wh6uo0O3kGmUUP/5VMPOG7qLmuZRtfOXqtPaal
         tKIKAknVJAiySCfIPqeQqJtIAEBhd2Ga0OB5SzY4t7JKi/3abd4KQqiqfehWGn/uJYgf
         Ta3g1W0eUo6ncO/6UB4IxKeRXC5HiHyY8vCL7DGMDQrWlShK3mcYO/MIo2NaSmd2G/bL
         Ix5ah/tQA9dRKM6mSHvI0Uvk0k+KZExf/oKyxWFR0c0N1Jagko5melrrBWIKEJd6Lm/M
         xXmGUVD7Zg6Y4wOVGzIibXQ+nKa/1aK82TExHS77xcw8A7R9bGoTaNAB19E048Xd8WlI
         u1HA==
X-Received: by 10.28.139.18 with SMTP id n18mr8969722wmd.63.1446388715407;
        Sun, 01 Nov 2015 06:38:35 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id 199sm13077625wml.22.2015.11.01.06.38.34
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 06:38:34 -0800 (PST)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arve@android.com,
	riandrews@android.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 3/5] staging: android: properly align function arguments
Date: Sun,  1 Nov 2015 16:38:22 +0200
Message-Id: <9141e37376e802d062ac5306e49197617fbd0930.1446388483.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446388483.git.ciorneiioana@gmail.com>
References: <cover.1446388483.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446388483.git.ciorneiioana@gmail.com>
References: <cover.1446388483.git.ciorneiioana@gmail.com>

Fix alingment issues by properly indenting function arguments
in accordance with the kernel coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - fix typos in the commit description

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


