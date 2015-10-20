X-GM-THRID: 6207482452562149376
X-Received: by 10.180.198.139 with SMTP id jc11mr3708942wic.4.1445371025944;
        Tue, 20 Oct 2015 12:57:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.109.107 with SMTP id hr11ls650243wib.20.canary; Tue, 20
 Oct 2015 12:57:05 -0700 (PDT)
X-Received: by 10.195.18.100 with SMTP id gl4mr1078495wjd.4.1445371025501;
        Tue, 20 Oct 2015 12:57:05 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id bn7si370946wib.0.2015.10.20.12.57.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 12:57:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id fv8so44866424wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 12:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=50ZUSAI0NY9I57HFxxo8dHHbtkdKfaKc5cSyRWj0D6o=;
        b=AhoK8tQcfWUs9/dGe0/wR8jWTWSp4vCIo+v+mBUW9wkyxVs57n0vVQ1m1RHrkKQ3qs
         K3p+P/Ej4xMAqJA9C51OxUw47W6R9uZNleBcqFICQzJa6Eti13qY75Lh7CP6q+dK5H3q
         6t6BMlfp9nmBptMTxULGgN757jnZNIgKyYD77mQbHEAAcnzd4sHXLzOyJoj+iU3soVrk
         t9Z56OHe1p96KQBOWQXfThUfyEAliKhzXxzEXcSpPNCni9eW+cpqVIVqvy9G6DpBS0i6
         1pGPWzrLXsVUibcMZngkTUe6xepUZbCHowvZwmvmdmFG9828Henont3alTCqsfNBiigb
         CeeA==
X-Received: by 10.180.8.36 with SMTP id o4mr6945606wia.82.1445371025434;
        Tue, 20 Oct 2015 12:57:05 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.103.222])
        by smtp.gmail.com with ESMTPSA id wb11sm4224132wic.16.2015.10.20.12.57.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 12:57:04 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH v2 7/9] staging: iio: trigger: Remove explicit comparisons
Date: Tue, 20 Oct 2015 22:55:45 +0300
Message-Id: <cdf2e1f147fff138dc433e4d59a1cfa94c62a380.1445370742.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
 <cover.1445370742.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445370742.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/trigger/iio-trig-bfin-timer.c   | 4 ++--
 drivers/staging/iio/trigger/iio-trig-periodic-rtc.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

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
index 2db8857..00d1393 100644
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
-- 
1.9.1


