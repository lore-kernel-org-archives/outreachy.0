X-GM-THRID: 6331784353650049024
X-Received: by 10.157.32.202 with SMTP id x68mr3013443ota.97.1474233426711;
        Sun, 18 Sep 2016 14:17:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.13 with SMTP id a13ls2963262ioe.18.gmail; Sun, 18 Sep
 2016 14:17:05 -0700 (PDT)
X-Received: by 10.66.42.135 with SMTP id o7mr3354971pal.115.1474233425183;
        Sun, 18 Sep 2016 14:17:05 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id e66si505447pfk.2.2016.09.18.14.17.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 14:17:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so5977721pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 14:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=3UfT0AJeTlamgiRGC2OM6aZC2PJGWbvLQ/Vqxfpdy7I=;
        b=m/MN+KHkeIek7MsRBxTiSVvU1QIKW+/9R2cTjfLTajVzqQwsJ5mVy2Srs2g8akJrN0
         KOZEU04khIFTqY3OaeCB1NMZk799dYIq7vEhaiaruvOxQPg/yL+x8sHU57x1itiUKFPj
         1Ky4yZnCr9y0oakbZgG8udgIar0s9Rcbbawi0z1IDU8EEhh5QPHXUrmXblL4pT/x+SH4
         LvyYldxm03FVWkuSUmGVNzPrFTrZ7YYEjmYANZeYqJ5mhxb+Jxqt/5u+9eeh4+RJHfR7
         5sBrmYO2tbly6LskYUYtlyTGRkg/IPWnns8D1KLcPPqEqaBLOuAB0o9Nk7dcmsXRtKBq
         28UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3UfT0AJeTlamgiRGC2OM6aZC2PJGWbvLQ/Vqxfpdy7I=;
        b=ckQNqMDEXDsZmNNILqva+68HweOea/24+4rUphk86J47AHFgm2UgLF1LfOcRYzPmD1
         OAmHYbzZsGpWWzksi/ZCcKWpN1rNrtX9wUadaKvmhxGhgC0ZXjWFMRKlQ0vLGi1BzTTe
         NdQg1E7DSR4YLyDU2lW6yS7Adu8L1l3bD42NiO6xpGhclymZ6FknCtACfs3Vl0yiy4vs
         2U74m0xubsFcQFkCcUJKhY/h7uACvypLUmaOpXc3PyB+enR5yKICxsqUfyXdy+1TFqEH
         nZvXGFf/zoqfEmHXyIK6+QzrDeK/eDjdogwEAur+U6uiVSkAIo/wqiqIOcMpTzK/H6Fq
         gSAg==
X-Gm-Message-State: AE9vXwM2QYHVcC9RX2Tkg8+2bJRU65/rbqdEZswEAdDsDKHhQmp33zN9XsA0OE5Gg4qY+w==
X-Received: by 10.66.1.98 with SMTP id 2mr28251113pal.134.1474233425000;
        Sun, 18 Sep 2016 14:17:05 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.181.67])
        by smtp.gmail.com with ESMTPSA id p7sm18400249paa.3.2016.09.18.14.16.55
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 14:17:03 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Mon, 19 Sep 2016 02:46:51 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: iio: trigger: Use devm functions
Date: Mon, 19 Sep 2016 02:46:50 +0530
Message-Id: <1474233410-6932-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Use managed resource functions devm_iio_trigger_alloc and
devm_request_irq instead of iio_trigger_alloc and request_irq.
Remove corresponding calls to free_irq in the probe and remove
functions. Drop the now unnecessary goto labels and replace various
gotos with direct returns.
request_irq replacement done using coccinelle.

@platform@
identifier p, probefn, removefn;
@@
struct platform_driver p = {
  .probe = probefn,
  .remove = removefn,
};

@prb@
identifier platform.probefn, pdev;
expression list E;
expression e;

@@
probefn(struct platform_device *pdev, ...) {
  <+...
- e = request_irq(E);
+ e = devm_request_irq(&pdev->dev,E);
  ...
?-free_irq(...);
  ...+>
}

@rem depends on prb@
identifier platform.removefn;
expression e;
@@
removefn(...) {
  <...
- free_irq(...);
  ...>
}

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
index 38dca69..ea4845c 100644
--- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
+++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
@@ -200,7 +200,8 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
 	st->timer_num = ret;
 	st->t = &iio_bfin_timer_code[st->timer_num];
 
-	st->trig = iio_trigger_alloc("bfintmr%d", st->timer_num);
+	st->trig = devm_iio_trigger_alloc(&pdev->dev, "bfintmr%d",
+                                          st->timer_num);
 	if (!st->trig)
 		return -ENOMEM;
 
@@ -211,8 +212,8 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
 	if (ret)
 		goto out;
 
-	ret = request_irq(st->irq, iio_bfin_tmr_trigger_isr,
-			  0, st->trig->name, st);
+	ret = devm_request_irq(&pdev->dev, st->irq, iio_bfin_tmr_trigger_isr,
+			       0, st->trig->name, st);
 	if (ret) {
 		dev_err(&pdev->dev,
 			"request IRQ-%d failed", st->irq);
@@ -229,7 +230,7 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
 
 		ret = peripheral_request(st->t->pin, st->trig->name);
 		if (ret)
-			goto out_free_irq;
+			return ret;
 
 		val = (unsigned long long)get_sclk() * pdata->duty_ns;
 		do_div(val, NSEC_PER_SEC);
@@ -255,8 +256,7 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, st);
 
 	return 0;
-out_free_irq:
-	free_irq(st->irq, st);
+
 out1:
 	iio_trigger_unregister(st->trig);
 out:
@@ -271,7 +271,6 @@ static int iio_bfin_tmr_trigger_remove(struct platform_device *pdev)
 	disable_gptimers(st->t->bit);
 	if (st->output_enable)
 		peripheral_free(st->t->pin);
-	free_irq(st->irq, st);
 	iio_trigger_unregister(st->trig);
 	iio_trigger_put(st->trig);
 
-- 
1.9.1


