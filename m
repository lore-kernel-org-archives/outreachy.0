X-GM-THRID: 6207482452562149376
X-Received: by 10.180.184.164 with SMTP id ev4mr47053wic.3.1445292144396;
        Mon, 19 Oct 2015 15:02:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.170 with SMTP id 42ls673806lfy.3.gmail; Mon, 19 Oct 2015
 15:02:23 -0700 (PDT)
X-Received: by 10.112.14.4 with SMTP id l4mr5194841lbc.20.1445292143800;
        Mon, 19 Oct 2015 15:02:23 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id d7si4116wiy.2.2015.10.19.15.02.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 15:02:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id ll6so19012405wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 15:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Sz6575VuLotCr1BWRbT7JNjjIaEHpUNIVOjCjDe4EDM=;
        b=dsmVN04iuhGcFJxg1MXNp+n/IfycQnjEaPzqU0PyclFDGB9F6cts564H34BZB5Piji
         23Et4CzYq/b7LRAkW+hbd+7RYD+Iv8hZ8k5acLYwlHgLRtyxUfiYqDDbae35wVoY9cxk
         +/Pa4FtGLXWhLQ1DnucX+sgWva/EoPXOFUthJFha2HoZZnWREdmGIGdfvO9aV9tGEOrh
         y/e+zj0Q9oXgetEGy5k75UO3Uc9D2hbrcRvqyd3CT1LHYqZXv5zdwMCm5xxNiawp0Rgb
         c5erEWwH0aO7Si+1r3SUVzPsTJAuCfnMawx1hz9Qpq7DbtzokdzrtNiWHv8WhH6byqxb
         CSxw==
X-Received: by 10.180.109.226 with SMTP id hv2mr397264wib.46.1445292143711;
        Mon, 19 Oct 2015 15:02:23 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.61])
        by smtp.gmail.com with ESMTPSA id bf8sm42577788wjc.22.2015.10.19.15.02.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Oct 2015 15:02:23 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 08/10] staging: iio: trigger: Remove explicit comparisons
Date: Tue, 20 Oct 2015 01:01:43 +0300
Message-Id: <2f4fdd95ce5505b88169fafdac081d2072a40b48.1445291799.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL in order to provide efficiency

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/trigger/iio-trig-bfin-timer.c   | 4 ++--
 drivers/staging/iio/trigger/iio-trig-periodic-rtc.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
index 9fe48ef..035dd45 100644
--- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
+++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
@@ -100,7 +100,7 @@ static ssize_t iio_bfin_tmr_frequency_store(struct device *dev,
 	if (enabled)
 		disable_gptimers(st->t->bit);
 
-	if (val == 0)
+	if (!val)
 		return count;
 
 	val = get_sclk() / val;
@@ -125,7 +125,7 @@ static ssize_t iio_bfin_tmr_frequency_show(struct device *dev,
 	unsigned int period = get_gptimer_period(st->t->id);
 	unsigned long val;
 
-	if (period == 0)
+	if (!period)
 		val = 0;
 	else
 		val = get_sclk() / get_gptimer_period(st->t->id);
diff --git a/drivers/staging/iio/trigger/iio-trig-periodic-rtc.c b/drivers/staging/iio/trigger/iio-trig-periodic-rtc.c
index 2db8857..ddce5e2 100644
--- a/drivers/staging/iio/trigger/iio-trig-periodic-rtc.c
+++ b/drivers/staging/iio/trigger/iio-trig-periodic-rtc.c
@@ -39,7 +39,7 @@ static int iio_trig_periodic_rtc_set_state(struct iio_trigger *trig, bool state)
 	dev_dbg(&trig_info->rtc->dev, "trigger frequency is %u\n",
 		trig_info->frequency);
 	ret = rtc_irq_set_state(trig_info->rtc, &trig_info->task, state);
-	if (ret == 0)
+	if (!ret)
 		trig_info->state = state;
 
 	return ret;
@@ -71,7 +71,7 @@ static ssize_t iio_trig_periodic_write_freq(struct device *dev,
 
 	if (val > 0) {
 		ret = rtc_irq_set_freq(trig_info->rtc, &trig_info->task, val);
-		if (ret == 0 && trig_info->state && trig_info->frequency == 0)
+		if (!ret && trig_info->state && trig_info->frequency == 0)
 			ret = rtc_irq_set_state(trig_info->rtc,
 						&trig_info->task, 1);
 	} else {
-- 
1.9.1


