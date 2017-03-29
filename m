X-GM-THRID: 6402783293345890304
X-Received: by 10.99.116.88 with SMTP id e24mr11188448pgn.130.1490764155519;
        Tue, 28 Mar 2017 22:09:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.163 with SMTP id 35ls5136501ios.37.gmail; Tue, 28 Mar
 2017 22:09:14 -0700 (PDT)
X-Received: by 10.98.211.137 with SMTP id z9mr7955190pfk.34.1490764154606;
        Tue, 28 Mar 2017 22:09:14 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si937077pfz.1.2017.03.28.22.09.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 22:09:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id o123so1189813pga.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 22:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/qXcmhHONkllkX8hkDvPZHhSOm1LrrP6vHftwB8xQVE=;
        b=ozusHqQH3JXlwlhxyvMBWj7AO43JM57+P1oVUiGemWG1F8fxTmNtPPJPKBQ3HOo8xv
         PBt4jt7a8rb5cSOVv6f/LBks1LKjmloCu+AirFsHlsgXc2Ey111FooV1Y+hg566xcFHx
         AkAjhpktc4zUV7jprA7U1s6+3Z91K4DxX8tncFfHU4CgZRqwvITPEUSYlyPSLajA69Dp
         k4Yiqpi8sGxZ7Zo3FeBnAKeVFNb481OoAYkgO0HhPfFd4wPUkSYngYQr1hnpFvMbQNOS
         nTqz/gND+UzmRknNFwt0uzMVGtuibec1pY4sPjW+oSwX7Bd20kp+3pRZx/fMEgrFHX0R
         /WOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/qXcmhHONkllkX8hkDvPZHhSOm1LrrP6vHftwB8xQVE=;
        b=sn6pwLs0Yjet8XmZxqF5oA/MrKKsXGpOC5YcoenQXduJ7dpU9MmUNEOPyRAewlPhvR
         nO7WvlnfwtO5LZFQgY+oHY5uuTMmYQLL02OXjuQqG0CADT2J8VU+dYOmcKyxjXYWC0oH
         A+tLhgR7CFohk9kIdM9KPEVHNU/Zo3zVyA9Q5crEiWzdtnkVS5UQVQfdgfrQtub/ng3k
         mLqdwKsz1ZyCddrn38qUnxA2B0nSiPLqdF2MxjEMmzryLaouOl+7aPmdjVL+ZcNDNGbo
         hMRDam/CFTuSlnm+SQR6y0087fCwaF+en0S94dfI8tgRHbl0L3pSGsH57M9ZkB4wddD9
         1ouQ==
X-Gm-Message-State: AFeK/H0hqh1sjBrUWzPwfHKrXnwqxpFpgjoz78JfnWjjRRjajv1+CwX43JGNxPnjqcTqBA==
X-Received: by 10.99.167.1 with SMTP id d1mr34506904pgf.129.1490764154369;
        Tue, 28 Mar 2017 22:09:14 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x21sm10369661pgf.15.2017.03.28.22.09.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 22:09:12 -0700 (PDT)
Date: Wed, 29 Mar 2017 10:39:09 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: Use devm functions
Message-ID: <20170329050909.GA18738@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use managed resource functions devm_request_irq instead of request_irq.
Remove corresponding calls to free_irq in the probe.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
index 4e0b4eedb53d..42473d095911 100644
--- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
+++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
@@ -211,8 +211,9 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
 	if (ret)
 		goto out;
 
-	ret = request_irq(st->irq, iio_bfin_tmr_trigger_isr,
-			  0, st->trig->name, st);
+	ret = devm_request_irq(&pdev->dev,
+			       st->irq, iio_bfin_tmr_trigger_isr,
+			       0, st->trig->name, st);
 	if (ret) {
 		dev_err(&pdev->dev,
 			"request IRQ-%d failed", st->irq);
@@ -256,7 +257,6 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
 
 	return 0;
 out_free_irq:
-	free_irq(st->irq, st);
 out1:
 	iio_trigger_unregister(st->trig);
 out:
@@ -271,7 +271,6 @@ static int iio_bfin_tmr_trigger_remove(struct platform_device *pdev)
 	disable_gptimers(st->t->bit);
 	if (st->output_enable)
 		peripheral_free(st->t->pin);
-	free_irq(st->irq, st);
 	iio_trigger_unregister(st->trig);
 	iio_trigger_free(st->trig);
 
-- 
2.11.0


